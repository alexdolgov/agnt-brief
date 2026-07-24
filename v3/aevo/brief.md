# Agentic Audit Brief: Aevo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 17 (7 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 30.1% over 90 days

## Project Overview

- Project: Aevo (`aevo`)
- Website: [https://app.aevo.xyz/r/defillama](https://app.aevo.xyz/r/defillama)
- Lifecycle: unknown (Tier 0, 84.9% below peak)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, optimism
- Contract surface: 530 unique implementations (951 raw deployments)
- Coverage basis: 2/9 confirmed own live verified implementations (22.2%); conservative 22.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $18,155,501.00
- On-chain TVL (included contracts): $48,794,084.84
- TVL by chain: Ethereum $39,003,115.77 | Arbitrum $9,657,032.31 | Optimism $133,936.76

## Project Description

This brief describes the observed EVM deployment and audit surface for Aevo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across arbitrum, base, ethereum, optimism. Structural roles: 5 unclassified, 3 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (5), core (3), supporting (1)
- Contract kinds: contract (9)
- Detected standards: ownable (2), ownable2step (2), accesscontrol (1), erc165 (1), erc20permit (1)
- Frameworks: solmate (4), openzeppelin (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AevoToken (`0xb528edbef013aff855ac3c50b381f253af13b997`, chain 1)
- L1SocketDepositHelper (`0x6ea58e68d37e523a80a461672e2d32e4ab744e56`, chain 8453)
- Vault (`0x7809621a6d7e61e400853c64b61568aa773a28ef`, chain 10)
- Vault (`0x80d40e32fad8be8da5c6a42b8af1e181984d137c`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/9 (22.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 521 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 44
- Confirmed-live implementations: 9 of 530 unique; 521 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/154
- Verified + Unaudited implementations: 151
- Verified by bytecode match: 1
- Unverified implementations: 376
- Unique implementations: 530
- Raw deployments: 951
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $8,083.97
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 17 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $8,083.97 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ribbon | Tier 2 | 2 | 1.3% | 2024-01 |
| VAR | Tier 2 | 1 | 0.6% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AevoToken | token | project_anchor | own_supporting | 0 | ethereum | unit-378654 | `0xb528edbef013aff855ac3c50b381f253af13b997` | ✅ Audited |
| L1SocketDepositHelper | periphery | project_anchor | own_supporting | 0 | base | unit-378661 | `0x6ea58e68d37e523a80a461672e2d32e4ab744e56` | ✅ Audited |

### ⚠️ Verified + Unaudited (151)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RibbonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3d11e0c0de0cf8bfdf85ea05509cfed9f0efe64f`; ethereum `0x5f716094fcd79fb53b5d9d2d64bbca47359737d2`; ethereum `0x6123b0049f904d730db3c36a31167d9d4121fa6b` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 40 deployments: optimism `0x2bbc2ed3931234e803618202fe2f060e56625626`; optimism `0x31a7ab5ec48b752f7a4c4e98410203bb474ab9e4`; optimism `0x3ab7b942f6ea66e5ca62e0a27869aa66747a4ec2`; optimism `0x3bb3b7d1ca52c55d93896290b59516372ff35984`; optimism `0x44343ae5e9319b61c9dad7876919efdb03241b02`; optimism `0x4436ba5e61e1e7f9721980741b6403859c576e72`; optimism `0x61ce6673b00b2f0281e8b95c6b68c8275865ff34`; optimism `0x88ce86d198c8ebeab680dd0350fbaefe298a6965`; optimism `0x9239609eed7c40c6ddcec25d247ef205103590b6`; optimism `0xad7bdd85fda879fe7771a2546939972f202c1bae`; optimism `0xb15f962bbad0015f5a9a51e9ef39aeda45bb83fc`; optimism `0xbb9cf28bc1b41c5c7c76ee1b2722c33ebb8fbd8c`; optimism `0xcbecd69cefa64f55b72f8ac288fc5c452819b608`; optimism `0xd7b09136467d7520828fc675f0b1a9e8cd1d20e8`; optimism `0xdd4c717a69763176d8b7a687728e228597eab86d`; optimism `0xdef0bfbdf7530c75ab3c73f8d2f64d9eaa7aa98e`; optimism `0xe5967877065f111a556850d8f05b8dad88edcec9`; optimism `0xe8fea3de2749ee4fe15fc749d0c31761373dfa99`; optimism `0xe9f2ed94dee821bd23716ed90672d6e3dc9e0415`; base `0x5d6689b75a3019712a93ad866f119b66d664e198`; base `0x6ee3907d1b9423584195979812379143b327fb48`; base `0xa8bd0ecb10a83cc6e14fc5381f384dd3c0779e8b`; arbitrum `0x0825266f72e8841d7fea350b20dd65aa861acee9`; arbitrum `0x087607e5a269290f67274a45ea6cdd09614082c3`; arbitrum `0x11b3a7e08eb2fdea2745e4cb64648b10b28524a8`; arbitrum `0x3d20c6a2b719129af175e0ff7b1875deb360896f`; arbitrum `0x3faf4983db89e651270aea1b15e871236969d990`; arbitrum `0x492baf2d8d9ac9cc7892c1e9924e483f5fe9da07`; arbitrum `0x4ed9ed34ee9e502e4b320b8c2eeefc714e743553`; arbitrum `0x5e027ad442e031424b5a2c0ad6f656662be32882`; arbitrum `0x8e9f58e6c206cb9c98abb9f235e0f02d65dfc922`; arbitrum `0x9d3e027e3b2283ed577af44114a124c579b4df67`; arbitrum `0xa0e9b6da89bd0303a8163b81b8702388be0fde77`; arbitrum `0xb2cb9ada6e00118da8e83a6a53df1ec6331a60a6`; arbitrum `0xb371300517915190aeb8be5c4ae0b986dbc68901`; arbitrum `0xd7bbe2f6d1b52a27d2dac28298de3974a3d13047`; arbitrum `0xd7e13d13e5a5dabc95d2fc19552697e3a476165d`; arbitrum `0xed902143f4129be7be73bc355e77b67d47df7bc3`; arbitrum `0xf476d94e52da5072993f4b7e1dc59395b01a4b5a`; arbitrum `0xfb7b06538d837e4212d72e2a38e6c074f9076e0b` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x25751853eab4d0eb3652b5eb6ecb102a2789644b`; ethereum `0x65a833afdc250d9d38f8cd9bc2b1e3132db13b2f` | ⚠️ Unaudited |
| RibbonThetaYearnVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcc323557c71c0d1d20a1861dc69c06c5f3cc9624` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-378656 | `0x7809621a6d7e61e400853c64b61568aa773a28ef` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-378659 | `0x80d40e32fad8be8da5c6a42b8af1e181984d137c` | ⚠️ Unaudited |
| AcrossImplL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2ddf16ba6d0180e5357d5e170ef1917a01b41fc0` | ⚠️ Unaudited |
| AcrossImplV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: optimism `0xa7f7e4fe8e4cddcd9969bd3fbcff67000cd7de47`; arbitrum `0x0c0858290b6b268a93fb557af06390a3460c5db6` | ⚠️ Unaudited |
| AddressAssemble | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x4513f50921a0333f2067ebdb9369daa81bcfc24c`; optimism `0xf5cadaa4769aa6c061224602b687affb5119d5e8` | ⚠️ Unaudited |
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1`; ethereum `0xbbb4a58098681cf98e45aa0f4ed60469f4bb02d9`; ethereum `0xeace2615b36b9c9bc54b779f59219d5dcd3b3d2e` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c86c20d00aa8491ad20974945d621e40c9e2b0c`; ethereum `0xa5b1170f2eb3c7e1ee1a4ff6a60b3a018ae1c23d` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e238a03757c7739840a2b3982c5cb85064e6f5e`; ethereum `0x70924eaa9706cc7ebff0123eae355d96c9334f1e` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x38913051e01d4f6910cb66bb9ac3cb77d746ad81`; ethereum `0xffc3fa3143b85c5fe8122498b84fa253f4735d1c` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x665f891c8939255bd862920671c124e419dfeec0`; ethereum `0xec4f5c8ab7d1fcd2cd9f69f183c83d42c8d8fa69` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7a35670172d45324d0a8af00c2926af3ee9f6d3b`; ethereum `0x8ac509e9cba12cc0fed1c3505d9725fc858f72ad` | ⚠️ Unaudited |
| AevoStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd`; ethereum `0xdf4061983d12a309b1e68c1a729151a81fa25261` | ⚠️ Unaudited |
| ArbitrumL2Switchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x6a4715fc607c9ebda1377563552d45cbd194a8d0`; arbitrum `0xab2f8c1588aca57bc2909512b645a860c65770d3`; arbitrum `0xd9f45c505d8eba331a9002992742f765bd88a8e8`; arbitrum `0xdff78a949e47c1e90f3dd6dd7fe2fa72b42a75f7`; arbitrum `0xf9a5126d7f3b30fc685f420e00b011bc801400d5` | ⚠️ Unaudited |
| BlockHashChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x792b49617491b936cbd61592f2c7d2e07d17e90d` | ⚠️ Unaudited |
| BugSubmission | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x5ee146ea004afbb339d9c4164ca04c89f00a021f`; optimism `0x6c7a28f6ae2d245b0130520b112fa3544a06d9ae` | ⚠️ Unaudited |
| CapacitorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x8668293ba7de23e2e8e9dd5368e6e4eb778ee7d0`; arbitrum `0xbce4cd69fefedb6eb076cf67e55bae858567136a` | ⚠️ Unaudited |
| CaptureTheFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x49c79ed56df2301ec851fad0b2a566e4fe38fa82`; optimism `0xc87dbb87cfdd14c5b96a90c65c30bfb195e06e39` | ⚠️ Unaudited |
| CelerImplL1L2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x0c0858290b6b268a93fb557af06390a3460c5db6`; optimism `0x11695ff9ee5e600b90bcbd651d1758a9b240a2d8`; optimism `0xb584d4be1a5470ca1a8778e9b86c81e165204599`; optimism `0xb8c32878c69f4cc4705d0bd99bca082c4eefd76d`; arbitrum `0x0aa26a14c2559319f9def7304e93db5ae6b32fb9`; arbitrum `0x3f367bf9f7dcc55d97cf311b71fb9f41e415531a` | ⚠️ Unaudited |
| CommonPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x5df06caa38ed2c60a49174176fc745c532426fb4`; optimism `0xf5b588306867992201fc78de045bce01be6ea2fd`; arbitrum `0xcea535b2a0a690eba76ac6a4af2a1ee7b9fed1aa` | ⚠️ Unaudited |
| CommonPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x6a8be071c1f37e0a5abbbc7700769548f5bc1e46`; optimism `0x9d245fdef1164a4d4014c2570fd88855ea9545d0` | ⚠️ Unaudited |
| CommonPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4611a4c47893d57ad2005c9d674f27ddb121919c`; arbitrum `0x765cfbb5efc15a384c24828e782dcffa3f9690fb` | ⚠️ Unaudited |
| ConnectIt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18358f1b750a8c38f041384c1f4d8867820b3a5f` | ⚠️ Unaudited |
| ConnectorPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 45 deployments: optimism `0x0825266f72e8841d7fea350b20dd65aa861acee9`; optimism `0x0fd7856357c294a889a58f2bad74901e32f1d970`; optimism `0x1812ff6bd726934f18159164e2927b34949b16a8`; optimism `0x242b28863be371d5eb9b32692dc642e446064aa5`; optimism `0x27f4b23944e2bb59b1e276aff22fd2be45658f64`; optimism `0x32bf26035754a73eeda80bac0914c1e9ae88174c`; optimism `0x499239cfbe1e4439502b3896e66fb99626b75833`; optimism `0x4bd04af43a5789e6404919b70078e6d1969e24c7`; optimism `0x52ee360b1af2497c8ec88cc6b1122b88c245e493`; optimism `0x55fa0806268ff0a1d9dff19633e37ee5ce5d7671`; optimism `0x5b64ced7509007884e43b2d07b1b9bccbe7aeb6f`; optimism `0x6190855f54deb642c410a2d642a993d454083736`; optimism `0x716206c6ac501315f8b204e1e564b9e0cbc210d4`; optimism `0x906a44daa8bda5599a384264e3811b9bea1109b4`; optimism `0xbc31ec84bd7bc2c97b9413f6e473ce96be153a25`; optimism `0xc0acbb471465fcf848746d1837d8358ab891546c`; optimism `0xeab4999c4debc87516db5a0dee98de145f602572`; optimism `0xecaa2435d99c4987876a0382f1661dbf539700c0`; optimism `0xf0a0b2e99d081ee737496dad5e2267ab12139793`; optimism `0xfd76d8b79c2e2c86ea0814e92d5ca0e4e8096c13`; base `0x1d56e8bf3050ee3ba387e84e399cbeae8974aafe`; base `0x20bdd81fea5a5e6a539be17d2029204b16626624`; base `0xbaf4a260b47544c7f2f44abb7f1aea733f5cb08c`; arbitrum `0x070feadf2208303d341d1d2da6aa41395f8bce43`; arbitrum `0x0a206467b372b540d073712519e2be20f0c93b12`; arbitrum `0x17fc4c7ea8267044b6d0acc17a6c049bed6f8b21`; arbitrum `0x2e63d65f31d8a70e5185a3c4bc0edc31a1cf4571`; arbitrum `0x31dbdaf7a388735e95a1f68494621d0d82583c86`; arbitrum `0x3809150509df79d96334c4eb6ba1c386827c3c67`; arbitrum `0x42c846313c37845b9d67bb5c1f4f48e528234afc`; arbitrum `0x5ea1172d7c6bb48fdde560c8cfc6660519e1ff41`; arbitrum `0x6284b30ec9675b4b318f3e2bf8801e6645034516`; arbitrum `0x63d8934c1fc89f57b17ab5e14db52bb07d577c0f`; arbitrum `0x69adf49285c25d9f840c577a0e3cb134caf944d3`; arbitrum `0x7deb2459a366d4f85ab5e89f31be527348a672ca`; arbitrum `0x8752c7aacc4dc3554c08f6f59912f105b1f0a5f7`; arbitrum `0xa451cc3077729ecaeb3ba2cbfd5326a90cbc4ad9`; arbitrum `0xa8eaae220a165c7404abaaae9efc3c32fc72151d`; arbitrum `0xadec92ed5f9b9df814a1e237cca6f1b5e68702eb`; arbitrum `0xb0d57301050710af1145562b3386ff5ecfe9be83`; arbitrum `0xdc56509f941884a0c047413d6973e2f00d763288`; arbitrum `0xe02c751e09a87eab8a09ff109d67d39b4690047e`; arbitrum `0xe0a298922f14ad230218218e75860e9fe4c0b55c`; arbitrum `0xf9715b5518396378596cbc70bea7f8cf4c10d9b2`; arbitrum `0xff17d331174137ccd1c392a77e898b36ddd7ff54` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x5e648e8391b4e7f764b3e79d8a786078c755a6aa`; optimism `0x6dc5f83c405594b9b62caf1057e6432df66b470c`; arbitrum `0x9cf6f370fc5cdf5fb81783f26c064d142aa1bc56` | ⚠️ Unaudited |
| Counter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7`; optimism `0x29829a795d2a592edd87378e5346f9fc17dd6033`; optimism `0x2f6b39ecfe379053475041c2fc6989d64011538e`; optimism `0x36c4b7a6d8fb2db65c5806f4a81a8723160a8bb7`; optimism `0x7e54f4c0acafec318af1f5d1dcd373cdacc32622`; arbitrum `0x25ffcbc076e946931621e803ac60b560c63e7e59`; arbitrum `0x3603634999bfc14187544700e24cb0bd2e33eb55`; arbitrum `0x44513d2c02e6fdcafa012d53ae767cc5d4a257e3`; arbitrum `0x4fb274909ffeef635270915a729dc40500c7260b`; arbitrum `0xd0bb14b2275ccc44b75bad9ff23ecb47651af15c` | ⚠️ Unaudited |
| Easter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x92c7a51bd507736ac0dda48b5f35a4aad0c2bb4d` | ⚠️ Unaudited |
| ExecutionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: optimism `0x16c2d34060c2a0ab2047579e4fb6aae1e92e88df`; optimism `0x4229dddf42b1d05ea0fd4625df5094968b67e528`; optimism `0x66e75b252b1854df4568d5b093d9c9376ca22cb2`; optimism `0x6867fffe1eb0a6b77010c5ea288d126664af3c2f`; optimism `0x922bf6cba04524b6e330bc493673ffc87b9f7d24`; optimism `0xbaec9ebbed690ad3dc46d1a8747a635eeb3468be`; optimism `0xf187265946bfbcff3c538743fa9896070515f56f`; arbitrum `0x063ce19e9d682f38be70644a5fddae3a2ec380b6`; arbitrum `0x24686087887f2de94c9481371535e51809564fed`; arbitrum `0x34f86952285673e5d596146ec7de440767743109`; arbitrum `0x811f69eb3cbd4f52e7f5ecfd68e3b20c865886f9`; arbitrum `0xa9d0c013ef86bf49dd7240a6a01fc9064d7025e8`; arbitrum `0xbca7e73a838cb4e69d9f6eda4b9e13358d77b315`; arbitrum `0xc8b6d7c7f5eec48afe9bfc9ba121a749e05c4706`; arbitrum `0xdaadd2fa8ca8985ab407f097cd087c8ed9bda2c8` | ⚠️ Unaudited |
| ExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x052b82b3a096a592f3f28d4736c4796445bb98ef`; optimism `0x10567782c459bc8bf90b89f7da189c754203bfec`; optimism `0x1b74ac5daca01d82a3d2e7688ea30e50fe6ff35e`; optimism `0xf50ed30a7a6951d830bc4e6498b5abc7132a4f6c`; optimism `0xfd1256602f99a8cb2b43114e41af4ca0b4c7e47f`; arbitrum `0x0a1040c23bc8d04669a118a27433d5b379c2d381`; arbitrum `0x7a6edde81cdd9d75bc10d87c490b132c08bd426d`; arbitrum `0xfb9329a7e9ab9eeb5adeda2b18e5a1447b163d57` | ⚠️ Unaudited |
| ExecutionManagerDF | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31b111b2197971fc982b1a507024cc0d0e83273c`; base `0xbf2492a42cc0078a46a4cdfb372858574912cd2f` | ⚠️ Unaudited |
| FastSwitchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97`; optimism `0x1cab023a0cb8178163fb47de7c63c3192767cc26`; optimism `0x60f0cc35b10b8f7754fe7078bad8bf19204739d1`; optimism `0x835531a17d01df9ece37fd197e6b232fcda981b3`; optimism `0xa989d213dd33fe2a3fa93f502054c4e1df9a7220`; optimism `0xccd5a9bf2250070289a719c153390cb001316c6e`; arbitrum `0x1d3695c4d4eec10b813f0c3b97a7fbfb5f5eaa49`; arbitrum `0x2d7660f0cdfa50b5f800694f5aace8830d71c2d4`; arbitrum `0x388b07b1986bc30fc4ee6026407bff39607ff45e`; arbitrum `0x6216c9acb9ace727ed3e1b382dd456fe1db984dd`; arbitrum `0xd5e829827f665c42326eaf68da3360bd59b42f2f`; arbitrum `0xfff4a34925301d231ddf42b871c3b199c1e80584` | ⚠️ Unaudited |
| FindTheSign | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x767ce21d9f9dc90f524b0c67ebdf50ed5ab26041` | ⚠️ Unaudited |
| GasMovr | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x5800249621da520adfdca16da20d8a5fc0f814d8`; arbitrum `0xbdf50eae568ecef74796ed6022a0d453e8432410`; arbitrum `0xc0e02aa55d10e38855e13b64a8e1387a04681a00` | ⚠️ Unaudited |
| GasPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x09b471b83b91bdb1aa361f05770cfceff7526b65`; optimism `0xd9a317288843d8ae4c80bc78eb9af4ee21aeedf3`; optimism `0xf848907549f27cc5424ee0b0f8fe5238113632af`; arbitrum `0xcff802cca1d506b3c4ac1eeb61233062a1b9f568`; arbitrum `0xd5a83a40f262e2247e6566171f9adc76b745f5cd` | ⚠️ Unaudited |
| GatedCount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf873a063d74ae5f27aac1ef6317095a383032775` | ⚠️ Unaudited |
| GimmeMonies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8f4ee8ab18ed25f787bc81a8d5e7b1d0deae4322` | ⚠️ Unaudited |
| Hasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: optimism `0x3e89c061bf570b0678c7792bbffc6baa9d580dc5`; optimism `0x4f04f8ae9fc3a9539d00e5e69c3b262b31220d00`; optimism `0x64b3149a51795e4bd85505087c2aab3d9b50d957`; optimism `0x80b51629e095918bc15c206f1aff5a590cc729f8`; optimism `0x8ac0a7a1f26c6e074c3c063ba5aa5b736db6724b`; optimism `0xae7ab947dc04b2e4965a9d99c109c65b4f0ee139`; optimism `0xb11c04afc9b61ef83658df6062e5f62fe2e0c8af`; optimism `0xdd975f8d5b2f20d574e6777001e236a05f4ae3c4`; optimism `0xdf4ff02e2dde3a08590829d7398cc31b0255bab5`; arbitrum `0x0266a47314472f295fdb5bb36f784093e69929bc`; arbitrum `0x5af497b2794ecb2381ed5bb40df9305a07b3e325`; arbitrum `0xac40199432721467e8d4c3854c2dabdc31c97808`; arbitrum `0xcda819182c2bbe351644ed5d429280ab98004b4e`; arbitrum `0xe595624e36f3ee359cd2b346a9dc8100b33a9a5e`; arbitrum `0xebc6fccca0341241ccb974cf5c9a95c697782781` | ⚠️ Unaudited |
| HopImplL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x0fd9f11b9c54a9f100234eeef9ee7873d73c2204`; optimism `0x8537307810fc40f4073a12a38554d4ff78efff41`; optimism `0xaa3d9fa3ab930ae635b001d00c612aa5b14d750e`; arbitrum `0x040993fbf458b95871cd2d73ee2e09f4af6d56bb`; arbitrum `0x2b42affd4b7c14d9b7c2579229495c052672ccd3`; arbitrum `0xa358d60b9fd8d45a53baeabd04c621c902572f3d` | ⚠️ Unaudited |
| HyphenImplV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xeb03440702bb6de23c63ad1c5a24598433f59f86`; arbitrum `0xf45ec13167e8c03490d44fe780609c6209c25c81` | ⚠️ Unaudited |
| Imbalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2eb0e1a4194204c6881ef13cdfe6e539b53564c9` | ⚠️ Unaudited |
| King | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5eb0f5958131b627063750a5d4efae37b258c5d3` | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x71ac62da06c75b202491e792b1a6d54dc2a879ed`; ethereum `0x9fa287b2cc05fd4054b18d7004e43bb4321c88a7` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xc6fd4efc56b67248850c3103618c79b6bb2e0565`; ethereum `0xeddff4077708e054bc70148e92d938cacb9c68d5`; ethereum `0xfa6acd3c452ade8910505cc61352274b4c6d526c` | ⚠️ Unaudited |
| L1DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x09f62d9f9fe489c2cd460d7be8e78d4ace0a8e60`; ethereum `0x2c6dc1f9f5ceb3988f153f47640eed768a5eda05`; ethereum `0xc3bb52e6118f05dd8ad4e1c1a1398281cd7c4c7f`; ethereum `0xd037a2eb909d82edb8b7d4cd3762f946f1b5e4f4` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x66cee10ba575e889bb3c1f60996164c07c30a748`; ethereum `0x93314c2a1ed4e8940d2fe01939ad891a19d66630` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x69ce7652f951f275cce848eb661efc9f3f155821`; ethereum `0xe7935c3f1edd3104f4db3539c0d43c5d2330c639` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4fc17a270edc7c59d9bca502e8f9da40d62381d` | ⚠️ Unaudited |
| L1SocketDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x51e29ad146c82b1cee4941b89a2d17e7069f472d`; base `0x711c6522c646819ab159fb8df3489a864203b0c2`; base `0x73659f51624c314a85533d385d5b2413488e6b73`; base `0xc545200d5492141f6e92699af422549a001af6d9`; base `0xf6d1c9ce7d7e0bec2abc10004f5e43147d4d6fa8`; base `0xfcce85f121a104a0232525bcfa70d931498491b8` | ⚠️ Unaudited |
| L1StandardBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0667714cc6fafb5d2735a3bf6e83553fb804a8a0`; ethereum `0x3e647db560dabe7211aa8bccf427ac0c3b62f4cb`; ethereum `0xedc4fbd8a208aa15dd4f9e3c22ccc4fe69553a9a` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378662 | `0x4082c9647c098a6493fb499eae63b5ce3259c574` | ⚠️ Unaudited |
| L1SwapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6`; ethereum `0x60453f697faaf27fcb0d15d6696d5fb2b374aefc` | ⚠️ Unaudited |
| L1SwapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7281138858e1f66c180495faf6fae189c7b92a3a` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efa0d1cbd36aa0db7c0b59d32f6da68ca83a722` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3e5209f6e6137a256839e0f444b6a7c82b2f5b14`; ethereum `0x9f82b5b72e55a329dab9a79a2d04398c652eb376` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x909e51211e959339efb14b36f5a50955a8ae3770` | ⚠️ Unaudited |
| L2OutputOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x94c0d69f739e4eec84d4ea2eab1335a50708e4f1`; ethereum `0xf482aafa02768165c7ffac590d903dd05ffba567` | ⚠️ Unaudited |
| LimitExecutionHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 16 deployments: optimism `0x063ce19e9d682f38be70644a5fddae3a2ec380b6`; optimism `0x26fde516afbeaf0ac93ecc7179c5f1eec34c9a5f`; optimism `0x40a1b20804410efefb9f93c85f378daa87abc1a3`; optimism `0x5f6f4bcc17a8de36baa4fe5afe0375e2d52caed4`; optimism `0x765222c94266ad8855b380cb8df3f5cca03fbb80`; optimism `0xaf20363cd31420cdcddaaf93603b678096ea2509`; optimism `0xe19dd121a0e5be2a20d126fce6be1270a153d600`; optimism `0xf4eea99899423abcaaf3c36bb0ded334c58cd014`; arbitrum `0x3e3e6ff83a0255dcb3602c0136bb3a0bdd13f807`; arbitrum `0x65f258263acc0857c3eee77c2e997d6ff99b8132`; arbitrum `0x716206c6ac501315f8b204e1e564b9e0cbc210d4`; arbitrum `0x8542813032035617bdd6e85cfdb57e8ad98d3d2a`; arbitrum `0xb39f91e53a7280601d4d7d723f8a1227fb468c98`; arbitrum `0xd34308fb7138716b9a9519e13fb1e0196bfb9d3f`; arbitrum `0xed24b1b69ad58e21bbed6600749b713725407e66`; arbitrum `0xf570f67a1b29de1b301e6c8112fae7779a84cdd8` | ⚠️ Unaudited |
| LimitHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x6f9234d3063f1cf7986c4511ef46721f794cf8f7`; base `0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25`; arbitrum `0xe4593ed6f711a298eb05dac61141f4f3ce6fa37a` | ⚠️ Unaudited |
| Loot3D | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x08cea8e6b3f8cf1c04f095edebbcc1df6f08121c`; optimism `0x1bea4f9f93f84fd5a68f321e6003a6b16b313740`; optimism `0x259dda264f78d4edd3c9abbf93fcf2174eddfefd`; optimism `0x341903595b4805b2f6d751083c4dd1dd71863459`; arbitrum `0x45e877ba9f5d678e630ad99e8acb70e0f4da33f4`; arbitrum `0x8091cb019f9826d46309345ad20ee8202e24731b`; arbitrum `0x8df62412de4d088b14f40e25f9f7f768c4b29b86`; arbitrum `0xdf5b1d3099f8c1ff12fdd3600f8a06f555334b07` | ⚠️ Unaudited |
| LootDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x0531789edca5f6e641b8d3ae48ef9fda4660c76d`; optimism `0x8f5e377b2b07d1440f7f7d079f402a53c97159d1`; optimism `0xadf21508f72cc5b28f70cb22171995f817d5282a`; optimism `0xc6962fa49e9221aa5c1ca90b2c1b721678c176a4`; optimism `0xc893bd7361ac00a2879d526016043fffde5cec55`; arbitrum `0x488b6284ad5684b31107034032b7910b93d80093`; arbitrum `0x4a77fb4464ef4c6a827c08e70105fb73200bc5d4`; arbitrum `0x9b9875bbc48edd7e5d5f88fc65d095ee1cbce6a8`; arbitrum `0xce7c4d6e0da4f6e264277bbf2182c45d9afda626`; arbitrum `0xfaee8c7c52fccc27b2a2d44a54b8879991253ecf` | ⚠️ Unaudited |
| LootVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: optimism `0x85e9f93cdcc3b617b0790ac351f35b14b6bb9363`; optimism `0x87afc932a440bac07a50aed721eb04f4859a63a7`; optimism `0x97c78339c953233c98f016fe5f93918154a12765`; optimism `0x97fad2597a51bd04c53f107de3580dfd545139a4`; optimism `0x9b76a24aab4d578440fdd5139f5e9d41025b6fcd`; arbitrum `0x1f7e83f14c18f1f1cdaab77142805338dcaf2a7c`; arbitrum `0x6426ca37a5f03d0a9c682e289223b93b1f5ae16f`; arbitrum `0x93783b1ae08b601a6aec1ccc6fa010abd8305e3b`; arbitrum `0x97c31d2916c0a2d2045ed9f7e683df7dc4cd8d62`; arbitrum `0xacd33c5ccc4b3c9e9268e9f0472d9bb0b6a1ec8a` | ⚠️ Unaudited |
| MakeItRain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60e04bab3d82a16a7963bcd44b494bd9bbb5f8fb` | ⚠️ Unaudited |
| ManualStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3c8114263092fd27acfeaa99549d4f3066d7036c`; ethereum `0x8a09674406da7c96b7f6cb941e92b7cabec26fe3`; ethereum `0x9246cb31fdd179f266f3b5bb3a0f66e9cebe8b8e`; ethereum `0xab40513b6f0a33a68b59ccf90cb6f892b4be1573`; ethereum `0xfd48f39be14990bd8d96a446c12e7fd08c51b451` | ⚠️ Unaudited |
| ManualVolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x14416c36428bdf554d3354566259af6bcd03b709`; ethereum `0x7c0bfab993fbd54deadf43adff960e9c9e116399`; ethereum `0xe24854968cdbcfa049ddd6f089b5c552d181ecc4` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ea2f2367e091525c86f00737bba0aa3b107cf90`; ethereum `0x7902e4bfb1eb9f4559d55417aee1dc6e4b8cc1bf` | ⚠️ Unaudited |
| MerkleDistributorAdjustable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04b47c3b679c588a23e905b8579e4cc9f19ceeed`; ethereum `0x5c648b8e19f89854351719d34a78fe9ad6184d76`; ethereum `0x778046fec7de9905edee161de4b4b4d8a6f21591`; ethereum `0x80c86bc65df4d29c5cc037d18e02d6172b5de404`; ethereum `0x9946a1abd122353085e70e56a8201cd94fb76769` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f197ccb582179ef4a408f94c78137eeb77d9381`; ethereum `0xd4b812dd7134f632c947ca11a2fb0f49082a2483` | ⚠️ Unaudited |
| MerkleDistributorWithStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce90d5f1f313e25a3e32da3da97a041ee93223e6` | ⚠️ Unaudited |
| MessageSearch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x10bcd35f03c9c9b68305875f52b406188f5755de`; optimism `0x28ac26b4f6a4483d11ad209f08f7b4dbb7364fd9` | ⚠️ Unaudited |
| Messenger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfcebb7f5f3827f2fb485d24d1342977630e6ac6c` | ⚠️ Unaudited |
| Miner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x6ec499b869716bb479a843cebe048a90ec6d343c`; optimism `0x956693ac35471196bcda10e6e60d573becf51180` | ⚠️ Unaudited |
| MintableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xeb4b088441975a903fcda584aef0e985c721d1c8` | ⚠️ Unaudited |
| OneInchRefuelSwapImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x1d43076909ca139bfac4ebb7194518be3638fc76`; arbitrum `0xdcabb6d7e88396498fff4cd987f60e354bf2a44b` | ⚠️ Unaudited |
| OneInchSwapImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x565810cbfa3cf1390963e5afa2fb953795686339`; optimism `0xbdf50eae568ecef74796ed6022a0d453e8432410`; arbitrum `0x565810cbfa3cf1390963e5afa2fb953795686339`; arbitrum `0xaa3d9fa3ab930ae635b001d00c612aa5b14d750e` | ⚠️ Unaudited |
| OpenExecutionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x4aa89efdd4050dd40c1a3863294b6b148fd297db`; optimism `0xb442582f235cf3d039a81f067b02f5e66f34a57c`; arbitrum `0xb864fbaf80d166a275c6af7c692304436f10db22`; arbitrum `0xca16185a1072e84d74931e605fce0a843445c31e` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3d46c86c299ff8b2599a0f59e4f8d0d6dda8e246`; ethereum `0xbfec86cde6c7a753304452ec05745c13e5dd5af4` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3e549caa61f21086eb0a92830b905d2d859ce51c`; ethereum `0x4e80ed9109ccac8d3fd581e91b17ecfc65dfe02d` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47ff07fb2903fc481f02223ad8ab4bf0a276cef9` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5dbba17eb2458a05abba79e650df607f0681cc6a` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x787a0acab02437c60aafb1a29167a3609801e320` | ⚠️ Unaudited |
| OptimismSwitchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x717facaa298fa151c6ffad47b5e9c51c41bc2199`; optimism `0x7e6da87fe69306caaed675ffe4e7dc0ffe3bfe4d`; optimism `0x9cf7443685827419b0067fb2471c24969eaa716c`; optimism `0xadbc2c4ffbd5de29e2ef566e4db67f8a839dd66a`; optimism `0xb6c103b76500b262244b9879fe7f7e1c43fcf8c2` | ⚠️ Unaudited |
| OptimisticSwitchboard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: optimism `0x665288be03e0397d5bd9838732fa1ec3189288a7`; optimism `0x929625acce321770c747c38cc989b689ee823d90`; optimism `0x9ba3ff23c5373a9c7f0ceb8b6b5f4c98cec7d922`; optimism `0xb113d72896d4874111af00c9499b5a64e9f1e3f4`; optimism `0xcb473d87a56b4609a695753711f727e5c4335ccf`; arbitrum `0x1812ff6bd726934f18159164e2927b34949b16a8`; arbitrum `0x213be4d6c81db7da841fe93c3e19e941fb8d1413`; arbitrum `0x450d3591ea2353a310218ae7a8190f02447ae36c`; arbitrum `0x626674edaad9fd40c2073ce4d874f093381af17c`; arbitrum `0xfe5de884d328cb7094da1117c42188d708a6346d` | ⚠️ Unaudited |
| OptionsPremiumPricer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x0a1b6393527ddb5cbb5e38081c9a4af08f0975db`; ethereum `0x7c24414191e2818a1a8cd995688c9da74faf67a8`; ethereum `0xcf38c16253912a827f38b5b2c08e6059a0194e8c`; ethereum `0xd8bb660a8fcaeadb7a7aef73e57a3a989065dacc`; ethereum `0xec58c11aa55836c896b80a9d8032e39eeb525cbc` | ⚠️ Unaudited |
| OrderCheck2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbb7287aaf5fd6e4cd245e88d000ae41d79af50a2` | ⚠️ Unaudited |
| PacketSearch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x300e530cbd5314860dd8a0e873c8c083d2331ae1`; optimism `0x73f4c90674a91d8e49286ee511bc4bb9c7e0f5a5`; optimism `0xdcef080bb245a3314945436b41c08206405b2cc9` | ⚠️ Unaudited |
| PercentStrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6221b5e23b137a405f8df9aaa717f1629cb29eac` | ⚠️ Unaudited |
| PlayTime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x657a9bdd0d2e89c1fb1f0a4c364dfd7d1a3702bc`; optimism `0x72c948de38c6c8211211b00a685ecb1e9ef88dfe` | ⚠️ Unaudited |
| PoisonPill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x992e0ba66012858538ca20c621f9ccf09fc40424` | ⚠️ Unaudited |
| PortalSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x393f4c8dbf38cfd6005611e95bd0c490f8963b59`; ethereum `0x3e801f4433d74f3bafd95487c6cacb96b6c33f20`; ethereum `0x78a4ca20c7274a87c11636892ec4a0dd39a56a2d` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x032b3569dc905fb2f8583004c329c4f59df843ca`; ethereum `0x72cc6efbf1b10e2892a71ef9c0bc5831daac3ab4` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ace6b2b50816a058456141c9421de1282f41011` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2dd0b693d02eeb6c63239175bdfeb27ad3be58c6` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37ca018b135cdb8dc7edde960143a98b6dd0c1c5`; ethereum `0x6bba90e42d5a597347293eb9395e3460f13ce841` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x399bd25d13ac8954222b8c201542f84221be8bb3`; ethereum `0x8daaf9d3f25b0033e9a3807f0f0d11eaa8b3bcc9` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x495d4470828a78b2eb532c55414237b110f0500f`; ethereum `0xc7b404843e37bafbdd86dc0b441b3e3c8a543a3e` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9a89fe274a87ced1db78a76c03a2d8e86b551735`; ethereum `0x9e0b8c6d1be21ecb5b9abbb1a28cf68150315553` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x27ff92b30cae00dabcf8045cc68fc9dcb67c5019`; ethereum `0x9bd8c9745fe460a801dbd50db220da89a6890f09`; ethereum `0xb145c0bd3385fa3b6ec03507f6a6986728dd0f39` | ⚠️ Unaudited |
| RefuelBridgeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x47e136cf4a96e1afa72e19022f9699bbaa1be60e`; arbitrum `0x7340798b75185849440c11fe09c5e6b494344f5c` | ⚠️ Unaudited |
| RefuelImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x0f933f6a58d885586d356d6677dc87995bdc1b51`; arbitrum `0x23ddd3bec944cdb16cacf3039e389324df598b89` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7`; ethereum `0x63cb3511e2ce39a77dc23f7721832a159015b3a9` | ⚠️ Unaudited |
| RibbonDeltaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850`; ethereum `0xf103486d9a098673fad8a5d86e8cfd6bf2fe6f8b` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x1c2ee9711592638f7fa3f47181c7eae7606352c2`; ethereum `0xa1457fb1e20fe1399e5d581733bb6ac0e7b7486f`; ethereum `0xeef3d67a608a94e17e5fb669b7270d121fbe196a` | ⚠️ Unaudited |
| RibbonThetaRETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e80265e821990b8139b43c12c622f64bf928a9a`; ethereum `0x8e28f2e7334b44c0753df20774683fb004c08d6a` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x01f1d8744469da81dbb6b7d3e9811f10029365e7`; ethereum `0x1bc5ee65197c54106f9eb02e476191c6991dcffa`; ethereum `0x21438c87e749920625dc3bd2742a3e879caf6c72`; ethereum `0x51a5a8f2487ddd446672868d95347b7cbe041f8b`; ethereum `0x5d4c0a7f6888e80a86c8ee5d2660c216cfea1b51`; ethereum `0x8a0eff819d7e197ee79ff3fef520fe56a2c36ca5`; ethereum `0xbcf89a96f131ad7587fbadc58f9fdb62d68147ad`; ethereum `0xeb74e0ef154f29d7ace73d72b88bf1f28137c733`; ethereum `0xef3c692023ce020316c6be3a0479f87767ea31e7` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc`; ethereum `0xc5f2cf5c4c874c296281e2a73a2e44c9fba55741` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x24ab80935f568e8032253bef349ca3b6097e24c6`; ethereum `0x8756ea6c0c07ee3a45e791c6da8fa1ff8205f1f7`; ethereum `0xfc0d9e568f048d0cc4765353c775a2dadd016502` | ⚠️ Unaudited |
| RibbonThetaSTETHVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x53773e034d9784153471813dacaff53dbbb78e8c` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x09bd08ce34237df3b935080281e91b2766efb030`; ethereum `0x0ff7c2d2a935d31d354bf7ea7fdad39de0141a5a`; ethereum `0x1939f826deaa3e2649dcf2c5234aa20adba08682`; ethereum `0x23b42c4234df12ed025a794abf815e4327f1ff87`; ethereum `0x2a0b88f5e1fba2909843a46877a9369d8ae8b5b5`; ethereum `0x34107ac950eba9568df26b6256953142792eb167`; ethereum `0x43cfeaa64013071d5505acf98b137f74c8ccd423`; ethereum `0x65112b0932c257b821217fcccb783c7e0c227ae0`; ethereum `0x94c8422c2b2e45b3b2c69c6a556e32a37498431a`; ethereum `0xae517e17844c09f2eedf382db0e7943c4c78c7f0`; ethereum `0xbeba74374e7cf9362fdedd0b9e2bc4a04549e4ad`; ethereum `0xd3fe1419708e1ab8bbb2881743eacc3f8968592a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0`; ethereum `0xa0db6c4c2906de0158802ba8d98798d04f52b79a` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4ea9e779dd4d7901c0f5e29645e957c34feb80df`; ethereum `0x6779da6f8402dc69ada551bb6cd93fe5040f507e` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6ec571bee204dc17ef7cad5547dc9084d28031f8`; ethereum `0x9d1d31190f945b72f6de8f1c72b97931c9d5014a`; ethereum `0xcfcf97f4300afaa94566696fbf116c4d881fb3bc` | ⚠️ Unaudited |
| RibbonThetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0a54c398baa5e1f0d73b9328263fda296278eb0`; ethereum `0xc4d1009dff06a63a5548ecfeaf0942d45cf027c5` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x247a937b3294b2c06bbae44cd9cabbb9620e0690`; ethereum `0xe63151a0ed4e5fafdc951d877102cf0977abd365` | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3fb82fef405b14c6569dd07f0a673df79f0f1f44`; ethereum `0x6fc853a8978017381e4bec0da7792f0b46453a8e`; ethereum `0x74e52410aede9a66d0b21eb8658bf27a15fbd421` | ⚠️ Unaudited |
| RibbonTreasuryVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f2077b0a9efb0c6568396a115272401fa7d95f4` | ⚠️ Unaudited |
| RibbonVaultPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3` | ⚠️ Unaudited |
| SigMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x03709c48dec486b64ddedacfbed43acea5ababe8`; optimism `0xb02113a6b679a20ac5f6f7c05025f4b16395aeb7` | ⚠️ Unaudited |
| SignatureVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 17 deployments: optimism `0x80e51327a393e6d6777c85c9ac16bad45086ca5c`; optimism `0x8b57c3285a2acc9af1b813fa21ff99264943ff00`; optimism `0x976973618488e452027f4017b088ea8374486fa7`; optimism `0xaa2f2b6cd33eaabb795c6db60aaec599c8450f35`; optimism `0xb568433fe45ca1ea2a7ff98ad0746cea7300c12b`; optimism `0xbb1f202095be99000038d8d207c7e6f0f85a3925`; optimism `0xc94bf98cfe43d8c891d4ee43a47435be361e5d15`; optimism `0xde007c8a9a7fa8676f9a751b7bc1ef38af76757f`; optimism `0xf096fd1b47dfc14d2320571c5f7ecdb5cad219f0`; arbitrum `0x053407dfa30267f6332f3c94a9e9f704a55e62cd`; arbitrum `0x2b59d436be18ac668b6d286b92fae0451ff5079a`; arbitrum `0x378a89d135eae28514172a9b83b2a35e4c854b29`; arbitrum `0x4d6b5213fab9c61ef94edcf1d71042c26aeab169`; arbitrum `0x9879a2b15722374243843dddb79e5e6872aa74b8`; arbitrum `0xe63347d6e1c5702a20b5383bc0ede5cdfa956d4c`; arbitrum `0xe88f6b194bd3b43013710a785ddff41454a19537`; arbitrum `0xeaa15fd42d68b8334a3bb1e9bf8ca85babe83790` | ⚠️ Unaudited |
| Signing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bb8475c30fd70675f6250fb725e30b3a6e6094` | ⚠️ Unaudited |
| SimilarDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e304e89dc574dc3296bbbf94b3f81ae256eb0de` | ⚠️ Unaudited |
| SimulatorUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xba9c93014648fc64a0beac857b95c0ff22da4f97` | ⚠️ Unaudited |
| Socket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 10 deployments: optimism `0x1eb392aba52a2d933e58f7e86ca96b9a3e2d8166`; optimism `0x2344621d5aa6e784e8c6f4c54b0b29dd9c3ad4b6`; optimism `0x301bd265f0b3c16a58cbdb886ad87842e3a1c0a4`; optimism `0x91ce463148bd7695d4db41f4aa36088e502428f7`; optimism `0xd10cb28719302698d7fa685d73dccd330b6bf573`; arbitrum `0x16e4a6af6e81c7997fc784c8e621316e480a4ee8`; arbitrum `0x37cc674582049b579571e2ffd890a4d99355f6ba`; arbitrum `0x9e3e4755411f8529cbed5a974a85fa9a8a13a9d1`; arbitrum `0xbc080a2e2593045fffc1b8c3cafc67732f8306a7`; arbitrum `0xfb6daf96202bd3815b2e602464adc10317634066` | ⚠️ Unaudited |
| SocketBatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: optimism `0x208cb87549740b4eb32043d0471a153ed1c54408`; optimism `0x2b351e9f1a1970115f5859107af33f1be386fb7b`; optimism `0x2c76dff7f3b5ef99c59c764f97aec71221920b7e`; optimism `0x321767762d66a69a8ccfe07d1b9805d314707b59`; optimism `0x5afa7ddbce8ee8862fdf5fd8c546bf32615d2d9b`; optimism `0xffb09850fab52765b5e48eac1aa3ffad620c8fce`; arbitrum `0x107e182815c5e164e05f0c2cf478ace44fd468a8`; arbitrum `0x1808ca111fbe2473e9fb497c05c1997925c0113b`; arbitrum `0x2ea720ea6b4dd82a31766da2b48300c0a31f4b8e`; arbitrum `0x96fef44d041fc6b2666cbbc86cabcef4e5ae3b0b`; arbitrum `0xd7b2e36f7a23974105683954062a7562d70255f7`; arbitrum `0xfbb3a520f7a9afe05e9b2a247a0dc975e57a8bd7` | ⚠️ Unaudited |
| STETHDepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07f36cf3c834e423536680f560b6bad0319f5411` | ⚠️ Unaudited |
| StrikeSelection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x001d77351dad0cd3f696c67ebba5bda0c11d0db1`; ethereum `0x05dc9638693117c59e7e6cc7b77232d7e494c4cf`; ethereum `0x2d8c029a76892d4b2d4e0276edc61fbef724ef1c`; ethereum `0x39d3799b8abefc3d05db5ba3b3b2770146475000`; ethereum `0x4e2d423201474c53f9a4d9017ac6f22e76c0498d`; ethereum `0x5e68b6f5c82fc5f3711541ca4a12e01b967fc641`; ethereum `0x896e4ddc672e5e3df9d21762518985ebb36482fa`; ethereum `0x9371f33cac1e64bbcb424d3384add3baff4513a5`; ethereum `0xc2b10e716987ccd35d642506fd546315c0753563`; ethereum `0xf6e785185f9943dc0db13392d5475769d2105911` | ⚠️ Unaudited |
| SurgePass | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35479b023e508ee9a7b533dbb5b516bb6875f937` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa37e332ce625429b1978c33eb2f583c469b44b08` | ⚠️ Unaudited |
| SwitchBeyond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x52a71b10ce5ecf54b6a583a8e1a2a6adf8c72daf`; optimism `0x91e4c4ce0b693058b7f5e05fafd6cfc1af75c76b`; optimism `0xd075c9fa148161e4828977a84a4054eb048172dd` | ⚠️ Unaudited |
| SwitchboardSimulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd69f42d91c57fe6ac84d1e57fc5c84428b86056` | ⚠️ Unaudited |
| SyncPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: optimism `0x74af6d7b484729384342dd68c60d73a3bf7081df`; arbitrum `0x50d1f0d98a59441e43ecd259598d90b305803319` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca` | ⚠️ Unaudited |
| ThreeMessageCounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7a369b3d9cba81d338b98e25422335bfd5d821bc` | ⚠️ Unaudited |
| TransmitManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x0a523d8d8e2ad6f6623b3318a59743546cae6163`; optimism `0x48261a0ea65cb1427e24b3119cbc94cba1b752c1`; optimism `0x6fedde12105f47eacde493ee294d207bfe68dce5`; optimism `0x7398da0704ee25025d300a96197788378dcb1470`; optimism `0xd3f39174ee7937381e19d682ffea40968266fa3e`; arbitrum `0x43a9b212b645baef3abe6db03d84169d9b9755ca`; arbitrum `0x63c10c00b47b9b418ec0f651b3763b6a692a0416`; arbitrum `0x6fc8d9764e99095b0c27d7f4c5c0711eb0f8b4b6`; arbitrum `0xbf05724bfdd0e8abb85c8d17bf7325cea2cbb5d4`; arbitrum `0xd648a4f9db4aa872985b35b9abb9be642c0d7f2e` | ⚠️ Unaudited |
| Traveller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0xb81de21eb8811968c03c8ca96b2c5901ee849000`; optimism `0xd6ff172fc2caf9878768f768e3176e9ef2ed7b22` | ⚠️ Unaudited |
| TwoMessageCounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xafbe4bc31b3e5636e1446a987a42d8ad5b4eccf2` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-378655 | `0x5c7dd6cb73d93879e94f20d103804c495a10ae7e` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | optimism | unit-378657 | `0xfff4a34925301d231ddf42b871c3b199c1e80584` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378658 | `0x7711c90bd0a148f3dd3f0e587742dc152c3e9ddb` | ⚠️ Unaudited |
| Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378660 | `0x90bfb3c35ddfbba42d998414f0ff1eadd430e161` | ⚠️ Unaudited |
| VaultLifecycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x14cc2c0b624e437202b53e533147982842865511`; ethereum `0x1c3774c538a50db827f7f7b450160e0afcbd41f8`; ethereum `0x25af99ff07575ac55fb3c2d1e6b920ba3bf67b40`; ethereum `0x35a3e0f233587f6e515bce363e0a5e42cd69ecc0`; ethereum `0x4994c95ec14ad03a09e2cc21af15e8894b7d10ee`; ethereum `0x58228f1700ca529b13cd560deab39fb254056d82`; ethereum `0x5ee5db4480db3b4cf08d871b737f0ce5785caa53`; ethereum `0x93c48f3dc0df467ca9089925bd8256c62af1f522`; ethereum `0x9c24f8138bd1462164e1e11c31ea83fd9ccb9ccf`; ethereum `0xb917ee1d969ee309c5369d022ba202a30207dde3`; ethereum `0xc1e51ba212c8b3fada5b5d3973d7c46d2b8181df`; ethereum `0xda638703bfa31e412d0e6d47e643afb2016be115`; ethereum `0xe248f69df96b0d397e8b81a592da8766b857d6c7`; ethereum `0xe64524ba73b9e74956f59f137821039254994f36` | ⚠️ Unaudited |
| VaultLifecycleSTETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0`; ethereum `0x2c5dd86b524dde4c9b2d0f36d72bdec7ea089bf1`; ethereum `0x5cbb58fbd5e53a8db156c1261403b14dc618f3db`; ethereum `0x84ff097b9d1a3a32732d36aa2c6b08d4a8c08928`; ethereum `0x92c47ebaf26c7de6d9dfed9c2f6d957860f42836`; ethereum `0xb48c17175ca34c87fad6b34824b6151376ad38ee`; ethereum `0xcf7dd57bbe6cec4f07f1db1ac80b14421b8c8932` | ⚠️ Unaudited |
| VaultLifecycleTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1d00f9bafea5aa40a2192af12b68af3d390afe2` | ⚠️ Unaudited |
| VaultLifecycleWithSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x63b9712f3acf31597595a1d43f7ee0ad2c83357f`; ethereum `0xc06944ec6c0ee3f152c284e5df24b42d90169377`; ethereum `0xc7654fd45b96885ba231bb9083d1472e8c9a5e5e` | ⚠️ Unaudited |
| Window | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6f0df1d93dc1673c933a81eb122112c511d119a1` | ⚠️ Unaudited |
| ZeroXRefuelImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x029057df831cce19fc7adbb8d7283afcbb9d88d0` | ⚠️ Unaudited |
| ZeroXSwapImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2d7f2b4cee097f08ed8d30d928a40eb1379071fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MultiSigWrapper | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 11 deployments: base `0x0c98cb76b36a5b5f723cb11b3a031350583b6540`; base `0x1fc216d3c05baa7b603628bed4ae10956bb40633`; base `0x2db2d118272108ea000d70b15e9bd68155c15522`; base `0x4bd2657aff7e2e29f29abb364da2564c23046306`; base `0x65df4cdeff95c4a67ff1c5a93b3cbce22da623b5`; base `0x6ec8ccfcc15b8eba21a68ca7469444fec3db5827`; base `0x7f3163ca8f8343f1c16db8ee541f03564a40f8eb`; base `0xa3a855771816ff1ea7012fc4ba663b1061fd0a6b`; base `0xb6f2ac3a9a52e9b0e524f6c9f46a7047bd70c37d`; base `0xc3213d428f8a63854c7644e0750499132866b1ec`; base `0xc47d1c5c2cead93e75914e52997842978f2ee3fe` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (376)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000728488ae4e80b2ed7c3a06462bdeab5fbf1cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x023afc8b575ef583ef5596d3834d82b7116a6078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0301079dabdc9a2c70b856b2c51aca02bac10c3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0424c62eed9b4dab6e22ba42be2173c7557728b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046299143a880c4d01a318bc6c9f2c0a5c1ed355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0466b94a37b9037b6416ca5b1c17de00356fa09b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x082481d2223a1372d975edc9ccfea3d77b1b595f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08aad56f494d705eaee20185e02996d5be72ae33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x095c34c8f852ae99e6424ff4258447768a5599d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b38cbcc2a215c636d0c3890e64e2a21255f437e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b9f9e6904194174a53d9c500b84eac1b79ada57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cc3471d024250c7661003063aa5cc3d2c142467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d08ea010dd3bb0a1dda37443e982c46adb2e4d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db381cfcafee909e66e5244ec5d7d933a747e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fdc7b5ce282763d5372a44b01db65e14830d8ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10432bc30396e70f792b538d7e810c83dd7bfe71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x127d3615a8865812f76ff8f214f9955c3a74820a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1536f738d1dd76a90d3667dca58e85867ea3662b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d1634ce3b55843253f954c930683e1ecdb5c3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1831f6b2573e756bfafdcb121880a80894a61ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1888f9d504adf9aa5a3e705a7e1d45c59bd46176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19fdac68854702b70a8916eef19dce5c8349e250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b362e8eccc7aa0e835e3041f5cc10ccece046b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1beceace08688e58e649c40831d3cf11fb22e3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1efa17081cde0c8ee816075369741d89fcd548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ca1fcf34ba9c6d2e8c6c8ea398b9f562a8a7aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d79f7dc7065a23fc278a20551b97a236ec81889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26372904ca7aba32579b2ee4c7d96616eceb8c03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a76938c3dd3d672aa72651f99826084fc62d63b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b04347413918588b81782cc446524354a15ee72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cfe1c35bb695d4eff2736054eac3b6ce4dea90b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d850f76c671aa2e1c1892a0644c115eb254d165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eb99d429bebbbc5910bbad5f34d909a5f55910b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f49de50405366a794fd00be68fc8f151517d301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327fe52e44a1fc68e8596df8769a4b5dc538550e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336045401b3db35a658498e065f881a80e537fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33d2ac6d717376b89382638dbcabea53b677ee9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3461ae4336a55952d7ce451a9dec3a0d3856eee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34f0a81703c2ed935a61372188a8f9ff78edf77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x364cb3da96ea3bf24c97c3cd95d59df7a403a1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b9bcbcecc87cca372130c331e9905b92c5759a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x382a45ab979b69f94346f3c004033ef7c9cbfbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39eed09d42072243b86c054063616568cba16ee2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a277440bb850d41fa1e50112873abb799e4fd97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f631b8b318c66858fa1e68f02fccf976c5caa8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409fb57c5512f303759a5febbc7f2f61f8d075c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41247b47823c3a500f4a1f1c98bfa8a089f78fad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44ba624d8280a167829baf11a71309f81696559e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45a9333102723f606b890579b2d0f8f475aac7cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x491caf0cb459c53b815aa759eca290fdf0b62669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4b8c77c7775ab0f6914893f67a6c1c54c83b36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cd094fcc9f107eed45217b078481bfd8fbbad5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df48f7abc624ab672d69a18a5fc7bde5944c8e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x519db1319f7c4192d1d964a6f932298e76c026af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51a287d1ec1f2e1216ce14aef4c12c43061b1844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55161896bf9e5867851de6d063b7284a195b23ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x552ffbddfb01b6f7f3a3c39e9d3d0a5fa8436394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5609ef3b48e79b2328d877ff40d742903810d585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bac8a66c78e4258c964d4c84d62825f5d2a8a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bb9e070ed2ef50ca3a1c17a5fa1300b0d088c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608889f7652a48c07286f1394bcdc1486a34468e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e74e15e43afa985ed1003e78e652d58d8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61d0df7c0978d04071c6f1e94beba96e075ebe12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6209a1b9751f67594427a45b5225bc3492009788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62d25402b8ce925c727ecb2dcd62d531749bf842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630ed8220f9cbc98358a2e2ecb0727d7b9d61397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63628b4cdaae7c5e3db5c5a57c699bbae77a84b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64b02119a901843a6a6d273d40a8c6b9e099c197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65aa8f218ab3fa104af12e786a41b0416459991e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66873693e8b125dbea46274173b0d6dcd1933cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fccb64b26c72c708c716d047ff13b291af1b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a46002457b743ce9167ff5134fe8de916f54bfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b419290f77dd9ab881c14427c791184d7ce9736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e9e3baf06db9265f81e0d6862039569e73b076e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7041ce0ece257f80fdd3a605eb3438a7257f3e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73ebff4460ca625a59e8c024c333d3501505b8e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f327239fa495a553ec562e1e75f8c1ffe63d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76e8f316cec20c36759c3d80ebaa4cb3b5279499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7748355debf8c9bfac8234e3f79f04ac0bbf8b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77abb6fecd1f781765ecc384b57ca5335863dbf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79356bf9d3c97ed10dd6f63f7560fd952b929162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7973cb885af3bb67f38b4b2b90caef8043a96952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c478395c652110847edb76aa4ddafa4fb7c740a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7bb40f523266b63319bc3e3f6f351b9e389e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d8c76eaf1858ce5678fc4926f4d8875e967ac53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd8f274d21bc568db8c1512e28ad7a0bd248319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f1cec2328170e510f2d0375ce1ba7ac45d1681a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f4f727930c2c73238584f9f195e32e86e32d1b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f545161fa2cbbb1c9e0d182f2d0c2772ce6cbc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x800187a3c549e323351c1b9cb815c024069bd34a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80f035caef10920d6b0be9ed4c44de571493ee9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8320385030690ee6e95c713f586c2a8f5dd07c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8826d2ec9229249feda46f9b47fcf62ad73cbc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c71baa29d66e2f09627bafef6f8ba1ef8e3ee10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d48b8d948726d4636aa15a9d6124422f461e153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9040c66d4453aa66366cd0dbeb610ce7b41b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e0edfd6d15f858adbb41677b82ab64797d5afc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e19c040b4c1c8d2a63e6cb375f01ab65d2ddc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e26dab15e7af842acbe030b65808618b50de32d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2b50413a53f50e2a059142a9be060294961e40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e3fddb3142027c49d1b602cd9fc4d9c42ebcf2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ea384f9316abbdae698f2bb6850d23f5fb13277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ea8fa840b27e588a9e27f7070c7c365ec2f034d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f2885e85a59782197024306483cceae7b99dcd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92361209071c76e031133def9092d4920a9312f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92e56129a5d357a22775ff06bae5716d55f56626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cf96f6c3e683b0a5b668e599d6a6a45fb10c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94df93123af26de3998032914ba54db1ae5311a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b10bcd6e770a6fd0bc8992d4b67c8500a63f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96c2436af099de751a812fe32836ee794dde2020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96ce21931e8a6abb2977ef17541eee80fb137f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9720f76eae9b0d864a2a9e247bd82eef6ca84fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97eea33f40796861120208c884b5ae6e01ab40f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x995c0ab3dd4f0b1080393c62573b7a6bfcb8518b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9979043e4dee08fb61903aefd05aa452ea448f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a8604f5f72769057181ff95f2a9f40906221cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b6eee0309d831b59d75e047cc7dff2f3b2d8bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cb22af811cff79b89d25570fac31586af7b4a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e31ef400c74630ab50066dd64c29c1f4fc57209` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f2781f9e3463b772cbecbc2a0e29bb7b1f3e1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2a9d2b4905ac2adc00c32aa5489fec7153873b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4d274fae648b3e20c3458a9ba2acef4b0a8ebf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4d853b2488aaf2d21d015524bac691bd019f7a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa54151ce4f40b0644990605fc116ada975dd527e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5a6457dd024bf2e5edf8dbd54dfbca24cac7b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5f729e5c53afd79f4d41160050d8a600113b0a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6354ec7e4a63f0e75ca3e624eff21d57055dadf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d727e03054bae850e8f84413f7e4a98b40c3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9305e90a4f642370d5bd4ac2ef13877bc9a94ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9d119979285484a271918b5f8f226dd139771d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab164476377cf5a58e0b4f34a4ef79029d5df9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabe43585a8a5a98a3732026d45c4c7900c566efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb7f3baf1d9986760c0a470cd14ceca7544d4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc3cb96532f9d87383bb20297c24798a80be6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad99d667eb39f784612868ba87345362f6179c8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb06e99cc97fc95cc9a84ae95c369a8b8299cf383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2a557732b9f5eea359b643d085ad32e2288afaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3324df28d3cd79d358887131e579e95e0e56fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33c8951d462ccf4aa7a37b70e0be5b8751e7524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb533c682553f518a3961eeec2bfdc645c60289f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb586b3a67323a62f55b8910d411a4ac9b962abd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6463fd3ff4bb51cac28d0f6768d49218639f113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb86510bfdcd229a66f0617162ef1c45db1ceaba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba5c5828f2fb77237b940187ec785ee4498d2683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8724f19bd01956dc4343084048127e0bd69375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaaa2a89a7bec92a810e0bf96adf68066bec5c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc07db13399f8b216fa628635d171f943869cbbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0bf0a112684556e825b7be5cc290eda4c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8c311a1b545da6e385cba7209211faf0ca3cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08c2d6dbeb704efb7a68bd2bb29dfa954625e34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc24f58b36f90c5abc2874d028bfe12f3db656b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2664a65346db247649d5d7853b7bb4cb4e7734f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc399616937ebace9e45159a60cd77663c4a30e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3f7e6b2fabe4cda955902e529257c31981543d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7995acd52ec36a7afa414aad762b8c57cdece5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7d3fa8fbfddfc03d37804838ba38c741323652b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc883dea716d856e22272b8e14867567b04141c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc902f6840699abf5b8d6a787a7943d4783566af2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc905defd3f049e6ad2b9b105016c9026ceb7dca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca954b354dfb73a740f370f71cc8918f1c0982e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcac10196ae000184107916898f10a9045c934d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8d3ca0946f6a50d83e4b15fdb94ebd17e8a2bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc174f151ea55fe2f745c3180ec780c9dbe36abb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc2a29b8324686ef4b05f7d0aabf919ea4e26bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd1953e4d58ef232f4f9c1e0a33e93acc95f7d53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcda7ce4b56f719d0f254ea6abda6ba4df4c8c0ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf22032da47998ea78082abab00bb49e8d990503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf41e5b980b109753b11ad7d49bb67a0b6b075dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf7da658f1e3da0916fc66291f10b022406f6ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2439d7822dac8fcf308fe943361c3b55d165ffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2502e8e253a48d229df0e642a404c5bbff1c1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd46c774a5f5def368bf30acb7572b01e51563a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a321075cb4b4efdd6e677cb770887056ae430d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4f06205c0e56f953070a9f58a488595377ef118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a09a0827c3d91e8530deee3b73edae6b33ae95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd602e05594101fdcf3af0ddcf4775fb1b78f5397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7738f10a46ca13287a10449dc9e8e8cd5fe2530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8bdfe2d4170fb1b9a316511440878100280021e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda402f7529ff2ee4a845508d2f5406baeac9683f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdabc8055e21a3d5c1e99d8048023f3c72d8e8c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5c60b0dbd51fde5ab2416d4e2d749d27fe058e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0a7090c3f9a36375ac26a8f80ede77a8fe14fe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe29e74b7de69804a536affcc995924e9a98f6f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5312d877a5e325524efe7c198f6733c17a564f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6238f142cf04c2f49c911ba2c217e73b2b21b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a5288996eb63ed5978ebedea9418a304181563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8c96f744f8ef8ecb62195cc4a65c9b756513de9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea9a832c8c25d4447f0cb66bb9987e365bca647c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed51799d71acbb44c4c82402635222b2e8f1895b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed6f77f15bcfee1a16ebe9d71d905ed9884ab80a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee5c45dcb0064f9b097edbc5d8adfce23baac03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee83e50791a35364db279d097c884e1eaee8624a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeebbc046508478546cc9a8ca7327f5fa7ba24dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf08d6a9c2c5a2dc9b8645c5ac0b529d4046d19aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1d30e34c8cd40450072615be0e3d0772caf7f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22b8d73da017288b5f4e214ebc1ccd8d364aafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29a66e420c240ebd23f775b93619c8f3cfff856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31166390c90c233088a13f60ce08f20bfc8c09a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf513bd4ba753548505a245be1877c39a4f0b5c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6040cb6c452834ea661b6224afadfb8f9da07e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71d5e0a44d602a6b879734b9e99b50fc54d2aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7474812890039a744737a7347c3480a4f081828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7855f37ee116a0736e3baa68ddc205467ae8153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb71f098eef68504e3cf9a4dfa78d834d3490c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbc94e5fc406509c9a6d0635c047e1cd601246d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc55a23a2fee805aaf8a8209f2e4e8670028006b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc68f2130e094c95b6c4f5494158cbeb172e18a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7b8f5722ac881242e16bebc8ea0b28c3ee60c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9f87ec3592984cb706d3071a39e33ac24d39dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x04196c83ce9438f287ae0b2774abab367283c2a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x045c906779cec459e897449af2967be52a71450f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0645095dc03b9546dfdb2fc8e7a52959ec37efa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a1040c23bc8d04669a118a27433d5b379c2d381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0a3451e8546458dfd60d81f90d2e495398e58f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ccfb68fc0e5c6cb84225508b5cdd286a18979b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0d50d4336df62f86771b2ef5db67be8c1896ace1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18b2379f0b359e2a5962aac884d34f29e1a72a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x18e36589ebfbb0410babd72e9ecdbb11ca764ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1dd54500118978c5cd12a6fde0493c03a7ef12bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x20ebdc614abc74386e5eb67a1516edc6ebd32540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23d5c2f9e0a2954128340587e2232924084386cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x25aaef700c735db1c7e8f77eb6e4c20878c76262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x29fd3a2ea3fd84aad21afdd7863e00a1efbae6bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2dff1c101cdae89d838b980d891e316c09b1f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x326bbbaca7340be280f997739e4ac9791415b77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x331d17d86c0989e533516751c1af2a896cdbf46f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3379f120917fb67728d6db6065d9fdbbd1507a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x37cc674582049b579571e2ffd890a4d99355f6ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3c751688261f90369c28b16f3797e623667f69d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x404e933ffd7ea2b1044a40c0b3c6883cefadf43f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x450aa5c9a0809e5e704254f79cf3452031c01ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4793c35f775a4abf2d503278cfeffc04963076b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x48b4f0692eaa84f1961b64342ae746d40d9ac2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x49fd4671dc7f836be12cedef798d094437c8dc00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4b4d63e5044894184e35ae7854d0e0c749e418ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4bf6e44a27e37f195c15b3075cbac63c46848375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4c0623ec2cb2b1f1a5a19e18ab9a2df897e1f746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4fe1addcb348bf191164fb10605c8beec8d42abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5035d9b44c29b503ebcc1e7d6223ae78a37032d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5333982087c2db4f85d0ed2cde22b22abc0fdae3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a21d4f5c1cf7fe5fae9eff8bfda519cd10893f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c1ea29930e052f218634d807667a1387eb4c44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dfdff7a95a9a8472e6439afc6b760545692ca1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66a1274fff5506c3a69dd35dc5c9a60e63fb3107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x66ad32f5f3c42c6b8102e998f24936f57997ce18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6712ce4f5ad375df6301d5010c1039f393904498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x749f09be3ca34b89f970ff3f594567d072a98e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x769874c359e23356a9fecf11d710f05513f033f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7ab75ae7f84a5c5d696b619d866e05a27b1f4d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b2f652b2da7e0b1077b02d5e629966383d11161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x86a0a4a05b73fc03bec0ef7cfe1cab8cc406ce6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x880997ed94dd2098395d2b3ecdb1c93026894106` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x898aefdf7d1ccb3dc78179bbbf52acede878d7f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e9e34fd67634f33b2e2e49d083fbfd8c064fe9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90b4d987981ad1ded5bbcf9ee2928e811f81e8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x91f48c638ab0457fc807ca40300f3acf1688a4d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9879a2b15722374243843dddb79e5e6872aa74b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9a956704888a805c954b2c68d4faeeaf1eb45115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9e51cdbd0dc54e314b6b17c69ed34a98b8259a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa3f9a7a13055f37479ebc28e57c005f5c9a31f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xad8cde0f29556c3ecc63fc52c4115376b27fc81a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2dc051ba9d471dc441755871a5096b291cc364d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb48b743b85bf955c4c039599a3ecdd6175b6787f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb5c4e167b4be4be65052043d4cc0ffb7a73a7b7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb6170138b6460538cf4daa97f06a16d6bb2ad38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb7a6dba1d9035cc7fe20a2e40e5b2fb2e8f5ddf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbce4cd69fefedb6eb076cf67e55bae858567136a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd57fa1470145289407992279c684aa42c8c88dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbec1741a51e2b06617bbfb145492109a630e05cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbf47f1b6aec8c1ec47ceba21f3b868567738c8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2bd14fe818c6fc47246bee79f0d91afbebb43e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc457f777402bd8449dfdd2a3481c4affbef56747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc972ab9a6cb41b4bc437326af7d2b45cd59d5256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcda819182c2bbe351644ed5d429280ab98004b4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd23678c7d554cb09ca7892d6521d40bfb02a05c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4021383fc5135a7082e6eeb473ae7abf109d024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd5087ca5f76dc6785ba03dea23adcf41fe228df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd550ce2bb4cc954542efcf23ea1147143bd8f77c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd648a4f9db4aa872985b35b9abb9be642c0d7f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd7bbe2f6d1b52a27d2dac28298de3974a3d13047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde29948922a62fe77096f06d549da4dc12f3cd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdfd12c02b718e2a9ec97852a5b22a8f9ae194cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8bfe5106aa542c4fe3158c8e789b1697fa6c70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8da130f8844ae66886406c8b5459641bf9375a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xece91f5954f65f4116fd9e854c6b8dd17ef9150b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf004c4c51b6c026247b5910706ee78134299eabd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf19516273aff391293ff79822c08e66932b77aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf68eaa807c14b74e3fed68ed91a6ac7063f8570b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfb0eab1261bb71254d4a8cc6dbf151b53d34781c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xffcbd42167550edb20d64f99278537075723b4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10c700641f48da53434439bf2da21a4c27091221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x11bf390f6256479cdd6d540a5e118e6385692cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x188b69db174033db0e78af4c5036d0d5d7061f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1de4928f1305704d069e23efc6eb1fb446cf1135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3304c48872c4b3b9b0cac1aecab2ab8e8c8aa9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x38d1ff7afc4c32bee9d507652e4e5d639ff83ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x43f3dd32d23b551ecbbb7c390368b960d168d063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c2bab5a7df134519368ab78364ea220db1bda26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dc25d9d3ee57018998a50e912f40f6384947ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x52b143d34ee40e744358e3735b8fca7785f182ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x57ca482c7dc749b2a26747ed2915560c2401262f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a0e01ed2be962a16cf56dfb6c3f252aded4483c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5ab1380c9fd9153b2af42f43b13e7b236fdb9421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x687c51d273f8378d71aa825d5d09d0d4578ec5ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eae8a3f4186e3b5abdd712093bcd62115eb7de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8c0d229a3fce97eb3367c98d89040a1d26719286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ce48ddebfccf2ee2cf8ade87547de04dc03ec82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96574902bc1f5742d8eeec4b18d35ead03996bef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0be701078c498821835ccad9778f1b697af6f6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xab46c3286018d1f9cadd339c134f260df93ea6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8ec1142422f4c726b1faf99054a6f616afb2bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc5697260ce121cb00bb99f5e7f5ccc59977040a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7f534aa1443b947b7b9a09b497b49ffa1b30da9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xce6a81cc7357584aa2760e1f24c73d1f29e64d60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd134eaee7a655b9fb97ab65fa47fb2285f81e840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2663f3860bcf042a4333bb02ae3c7ac07220c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe5909b5eb66aea11aeddc034ae148a21b816908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01de290363e4fa6d8cce26056ac76be5e149a0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11a418c44494b6e859d5bd0a722effacc5151fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b74ac5daca01d82a3d2e7688ea30e50fe6ff35e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ae62963154fa78d1d00e0a9a2a44660711bdb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b3a8aba1e055e879594cb2767259e80441e0497` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31a7ab5ec48b752f7a4c4e98410203bb474ab9e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f8f21dd6efe362ef49ecb636824a7a2afc3a26d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49eddb310e91f0afac559ab89a971a497f9416f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bd2a4c0a878cce9b3bd3e2c87a78d43985c0594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4cae6101a2645ae58038aeb04079621458b00753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f04f8ae9fc3a9539d00e5e69c3b262b31220d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x530654f6e96198bc269074156b321d8b91d10366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fc8a637f6493c0be2fc900245f1fb39ca9b70ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63ef7df50faf329c2cec0d724be99586fb89574b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66dfb9987c36c4be232156e70b085f664367599a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69ea64de666324e69c3fac63cfc04321862c42c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fedde12105f47eacde493ee294d207bfe68dce5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x703f883916535b0f80dc8325cbb7458537c3a039` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x717facaa298fa151c6ffad47b5e9c51c41bc2199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x732f7dce9d4e0f41b7ff093769fdec7d67186afb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x762d5f37cb73e3325dcbb6eaeeeaa741ca8820d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x769874c359e23356a9fecf11d710f05513f033f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7de4937420935c7c8767b06ecd7f7dc54e2d7c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81b9553321a5b583bcd3d292595c348f2892c2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x858f61b6de2edbf4d79e3b4baeb00b80cc146251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9216253925d1a22cb375ecef4f33cf93a1d1ff4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b58855524159543ebeeaf4dec9e3b1c3673a76e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ba3ff23c5373a9c7f0ceb8b6b5f4c98cec7d922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaaeb4b20521ddf5c8c90c2a39d3c28f224e08c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xad0fa55b09ee01d4f69d0c9a9ed6467efe7d23b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb49ddec2cc70fea38c2eaa843031fda7069f8e27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbec6222b2ff95735ee83ca20da9f190deaba6489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2bd14fe818c6fc47246bee79f0d91afbebb43e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc40a22dff476921a7d1fdec6e20ee65f246d72f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccd5a9bf2250070289a719c153390cb001316c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd10cb28719302698d7fa685d73dccd330b6bf573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4fd62ab60794d1bdcb3ecf302fb3c0af9d0fb34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd95c5254df051f378696100a7d7f29505e5cf5c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde007c8a9a7fa8676f9a751b7bc1ef38af76757f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdee306cf6c908d5f4f2c4a92d6dc19035fe552ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf5f7dfdfc26ee5f629949e330bef56906319cae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe00321e336691ac3a9ac2d1a02970d22fe8861cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe11bcf49ecc73d684b802cfdf8c72f07908d7ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed037afbffc65a94e9cc592947e851fb2f730341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed4f75f0c25963d2c61827261c2d7f84bf884c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf454ad8f5671e2e99dea37f6211060a400aaa9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf848907549f27cc5424ee0b0f8fe5238113632af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc63fa6d0f1dc6e3b36b19bc3424d349037a5562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcebb7f5f3827f2fb485d24d1342977630e6ac6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xffc2d8f660a5cc41273f1db714eaecd19d28d147` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 906
- Live contracts: 5
- Unknown liveness contracts: 901
- Source-verified contracts: 531
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=133, candidate hard block=234, source verified unclassified=164, unverified unclassified=375

Showing first 200 of 906 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | AddressManager<br>`0x7a616b25e7c96fc4d652966d7ddabb51de28ecc1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | AddressManager<br>`0xbbb4a58098681cf98e45aa0f4ed60469f4bb02d9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | AddressManager<br>`0xeace2615b36b9c9bc54b779f59219d5dcd3b3d2e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | AdminUpgradeabilityProxy<br>`0x1c2ee9711592638f7fa3f47181c7eae7606352c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x1ebea9c79f0de60209c8b386aa6ec8a8f21a89c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x247a937b3294b2c06bbae44cd9cabbb9620e0690` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x3fb118d109dfc7646d37fb2af36b5ea2e5ba0850` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x4ea9e779dd4d7901c0f5e29645e957c34feb80df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x53773e034d9784153471813dacaff53dbbb78e8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x5c86c20d00aa8491ad20974945d621e40c9e2b0c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x8756ea6c0c07ee3a45e791c6da8fa1ff8205f1f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0x9d1d31190f945b72f6de8f1c72b97931c9d5014a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0xa5b1170f2eb3c7e1ee1a4ff6a60b3a018ae1c23d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0xb0a54c398baa5e1f0d73b9328263fda296278eb0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0xc5f2cf5c4c874c296281e2a73a2e44c9fba55741` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0xcfcf97f4300afaa94566696fbf116c4d881fb3bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0xe63151a0ed4e5fafdc951d877102cf0977abd365` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0xeef3d67a608a94e17e5fb669b7270d121fbe196a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | AdminUpgradeabilityProxy<br>`0xfc0d9e568f048d0cc4765353c775a2dadd016502` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | ERC1967Proxy<br>`0x0e238a03757c7739840a2b3982c5cb85064e6f5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | ERC1967Proxy<br>`0x426d1f3866bfcdf4d0efefed1ba3c5e06caecbe6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | ERC1967Proxy<br>`0x7a35670172d45324d0a8af00c2926af3ee9f6d3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | ERC1967Proxy<br>`0x8f9c5d7fbd850d70c8d704bc67d74c7fd13551cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | ERC1967Proxy<br>`0xec4f5c8ab7d1fcd2cd9f69f183c83d42c8d8fa69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | L1ChugSplashProxy<br>`0x4082c9647c098a6493fb499eae63b5ce3259c574` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | L1ChugSplashProxy<br>`0x71ac62da06c75b202491e792b1a6d54dc2a879ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | L1ChugSplashProxy<br>`0x9fa287b2cc05fd4054b18d7004e43bb4321c88a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | MerkleDistributor<br>`0x1ea2f2367e091525c86f00737bba0aa3b107cf90` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69fe2573cef2837f5ce9b9c9fad81a107df50bbd` |
| candidate review | MerkleDistributor<br>`0x7902e4bfb1eb9f4559d55417aee1dc6e4b8cc1bf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x69fe2573cef2837f5ce9b9c9fad81a107df50bbd` |
| candidate review | MerkleDistributorAdjustable<br>`0x04b47c3b679c588a23e905b8579e4cc9f19ceeed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | MerkleDistributorAdjustable<br>`0x5c648b8e19f89854351719d34a78fe9ad6184d76` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | MerkleDistributorAdjustable<br>`0x80c86bc65df4d29c5cc037d18e02d6172b5de404` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | MerkleDistributorAdjustable<br>`0x9946a1abd122353085e70e56a8201cd94fb76769` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | MerkleDistributorWithDeadline<br>`0x1f197ccb582179ef4a408f94c78137eeb77d9381` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | MerkleDistributorWithStaking<br>`0xce90d5f1f313e25a3e32da3da97a041ee93223e6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0a888bb1cb72f2ba9279574a6d83744d052d95fd` |
| candidate review | OptionsPremiumPricer<br>`0x0a1b6393527ddb5cbb5e38081c9a4af08f0975db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | OptionsPremiumPricer<br>`0x7c24414191e2818a1a8cd995688c9da74faf67a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | OptionsPremiumPricer<br>`0xcf38c16253912a827f38b5b2c08e6059a0194e8c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | OptionsPremiumPricer<br>`0xd8bb660a8fcaeadb7a7aef73e57a3a989065dacc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | OptionsPremiumPricer<br>`0xec58c11aa55836c896b80a9d8032e39eeb525cbc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | PercentStrikeSelection<br>`0x6221b5e23b137a405f8df9aaa717f1629cb29eac` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | Proxy<br>`0x1ace6b2b50816a058456141c9421de1282f41011` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x2dd0b693d02eeb6c63239175bdfeb27ad3be58c6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x2e7d7b188d663f38c2e4ff9c59328458a2d676f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x399bd25d13ac8954222b8c201542f84221be8bb3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x3e549caa61f21086eb0a92830b905d2d859ce51c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x5dbba17eb2458a05abba79e650df607f0681cc6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x66cee10ba575e889bb3c1f60996164c07c30a748` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x6bba90e42d5a597347293eb9395e3460f13ce841` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x72cc6efbf1b10e2892a71ef9c0bc5831daac3ab4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x9e0b8c6d1be21ecb5b9abbb1a28cf68150315553` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0x9f82b5b72e55a329dab9a79a2d04398c652eb376` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0xbfec86cde6c7a753304452ec05745c13e5dd5af4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0xc7b404843e37bafbdd86dc0b441b3e3c8a543a3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0xe7935c3f1edd3104f4db3539c0d43c5d2330c639` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0xf482aafa02768165c7ffac590d903dd05ffba567` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | Proxy<br>`0xf761cc49bb127ab666899b41cdc4e62fa50cd9ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | ProxyAdmin<br>`0x27ff92b30cae00dabcf8045cc68fc9dcb67c5019` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | ProxyAdmin<br>`0x9bd8c9745fe460a801dbd50db220da89a6890f09` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | ProxyAdmin<br>`0xb145c0bd3385fa3b6ec03507f6a6986728dd0f39` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | ResolvedDelegateProxy<br>`0x11dd2d9b5ec142dbafbefea82a75985eae4e12b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | ResolvedDelegateProxy<br>`0x4e6f3f31c2becd2e29c697712cb1a390dcc281f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | ResolvedDelegateProxy<br>`0x63cb3511e2ce39a77dc23f7721832a159015b3a9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8d3a410962b1bcee613f4aa41718ccfe161e9756` |
| candidate review | RibbonDeltaVault<br>`0xf103486d9a098673fad8a5d86e8cfd6bf2fe6f8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaRETHVault<br>`0x1e80265e821990b8139b43c12c622f64bf928a9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaRETHVault<br>`0x8e28f2e7334b44c0753df20774683fb004c08d6a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaRETHVault<br>`0xa1457fb1e20fe1399e5d581733bb6ac0e7b7486f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x01f1d8744469da81dbb6b7d3e9811f10029365e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x1bc5ee65197c54106f9eb02e476191c6991dcffa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x20abe9d23a45ee360b42708ea7f4a4fed0cfabcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x21438c87e749920625dc3bd2742a3e879caf6c72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x24ab80935f568e8032253bef349ca3b6097e24c6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x51a5a8f2487ddd446672868d95347b7cbe041f8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x5d4c0a7f6888e80a86c8ee5d2660c216cfea1b51` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0x8a0eff819d7e197ee79ff3fef520fe56a2c36ca5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0xbcf89a96f131ad7587fbadc58f9fdb62d68147ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0xeb74e0ef154f29d7ace73d72b88bf1f28137c733` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaSTETHVault<br>`0xef3c692023ce020316c6be3a0479f87767ea31e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x09bd08ce34237df3b935080281e91b2766efb030` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x0ff7c2d2a935d31d354bf7ea7fdad39de0141a5a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x1939f826deaa3e2649dcf2c5234aa20adba08682` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x23b42c4234df12ed025a794abf815e4327f1ff87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x2a0b88f5e1fba2909843a46877a9369d8ae8b5b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x34107ac950eba9568df26b6256953142792eb167` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x43cfeaa64013071d5505acf98b137f74c8ccd423` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x65112b0932c257b821217fcccb783c7e0c227ae0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x6779da6f8402dc69ada551bb6cd93fe5040f507e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x6ec571bee204dc17ef7cad5547dc9084d28031f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0x94c8422c2b2e45b3b2c69c6a556e32a37498431a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0xa0db6c4c2906de0158802ba8d98798d04f52b79a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0xae517e17844c09f2eedf382db0e7943c4c78c7f0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0xbeba74374e7cf9362fdedd0b9e2bc4a04549e4ad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0xc4d1009dff06a63a5548ecfeaf0942d45cf027c5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVault<br>`0xd3fe1419708e1ab8bbb2881743eacc3f8968592a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVaultWithSwap<br>`0x3fb82fef405b14c6569dd07f0a673df79f0f1f44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVaultWithSwap<br>`0x6fc853a8978017381e4bec0da7792f0b46453a8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonThetaVaultWithSwap<br>`0x74e52410aede9a66d0b21eb8658bf27a15fbd421` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonTreasuryVault<br>`0x1f2077b0a9efb0c6568396a115272401fa7d95f4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | RibbonVaultPauser<br>`0xe04e8ae290965ad4f7e40c68041c493d2e89cdc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | STETHDepositHelper<br>`0x07f36cf3c834e423536680f560b6bad0319f5411` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | Swap<br>`0xa37e332ce625429b1978c33eb2f583c469b44b08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x14cc2c0b624e437202b53e533147982842865511` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x1c3774c538a50db827f7f7b450160e0afcbd41f8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x25af99ff07575ac55fb3c2d1e6b920ba3bf67b40` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x35a3e0f233587f6e515bce363e0a5e42cd69ecc0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x4994c95ec14ad03a09e2cc21af15e8894b7d10ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x58228f1700ca529b13cd560deab39fb254056d82` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x5ee5db4480db3b4cf08d871b737f0ce5785caa53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x93c48f3dc0df467ca9089925bd8256c62af1f522` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0x9c24f8138bd1462164e1e11c31ea83fd9ccb9ccf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0xb917ee1d969ee309c5369d022ba202a30207dde3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0xc1e51ba212c8b3fada5b5d3973d7c46d2b8181df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0xda638703bfa31e412d0e6d47e643afb2016be115` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0xe248f69df96b0d397e8b81a592da8766b857d6c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycle<br>`0xe64524ba73b9e74956f59f137821039254994f36` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleSTETH<br>`0x21f0ff1d33f76b938dec63cffe0ee6171f4bd6b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleSTETH<br>`0x2c5dd86b524dde4c9b2d0f36d72bdec7ea089bf1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleSTETH<br>`0x5cbb58fbd5e53a8db156c1261403b14dc618f3db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleSTETH<br>`0x84ff097b9d1a3a32732d36aa2c6b08d4a8c08928` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleSTETH<br>`0x92c47ebaf26c7de6d9dfed9c2f6d957860f42836` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleSTETH<br>`0xb48c17175ca34c87fad6b34824b6151376ad38ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleSTETH<br>`0xcf7dd57bbe6cec4f07f1db1ac80b14421b8c8932` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleTreasury<br>`0xe1d00f9bafea5aa40a2192af12b68af3d390afe2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleWithSwap<br>`0x63b9712f3acf31597595a1d43f7ee0ad2c83357f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleWithSwap<br>`0xc06944ec6c0ee3f152c284e5df24b42d90169377` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | VaultLifecycleWithSwap<br>`0xc7654fd45b96885ba231bb9083d1472e8c9a5e5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x691c87dc570563d1d0ad7fd0bb099ed367858863` |
| candidate review | ConnectorPlug<br>`0x1d56e8bf3050ee3ba387e84e399cbeae8974aafe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb0bbff6311b7f245761a7846d3ce7b1b100c1836` |
| candidate review | ConnectorPlug<br>`0x20bdd81fea5a5e6a539be17d2029204b16626624` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb0bbff6311b7f245761a7846d3ce7b1b100c1836` |
| candidate review | ConnectorPlug<br>`0xbaf4a260b47544c7f2f44abb7f1aea733f5cb08c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb0bbff6311b7f245761a7846d3ce7b1b100c1836` |
| candidate review | LimitHook<br>`0x1a0dfde3fe4f15119bc750414a3457bf5e9e8c25` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb0bbff6311b7f245761a7846d3ce7b1b100c1836` |
| candidate review | Vault<br>`0x5d6689b75a3019712a93ad866f119b66d664e198` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb0bbff6311b7f245761a7846d3ce7b1b100c1836` |
| candidate review | Vault<br>`0x6ee3907d1b9423584195979812379143b327fb48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb0bbff6311b7f245761a7846d3ce7b1b100c1836` |
| candidate review | Vault<br>`0xa8bd0ecb10a83cc6e14fc5381f384dd3c0779e8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xb0bbff6311b7f245761a7846d3ce7b1b100c1836` |
| candidate hard block | CommonPlugProxy<br>`0x9d245fdef1164a4d4014c2570fd88855ea9545d0` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x0825266f72e8841d7fea350b20dd65aa861acee9` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x0fd7856357c294a889a58f2bad74901e32f1d970` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x1812ff6bd726934f18159164e2927b34949b16a8` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x242b28863be371d5eb9b32692dc642e446064aa5` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x27f4b23944e2bb59b1e276aff22fd2be45658f64` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x32bf26035754a73eeda80bac0914c1e9ae88174c` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x499239cfbe1e4439502b3896e66fb99626b75833` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x4bd04af43a5789e6404919b70078e6d1969e24c7` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x52ee360b1af2497c8ec88cc6b1122b88c245e493` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x55fa0806268ff0a1d9dff19633e37ee5ce5d7671` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x5b64ced7509007884e43b2d07b1b9bccbe7aeb6f` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x6190855f54deb642c410a2d642a993d454083736` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x716206c6ac501315f8b204e1e564b9e0cbc210d4` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0x906a44daa8bda5599a384264e3811b9bea1109b4` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0xbc31ec84bd7bc2c97b9413f6e473ce96be153a25` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0xc0acbb471465fcf848746d1837d8358ab891546c` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0xeab4999c4debc87516db5a0dee98de145f602572` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0xecaa2435d99c4987876a0382f1661dbf539700c0` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0xf0a0b2e99d081ee737496dad5e2267ab12139793` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ConnectorPlug<br>`0xfd76d8b79c2e2c86ea0814e92d5ca0e4e8096c13` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Controller<br>`0x5e648e8391b4e7f764b3e79d8a786078c755a6aa` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Controller<br>`0x6dc5f83c405594b9b62caf1057e6432df66b470c` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Counter<br>`0x1c2ec03cf08c77d7a4668c045415a8809d0bd6b7` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Counter<br>`0x29829a795d2a592edd87378e5346f9fc17dd6033` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Counter<br>`0x2f6b39ecfe379053475041c2fc6989d64011538e` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Counter<br>`0x36c4b7a6d8fb2db65c5806f4a81a8723160a8bb7` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Counter<br>`0x7e54f4c0acafec318af1f5d1dcd373cdacc32622` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionHelper<br>`0x16c2d34060c2a0ab2047579e4fb6aae1e92e88df` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionHelper<br>`0x4229dddf42b1d05ea0fd4625df5094968b67e528` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionHelper<br>`0x66e75b252b1854df4568d5b093d9c9376ca22cb2` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionHelper<br>`0x6867fffe1eb0a6b77010c5ea288d126664af3c2f` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionHelper<br>`0x922bf6cba04524b6e330bc493673ffc87b9f7d24` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionHelper<br>`0xbaec9ebbed690ad3dc46d1a8747a635eeb3468be` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionHelper<br>`0xf187265946bfbcff3c538743fa9896070515f56f` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionManager<br>`0x052b82b3a096a592f3f28d4736c4796445bb98ef` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionManager<br>`0x10567782c459bc8bf90b89f7da189c754203bfec` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionManager<br>`0x1b74ac5daca01d82a3d2e7688ea30e50fe6ff35e` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionManager<br>`0xf50ed30a7a6951d830bc4e6498b5abc7132a4f6c` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | ExecutionManager<br>`0xfd1256602f99a8cb2b43114e41af4ca0b4c7e47f` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | FastSwitchboard<br>`0x09a6e77912a6bcfc3abfdfb841a85380bb2a8b97` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | FastSwitchboard<br>`0x1cab023a0cb8178163fb47de7c63c3192767cc26` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | FastSwitchboard<br>`0x60f0cc35b10b8f7754fe7078bad8bf19204739d1` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | FastSwitchboard<br>`0x835531a17d01df9ece37fd197e6b232fcda981b3` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | FastSwitchboard<br>`0xa989d213dd33fe2a3fa93f502054c4e1df9a7220` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | FastSwitchboard<br>`0xccd5a9bf2250070289a719c153390cb001316c6e` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | GasPriceOracle<br>`0x09b471b83b91bdb1aa361f05770cfceff7526b65` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | GasPriceOracle<br>`0xd9a317288843d8ae4c80bc78eb9af4ee21aeedf3` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | GasPriceOracle<br>`0xf848907549f27cc5424ee0b0f8fe5238113632af` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0x3e89c061bf570b0678c7792bbffc6baa9d580dc5` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0x4f04f8ae9fc3a9539d00e5e69c3b262b31220d00` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0x64b3149a51795e4bd85505087c2aab3d9b50d957` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0x80b51629e095918bc15c206f1aff5a590cc729f8` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0x8ac0a7a1f26c6e074c3c063ba5aa5b736db6724b` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0xae7ab947dc04b2e4965a9d99c109c65b4f0ee139` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0xb11c04afc9b61ef83658df6062e5f62fe2e0c8af` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0xdd975f8d5b2f20d574e6777001e236a05f4ae3c4` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | Hasher<br>`0xdf4ff02e2dde3a08590829d7398cc31b0255bab5` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0x063ce19e9d682f38be70644a5fddae3a2ec380b6` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0x26fde516afbeaf0ac93ecc7179c5f1eec34c9a5f` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0x40a1b20804410efefb9f93c85f378daa87abc1a3` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0x5f6f4bcc17a8de36baa4fe5afe0375e2d52caed4` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0x765222c94266ad8855b380cb8df3f5cca03fbb80` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0xaf20363cd31420cdcddaaf93603b678096ea2509` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0xe19dd121a0e5be2a20d126fce6be1270a153d600` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitExecutionHook<br>`0xf4eea99899423abcaaf3c36bb0ded334c58cd014` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |
| candidate hard block | LimitHook<br>`0x6f9234d3063f1cf7986c4511ef46721f794cf8f7` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:3 | `0x5fd7d0d6b91cc4787bcb86ca47e0bd4ea0346d34` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ribbon-report.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/Ribbon-report.pdf) | Ribbon | Audit | 2022-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR-AEVO230918.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR-AEVO230918.pdf) | VAR | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon.pdf) | VAR | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon_OTC.pdf](https://github.com/ribbon-finance/aevo-audit/blob/master/VAR_Ribbon_OTC.pdf) | VAR | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Chainsafe-Ribbon-Audit_April-2021.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Chainsafe-Ribbon-Audit_April-2021.pdf) | Chainsafe | Audit | 2021-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf) | PeckShield | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [PeckShield-Audit-Report-RVOL-v1.0rc.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RVOL-v1.0rc.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-Ribbon-v1.0.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-Ribbon-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [PeckShield-Audit-Report-RibbonSwap.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonSwap.pdf) | PeckShield | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [PeckShield-Audit-Report-RibbonTreasuryVault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/PeckShield-Audit-Report-RibbonTreasuryVault.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Quantstamp Theta Vault.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/Quantstamp%20Theta%20Vault.pdf) | Quantstamp | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 31 | n/a |
| [RibbonThetaVault V2 Smart Contract Review And Verification.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaVault%20V2%20Smart%20Contract%20Review%20And%20Verification.pdf) | Unknown | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [RibbonThetaYearn-18june.pdf](https://github.com/ribbon-finance/audit/blob/master/reports/RibbonThetaYearn-18june.pdf) | Unknown | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [VAR-Ribbon230918.pdf](https://github.com/aevoxyz/audit/blob/main/VAR-Ribbon230918.pdf) | Ribbon | Audit | 2023-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon.pdf) | Ribbon | Audit | 2022-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [VAR_Ribbon_230604.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_230604.pdf) | Ribbon | Audit | 2023-06 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |
| [VAR_Ribbon_240116_aevo_governance_2-V1.pdf](https://github.com/aevoxyz/audit/blob/main/VAR_Ribbon_240116_aevo_governance_2-V1.pdf) | Ribbon | Audit | 2024-01 | stale | Direct | n/a | matched | 1 | 0 | 0 | 1 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1895] Ribbon-report.pdf — matched: Extracted contract names from findings context; no explicit scope section found. Audit date from report cover page.
- [1896] VAR-AEVO230918.pdf — matched: Scope defined as src/ folder excluding migrations, script, mocks, swap. All contracts in src/ are in scope. Audit date from cover page: October 18, 2023.
- [1897] VAR_Ribbon.pdf — matched: Extracted contract names from scope section and vulnerability file references. Audit date from cover page.
- [1898] VAR_Ribbon_OTC.pdf — no match: Scope section explicitly lists 5 files: OTCWrapper.sol, MarginRequirements.sol, SupportsNonCompliantERC20.sol, AddressBook.sol, Controller.sol. Audit date is March 27, 2023 from cover page.
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf — no match: Scope explicitly mentions RibbonCoveredCall and parts of GammaAdapter and ProtocolAdapter. IProtocolAdapter and OptionVaultStorage are also reviewed in line-by-line.
- [1900] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf — no match: No reason recorded
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf — no match: The audit report explicitly states the target is 'RVOL' smart contract, and findings reference specific contracts/libraries: Math, OptionsPremiumPricer, VolOracle, DSMath. The audit date is clearly stated as July 4, 2021 on the cover page and in the report details.
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf — no match: No explicit scope section; contract names extracted from findings targets and mentions.
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf — no match: Only one contract, Swap.sol, is in scope. The report mentions Ribbon Finance and Theta Vault but they are not audited contracts.
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf — no match: Two contracts explicitly listed in scope. Audit date from cover page and latest audit report date.
- [1905] Quantstamp Theta Vault.pdf — no match: No reason recorded
- [1906] RibbonThetaVault V2 Smart Contract Review And Verification.pdf — no match: The report explicitly states 'There are 7 contracts in scope' and lists them in the line-by-line review sections. The audit date is inferred from the cover page 'July 2021'.
- [1907] RibbonThetaYearn-18june.pdf — no match: Scope explicitly states 2 contracts: RibbonThetaVaultYearn (with parts of GammaAdapter) and YearnPricer. GammaAdapter is included as part of the review. Date is June 2021, interpreted as end of month.
- [14929] VAR-Ribbon230918.pdf — matched: Scope defined as src/ folder excluding migrations, script, mocks, swap. All .sol files in src/ are in scope. Contracts explicitly mentioned in findings are included.
- [14930] VAR_Ribbon.pdf — matched: Extracted contract names from scope description and vulnerability file paths. Audit date from cover page.
- [14931] VAR_Ribbon_230604.pdf — matched: No reason recorded
- [14932] VAR_Ribbon_240116_aevo_governance_2-V1.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ribbon-report.pdf | Exchange | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Instruments | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Accounts | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | WithdrawProxy | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e68d37e523a80a461672e2d32e4ab744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Ribbon-report.pdf | Executor | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Orders | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Options | unmatched — not counted | — | mentioned in findings context | no |
| Ribbon-report.pdf | Signing | unmatched — not counted | — | mentioned in findings context | no |
| VAR-AEVO230918.pdf | Exchange.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Accounts.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Executor.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Instruments.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Quotes.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Orders.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Signing.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-AEVO230918.pdf | Base.sol | own contract | L1SocketDepositHelper (selected) `0x6ea58e68d37e523a80a461672e2d32e4ab744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR-AEVO230918.pdf | InstrumentsStorage.sol | unmatched — not counted | — | Referenced in finding V-RIB-VUL-003 as containing mapping expiryPrice. | no |
| VAR_Ribbon.pdf | Instruments | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | InstrumentsStorage | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-001 | no |
| VAR_Ribbon.pdf | Accounts | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | Exchange | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | DepositProxy | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-007 | no |
| VAR_Ribbon.pdf | Options | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-009 and V-RIB-VUL-014 | no |
| VAR_Ribbon.pdf | Executor | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-012 and V-RIB-VUL-016 | no |
| VAR_Ribbon.pdf | Signing | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-017 | no |
| VAR_Ribbon.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e68d37e523a80a461672e2d32e4ab744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_OTC.pdf | OTCWrapper | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | MarginRequirements | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | SupportsNonCompliantERC20 | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | AddressBook | unmatched — not counted | — | listed in scope | no |
| VAR_Ribbon_OTC.pdf | Controller | unmatched — not counted | — | listed in scope | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | RibbonCoveredCall | unmatched — not counted | — | listed in scope and reviewed line-by-line | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | GammaAdapter | unmatched — not counted | — | mentioned in scope: 'parts of GammaAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | ProtocolAdapter | unmatched — not counted | — | mentioned in scope: 'parts of ProtocolAdapter' | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | IProtocolAdapter | unmatched — not counted | — | line 16 reviewed | no |
| Chainsafe-Ribbon-Audit_April-2021.pdf | OptionVaultStorage | unmatched — not counted | — | line 48 reviewed | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | MerkleDistributor | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf | RibbonToken | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | RVOL | unmatched — not counted | — | Target of audit, described as a set of Solidity libraries and tools | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | Math | unmatched — not counted | — | Target of finding PVE-001: Incorrect Calculation in Math::cdf()/ncdf() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | OptionsPremiumPricer | unmatched — not counted | — | Mentioned in finding PVE-001 as contract that calls Math library | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | VolOracle | unmatched — not counted | — | Target of finding PVE-002: Improved Corner Case Handling in getTimeWeightedAverageTick() | no |
| PeckShield-Audit-Report-RVOL-v1.0rc.pdf | DSMath | unmatched — not counted | — | Target of finding PVE-003: Inconsistency Between Document and Implementation | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | RibbonCoveredCall | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-003 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | GammaAdapter | unmatched — not counted | — | Listed as target in findings PVE-004, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-Ribbon-v1.0.pdf | BaseVault | unmatched — not counted | — | Mentioned in finding PVE-003 as contract with system parameters | no |
| PeckShield-Audit-Report-RibbonSwap.pdf | Swap | unmatched — not counted | — | listed in scope and findings target | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | RibbonTreasuryVault | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| PeckShield-Audit-Report-RibbonTreasuryVault.pdf | VaultLifecycleTreasury | unmatched — not counted | — | Listed in scope: 'this audit only covers the following two contracts: RibbonTreasuryVault and VaultLifecycleTreasury' | no |
| Quantstamp Theta Vault.pdf | AdminUpgradeabilityProxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | AmmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | CharmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | DSMath | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | GammaAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | GammaInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | HegicAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | HegicInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IAmmAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IChiToken | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IProtocolAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IRibbonFactory | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ISwap | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ISwapPair | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Pair | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IUniswapV2Router | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IWETH | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | IZeroExExchange | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Initializable | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | InstrumentInterface | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | OptionsVaultStorage | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Ownable | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ProtocolAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | Proxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | ProxyAdmin | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | RibbonFactory | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | RibbonThetaVault | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | StakedPut | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | UniswapAdapter | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | UpgradeabilityProxy | unmatched — not counted | — | — | no |
| Quantstamp Theta Vault.pdf | VaultRegistry | unmatched — not counted | — | — | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | GnosisAuction | unmatched — not counted | — | mentioned in line-by-line review (3.1, 3.2, 3.3) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | ShareMath | unmatched — not counted | — | mentioned in line-by-line review (3.4-3.15) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | Vault | ambiguous — not counted | Vault (alternative) `0xfff4a34925301d231ddf42b871c3b199c1e80584` — deployed 2023-08-18 17:10:13+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x7711c90bd0a148f3dd3f0e587742dc152c3e9ddb` — deployed 2023-12-18 16:29:35+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x5c7dd6cb73d93879e94f20d103804c495a10ae7e` — deployed 2023-12-12 13:03:05+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x90bfb3c35ddfbba42d998414f0ff1eadd430e161` — deployed 2023-12-12 13:03:05+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x7809621a6d7e61e400853c64b61568aa773a28ef` — deployed 2023-12-18 16:25:11+03 — liveness: live (current_address_book_code)<br>Vault (alternative) `0x80d40e32fad8be8da5c6a42b8af1e181984d137c` — deployed 2023-08-18 17:10:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | VaultLifecycle | unmatched — not counted | — | mentioned in line-by-line review (3.20-3.32) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | OptionsVaultStorage | unmatched — not counted | — | mentioned in line-by-line review (3.33, 3.34) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | StrikeSelection | unmatched — not counted | — | mentioned in line-by-line review (3.35-3.38) | no |
| RibbonThetaVault V2 Smart Contract Review And Verification.pdf | RibbonThetaVault | unmatched — not counted | — | mentioned in line-by-line review (3.39-3.67) | no |
| RibbonThetaYearn-18june.pdf | RibbonThetaVaultYearn | unmatched — not counted | — | listed in scope | no |
| RibbonThetaYearn-18june.pdf | GammaAdapter | unmatched — not counted | — | mentioned as part of RibbonThetaVaultYearn review | no |
| RibbonThetaYearn-18june.pdf | YearnPricer | unmatched — not counted | — | listed in scope | no |
| VAR-Ribbon230918.pdf | Exchange.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Accounts.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Executor.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Instruments.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Quotes.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Orders.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Signing.sol | unmatched — not counted | — | Listed in scope as part of src/ folder and referenced in findings. | no |
| VAR-Ribbon230918.pdf | Base.sol | own contract | L1SocketDepositHelper (selected) `0x6ea58e68d37e523a80a461672e2d32e4ab744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR-Ribbon230918.pdf | InstrumentsStorage.sol | unmatched — not counted | — | Referenced in finding V-RIB-VUL-003 as containing expiryPrice mapping. | no |
| VAR_Ribbon.pdf | Instruments | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | InstrumentsStorage | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-001 | no |
| VAR_Ribbon.pdf | Accounts | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | Exchange | unmatched — not counted | — | listed in scope and vulnerability findings | no |
| VAR_Ribbon.pdf | DepositProxy | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-007 | no |
| VAR_Ribbon.pdf | Options | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-009 and V-RIB-VUL-014 | no |
| VAR_Ribbon.pdf | Executor | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-012 and V-RIB-VUL-016 | no |
| VAR_Ribbon.pdf | Signing | unmatched — not counted | — | listed in vulnerability V-RIB-VUL-017 | no |
| VAR_Ribbon.pdf | Base | own contract | L1SocketDepositHelper (selected) `0x6ea58e68d37e523a80a461672e2d32e4ab744e56` — deployed 2024-07-23 08:54:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_230604.pdf | AevoToken | own contract | AevoToken (selected) `0xb528edbef013aff855ac3c50b381f253af13b997` — deployed 2024-01-30 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_Ribbon_230604.pdf | Migrator | unmatched — not counted | — | — | no |
| VAR_Ribbon_240116_aevo_governance_2-V1.pdf | AevoStaking | unmatched — not counted | — | — | no |
| VAR_Ribbon_240116_aevo_governance_2-V1.pdf | AevoToken | own contract | AevoToken (selected) `0xb528edbef013aff855ac3c50b381f253af13b997` — deployed 2024-01-30 20:35:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x7809621a6d7e61e400853c64b61568aa773a28ef` | Vault | core_logic | $6,840.88 | Verified native implementation with $6,840.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x80d40e32fad8be8da5c6a42b8af1e181984d137c` | Vault | core_logic | $1,243.09 | Verified native implementation with $1,243.09 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4082c9647c098a6493fb499eae63b5ce3259c574` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x5c7dd6cb73d93879e94f20d103804c495a10ae7e` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xfff4a34925301d231ddf42b871c3b199c1e80584` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7711c90bd0a148f3dd3f0e587742dc152c3e9ddb` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x90bfb3c35ddfbba42d998414f0ff1eadd430e161` | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 151 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 374 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 105 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=12, medium=1
- Match method counts: unique_name=7

Zero-match audit list:

- [1898] VAR_Ribbon_OTC.pdf
- [1899] Chainsafe-Ribbon-Audit_April-2021.pdf
- [1900] PeckShield-Audit-Report-RBN-ERC20-v1.0.pdf
- [1901] PeckShield-Audit-Report-RVOL-v1.0rc.pdf
- [1902] PeckShield-Audit-Report-Ribbon-v1.0.pdf
- [1903] PeckShield-Audit-Report-RibbonSwap.pdf
- [1904] PeckShield-Audit-Report-RibbonTreasuryVault.pdf
- [1905] Quantstamp Theta Vault.pdf
- [1906] RibbonThetaVault V2 Smart Contract Review And Verification.pdf
- [1907] RibbonThetaYearn-18june.pdf

Fork inheritance lineage and inherited audits are included when available.
