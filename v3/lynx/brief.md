# Agentic Audit Brief: Lynx

## Project Overview

- Project: Lynx (`lynx`)
- Website: [https://app.lynx.finance/](https://app.lynx.finance/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.774Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, base, bsc, ethereum, mode, optimism, polygon, sei, sonic
- Contract surface: 375 unique implementations (375 raw deployments)
- DeFi Llama TVL: $235,252.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 349 project-authored contract(s) across 9 chain(s); 3 ERC4626 vaults, 54 ERC20 tokens, 14 ERC721 NFTs, 5 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 96 common project-authored base contract(s) (cerc20, ctokeninterface, ctokenstorage). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Compound Finance** (`compound-finance`) in the CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, OETHBaseVaultCore, OETHVaultCore, … subsystem.
11 audits inherited from `compound-finance`, scoped to that subsystem.

Total inherited audits: 11. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 375; live-surface contracts included: 375 (317 live, 58 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/317 (2.2%)
- Deployed-live implementations: 317 of 375 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/375
- Verified + Unaudited implementations: 368
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 375
- Raw deployments: 375
- Audits discovered: 11 (0 direct, 11 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 2.2% (ChainSecurity, OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 7 | 1.9% | 2024-12 |
| OpenZeppelin | Tier 1 | 7 | 1.9% | 2022-06 |
| Trail of Bits | Tier 1 | 7 | 1.9% | 2020-02 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrossChainRemoteStrategy | unknown | base | n/a | [`0x5f81a5...e7a92d`](./contracts/base-8453/0x5f81a5a22375ebcc2075b162d23a5b16a1e7a92d/) | ✅ Audited |
| OETHBase | unknown | base | n/a | [`0x1c62a3...b82be9`](./contracts/base-8453/0x1c62a3c2620f2fb7ba5d50c9da2dec214cb82be9/) | ✅ Audited |
| OETHBaseVaultAdmin | unknown | base | n/a | [`0xd50f7d...70d1a7`](./contracts/base-8453/0xd50f7d13632ccadcf24fb74676981099fe70d1a7/) | ✅ Audited |
| OETHBaseVaultCore | unknown | base | n/a | [`0x4a759f...6caaab`](./contracts/base-8453/0x4a759f78b1a1995b57c9d3b40eb1cdc2b66caaab/) | ✅ Audited |
| OETHbHydrexAMOStrategy | unknown | base | n/a | [`0xc5d369...4f38e0`](./contracts/base-8453/0xc5d36960ffe43687ab1cb4f905b97f0a064f38e0/) | ✅ Audited |
| OUSDVault | unknown | base | n/a | [`0xa96fd1...3820f9`](./contracts/base-8453/0xa96fd141e92de60394103c7f9e045662913820f9/) | ✅ Audited |
| WOETH | unknown | base | n/a | [`0x9745a0...52d478`](./contracts/base-8453/0x9745a051bd218d78eb6b5d0f53c685f6b052d478/) | ✅ Audited |

### ⚠️ Verified + Unaudited (368)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccruedRewardsDistributor | unknown | sonic | n/a | [`0x1f030e...0641a0`](./contracts/sonic-146/0x1f030e4f3302670794f355afc0d30f4ae30641a0/) | ⚠️ Unaudited |
| ActivePool | unknown | arbitrum | n/a | [`0x326398...cf3b27`](./contracts/arbitrum-42161/0x326398de2db419ee39f97600a5eee97093cf3b27/) | ⚠️ Unaudited |
| AddressesProvider | unknown | mode | n/a | [`0x8d5b09...687f73`](./contracts/mode-34443/0x8d5b096c99b26d07c7f8d8a8f25be97427687f73/) | ⚠️ Unaudited |
| AdminContract | unknown | arbitrum | n/a | [`0x4928c8...db3d14`](./contracts/arbitrum-42161/0x4928c8f8c20a1e3c295dddbe05095a9abbdb3d14/) | ⚠️ Unaudited |
| AerodromeV2Liquidator | unknown | mode | n/a | [`0x0111f3...846d8a`](./contracts/mode-34443/0x0111f383e756f57037a939c49c9e69ca06846d8a/) | ⚠️ Unaudited |
| AirdropClaim | unknown | sonic | n/a | [`0x0797c9...f0c260`](./contracts/sonic-146/0x0797c9a281e74b1b91908223786259fa02f0c260/) | ⚠️ Unaudited |
| Airdropper | unknown | mode | n/a | [`0x521dd8...f5dd1f`](./contracts/mode-34443/0x521dd84fc4fc715d50549f4913e7eba2eef5dd1f/) | ⚠️ Unaudited |
| AlgebraSwapLiquidator | unknown | mode | n/a | [`0x5ca3fd...20f3c8`](./contracts/mode-34443/0x5ca3fd2c285c4138185ef1bda7573d415020f3c8/) | ⚠️ Unaudited |
| AlgebraVaultFactory | unknown | sonic | n/a | [`0xc21af3...e4e5e6`](./contracts/sonic-146/0xc21af3e9177d706529fa771f0091dafeb3e4e5e6/) | ⚠️ Unaudited |
| ArcadeMemecoin | unknown | sonic | n/a | [`0x577fde...64341d`](./contracts/sonic-146/0x577fde1619ae2e1e0a0893e1208ddf2d1864341d/) | ⚠️ Unaudited |
| AuctionProxy | unknown | bsc | n/a | [`0x97ab68...ee0fd3`](./contracts/bsc-56/0x97ab686ba1cda6767cc85df12d3190afb7ee0fd3/) | ⚠️ Unaudited |
| AuthoritiesRegistry | unknown | mode | n/a | [`0x5d7480...91738e`](./contracts/mode-34443/0x5d74800e977bfc8e14eca28c9405bacbd091738e/) | ⚠️ Unaudited |
| AutoRedemption | unknown | arbitrum | n/a | [`0x06af8d...a6e0b3`](./contracts/arbitrum-42161/0x06af8da46b0388d138c23f4d628d05801fa6e0b3/) | ⚠️ Unaudited |
| AutoRedemptionV2 | unknown | arbitrum | n/a | [`0x318fa8...f1cbdb`](./contracts/arbitrum-42161/0x318fa82e2227aac86879712bf631a98e36f1cbdb/) | ⚠️ Unaudited |
| BaseBridgeHelperModule | unknown | base | n/a | [`0x362dbd...655b26`](./contracts/base-8453/0x362dbd4ff662b2e2b05b9cedc91da2dd2c655b26/) | ⚠️ Unaudited |
| BasicLens | unknown | optimism | n/a | [`0x168901...6fd311`](./contracts/optimism-10/0x168901193a72e82c00110c799c9c22f3ae6fd311/) | ⚠️ Unaudited |
| BnbOracle | unknown | bsc | n/a | [`0x097c2c...315bc2`](./contracts/bsc-56/0x097c2c40a0deff531832a7fdbf1bbb0aa3315bc2/) | ⚠️ Unaudited |
| BooMirrorWorld | unknown | sonic | n/a | [`0xa95ea1...f5d605`](./contracts/sonic-146/0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605/) | ⚠️ Unaudited |
| BooOFT | unknown | sonic | n/a | [`0x7a0c53...6cb384`](./contracts/sonic-146/0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384/) | ⚠️ Unaudited |
| BorrowerOperations | unknown | arbitrum | n/a | [`0x6b4258...850637`](./contracts/arbitrum-42161/0x6b42581ac12f442503dfb3dff2bc75ed83850637/) | ⚠️ Unaudited |
| BrewBooV3 | unknown | sonic | n/a | [`0x79710d...c8b179`](./contracts/sonic-146/0x79710d58c3600401fe21e799ff97f37100c8b179/) | ⚠️ Unaudited |
| BribeFactory | unknown | arbitrum | n/a | [`0x6855d5...e3304f`](./contracts/arbitrum-42161/0x6855d50f7dc1a3b08b8cf55d09f6dbea0ce3304f/) | ⚠️ Unaudited |
| BribeRewarder | unknown | sonic | n/a | [`0x161a72...b7f8a7`](./contracts/sonic-146/0x161a72027d83da46329ed64a4edfd0b717b7f8a7/) | ⚠️ Unaudited |
| BridgedBaseWOETHProxy | unknown | base | n/a | [`0xd87243...bbf839`](./contracts/base-8453/0xd8724322f44e5c58d7a815f542036fb17dbbf839/) | ⚠️ Unaudited |
| BridgedWOETHStrategyProxy | unknown | base | n/a | [`0x80c864...acf835`](./contracts/base-8453/0x80c864704dd06c3693ed5179190786ee38acf835/) | ⚠️ Unaudited |
| CCTPHookWrapper | unknown | base | n/a | [`0x6d04c7...f79670`](./contracts/base-8453/0x6d04c71d805c158a3e786b3feed3a6b490f79670/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | mode | n/a | [`0x0bf353...8e6c75`](./contracts/mode-34443/0x0bf35374fddff73eb48a78328e916fb97a8e6c75/) | ⚠️ Unaudited |
| CErc20Immutable | unknown | optimism | n/a | [`0x066c98...d2848d`](./contracts/optimism-10/0x066c98e48238e8d77006a5fa14ec3b080fd2848d/) | ⚠️ Unaudited |
| CErc20PluginDelegate | unknown | mode | n/a | [`0x0effea...224126`](./contracts/mode-34443/0x0effea273a9df3e1436d51822678f24e76224126/) | ⚠️ Unaudited |
| CErc20PluginRewardsDelegate | unknown | mode | n/a | [`0x798ee0...5884d1`](./contracts/mode-34443/0x798ee06eb08151fadf5ffd07b7931b79985884d1/) | ⚠️ Unaudited |
| CErc20RewardsDelegate | unknown | mode | n/a | [`0x286703...786244`](./contracts/mode-34443/0x2867039431b712b82f52258e7c6f2b3a43786244/) | ⚠️ Unaudited |
| CErc20Upgradable | unknown | arbitrum | n/a | [`0x05ebda...0a29ad`](./contracts/arbitrum-42161/0x05ebdaa188d1374c6535cde95eaf4c53a90a29ad/) | ⚠️ Unaudited |
| CerosRouter | unknown | bsc | n/a | [`0x1ba023...44e8ca`](./contracts/bsc-56/0x1ba0235e6fcd1c32ad4582dcee6f2bacda44e8ca/) | ⚠️ Unaudited |
| CeToken | unknown | bsc | n/a | [`0x200004...e42fc8`](./contracts/bsc-56/0x200004cf560b5dc7bfd8a8164f33501d43e42fc8/) | ⚠️ Unaudited |
| CeVault | unknown | bsc | n/a | [`0x054536...f8b015`](./contracts/bsc-56/0x054536a406aeb1329f64636307fdd596fbf8b015/) | ⚠️ Unaudited |
| Claim | unknown | ethereum | n/a | [`0x1026e6...6fd17f`](./contracts/ethereum-1/0x1026e6e484f0b2214e218519bbdfff82d86fd17f/) | ⚠️ Unaudited |
| ClaimBribesSafeModule | unknown | base | n/a | [`0x26179a...28e759`](./contracts/base-8453/0x26179ada0f7cb714c11a8190e1f517988c28e759/) | ⚠️ Unaudited |
| ClaimFeesMulticall | unknown | sonic | n/a | [`0x0fe846...4a2f83`](./contracts/sonic-146/0x0fe846e5e471023ce26faa5e96403ee7d74a2f83/) | ⚠️ Unaudited |
| ClaimPrivate | unknown | ethereum | n/a | [`0xb49615...03792a`](./contracts/ethereum-1/0xb49615a5d4b21531df759a57384767674c03792a/) | ⚠️ Unaudited |
| CollateralSwap | unknown | mode | n/a | [`0xc10fd8...27ebeb`](./contracts/mode-34443/0xc10fd848a764e878b36ef9acb7936dc7fa27ebeb/) | ⚠️ Unaudited |
| CollSurplusPool | unknown | arbitrum | n/a | [`0xc818f8...0af15c`](./contracts/arbitrum-42161/0xc818f878f27d0273fb53b71d281c82921f0af15c/) | ⚠️ Unaudited |
| CombinedDataFeed | unknown | arbitrum | n/a | [`0x7fe031...2c9bf5`](./contracts/arbitrum-42161/0x7fe03189f41be9816ac5c576f0325dba222c9bf5/) | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | [`0x0bc22a...044984`](./contracts/arbitrum-42161/0x0bc22ac33288324d4c5d328c0ba060c033044984/) | ⚠️ Unaudited |
| ComptrollerFirstExtension | unknown | mode | n/a | [`0x639322...35f3a0`](./contracts/mode-34443/0x6393228b6909ab12413816679ec992778e35f3a0/) | ⚠️ Unaudited |
| ComptrollerPrudentiaCapsExt | unknown | mode | n/a | [`0x0a183b...87bee4`](./contracts/mode-34443/0x0a183b983e395bebfa344389ef08250ae987bee4/) | ⚠️ Unaudited |
| ContractPermissionManager | unknown | sonic | n/a | [`0x1125ae...7ffc6d`](./contracts/sonic-146/0x1125aed6711953ab8aee1cda4b1b829e967ffc6d/) | ⚠️ Unaudited |
| Controller | unknown | arbitrum | n/a | [`0x23c717...6ac713`](./contracts/arbitrum-42161/0x23c7170fd3fec8ef421eba8f69b8e72dd86ac713/) | ⚠️ Unaudited |
| CTokenFirstExtension | unknown | mode | n/a | [`0x13b727...81fa14`](./contracts/mode-34443/0x13b727a6ff1856d27e85cf0c85cb096b8781fa14/) | ⚠️ Unaudited |
| DefaultPool | unknown | arbitrum | n/a | [`0x24ae02...8b09e7`](./contracts/arbitrum-42161/0x24ae02776b3c76cb20caf4ea24f8a8bd438b09e7/) | ⚠️ Unaudited |
| Directory | unknown | arbitrum | n/a | [`0xbe57e0...e56866`](./contracts/arbitrum-42161/0xbe57e0d3126a1f28a2e840ecbb842cb357e56866/) | ⚠️ Unaudited |
| DirectStakingBaseHandlerProxy | unknown | base | n/a | [`0xdb282a...b4c1e3`](./contracts/base-8453/0xdb282a4935fdab14a1b5ff14a4de75e100b4c1e3/) | ⚠️ Unaudited |
| DirectStakingHandlerL2 | unknown | base | n/a | [`0x851de5...37904b`](./contracts/base-8453/0x851de5ea424557b52d1d6debe5bda12a7d37904b/) | ⚠️ Unaudited |
| Dog | unknown | bsc | n/a | [`0x077cf8...e43724`](./contracts/bsc-56/0x077cf889bb38e0d3f4f8cded84f2008240e43724/) | ⚠️ Unaudited |
| DragonswapFactory | unknown | sei | n/a | [`0x71f6b4...bca03d`](./contracts/sei-1329/0x71f6b49ae1558357bbb5a6074f1143c46cbca03d/) | ⚠️ Unaudited |
| DragonswapRouter | unknown | sei | n/a | [`0xa4cf2f...5712f2`](./contracts/sei-1329/0xa4cf2f53d1195addde9e4d3aca54f556895712f2/) | ⚠️ Unaudited |
| DragonswapStaker | unknown | sei | n/a | [`0x0d579d...89a896`](./contracts/sei-1329/0x0d579da091f03c9b6b78d7f84dd2d16a7989a896/) | ⚠️ Unaudited |
| DragonswapStakerBoosted | unknown | sei | n/a | [`0x69d40c...c708df`](./contracts/sei-1329/0x69d40c24552a9e6884345e5c9966363178c708df/) | ⚠️ Unaudited |
| DragonswapStakerFactory | unknown | sei | n/a | [`0x349752...1d4e2d`](./contracts/sei-1329/0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d/) | ⚠️ Unaudited |
| DummyERC20 | unknown | sonic | n/a | [`0xe0143c...f78eb9`](./contracts/sonic-146/0xe0143ca6e6a0fb1a6ecae8faf94191a664f78eb9/) | ⚠️ Unaudited |
| EmergencyShutdown | unknown | bsc | n/a | [`0xac6295...a61b2d`](./contracts/bsc-56/0xac629578447a6f6c16eb004027a44e7455a61b2d/) | ⚠️ Unaudited |
| EngineChip | unknown | sonic | n/a | [`0x0e7a7a...2a70fc`](./contracts/sonic-146/0x0e7a7a477ab4ddfb2d7a500d33c38a19372a70fc/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | mode | n/a | [`0x184700...bc34ca`](./contracts/mode-34443/0x18470019bf0e94611f15852f7e93cf5d65bc34ca/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0xc49b73...c631d0`](./contracts/arbitrum-42161/0xc49b737fa56f9142974a54f6c66055468ec631d0/) | ⚠️ Unaudited |
| ERC20Token | unknown | ethereum | n/a | [`0xadd353...4dafe4`](./contracts/ethereum-1/0xadd353fb2e2c563383ff3272a500f3e7134dafe4/) | ⚠️ Unaudited |
| ERC20WarpToken | unknown | sonic | n/a | [`0xbf5899...24f4ea`](./contracts/sonic-146/0xbf5899166ac476370b3117c9256b7fc45624f4ea/) | ⚠️ Unaudited |
| EUROsArbitrumL2 | unknown | arbitrum | n/a | [`0x643b34...f940e9`](./contracts/arbitrum-42161/0x643b34980e635719c15a2d4ce69571a258f940e9/) | ⚠️ Unaudited |
| ExternalRewardDistributor | unknown | optimism | n/a | [`0x2b1d11...ae2597`](./contracts/optimism-10/0x2b1d11f82fc70e2693ab19c4c3da23da75ae2597/) | ⚠️ Unaudited |
| Factory | unknown | sonic | n/a | [`0x157030...170ad0`](./contracts/sonic-146/0x1570300e9cfec66c9fb0c8bc14366c86eb170ad0/) | ⚠️ Unaudited |
| Farming | unknown | bsc | n/a | [`0xe2aec5...88e538`](./contracts/bsc-56/0xe2aec5be332db7e8eb02f2af829ac118bd88e538/) | ⚠️ Unaudited |
| FarmLens | unknown | sonic | n/a | [`0x5657ab...03809b`](./contracts/sonic-146/0x5657ab61ea91bcc22ccaae7168a621488003809b/) | ⚠️ Unaudited |
| FarmZapper | unknown | sonic | n/a | [`0xa3db21...3c6cd3`](./contracts/sonic-146/0xa3db21cd2ee9c27f636bee29670669ef6c3c6cd3/) | ⚠️ Unaudited |
| FeeCollector | unknown | arbitrum | n/a | [`0x0d2c4a...cb2a09`](./contracts/arbitrum-42161/0x0d2c4ae1859c4f8bfd47755d52ce844b26cb2a09/) | ⚠️ Unaudited |
| FeeDistributor | unknown | mode | n/a | [`0x9a0af9...6fceec`](./contracts/mode-34443/0x9a0af901cae82f309f1047e1026f66a08c6fceec/) | ⚠️ Unaudited |
| FeeSender | unknown | sonic | n/a | [`0x2bb0bd...748e0b`](./contracts/sonic-146/0x2bb0bda25fbf103176337551729741b4d5748e0b/) | ⚠️ Unaudited |
| FixedNativePriceOracle | unknown | mode | n/a | [`0x1d7669...cbc28a`](./contracts/mode-34443/0x1d7669b6bdfdb83066dd7c0ada4b630b25cbc28a/) | ⚠️ Unaudited |
| FixedPriceAggregator | unknown | arbitrum | n/a | [`0x118e30...27d3a0`](./contracts/arbitrum-42161/0x118e3040b899ec6aad6a696b3583ae03a927d3a0/) | ⚠️ Unaudited |
| Fly | unknown | sonic | n/a | [`0x1b3bbc...37333a`](./contracts/sonic-146/0x1b3bbce7241b357d8a8e3523f6d91ee50f37333a/) | ⚠️ Unaudited |
| Fundraising | unknown | optimism | n/a | [`0x5b8978...f81e5f`](./contracts/optimism-10/0x5b89789fb230d17c4b0ae1461f26828554f81e5f/) | ⚠️ Unaudited |
| GasPool | unknown | arbitrum | n/a | [`0x9d8bb5...214b6d`](./contracts/arbitrum-42161/0x9d8bb5496332cbeed59f1211f28db8b5eb214b6d/) | ⚠️ Unaudited |
| GaugeFactory | unknown | arbitrum | n/a | [`0x330b0a...1a5094`](./contracts/arbitrum-42161/0x330b0aac13e389313e48f9b70e4d1531c71a5094/) | ⚠️ Unaudited |
| GaugeManager | unknown | sonic | n/a | [`0x04259a...08987a`](./contracts/sonic-146/0x04259a1ef53c47c8595b5f7376d083233c08987a/) | ⚠️ Unaudited |
| GemJoin | unknown | bsc | n/a | [`0x121a62...ac3997`](./contracts/bsc-56/0x121a62d0e6ed0f180b4129124d4b95bf27ac3997/) | ⚠️ Unaudited |
| GlobalPauser | unknown | mode | n/a | [`0x5d4983...a50e3f`](./contracts/mode-34443/0x5d498338c6e38555020fb24b977f5e2817a50e3f/) | ⚠️ Unaudited |
| GovernanceToken | unknown | mode | n/a | [`0xabbf70...c07eed`](./contracts/mode-34443/0xabbf702d5151b77263af53b02ff0ccede7c07eed/) | ⚠️ Unaudited |
| GovernanceTreasury | unknown | arbitrum | n/a | [`0x1b94ca...c13360`](./contracts/arbitrum-42161/0x1b94ca0d99a7cd14e67c9d3618a9726094c13360/) | ⚠️ Unaudited |
| gravETH_L2 | unknown | arbitrum | n/a | [`0x17abbb...f2203b`](./contracts/arbitrum-42161/0x17abbb934786dc9feb18906dbc4524b29af2203b/) | ⚠️ Unaudited |
| GravitaDebtToken | unknown | arbitrum | n/a | [`0x894134...cb9487`](./contracts/arbitrum-42161/0x894134a25a5fac1c2c26f1d8fbf05111a3cb9487/) | ⚠️ Unaudited |
| Hay | unknown | bsc | n/a | [`0x1c9ec4...b34ad5`](./contracts/bsc-56/0x1c9ec478efbf08695d14f8e86aa08138e6b34ad5/) | ⚠️ Unaudited |
| HayJoin | unknown | bsc | n/a | [`0x26efd4...d2f1d8`](./contracts/bsc-56/0x26efd4485af1033813f8515773ae4f2219d2f1d8/) | ⚠️ Unaudited |
| hBNB | unknown | bsc | n/a | [`0x3ade62...4144bb`](./contracts/bsc-56/0x3ade62a5d60f429e4482ab51da96d15c604144bb/) | ⚠️ Unaudited |
| HelioProvider | unknown | bsc | n/a | [`0x106cda...77f6a6`](./contracts/bsc-56/0x106cda74567d88fb1adea3283ff4b97e2a77f6a6/) | ⚠️ Unaudited |
| HelioRewards | unknown | bsc | n/a | [`0x3ed005...fe09cc`](./contracts/bsc-56/0x3ed0052c81f465a49615d55cf482262a76fe09cc/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | bsc | n/a | [`0xce7bc1...f2b0fc`](./contracts/bsc-56/0xce7bc1ec7ebc9c500f577d78821e2238cff2b0fc/) | ⚠️ Unaudited |
| Interaction | unknown | bsc | n/a | [`0x0d4b95...dbf9bc`](./contracts/bsc-56/0x0d4b952a053f8fa7b40a12ece3d7707539dbf9bc/) | ⚠️ Unaudited |
| IonicFlywheel | unknown | mode | n/a | [`0x4e2dfa...be517e`](./contracts/mode-34443/0x4e2dfafc783372bf39986721f9f97f666bbe517e/) | ⚠️ Unaudited |
| IonicFlywheelBorrow | unknown | mode | n/a | [`0x476326...025996`](./contracts/mode-34443/0x47632638053139307342c086d60b510eb0025996/) | ⚠️ Unaudited |
| IonicFlywheelBorrowBooster | unknown | mode | n/a | [`0xd2ea2d...a29b14`](./contracts/mode-34443/0xd2ea2da2c6b0251b1b0436801c2dac6afca29b14/) | ⚠️ Unaudited |
| IonicFlywheelDynamicRewards | unknown | mode | n/a | [`0x02f606...20d11f`](./contracts/mode-34443/0x02f606ae6016af2c06a4ee50129f3e24c520d11f/) | ⚠️ Unaudited |
| IonicFlywheelLensRouter | unknown | mode | n/a | [`0x01ab48...a5e449`](./contracts/mode-34443/0x01ab485a0fae0667be36ab876c95adc1a2a5e449/) | ⚠️ Unaudited |
| IonicToken | unknown | mode | n/a | [`0xd07cd8...272164`](./contracts/mode-34443/0xd07cd8df6ccdc9228ebced7fa236e1d59c272164/) | ⚠️ Unaudited |
| IonicUniV3Liquidator | unknown | mode | n/a | [`0x0472de...740a9d`](./contracts/mode-34443/0x0472de8cb207aa872796de41bb1f21c077740a9d/) | ⚠️ Unaudited |
| Jug | unknown | bsc | n/a | [`0x2655e7...6db7af`](./contracts/bsc-56/0x2655e77fdc7e4284bf491b2ceeff34414d6db7af/) | ⚠️ Unaudited |
| JumpRateModel | unknown | mode | n/a | [`0x21a455...217817`](./contracts/mode-34443/0x21a455ced9c79bc523d4e340c2b97521f4217817/) | ⚠️ Unaudited |
| JumpRateModelV4 | unknown | arbitrum | n/a | [`0x0c0348...f5d50a`](./contracts/arbitrum-42161/0x0c034899c0113b7dcaeee0b71bc7c9455bf5d50a/) | ⚠️ Unaudited |
| LBFactory | unknown | sonic | n/a | [`0x39d966...d6ee43`](./contracts/sonic-146/0x39d966c1bafe7d3f1f53da4845805e15f7d6ee43/) | ⚠️ Unaudited |
| LBHooksExtraRewarder | unknown | sonic | n/a | [`0x0a82b2...d89e26`](./contracts/sonic-146/0x0a82b2611811d410f1b5e44221d4b1f545d89e26/) | ⚠️ Unaudited |
| LBHooksLens | unknown | sonic | n/a | [`0x087495...70e1a1`](./contracts/sonic-146/0x087495d1e9bb380a17783247ac260a124070e1a1/) | ⚠️ Unaudited |
| LBHooksManager | unknown | sonic | n/a | [`0x4962db...27f7ac`](./contracts/sonic-146/0x4962db3230075a3413251e22af3dd0761427f7ac/) | ⚠️ Unaudited |
| LBHooksMCRewarder | unknown | sonic | n/a | [`0x78ceff...203388`](./contracts/sonic-146/0x78ceffce6bd2093830fcfa9fb44a9fe858203388/) | ⚠️ Unaudited |
| LBHooksSimpleRewarder | unknown | sonic | n/a | [`0x068812...531cb6`](./contracts/sonic-146/0x068812c0633752207e3b39ce5cf623ebea531cb6/) | ⚠️ Unaudited |
| LBPair | unknown | sonic | n/a | [`0xce7f2a...d416e4`](./contracts/sonic-146/0xce7f2a4f207ba9932c8935650a30fa5b53d416e4/) | ⚠️ Unaudited |
| LBQuoter | unknown | sonic | n/a | [`0x5277be...c6cc49`](./contracts/sonic-146/0x5277be3b93da960c7e92c50be58424e008c6cc49/) | ⚠️ Unaudited |
| LBRouter | unknown | sonic | n/a | [`0x596eeb...ffb881`](./contracts/sonic-146/0x596eeb70a441d70511a64a2ea114beb5a8ffb881/) | ⚠️ Unaudited |
| LeveredPositionFactory | unknown | mode | n/a | [`0x9b506a...40cd45`](./contracts/mode-34443/0x9b506a03bbff2a842866b10bc6732da72640cd45/) | ⚠️ Unaudited |
| LeveredPositionFactoryFirstExtension | unknown | mode | n/a | [`0x4e20eb...737fea`](./contracts/mode-34443/0x4e20eb2af6be30660323cb25204e071116737fea/) | ⚠️ Unaudited |
| LeveredPositionFactorySecondExtension | unknown | mode | n/a | [`0x14bb1c...e6d000`](./contracts/mode-34443/0x14bb1c7293c4e3e28ef4a74c3d73badd5de6d000/) | ⚠️ Unaudited |
| LeveredPositionsLens | unknown | mode | n/a | [`0xd9a567...0f3a28`](./contracts/mode-34443/0xd9a5677594694819f69d0907c3094eab480f3a28/) | ⚠️ Unaudited |
| LinearDecrease | unknown | bsc | n/a | [`0x271d20...10dd28`](./contracts/bsc-56/0x271d20d55e36044bf0d35dd79013825b5f10dd28/) | ⚠️ Unaudited |
| LiquidationAutomation | unknown | arbitrum | n/a | [`0x2b218f...51c746`](./contracts/arbitrum-42161/0x2b218f2a96b7f738af4936fc596a0c02a351c746/) | ⚠️ Unaudited |
| LiquidationPoolManager | unknown | arbitrum | n/a | [`0x2a823e...d29910`](./contracts/arbitrum-42161/0x2a823ee5f731c5699e75e51aca799e1141d29910/) | ⚠️ Unaudited |
| LiquidatorsRegistry | unknown | mode | n/a | [`0xae2647...42cd6a`](./contracts/mode-34443/0xae2647747e037410ff477e72176ead322d42cd6a/) | ⚠️ Unaudited |
| LiquidatorsRegistryExtension | unknown | mode | n/a | [`0x3fa4bc...93d621`](./contracts/mode-34443/0x3fa4bc2fcac5515d5b758d4d580bbd626c93d621/) | ⚠️ Unaudited |
| LiquidatorsRegistrySecondExtension | unknown | mode | n/a | [`0x139bd5...d03900`](./contracts/mode-34443/0x139bd5cf15a1312bfd165f36c0b88987a9d03900/) | ⚠️ Unaudited |
| LiquidityGenerator | unknown | optimism | n/a | [`0x17063a...a00ed7`](./contracts/optimism-10/0x17063ad4e83b0aba4ca0f3fc3a9794e807a00ed7/) | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | sonic | n/a | [`0x4f95b0...774b20`](./contracts/sonic-146/0x4f95b0dac14ddbfa22c7c7f475cf819018774b20/) | ⚠️ Unaudited |
| Lizard | unknown | arbitrum | n/a | [`0x463913...8d3b0e`](./contracts/arbitrum-42161/0x463913d3a3d3d291667d53b8325c598eb88d3b0e/) | ⚠️ Unaudited |
| LizardETHStg | unknown | arbitrum | n/a | [`0x425c29...15ad17`](./contracts/arbitrum-42161/0x425c296bacf5db485a67252a0bacc3816115ad17/) | ⚠️ Unaudited |
| LizardFactory | unknown | arbitrum | n/a | [`0x734d84...407074`](./contracts/arbitrum-42161/0x734d84631f00dc0d3fcd18b04b6cf42bfd407074/) | ⚠️ Unaudited |
| LizardMinter | unknown | arbitrum | n/a | [`0x4d24e9...05ec3c`](./contracts/arbitrum-42161/0x4d24e9cc5a8c848f3f8bfa14ebb8a7607105ec3c/) | ⚠️ Unaudited |
| LizardRouter01 | unknown | arbitrum | n/a | [`0xf26515...94b3d0`](./contracts/arbitrum-42161/0xf26515d5482e2c2fd237149bf6a653da4794b3d0/) | ⚠️ Unaudited |
| LizardSink | unknown | arbitrum | n/a | [`0x0b194a...d9075f`](./contracts/arbitrum-42161/0x0b194a1a5d2c2697858b9e3b523c509893d9075f/) | ⚠️ Unaudited |
| LizardStrategyETHStgV4 | unknown | arbitrum | n/a | [`0x20a8db...786c44`](./contracts/arbitrum-42161/0x20a8db282dee1cbccf837e1a4df6d0af83786c44/) | ⚠️ Unaudited |
| LizardStrategyETHStgV5 | unknown | arbitrum | n/a | [`0xbc29f9...adf624`](./contracts/arbitrum-42161/0xbc29f9e675630c604e382b0775cb65baadadf624/) | ⚠️ Unaudited |
| LizardStrategyUsdcStgV4 | unknown | arbitrum | n/a | [`0x758d04...97e143`](./contracts/arbitrum-42161/0x758d04dc11398fd20061411655ed269eba97e143/) | ⚠️ Unaudited |
| LizardStrategyUsdcStgV5 | unknown | arbitrum | n/a | [`0x75524e...6bed23`](./contracts/arbitrum-42161/0x75524e97e5a6f7a693c593fda4ec42c3286bed23/) | ⚠️ Unaudited |
| LizardStrategyUsdtStgV4 | unknown | arbitrum | n/a | [`0xe119c6...67807b`](./contracts/arbitrum-42161/0xe119c68be873e14d26f8413f36c466b40b67807b/) | ⚠️ Unaudited |
| LizardStrategyUsdtStgV5 | unknown | arbitrum | n/a | [`0xc37a6d...3dcae5`](./contracts/arbitrum-42161/0xc37a6d784bf2c68b8e680ab970e398b5703dcae5/) | ⚠️ Unaudited |
| LizardTimelock | unknown | arbitrum | n/a | [`0x2c1c69...e6dd25`](./contracts/arbitrum-42161/0x2c1c69afeecd9d6d57dde30c62a080e7b9e6dd25/) | ⚠️ Unaudited |
| LizardUsdcChronos | unknown | arbitrum | n/a | [`0x48e435...74b15f`](./contracts/arbitrum-42161/0x48e43586ca0764523431ae78ac24cd458674b15f/) | ⚠️ Unaudited |
| LizardUsdcStg | unknown | arbitrum | n/a | [`0x54355c...a65db5`](./contracts/arbitrum-42161/0x54355cc6913b26a15cca1f820cf17d362fa65db5/) | ⚠️ Unaudited |
| LizardUsdtStg | unknown | arbitrum | n/a | [`0x6f456a...303db9`](./contracts/arbitrum-42161/0x6f456ae422d171ceac7fdab4bc5febe322303db9/) | ⚠️ Unaudited |
| LizardVoter | unknown | arbitrum | n/a | [`0x98a1de...3f99cc`](./contracts/arbitrum-42161/0x98a1de08715800801e9764349f5a71cbe63f99cc/) | ⚠️ Unaudited |
| LooplessFlywheelBooster | unknown | mode | n/a | [`0x1d89e5...ce47b4`](./contracts/mode-34443/0x1d89e5ba287e67ac0046d2218be5fe1382ce47b4/) | ⚠️ Unaudited |
| LUDWIG | unknown | sonic | n/a | [`0xe6cc4d...1764b5`](./contracts/sonic-146/0xe6cc4d855b4fd4a9d02f46b9adae4c5efb1764b5/) | ⚠️ Unaudited |
| LudwigTosser | unknown | sonic | n/a | [`0x002b9e...623237`](./contracts/sonic-146/0x002b9efe8b6a7a97543dc31592484b14a7623237/) | ⚠️ Unaudited |
| MagpieProtocolSale | unknown | sonic | n/a | [`0x52bebb...4ad9d3`](./contracts/sonic-146/0x52bebb970697476313ae2b3383f40d4afd4ad9d3/) | ⚠️ Unaudited |
| MagpieRouterCore | unknown | sonic | n/a | [`0xbdb12d...b16856`](./contracts/sonic-146/0xbdb12d3ad22a7ac40ded89041de4d32f28b16856/) | ⚠️ Unaudited |
| MagpieRouterV3 | unknown | sonic | n/a | [`0xba7bac...07b104`](./contracts/sonic-146/0xba7bac71a8ee550d89b827fe6d67bc3dca07b104/) | ⚠️ Unaudited |
| MagpieRouterV3_1 | unknown | sonic | n/a | [`0xc32585...5e65a9`](./contracts/sonic-146/0xc325856e5585823aac0d1fd46c35c608d95e65a9/) | ⚠️ Unaudited |
| MasterChefRewarder | unknown | sonic | n/a | [`0x501c47...fdefd8`](./contracts/sonic-146/0x501c4779c86add2a21115e4b8844bb31b6fdefd8/) | ⚠️ Unaudited |
| MasterPriceOracle | unknown | mode | n/a | [`0x4e7676...e3c9ae`](./contracts/mode-34443/0x4e7676b20b86beea9c197be756361680fae3c9ae/) | ⚠️ Unaudited |
| Math | unknown | base | n/a | [`0x91f095...826fda`](./contracts/base-8453/0x91f095bb7887dc95bc400e86f39498250a826fda/) | ⚠️ Unaudited |
| MerkleAirdrop | unknown | optimism | n/a | [`0x6b38c5...a71df9`](./contracts/optimism-10/0x6b38c561366a939ea8711a7311c8e5aab0a71df9/) | ⚠️ Unaudited |
| MerkleTree | unknown | sonic | n/a | [`0x36daa5...6f6419`](./contracts/sonic-146/0x36daa584cb9161f0d1bb301864ec728ec06f6419/) | ⚠️ Unaudited |
| MerkleTreeSWPxNFT | unknown | sonic | n/a | [`0x665bd4...dd8e5f`](./contracts/sonic-146/0x665bd48af6dd0a63d057d292c20ded0f4bdd8e5f/) | ⚠️ Unaudited |
| Metro | unknown | sonic | n/a | [`0x71e995...1f7321`](./contracts/sonic-146/0x71e99522ead5e21cf57f1f542dc4ad2e841f7321/) | ⚠️ Unaudited |
| MetroFairLaunch | unknown | sonic | n/a | [`0x1f18af...9b6609`](./contracts/sonic-146/0x1f18af7f1287a8a2a23a6ac71da2729e3a9b6609/) | ⚠️ Unaudited |
| MetroGem | unknown | sonic | n/a | [`0x8a3b1c...f350db`](./contracts/sonic-146/0x8a3b1cd8d0decf649262e56ece6b339e59f350db/) | ⚠️ Unaudited |
| MetroGem2 | unknown | sonic | n/a | [`0x1ae89c...e37a5e`](./contracts/sonic-146/0x1ae89cc21e1cf2d1e95ba5ebd5b3b1cf89e37a5e/) | ⚠️ Unaudited |
| MetroStaking | unknown | sonic | n/a | [`0xb7b785...8ceb8b`](./contracts/sonic-146/0xb7b785b01ed09f2c59a42994c1f8675e428ceb8b/) | ⚠️ Unaudited |
| MetroStaking2 | unknown | sonic | n/a | [`0x197e72...f3b254`](./contracts/sonic-146/0x197e72f8b1c9c9e46337bf0a4cce5d6bc0f3b254/) | ⚠️ Unaudited |
| MinterUpgradeable | unknown | sonic | n/a | [`0x4fe93c...f80589`](./contracts/sonic-146/0x4fe93ced1a0a96bd559ba4572c9da8d76ef80589/) | ⚠️ Unaudited |
| MixedPriceOracle | unknown | arbitrum | n/a | [`0x7ad3c5...845cd6`](./contracts/arbitrum-42161/0x7ad3c54286d13fa788cb86ee379b0ad16b845cd6/) | ⚠️ Unaudited |
| MixedPriceOracleWithLST | unknown | arbitrum | n/a | [`0x075507...dc62a9`](./contracts/arbitrum-42161/0x0755076f227839f23939d3a6e152e57a27dc62a9/) | ⚠️ Unaudited |
| MixedPriceOracleWithWstETH | unknown | arbitrum | n/a | [`0x58d8e6...e48e37`](./contracts/arbitrum-42161/0x58d8e644f675c382a54e83066bcc0fc90ee48e37/) | ⚠️ Unaudited |
| MixedPriceOracleWithWstETHv2 | unknown | arbitrum | n/a | [`0x155ae3...96a030`](./contracts/arbitrum-42161/0x155ae3f6b0adc817d737e53ecb8bc0327d96a030/) | ⚠️ Unaudited |
| ModeLock | unknown | mode | n/a | [`0x74b847...b8c6b4`](./contracts/mode-34443/0x74b847b308bd89ef15639e6e4a2544e4b8b8c6b4/) | ⚠️ Unaudited |
| ModeOKXCampaign | unknown | mode | n/a | [`0x3bb530...028b3a`](./contracts/mode-34443/0x3bb5300254a8959d6a55fa2f02cfaf0c3d028b3a/) | ⚠️ Unaudited |
| ModeOKXNFT | unknown | mode | n/a | [`0x4ef75d...d194de`](./contracts/mode-34443/0x4ef75d9abf8083d1ff0fc6c0941cde5fd2d194de/) | ⚠️ Unaudited |
| MonolithicVoter | unknown | sonic | n/a | [`0x51f029...f12ee0`](./contracts/sonic-146/0x51f02904d2d5ce3cdc36cd2907ce36f0cef12ee0/) | ⚠️ Unaudited |
| NFTDescriptor | unknown | sonic | n/a | [`0xa5ae26...046856`](./contracts/sonic-146/0xa5ae26ac861375a6830caf1443ed385298046856/) | ⚠️ Unaudited |
| NFTMetadataGenerator | unknown | arbitrum | n/a | [`0x3c7027...012c54`](./contracts/arbitrum-42161/0x3c70276ee29fd659a9d06983522b731784012c54/) | ⚠️ Unaudited |
| NFTUtils | unknown | arbitrum | n/a | [`0xb5f2ae...3ac039`](./contracts/arbitrum-42161/0xb5f2aebd69828e369825b45fe2c52982e13ac039/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | sonic | n/a | [`0x839216...db3b55`](./contracts/sonic-146/0x8392166e9e45fb568d84c9ab3cd7566977db3b55/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | sonic | n/a | [`0x7d0776...53d32d`](./contracts/sonic-146/0x7d0776b117c87f4bc174870ec19719972853d32d/) | ⚠️ Unaudited |
| OETH | unknown | base | n/a | [`0x10b342...439989`](./contracts/base-8453/0x10b342e0205fc20a0934d1a0f25e270520439989/) | ⚠️ Unaudited |
| OETHBaseDripperProxy | unknown | base | n/a | [`0x02f2c6...d7f8d6`](./contracts/base-8453/0x02f2c609950e90934ce99e58b4d7326ad0d7f8d6/) | ⚠️ Unaudited |
| OETHBaseHarvester | unknown | base | n/a | [`0xa50fd5...5ffad8`](./contracts/base-8453/0xa50fd560af7433d00d231b397512f5df375ffad8/) | ⚠️ Unaudited |
| OETHBaseHarvesterProxy | unknown | base | n/a | [`0x0cbeac...54c22e`](./contracts/base-8453/0x0cbeacf86232fc04050cd679d860516f7254c22e/) | ⚠️ Unaudited |
| OETHBaseOracleRouter | unknown | base | n/a | [`0xbc80da...97c75b`](./contracts/base-8453/0xbc80da22601eae8720ed8ab117eb88c92b97c75b/) | ⚠️ Unaudited |
| OETHBaseVaultProxy | unknown | base | n/a | [`0x98a0cb...38cc93`](./contracts/base-8453/0x98a0cbef61bd2d21435f433be4cd42b56b38cc93/) | ⚠️ Unaudited |
| OETHBaseZapper | unknown | base | n/a | [`0x3b56c0...4d2bc1`](./contracts/base-8453/0x3b56c09543d3068f8488ed34e6f383c3854d2bc1/) | ⚠️ Unaudited |
| OETHbHydrexAMOProxy | unknown | base | n/a | [`0xe6bebe...08d9c3`](./contracts/base-8453/0xe6bebe3072ff42a7c2a4a5a9864b30bc5608d9c3/) | ⚠️ Unaudited |
| OETHDripper | unknown | base | n/a | [`0x0030c7...e6b16a`](./contracts/base-8453/0x0030c7dc6cb7f449e9566f273342c3370ee6b16a/) | ⚠️ Unaudited |
| OETHVault | unknown | base | n/a | [`0xe9f783...92fd66`](./contracts/base-8453/0xe9f783e7d9fceb90988fdf89bbb2bc3e7092fd66/) | ⚠️ Unaudited |
| OETHVaultValueChecker | unknown | base | n/a | [`0x9d98cf...7bcf6a`](./contracts/base-8453/0x9d98cf85b65fa1acef5e9aaa2300753adf7bcf6a/) | ⚠️ Unaudited |
| OFTChipAdapter | unknown | polygon | n/a | [`0x028815...37068f`](./contracts/polygon-137/0x028815b56433a4aae10087290d1ed9ef7437068f/) | ⚠️ Unaudited |
| OptimizedVaultsRegistry | unknown | mode | n/a | [`0x2ddf3d...aed83c`](./contracts/mode-34443/0x2ddf3ddfe856d1a4e5dbcb324194e2a622aed83c/) | ⚠️ Unaudited |
| OracleRewardVault | unknown | sonic | n/a | [`0x19d815...49a387`](./contracts/sonic-146/0x19d815667267d46254574e62647c2f500449a387/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | n/a | [`0x170526...5857c6`](./contracts/sonic-146/0x1705268cb99b7aa67e0f1f0c71004b83065857c6/) | ⚠️ Unaudited |
| OSonicDripperProxy | unknown | sonic | n/a | [`0xb570a2...3182ba`](./contracts/sonic-146/0xb570a2d463886c059c94daf779a7bbd84d3182ba/) | ⚠️ Unaudited |
| OSonicOracleRouter | unknown | sonic | n/a | [`0xe68e0c...c4e88b`](./contracts/sonic-146/0xe68e0c66950a7e02335fc9f44daa05d115c4e88b/) | ⚠️ Unaudited |
| OSonicVaultAdmin | unknown | sonic | n/a | [`0x1a44f4...9ec59f`](./contracts/sonic-146/0x1a44f4e2ccd75999cb7fd1d25b0828c4399ec59f/) | ⚠️ Unaudited |
| OSonicVaultCore | unknown | sonic | n/a | [`0x087a3e...8dcbd9`](./contracts/sonic-146/0x087a3e2b1342ddc7c4c8af6d7d3e5c8ea78dcbd9/) | ⚠️ Unaudited |
| OSonicVaultProxy | unknown | sonic | n/a | [`0x062225...13f3d2`](./contracts/sonic-146/0x062225ff81afd93b21c93a30d46f020a8c13f3d2/) | ⚠️ Unaudited |
| OSonicVaultProxy | unknown | sonic | n/a | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| OSonicZapper | unknown | sonic | n/a | [`0x8bb678...7d07ac`](./contracts/sonic-146/0x8bb67820e8ac1a775da25e50391718c1457d07ac/) | ⚠️ Unaudited |
| OwnedDistributor | unknown | optimism | n/a | [`0x2ba860...99ffc5`](./contracts/optimism-10/0x2ba86032e601e001aeb0069efff824bcf699ffc5/) | ⚠️ Unaudited |
| PairV2Helper | unknown | sonic | n/a | [`0x43cec2...52a86e`](./contracts/sonic-146/0x43cec2710e2382fd270cf3bebe3f34744e52a86e/) | ⚠️ Unaudited |
| PancakeProxyForDeposit | unknown | bsc | n/a | [`0x9a4304...28bf8e`](./contracts/bsc-56/0x9a4304a33b67d71c3e6b6d3a1f85484b7e28bf8e/) | ⚠️ Unaudited |
| PancakeStrategy | unknown | bsc | n/a | [`0x06ed12...e40123`](./contracts/bsc-56/0x06ed12f98595277fc59df1e6421963f265e40123/) | ⚠️ Unaudited |
| PermissionedRebaseModule | unknown | base | n/a | [`0xf63398...9d4a37`](./contracts/base-8453/0xf633980a61e9f90a41d030676059dc201d9d4a37/) | ⚠️ Unaudited |
| PermissionsRegistry | unknown | sonic | n/a | [`0x8751ea...4ed487`](./contracts/sonic-146/0x8751ea0634f85474c94e8462e93751d2104ed487/) | ⚠️ Unaudited |
| Permit2 | unknown | sonic | n/a | [`0x981ef1...162723`](./contracts/sonic-146/0x981ef1f1644715ae797434de4c0aad16e6162723/) | ⚠️ Unaudited |
| PoolBoostCentralRegistry | unknown | sonic | n/a | [`0x246594...24b3b3`](./contracts/sonic-146/0x246594d0276ffaeb0442c3edcdfb026e6924b3b3/) | ⚠️ Unaudited |
| PoolBoostCentralRegistryProxy | unknown | sonic | n/a | [`0x7c5cb7...4ca4a7`](./contracts/sonic-146/0x7c5cb7db176b188af729d8b3b00ef222dd4ca4a7/) | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | unknown | sonic | n/a | [`0x27281c...5f7689`](./contracts/sonic-146/0x27281ce00322ee8b7c078788fb624d051f5f7689/) | ⚠️ Unaudited |
| PoolDirectory | unknown | mode | n/a | [`0x20808c...ea1d2d`](./contracts/mode-34443/0x20808c1a73737016bbbf8acc6959a30446ea1d2d/) | ⚠️ Unaudited |
| PoolLens | unknown | mode | n/a | [`0x431c87...7ed480`](./contracts/mode-34443/0x431c87e08e2636733a945d742d25ba77577ed480/) | ⚠️ Unaudited |
| PoolLensSecondary | unknown | mode | n/a | [`0x7ea7bb...0d4154`](./contracts/mode-34443/0x7ea7bb80f3bbee9b52e6ed3775ba06c9c80d4154/) | ⚠️ Unaudited |
| PoolLocker | unknown | sonic | n/a | [`0x22ae6b...7694f7`](./contracts/sonic-146/0x22ae6bfe5277fb9b9058c051f6a30c03cf7694f7/) | ⚠️ Unaudited |
| PriceCalculator | unknown | arbitrum | n/a | [`0xbda964...e86175`](./contracts/arbitrum-42161/0xbda964d76ef8672df6a48ced8c7ea320f5e86175/) | ⚠️ Unaudited |
| PriceFeedL2 | unknown | arbitrum | n/a | [`0x532e0c...f81b75`](./contracts/arbitrum-42161/0x532e0cdc31f3bc0b38c7a1d1274e1211ccf81b75/) | ⚠️ Unaudited |
| PriceOracleV2 | unknown | optimism | n/a | [`0x22c7e5...1c0fea`](./contracts/optimism-10/0x22c7e5ce392bc951f63b68a8020b121a8e1c0fea/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x017ee6...75dbe2`](./contracts/bsc-56/0x017ee66f8f4607dbe4341986d0972c2bb275dbe2/) | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | sonic | n/a | [`0x35de16...73cfee`](./contracts/sonic-146/0x35de168492b6b22cffe53c12f46fbfaed173cfee/) | ⚠️ Unaudited |
| PrudentiaInterestRateModel | unknown | mode | n/a | [`0x3fa7f3...0275e1`](./contracts/mode-34443/0x3fa7f3a4127860c7c9b8130e472315c0a60275e1/) | ⚠️ Unaudited |
| PublicSaleTokenVesting | unknown | mode | n/a | [`0x2f0a2b...1b72dc`](./contracts/mode-34443/0x2f0a2b9dcdf899b34f482ee50137cdf8ed1b72dc/) | ⚠️ Unaudited |
| PythAggregatorAdapter | unknown | sonic | n/a | [`0x31b803...742ab0`](./contracts/sonic-146/0x31b803a540b064f13e427138f8b04004ec742ab0/) | ⚠️ Unaudited |
| PythPriceOracle | unknown | mode | n/a | [`0x13fd27...441794`](./contracts/mode-34443/0x13fd2701c3017bcc375ad14dd8433c6d7a441794/) | ⚠️ Unaudited |
| PythPriceOracleDmBTC | unknown | mode | n/a | [`0xac986b...4b342e`](./contracts/mode-34443/0xac986b9b549ba5e98baeb78919d4e4aa5f4b342e/) | ⚠️ Unaudited |
| QiStablecoin | unknown | polygon | n/a | [`0xa3fa99...6997f1`](./contracts/polygon-137/0xa3fa99a148fa48d14ed51d610c367c61876997f1/) | ⚠️ Unaudited |
| Quoter | unknown | sonic | n/a | [`0x593856...d1aa68`](./contracts/sonic-146/0x593856bbfd6aaf0b714277c0bf06307900d1aa68/) | ⚠️ Unaudited |
| QuoterV2 | unknown | sonic | n/a | [`0x3f2026...388234`](./contracts/sonic-146/0x3f2026cae76b987c4002e62b9df70988b4388234/) | ⚠️ Unaudited |
| RateLimitMidpointCommonLibrary | unknown | base | n/a | [`0x9713a9...743577`](./contracts/base-8453/0x9713a92e9f53be2f9429332c20a44965cb743577/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracle | unknown | mode | n/a | [`0x63a153...3e1e0a`](./contracts/mode-34443/0x63a1531a06f0ac597a0dfa5a516a37073c3e1e0a/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWeETH | unknown | mode | n/a | [`0x9c0819...03de78`](./contracts/mode-34443/0x9c0819e3235c8ff74e79f0cabb51ec477603de78/) | ⚠️ Unaudited |
| RedstoneAdapterPriceOracleWrsETH | unknown | mode | n/a | [`0xe3643f...8979e8`](./contracts/mode-34443/0xe3643fd41095658cdf063e15f5cb30a5738979e8/) | ⚠️ Unaudited |
| ReferralDistributor | unknown | sonic | n/a | [`0x85b08f...884422`](./contracts/sonic-146/0x85b08f1d877325126bd655b1aecd25a705884422/) | ⚠️ Unaudited |
| ReserveManager | unknown | optimism | n/a | [`0xb112e4...bfb110`](./contracts/optimism-10/0xb112e4cc83f0df154fe3fb088109be2ac5bfb110/) | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | [`0x354a65...4fcb8f`](./contracts/arbitrum-42161/0x354a656930c9abd85bd8436a0c85101dcc4fcb8f/) | ⚠️ Unaudited |
| RewarderFactory | unknown | sonic | n/a | [`0x6122dc...8bdaf4`](./contracts/sonic-146/0x6122dcd13f0cb1157cf9e58d5787c2c46e8bdaf4/) | ⚠️ Unaudited |
| RewardGateway | unknown | arbitrum | n/a | [`0x212ed9...f4735b`](./contracts/arbitrum-42161/0x212ed942e183cc6dc08b01f0d8ca07c54ef4735b/) | ⚠️ Unaudited |
| RewardGatewayTST | unknown | arbitrum | n/a | [`0x8a29c7...25f11b`](./contracts/arbitrum-42161/0x8a29c701953e119125e79abd572858ce1e25f11b/) | ⚠️ Unaudited |
| RewardHolder | unknown | arbitrum | n/a | [`0x19c348...884050`](./contracts/arbitrum-42161/0x19c348d58688a2af892c9c1a8f0926217c884050/) | ⚠️ Unaudited |
| RewardManager | unknown | optimism | n/a | [`0x5da3ea...c3f5c2`](./contracts/optimism-10/0x5da3ea9167e159de0d3003c21c86db1334c3f5c2/) | ⚠️ Unaudited |
| RewardsDistributor | unknown | sonic | n/a | [`0x1c236d...4c94d3`](./contracts/sonic-146/0x1c236d74f61c6199e6d23201d53a59753f4c94d3/) | ⚠️ Unaudited |
| Router | unknown | sonic | n/a | [`0x95a7e4...a49fa3`](./contracts/sonic-146/0x95a7e403d7cf20f675ff9273d66e94d35ba49fa3/) | ⚠️ Unaudited |
| RouterV2 | unknown | sonic | n/a | [`0xbfe77a...282c18`](./contracts/sonic-146/0xbfe77a62a1b37bf5897f04a9cd087486bf282c18/) | ⚠️ Unaudited |
| Royalties | unknown | sonic | n/a | [`0x522dc8...1a9cd3`](./contracts/sonic-146/0x522dc87b090e523af1cab0a991459dab441a9cd3/) | ⚠️ Unaudited |
| RZR | unknown | sonic | n/a | [`0xb44444...cbd1f5`](./contracts/sonic-146/0xb4444468e444f89e1c2cac2f1d3ee7e336cbd1f5/) | ⚠️ Unaudited |
| SCALES | unknown | arbitrum | n/a | [`0xe6af84...e3d16f`](./contracts/arbitrum-42161/0xe6af844d5740b6b297b6dd7fb2ce299ee9e3d16f/) | ⚠️ Unaudited |
| ScalesDevFund | unknown | arbitrum | n/a | [`0x2fbfce...00d31a`](./contracts/arbitrum-42161/0x2fbfce8659b34277fdb341964bffb4b69500d31a/) | ⚠️ Unaudited |
| ScalesStakingAndMiningFund | unknown | arbitrum | n/a | [`0x1b7eb9...5d07c5`](./contracts/arbitrum-42161/0x1b7eb9350a9bee4167277fb667877895f65d07c5/) | ⚠️ Unaudited |
| ScalesTreasuryFund | unknown | arbitrum | n/a | [`0x364064...87ae16`](./contracts/arbitrum-42161/0x364064752e1120d45836393327ce0ab59187ae16/) | ⚠️ Unaudited |
| SfrxEth2EthPriceAggregator | unknown | arbitrum | n/a | [`0x03d9a5...6d35f3`](./contracts/arbitrum-42161/0x03d9a5eeebaf24870587e29ffb65d62a8d6d35f3/) | ⚠️ Unaudited |
| Sigma | unknown | mode | n/a | [`0x1f6c2e...257b5a`](./contracts/mode-34443/0x1f6c2e81f09174d076aa19afd7c9c67d0e257b5a/) | ⚠️ Unaudited |
| Silver | unknown | sonic | n/a | [`0x005851...edebc1`](./contracts/sonic-146/0x005851f943ee2957b1748957f26319e4f9edebc1/) | ⚠️ Unaudited |
| SilverBurner | unknown | sonic | n/a | [`0xf38251...d144ba`](./contracts/sonic-146/0xf382517ede11aba5baf3fd287dfb492804d144ba/) | ⚠️ Unaudited |
| SilverDcaApprover | unknown | sonic | n/a | [`0x6f631f...c9fb07`](./contracts/sonic-146/0x6f631fc31f3ee09e0e80e130b4487ec971c9fb07/) | ⚠️ Unaudited |
| SilverFees | unknown | sonic | n/a | [`0xec08f8...01e1f4`](./contracts/sonic-146/0xec08f857d4037b6167ea71053aad5fcbab01e1f4/) | ⚠️ Unaudited |
| SilverFeesGiveaway | unknown | sonic | n/a | [`0x4cfbb2...7177a7`](./contracts/sonic-146/0x4cfbb20dde0155a671e48ed9bc389b80a87177a7/) | ⚠️ Unaudited |
| SilverFlareProgram | unknown | sonic | n/a | [`0x15db03...ccf33b`](./contracts/sonic-146/0x15db03e67ed78605efff6ef454f14b4b56ccf33b/) | ⚠️ Unaudited |
| SilverLswManager | unknown | sonic | n/a | [`0x0e5edd...57720f`](./contracts/sonic-146/0x0e5edd207971d9a1c955f1d9077936e18157720f/) | ⚠️ Unaudited |
| SilverLswTaskManager | unknown | sonic | n/a | [`0x055ab7...59165b`](./contracts/sonic-146/0x055ab74668e026c6d1a7e20647e6c5ed3559165b/) | ⚠️ Unaudited |
| SilverMint | unknown | sonic | n/a | [`0x2397d6...b0692a`](./contracts/sonic-146/0x2397d67ea0a3d0105f6c417bbcdafc1927b0692a/) | ⚠️ Unaudited |
| SilverStake | unknown | sonic | n/a | [`0x0527f8...722753`](./contracts/sonic-146/0x0527f82f948ea5ddde0eff66a352c58931722753/) | ⚠️ Unaudited |
| SilverStakeToken | unknown | sonic | n/a | [`0x01f332...129a50`](./contracts/sonic-146/0x01f332e3e0d80f1cdf3b4f40e8b9bd6e3b129a50/) | ⚠️ Unaudited |
| SilverSwapDCA | unknown | sonic | n/a | [`0x2050f8...93fad8`](./contracts/sonic-146/0x2050f8cb0ad7ada3fe90a1f1fcf484653693fad8/) | ⚠️ Unaudited |
| SilverVoteLSW | unknown | sonic | n/a | [`0x16272d...0ee820`](./contracts/sonic-146/0x16272d930e2ec00bdfaaa1086cee9a86740ee820/) | ⚠️ Unaudited |
| SimplePriceOracle | unknown | mode | n/a | [`0xcd4d7c...d3ba5c`](./contracts/mode-34443/0xcd4d7c8e2ba627684a9b18f7fe88239341d3ba5c/) | ⚠️ Unaudited |
| SLLendTimelockController | unknown | arbitrum | n/a | [`0x46325b...b939eb`](./contracts/arbitrum-42161/0x46325b0ad511fafaa0e5758b07680f1e59b939eb/) | ⚠️ Unaudited |
| SmartVaultDeployer | unknown | arbitrum | n/a | [`0x53509e...57cc25`](./contracts/arbitrum-42161/0x53509ef0e49c8a386b81093711af1ef29357cc25/) | ⚠️ Unaudited |
| SmartVaultDeployerV2 | unknown | arbitrum | n/a | [`0x0f24a6...6cfc4d`](./contracts/arbitrum-42161/0x0f24a669d664ea4201a7047ccb7fea759b6cfc4d/) | ⚠️ Unaudited |
| SmartVaultDeployerV3 | unknown | arbitrum | n/a | [`0xa48793...188278`](./contracts/arbitrum-42161/0xa4879376995e60a7469e140c29f96744a7188278/) | ⚠️ Unaudited |
| SmartVaultDeployerV4 | unknown | arbitrum | n/a | [`0x02e7c4...579b6e`](./contracts/arbitrum-42161/0x02e7c4489e2827698cf765116b04e7d3b3579b6e/) | ⚠️ Unaudited |
| SmartVaultIndex | unknown | arbitrum | n/a | [`0x1e2364...3f3042`](./contracts/arbitrum-42161/0x1e2364d8310b480c517a2ba9579bc6992c3f3042/) | ⚠️ Unaudited |
| SmartVaultManager | unknown | arbitrum | n/a | [`0x1d420f...d9cfb5`](./contracts/arbitrum-42161/0x1d420f04f430688c57174a986db18b935ed9cfb5/) | ⚠️ Unaudited |
| SmartVaultManagerNewNFTGenerator | unknown | arbitrum | n/a | [`0xa854ab...ac8ec4`](./contracts/arbitrum-42161/0xa854ab9562153a7ee6dca1e439b20db735ac8ec4/) | ⚠️ Unaudited |
| SmartVaultManagerV2 | unknown | arbitrum | n/a | [`0x4a8d1b...f63052`](./contracts/arbitrum-42161/0x4a8d1b11a6f431b8eba69e617282af1849f63052/) | ⚠️ Unaudited |
| SmartVaultManagerV3 | unknown | arbitrum | n/a | [`0x5d8c3f...ba5454`](./contracts/arbitrum-42161/0x5d8c3f385c9320f163afd63aec667a4e53ba5454/) | ⚠️ Unaudited |
| SmartVaultManagerV4 | unknown | arbitrum | n/a | [`0x6669bc...0d633d`](./contracts/arbitrum-42161/0x6669bc5ed8dd5fcc369d38db80c9d6165c0d633d/) | ⚠️ Unaudited |
| SmartVaultManagerV5 | unknown | arbitrum | n/a | [`0x855808...2b344f`](./contracts/arbitrum-42161/0x85580875b48c96ae42f064acd6ef90637f2b344f/) | ⚠️ Unaudited |
| SmartVaultManagerV52 | unknown | arbitrum | n/a | [`0x7c1acd...be543d`](./contracts/arbitrum-42161/0x7c1acd1a7ba8c5f9f511bc0274b71a12c4be543d/) | ⚠️ Unaudited |
| SmartVaultManagerV6 | unknown | arbitrum | n/a | [`0x496ab4...5322fb`](./contracts/arbitrum-42161/0x496ab4a155c8fe359cd28d43650fafa0a35322fb/) | ⚠️ Unaudited |
| SmartVaultYieldManager | unknown | arbitrum | n/a | [`0x172df1...dd7ae9`](./contracts/arbitrum-42161/0x172df12af47864389eaf4bc1ea93877be1dd7ae9/) | ⚠️ Unaudited |
| Sonne | unknown | optimism | n/a | [`0x1db246...2245f0`](./contracts/optimism-10/0x1db2466d9f5e10d7090e7152b68d62703a2245f0/) | ⚠️ Unaudited |
| SonneTimelockController | unknown | optimism | n/a | [`0x5b22bd...e163b0`](./contracts/optimism-10/0x5b22bd2fc485afe2deaf1ac9e2fad316dde163b0/) | ⚠️ Unaudited |
| SourceChainRegistryProxy | unknown | base | n/a | [`0x188c47...f79170`](./contracts/base-8453/0x188c4739b4397684219c65ed58ba34e50cf79170/) | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | sonic | n/a | [`0xb52c0e...850c31`](./contracts/sonic-146/0xb52c0eb864722c313d2c084c6ffa2a6e46850c31/) | ⚠️ Unaudited |
| Spotter | unknown | bsc | n/a | [`0x49896d...d9fe47`](./contracts/bsc-56/0x49896d303c04db2dbf0b9702d983773eb7d9fe47/) | ⚠️ Unaudited |
| StabilityPool | unknown | arbitrum | n/a | [`0x0a3137...b7bdfa`](./contracts/arbitrum-42161/0x0a3137e103a8f268fa065f6d5922ed6173b7bdfa/) | ⚠️ Unaudited |
| STABLE | unknown | arbitrum | n/a | [`0x666966...e73451`](./contracts/arbitrum-42161/0x666966ef3925b1c92fa355fda9722899f3e73451/) | ⚠️ Unaudited |
| StakedDistributor | unknown | arbitrum | n/a | [`0x08153c...f5e0b1`](./contracts/arbitrum-42161/0x08153c4c19cb438a3bdc6303af962a30e9f5e0b1/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0x0b3fc1...a24d6c`](./contracts/arbitrum-42161/0x0b3fc1dffddc6dd3911341ec430fd845a2a24d6c/) | ⚠️ Unaudited |
| StakingTST | unknown | arbitrum | n/a | [`0x1a41e9...72a57e`](./contracts/arbitrum-42161/0x1a41e9a3834d5f878b4cdda6c8ad90fb8972a57e/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0xf5a27e...f7fd2e`](./contracts/arbitrum-42161/0xf5a27e55c748bcddbfea5477cb9ae924f0f7fd2e/) | ⚠️ Unaudited |
| Strategy | unknown | sonic | n/a | [`0x181713...c85e80`](./contracts/sonic-146/0x1817134ad98b72a42ab68cc485fb123afac85e80/) | ⚠️ Unaudited |
| SuperchainIronclad | unknown | mode | n/a | [`0x7b4779...3dfc6c`](./contracts/mode-34443/0x7b47798af46dc625b0a5a17c1f314648cd3dfc6c/) | ⚠️ Unaudited |
| SwapLibrary | unknown | arbitrum | n/a | [`0x9d598b...1c6df4`](./contracts/arbitrum-42161/0x9d598b5735e4466100b1d8af5875be5ead1c6df4/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | sonic | n/a | [`0x0c2bc0...abdd87`](./contracts/sonic-146/0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87/) | ⚠️ Unaudited |
| SwapxTimelockController | unknown | sonic | n/a | [`0x3648af...e76a76`](./contracts/sonic-146/0x3648afa39e09d7cbe11d8d090dab2ee5dae76a76/) | ⚠️ Unaudited |
| SWPx | unknown | sonic | n/a | [`0x90c442...d8ebdf`](./contracts/sonic-146/0x90c44218e202995f1c06cb0f0e452dd3b6d8ebdf/) | ⚠️ Unaudited |
| SWPxNFT | unknown | sonic | n/a | [`0x619057...754ba0`](./contracts/sonic-146/0x619057ac4bdd28bbdc216e5a4f221850e4754ba0/) | ⚠️ Unaudited |
| SWPxNFTFeeConverter | unknown | sonic | n/a | [`0x4053ec...c07de0`](./contracts/sonic-146/0x4053ec5dfa4e9b6de10a02106dc3320e43c07de0/) | ⚠️ Unaudited |
| TestToken | unknown | sonic | n/a | [`0x0f4006...3c1766`](./contracts/sonic-146/0x0f40064414822e0367f2ad23d80434e6ce3c1766/) | ⚠️ Unaudited |
| TestVRF | unknown | sonic | n/a | [`0x1c1a74...984904`](./contracts/sonic-146/0x1c1a744fc79f273fab3728cf3c8be7c6b3984904/) | ⚠️ Unaudited |
| TickLens | unknown | sonic | n/a | [`0x71d0f7...ac1bac`](./contracts/sonic-146/0x71d0f7b02e76c773693ade6f521cfc7becac1bac/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | [`0x09dfdf...cd3d7b`](./contracts/arbitrum-42161/0x09dfdf392a56e4316e97a13e20b09c415fcd3d7b/) | ⚠️ Unaudited |
| TimelockAdmin | unknown | sonic | n/a | [`0x5aa59f...8d7dc6`](./contracts/sonic-146/0x5aa59fa54dc76206ec27b58d701346cb0d8d7dc6/) | ⚠️ Unaudited |
| TimelockController | unknown | arbitrum | n/a | [`0x1c8f85...cfe9cf`](./contracts/arbitrum-42161/0x1c8f851dbb5d93ba6e74413d29a1cdee2ccfe9cf/) | ⚠️ Unaudited |
| TimelockMain | unknown | sonic | n/a | [`0x1e6ca6...ee2a0f`](./contracts/sonic-146/0x1e6ca6640df2cc6121bd4e558138879d01ee2a0f/) | ⚠️ Unaudited |
| TokenManager | unknown | arbitrum | n/a | [`0x33c5a8...3a32a0`](./contracts/arbitrum-42161/0x33c5a816382760b6e5fb50d8854a61b3383a32a0/) | ⚠️ Unaudited |
| TokenTEST | unknown | sonic | n/a | [`0x682ad6...095241`](./contracts/sonic-146/0x682ad674f3a5a8893a42a5150fbf05460c095241/) | ⚠️ Unaudited |
| TokenVesting | unknown | mode | n/a | [`0x93e635...9409d9`](./contracts/mode-34443/0x93e63535cb8b85239d4d8f40a571e81dab9409d9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0782b6...dc41e5`](./contracts/bsc-56/0x0782b6d8c4551b9760e74c0545a9bcd90bdc41e5/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0a1fd1...59717e`](./contracts/bsc-56/0x0a1fd12f73432928c190caf0810b3b767a59717e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2078a1...cb9fa7`](./contracts/bsc-56/0x2078a1969ea581d618fdbea2c0dc13fc15cb9fa7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x25b214...9eee5e`](./contracts/bsc-56/0x25b21472c073095bebc681001cbf165f849eee5e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2dcfb0...4c0292`](./contracts/bsc-56/0x2dcfb02ce33955b6cc0af34033189de3ac4c0292/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x4b30fc...2ed6f6`](./contracts/bsc-56/0x4b30fcaa7945fe9fdefd2895aae539ba102ed6f6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x574f1a...3f2bf4`](./contracts/bsc-56/0x574f1aec874fa9621237b54c0a316248453f2bf4/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x5a2ccc...314b7c`](./contracts/bsc-56/0x5a2ccc1f8bb9a3048885e5f38bb48463e6314b7c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x64d94e...ec6aaa`](./contracts/bsc-56/0x64d94e715b6c03a5d8ebc6b2144fcef278ec6aaa/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa835f8...67ed0b`](./contracts/bsc-56/0xa835f890fcde7679e7f7711abfd515d2a267ed0b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xd5193c...8e2cd1`](./contracts/bsc-56/0xd5193c2b05f44c35bcab405f8d702e866f8e2cd1/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xe8bac3...c8e3cd`](./contracts/bsc-56/0xe8bac331faf2f65ea1db5425cf3ee9db59c8e3cd/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x0326bc...69b120`](./contracts/sonic-146/0x0326bc059cbeeed569f285fdeb7365ff6369b120/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x05c1be...7f5663`](./contracts/sonic-146/0x05c1be79d3ac21cc4b727eed58c9b2ff757f5663/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x082c47...7f4069`](./contracts/sonic-146/0x082c47f07a879a1b3680f2295fce12f41d7f4069/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x1fb164...85b6b3`](./contracts/sonic-146/0x1fb16400652f999b79f62c3a4cea3ebc7185b6b3/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x2ec58a...31c4ff`](./contracts/sonic-146/0x2ec58a0caae0e8c27e28833ede5ab7415c31c4ff/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x329d9c...83e397`](./contracts/sonic-146/0x329d9ca4fad82d10f128050535c138d3bd83e397/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x40247b...d5bf3f`](./contracts/sonic-146/0x40247ba1012404134958da41b6bd93be1cd5bf3f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x50ead8...875458`](./contracts/sonic-146/0x50ead88c9f4fa95bda7b21310f26c96402875458/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x55e342...2e1532`](./contracts/sonic-146/0x55e3427906795d833ac6810486e977dca72e1532/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0x86fa3c...1345c0`](./contracts/sonic-146/0x86fa3c42928927364d3ac5a79989f3056b1345c0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0xa194e7...a43846`](./contracts/sonic-146/0xa194e79ffe35a07d640d2595b8f3e0d788a43846/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sonic | n/a | [`0xc1ae27...c407f2`](./contracts/sonic-146/0xc1ae2779903cfb84cb9dee5c03eceac32dc407f2/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x6c49e1...93940f`](./contracts/base-8453/0x6c49e1ecfbe1ab0184ddf5f2200b58827293940f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mode | n/a | [`0x04ffa5...c1cfb0`](./contracts/mode-34443/0x04ffa53a90a8ded9ae83f64596c5783397c1cfb0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0x1e59c4...443d17`](./contracts/arbitrum-42161/0x1e59c4cec7fa82d6ccda4a0489a4b6fff6443d17/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | [`0xa2296e...dafeeb`](./contracts/arbitrum-42161/0xa2296e8d17cbbf41d065c64ac46490716cdafeeb/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x03a989...891fda`](./contracts/sonic-146/0x03a9896a464c515d13f2679df337bf95bc891fda/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x0444a9...c955ed`](./contracts/sonic-146/0x0444a986e90521130db7021c91f9f947d3c955ed/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x116507...837d6f`](./contracts/sonic-146/0x11650735f402bbf28e877a750a6e40d5db837d6f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy2Step | unknown | sonic | n/a | [`0x1a5ded...6e03da`](./contracts/sonic-146/0x1a5ded6adcfc64acede86151b1f142088c6e03da/) | ⚠️ Unaudited |
| uniBTC | unknown | mode | n/a | [`0x94c7f8...cce2b3`](./contracts/mode-34443/0x94c7f81e3b0458daa721ca5e29f6ced05ccce2b3/) | ⚠️ Unaudited |
| Unitroller | unknown | optimism | n/a | [`0x7d6969...8d6778`](./contracts/optimism-10/0x7d69692389cda1ed99fd04d3081d7ac9368d6778/) | ⚠️ Unaudited |
| UniversalRouter | unknown | sonic | n/a | [`0x55d10e...4ebef8`](./contracts/sonic-146/0x55d10e597275d5e572cd0ecf85a0c944964ebef8/) | ⚠️ Unaudited |
| USDFI | unknown | arbitrum | n/a | [`0x249c48...3c0916`](./contracts/arbitrum-42161/0x249c48e22e95514ca975de31f473f30c2f3c0916/) | ⚠️ Unaudited |
| USDsArbitrumL2 | unknown | arbitrum | n/a | [`0xd6b580...bbf1dd`](./contracts/arbitrum-42161/0xd6b580ffd1d6e5dcc4aa1cf5bb66888e8fbbf1dd/) | ⚠️ Unaudited |
| USDsSupplyLimit | unknown | arbitrum | n/a | [`0x2ea0be...04622d`](./contracts/arbitrum-42161/0x2ea0be86990e8dac0d09e4316bb92086f304622d/) | ⚠️ Unaudited |
| V3Migrator | unknown | sonic | n/a | [`0x865c43...ab92fa`](./contracts/sonic-146/0x865c434b5c4d2296776352da5ce72feaaaab92fa/) | ⚠️ Unaudited |
| Vat | unknown | bsc | n/a | [`0x12c688...5708a6`](./contracts/bsc-56/0x12c6881571cbc5e00468a48926cef0b9a75708a6/) | ⚠️ Unaudited |
| Vault | unknown | mode | n/a | [`0x08cb45...46775d`](./contracts/mode-34443/0x08cb45f7fc43c25bbe830dacfe57d72cbc46775d/) | ⚠️ Unaudited |
| VaultValueChecker | unknown | sonic | n/a | [`0x06f172...3d2c40`](./contracts/sonic-146/0x06f172e6852085eca886b7f9fd8f7b21db3d2c40/) | ⚠️ Unaudited |
| Ve | unknown | arbitrum | n/a | [`0x29d362...e293e4`](./contracts/arbitrum-42161/0x29d3622c78615a1e7459e4be434d816b7de293e4/) | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | sonic | n/a | [`0x8ee87f...31b275`](./contracts/sonic-146/0x8ee87fda769a5d19c415c24350144a87f531b275/) | ⚠️ Unaudited |
| VeDist | unknown | arbitrum | n/a | [`0xbfa51d...539b86`](./contracts/arbitrum-42161/0xbfa51d9635fa9be5117093efeff06d388d539b86/) | ⚠️ Unaudited |
| VelodromePriceOracle | unknown | mode | n/a | [`0x9bb6ef...fce2a9`](./contracts/mode-34443/0x9bb6efb9c1c16f4561591fe13ea06af8d1fce2a9/) | ⚠️ Unaudited |
| VelodromeV2Liquidator | unknown | mode | n/a | [`0xa1abf9...fb33ec`](./contracts/mode-34443/0xa1abf92ef468464962af1ceffb44631a6ffb33ec/) | ⚠️ Unaudited |
| VeLogo | unknown | arbitrum | n/a | [`0xf699ed...8ff064`](./contracts/arbitrum-42161/0xf699eddeac1541e7202c14f6c4d656eee88ff064/) | ⚠️ Unaudited |
| veNFTAPI | unknown | sonic | n/a | [`0x7912f3...e01b3b`](./contracts/sonic-146/0x7912f332fcce00100928877064844ca27ce01b3b/) | ⚠️ Unaudited |
| VesselManager | unknown | arbitrum | n/a | [`0x5bd5b4...5c92ee`](./contracts/arbitrum-42161/0x5bd5b45f6565762928a79779f6c2dd43c15c92ee/) | ⚠️ Unaudited |
| VesselManagerOperations | unknown | arbitrum | n/a | [`0x15f744...1eefe4`](./contracts/arbitrum-42161/0x15f74458ae0bfdaa1a96ca1aa779d715cc1eefe4/) | ⚠️ Unaudited |
| VesterCliff | unknown | optimism | n/a | [`0xb4bf17...517971`](./contracts/optimism-10/0xb4bf17210844418f9f2d3b90036e11aa40517971/) | ⚠️ Unaudited |
| VesterSale | unknown | optimism | n/a | [`0x8e1036...37ad10`](./contracts/optimism-10/0x8e10362334a4549640481d330a0020238b37ad10/) | ⚠️ Unaudited |
| VotingEscrow | unknown | sonic | n/a | [`0x3dc1dd...2ca12e`](./contracts/sonic-146/0x3dc1dd69b7f4ac386f94f30de69994b5622ca12e/) | ⚠️ Unaudited |
| WOETHBase | unknown | base | n/a | [`0x2e1826...583408`](./contracts/base-8453/0x2e1826c5a9d7fa49b1b6f54f9b6e47281a583408/) | ⚠️ Unaudited |
| WOSonic | unknown | sonic | n/a | [`0x1ccb48...6c5805`](./contracts/sonic-146/0x1ccb48fb244fe1f6eb0d1c5fbd839db78c6c5805/) | ⚠️ Unaudited |
| WOSonicProxy | unknown | sonic | n/a | [`0x52a10d...de8342`](./contracts/sonic-146/0x52a10d701c878c5aa3df2731b89bf9b2e7de8342/) | ⚠️ Unaudited |
| WSSEI | unknown | sei | n/a | [`0xe30fed...95e8c7`](./contracts/sei-1329/0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7/) | ⚠️ Unaudited |
| WstEth2UsdPriceAggregator | unknown | arbitrum | n/a | [`0x8bbf5c...ca3e44`](./contracts/arbitrum-42161/0x8bbf5c949b05e185c470553add43f15118ca3e44/) | ⚠️ Unaudited |
| xERC20Hyperlane | unknown | mode | n/a | [`0xb81ab9...5319eb`](./contracts/mode-34443/0xb81ab95bee03ed655c8a99d484effcfe335319eb/) | ⚠️ Unaudited |
| XFly | unknown | sonic | n/a | [`0x5cced4...fb84de`](./contracts/sonic-146/0x5cced4f430526228980f307de46f378e6ffb84de/) | ⚠️ Unaudited |
| xPOKT | unknown | base | n/a | [`0x0384e7...8c8105`](./contracts/base-8453/0x0384e7a82b7a9cf1788a782fdccc775bfc8c8105/) | ⚠️ Unaudited |
| XSCALES | unknown | arbitrum | n/a | [`0xa433ad...dd037c`](./contracts/arbitrum-42161/0xa433ada02e02c0b318167179fe405904d4dd037c/) | ⚠️ Unaudited |

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
| [compound-governance.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-governance.pdf) | Trail of Bits | Audit | 2020-02 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.openzeppelin.com/news/compound-audit](https://www.openzeppelin.com/news/compound-audit) | OpenZeppelin | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [compound-3.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-3.pdf) | Trail of Bits | Audit | 2019-08 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [compound-2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/compound-2.pdf) | Trail of Bits | Audit | 2019-04 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.openzeppelin.com/news/compound-finance-patch-audit](https://www.openzeppelin.com/news/compound-finance-patch-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.openzeppelin.com/news/compound-finance-mcd-dsr-integration](https://www.openzeppelin.com/news/compound-finance-mcd-dsr-integration) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.openzeppelin.com/news/compound-alpha-governance-system-audit](https://www.openzeppelin.com/news/compound-alpha-governance-system-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.openzeppelin.com/news/compound-tether-integration-audit](https://www.openzeppelin.com/news/compound-tether-integration-audit) | OpenZeppelin | Audit | n/a | unknown | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.chainsecurity.com/security-audit/compound-iii](https://www.chainsecurity.com/security-audit/compound-iii) | ChainSecurity | Audit | 2024-12 | aging | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.openzeppelin.com/news/compound-iii-audit](https://www.openzeppelin.com/news/compound-iii-audit) | OpenZeppelin | Audit | 2022-06 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |
| [www.openzeppelin.com/news/compound-comp-distribution-system-audit](https://www.openzeppelin.com/news/compound-comp-distribution-system-audit) | OpenZeppelin | Audit | 2020-05 | stale | Inherited from Compound Finance — forked code, scoped to CrossChainRemoteStrategy, Generalized4626Strategy, OETHBase, OETHBaseVaultAdmin, +8 more | inherited | 7 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 375 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=77

Fork inheritance lineage and inherited audits are included when available.
