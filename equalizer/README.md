# Agentic Audit Brief: Equalizer

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Equalizer (`equalizer`)
- Website: [https://equalizer.exchange/](https://equalizer.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, fantom, sonic
- Contract surface: 337 unique implementations (529 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $741,145.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Equalizer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across base, fantom, sonic. Structural roles: 19 supporting, 3 core, 1 unclassified. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: supporting (19), core (3), unclassified (1)
- Contract kinds: contract (22), unclassified (1)
- Detected standards: multicall (5), erc165 (3), erc721 (3), erc1967proxy (2)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2), uniswap-v3 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 90 contracts are derived from known codebases. 90 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x17fa9da6e01ad59513707f92033a6eb03ccb10b4`, chain 146)
- UnnamedContract (`0x1c065b52c73d791951572e343b21b5f476d303fa`, chain 146)
- UnnamedContract (`0x3045119766352ff250b3d45312bd0973cbf7235a`, chain 146)
- UnnamedContract (`0x30f45defbbce0030ee14f9e08d36102115e5ce3b`, chain 146)
- UnnamedContract (`0x3fd3a0c85b70754efc07ac9ac0cbbdce664865a6`, chain 146)
- UnnamedContract (`0x547db6759b0af9e050855106993e3cefc16e937e`, chain 146)
- UnnamedContract (`0xbf4bfeb838de95d64726d55dfae5295b3dfb4b4b`, chain 146)
- UnnamedContract (`0xddd9845ba0d8f38d3045f804f67a1a8b9a528fcc`, chain 146)
- UnnamedContract (`0xddf26b42c1d903de8962d3f79a74a501420d5f19`, chain 146)
- UnnamedContract (`0x03f7ad0a6546a367a78cfd65159a86ce9e029ec5`, chain 250)
- UnnamedContract (`0x05733de76ba7ef6cac81507f884dc839fb905ac9`, chain 250)
- UnnamedContract (`0x0b5c7bfcfff3d98c7e84a60c29b0c50f47de8516`, chain 250)
- UnnamedContract (`0x0d90b147fb412fb8469b82bc73623ff8e19fccf0`, chain 250)
- UnnamedContract (`0x0fb84adb9c16d28b92c09c382caadbddd8e354c4`, chain 250)
- UnnamedContract (`0x162378c7c6df312285b6f1d1b27d07cba30c9113`, chain 250)
- UnnamedContract (`0x2c9344d00f0c49c338a0ef87495796f9bd484fce`, chain 250)
- UnnamedContract (`0x380bd52af7db3b5173c18f89f5f3bf11a8e2c7dc`, chain 250)
- UnnamedContract (`0x59f557679fa642e0e37cbaddb64d39403d05db35`, chain 250)
- UnnamedContract (`0x6690adb6445971b04524abe951a18d230e863eca`, chain 250)
- UnnamedContract (`0x8e2a632a3b76e7c3c10e5cfd82af87a6e6dfd06f`, chain 250)
- UnnamedContract (`0x940407988c4b94fe95ee4e0a91983015f765b2b3`, chain 250)
- UnnamedContract (`0x9ca9805dbace7aee0565c546145ca105b202a979`, chain 250)
- UnnamedContract (`0x9e4fb3c60a08a0685d32c2a7788843c440171060`, chain 250)
- UnnamedContract (`0xb0f598bbb524acb35f9e7c60c645f09e78eb079f`, chain 250)
- UnnamedContract (`0xc4a987a83acfaca50e19a20bab263cafd5e7506c`, chain 250)
- UnnamedContract (`0xd0f8d544d2534e09937b6d8ab1c2734530a1ed8b`, chain 250)
- UnnamedContract (`0xe17e46780461bb7e7397fb36ac6d03a307055c4e`, chain 250)
- UnnamedContract (`0x28c9c71c776a1203000b56c0cca48bef1cd51c53`, chain 8453)
- UnnamedContract (`0x30f45defbbce0030ee14f9e08d36102115e5ce3b`, chain 8453)
- UnnamedContract (`0x44621ccef14730a2f864ec11311a7f0bcb005685`, chain 8453)
- UnnamedContract (`0x54016a4848a38f257b6e96331f7404073fd9c32c`, chain 8453)
- UnnamedContract (`0x547db6759b0af9e050855106993e3cefc16e937e`, chain 8453)
- UnnamedContract (`0x9b500c0a544b870d9c4c441147dcaef599e542e7`, chain 8453)
- UnnamedContract (`0xcb418f555974ef099a528c2c866b35520230ae18`, chain 8453)
- UnnamedContract (`0xe4ba08712c404042b8eefc3fdf3b603c977500df`, chain 8453)
- UnnamedContract (`0xed8db60acc29e14bc867a497d94ca6e3ceb5ec04`, chain 8453)
- NonfungiblePositionManager (`0x79c26d7ac184bb9c453b996475f484668e516de5`, chain 146)
- NonfungiblePositionManager (`0x79c26d7ac184bb9c453b996475f484668e516de5`, chain 8453)
- QuoterV2 (`0xc701e92db1ef14ab64f66f18536b1e07678db678`, chain 146)
- QuoterV2 (`0xc701e92db1ef14ab64f66f18536b1e07678db678`, chain 8453)
- Router02 (`0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b`, chain 146)
- Router03 (`0xcc6169aa1e879d3a4227536671f85afdb2d23fad`, chain 146)
- ScaleRouter (`0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa`, chain 8453)
- SuperVoter (`0xb6dfc39b3270f059f32eb9d680d994cdecfad93f`, chain 146)
- SwapRouter02 (`0xe4ba08712c404042b8eefc3fdf3b603c977500df`, chain 146)
- TransparentUpgradeableProxy (`0x46abb88ae1f2a35ea559925d99fdc5441b592687`, chain 8453)
- TransparentUpgradeableProxy (`0xb136b45e3e241bb0d0c037395446cf42e4db13d6`, chain 8453)
- UniswapInterfaceMulticall (`0x9b500c0a544b870d9c4c441147dcaef599e542e7`, chain 146)
- UniswapV3Factory (`0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40`, chain 146)
- UniswapV3Factory (`0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40`, chain 8453)
- UnnamedContract (`0x07378e3b1fc43f7a37630c739a2f29f5b2442e60`, chain 250)
- UnnamedContract (`0x180da8bd91406dd41f18b6200c53deb553f86180`, chain 250)
- UnnamedContract (`0x1a05eb736873485655f29a37def8a0aa87f5a447`, chain 250)
- UnnamedContract (`0x2aa07920e4ecb4ea8c801d9dfece63875623b285`, chain 250)
- UnnamedContract (`0x30f45defbbce0030ee14f9e08d36102115e5ce3b`, chain 250)
- UnnamedContract (`0x33da53f731458d6bc970b0c5fcbb0b3db4aaa470`, chain 250)
- UnnamedContract (`0x3e8b14b5534333a2b83a31d778ec3bcd9dc946f4`, chain 250)
- UnnamedContract (`0x3fd3a0c85b70754efc07ac9ac0cbbdce664865a6`, chain 250)
- UnnamedContract (`0x4bebeb8188aef8287f9a7d1e4f01d76cbe060d5b`, chain 250)
- UnnamedContract (`0x547db6759b0af9e050855106993e3cefc16e937e`, chain 250)
- UnnamedContract (`0x58be1f04029ffdccbd34919fe0118cd207d746b0`, chain 250)
- UnnamedContract (`0x5b3220cb732245ffe8e26df228ac93feb685c157`, chain 250)
- UnnamedContract (`0x5d4589bba42df0c53bbcb7ec59160de64b9d4308`, chain 250)
- UnnamedContract (`0x6ef2fa893319db4a06e864d1dee17a90fcc34130`, chain 250)
- UnnamedContract (`0x777928f0b5f9066a14f7317d57e660f1d754cad8`, chain 250)
- UnnamedContract (`0x79c26d7ac184bb9c453b996475f484668e516de5`, chain 250)
- UnnamedContract (`0x7ba9b16586593a0cae883c9873b114e16f69eb6a`, chain 250)
- UnnamedContract (`0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40`, chain 250)
- UnnamedContract (`0x8313f3551c4d3984ffbadfb42f780d0c8763ce94`, chain 250)
- UnnamedContract (`0x85e7f59248d1c52bd635f27518333f75fb80c72d`, chain 250)
- UnnamedContract (`0x88171375f6236885f463341d001b419d477edb74`, chain 250)
- UnnamedContract (`0x8b3e5efaa3ea8e875112c6464218c28db8f0b4d9`, chain 250)
- UnnamedContract (`0x8f02357cb55dbad26df5a7558cd810d5d0f05f43`, chain 250)
- UnnamedContract (`0x8f6666bd81c4811f433b8232a1c7d4383f11b2dc`, chain 250)
- UnnamedContract (`0x93b97347722b8a0d21b0dddf79ae1c85c05041f8`, chain 250)
- UnnamedContract (`0x9b500c0a544b870d9c4c441147dcaef599e542e7`, chain 250)
- UnnamedContract (`0x9e4105f9e2284532474f69e65680e440f4c91cb8`, chain 250)
- UnnamedContract (`0xa83f31af44e812d2edf0536516e7d274cd7301b8`, chain 250)
- UnnamedContract (`0xaec6d3e4d319cdc6553f0379e4ff9001d022bea9`, chain 250)
- UnnamedContract (`0xbf65ca2747a1eeebf8a1b0d119de8be0540c57cb`, chain 250)
- UnnamedContract (`0xc6366efd0af1d09171fe0ebf32c7943bb310832a`, chain 250)
- UnnamedContract (`0xc701e92db1ef14ab64f66f18536b1e07678db678`, chain 250)
- UnnamedContract (`0xc8be3d680e31187a94b47119c5b2b095ce2be578`, chain 250)
- UnnamedContract (`0xcc82bff654433c5674945c10ab0808863d4c8c48`, chain 250)
- UnnamedContract (`0xd311fd89e8403c2e90593457543e99cecc70d511`, chain 250)
- UnnamedContract (`0xe3d1a117df7dcac2eb0ac8219341bad92f18dac1`, chain 250)
- UnnamedContract (`0xe4ba08712c404042b8eefc3fdf3b603c977500df`, chain 250)
- UnnamedContract (`0xe8ca91bae8aa0e9229f6e78f8976b837134b60e8`, chain 250)
- UnnamedContract (`0xf2bfb9ca6e21b30034b9d56cb4735d2c180cc7e1`, chain 250)
- UnnamedContract (`0xfb0c0ce1d43b373b7535ef556e1d55d285156887`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (14 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 90/176 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 90 own, 31 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 216 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 90 of 337 unique; 247 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/71
- Verified + Unaudited implementations: 71
- Verified by bytecode match: 0
- Unverified implementations: 266
- Unique implementations: 337
- Raw deployments: 529
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

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BeaconProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967`; sonic `0x15864c84d67280f779d2d7a0b2338c16adb01dfc`; sonic `0x769e380850b075c80b7304469d6d973eb3c6ccdd` | ⚠️ Unaudited |
| BribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x0f0c346dff7ea5d612c67dc3eb06f6166a067160`; sonic `0x3dd53ed3263f06cf3c6238a08e6422714bcefc2e`; sonic `0xa07662bbbc760e3d6097d179946b80d5fa5de5c4`; sonic `0xded25736417d0398e479a4dbdfff1d85c36d456e`; sonic `0xfeffd4506d973f92427e7bc5c68b62984ad9f60f`; base `0x90cda9b619b124d321111fe240f8191a72e93297` | ⚠️ Unaudited |
| Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe79ea8606577fc1a846013e23ff2532919f75f51` | ⚠️ Unaudited |
| ElitenessERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: sonic `0x31b59fdd00b67ec1510b3d099f1e110c4dafc109`; sonic `0x5e9d25014d01323d6f8c0c6640572e4444d11c94`; sonic `0x86112bd87647c9b492890db795eb403b08e8da63`; sonic `0x88dd903e5bbacf1551161b33266bef05ef218c34`; sonic `0xcc835d13543cec819ac0226dd9ff35b6312b8fca`; sonic `0xd4aa386bfceeedd9de0875b3ba07f51808592e22`; sonic `0xd600ec98cf6418c50ee051ace53219d95aeaa134`; sonic `0xd8a6f92b921a7f56348b9c9ee6571d88ba3028db`; sonic `0xdac17491596a15702ce927921284c71e44951694`; sonic `0xdc2de2f2c0122ff7cb8482dc47da75a6a5d1a88b`; base `0x17b9b0d1d64a26e9380289600231f18e37fe24eb`; base `0x223bfac1488d6157bf9f5ad6d8699da92e5838d7`; base `0x248bb3446328b8e1474bf79c50fce1cfa5ab7c61`; base `0x49d19c0c20da95a64c0c05c34d2c1b22d4173ac7`; base `0x549a36aa02bfe1e8b83c0178dd3b34971eda7d7e`; base `0x981b34765c14cca1de33ba3955014acdcf1d065b`; base `0xf704d98630976f5fbf9218eb94c093d6a4d6f754` | ⚠️ Unaudited |
| elitenessERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x8de568691a1a6356b46418fdc12e1694a1ba1e22`; sonic `0xac4bb9312c6f8a6a0c198851484e9512cd6c8877` | ⚠️ Unaudited |
| ElitenessFarmland | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x11cfb329caaca6d7da69734d10c7ec70afd75240`; sonic `0x21c99eae2aaf8e1cc8f948775f371529fa90e006`; sonic `0x381a53763155b1bc00be98ad0b68828a5981073e`; sonic `0xd58273aeaf985d069866d7ba42bafc9c2121faa0`; sonic `0xde24d6b5ff9ec06a35f17e3a9cfdc35c5e966ec7`; sonic `0xfaa72e9bd6eba120c649da8ec8257dea2db87f40` | ⚠️ Unaudited |
| eliteRingsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x22cfb3161076a2bf472627127271747d2968893f`; sonic `0x52ce458bf911b30db8875ec21c5a37829bfff2a6`; sonic `0x54ec1ea013eb3f3ffb32b87326cb040599f1a397`; sonic `0x5af02bb20aeefb2dcddb145ed520069fc4d6f0ff`; sonic `0x5f36086558cda9464eac6c5daeafa6364a18141a`; sonic `0x6164b6de90de0332a1ae4f928528957829e9e950`; sonic `0xa5fea6ea872287ec5216746b7b05dcfabfe190eb`; sonic `0xad27dfad489587cb62933695498fdf78653ba57e`; sonic `0xad605d40dfd9046ce4a851484a4663c3538d0906`; sonic `0xae1a80e66a2b2d562dfe34a46ebce917c5ab8735`; sonic `0xdabb71f5780799933bed84a9fdea36783c8b8773` | ⚠️ Unaudited |
| eLOCK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x18f8ad653867fc53b4d75bda1b610a5f3325b2db`; sonic `0x23bf562322f5f2f3d9b6837d9943b12e537ed48f`; sonic `0x5a94c997feb8e7d15506fdde4959a3a9a01fbe9f`; sonic `0x61bd439acc1990eff3b586edc4307980b0d7f53b`; sonic `0x681f98969781cc6349fe98953d58bc2b7fcfdc5b`; sonic `0x8f7df16df96458478168340edf93fae831e59af5`; sonic `0xa25e8e042637feb16f5f22d9d037e32084d6ce7e`; sonic `0xa7678e1954e35e8193151319c480f307111e1abb`; base `0xb212f32270177c820330fe1e9493ec00ceab5442` | ⚠️ Unaudited |
| eLOCKS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x26d70b26df8619fd3eeec07e22873b9f617e35da`; sonic `0x3518b5c20e3e7e166fbec4013486fa9bb7ad89eb`; sonic `0x3e286614806e290731fbc962a4289ccd536f308e`; sonic `0x7f7fc8b1b4c0618a6e6554da6bc461021afffe99`; sonic `0x8ff927bd5c1524dafb874a571c710cb28451a430`; base `0xa9a3e305955bc462768483249e785c5e5a0d6a6a` | ⚠️ Unaudited |
| ElToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x1613ab1a7cbd35ce942beb6ae857444d78f58bef`; base `0x5301bcc884b79e8a85c87676e6dd3e17291ffe5c`; base `0x74ebd0d422d250ace442b06481fae85a27fc3502`; base `0x7e55f92e644493e388b2733181bcd8afd56c8f62` | ⚠️ Unaudited |
| elTokenZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x7f142a18f1b476809c4994c63811fef4afd14134`; sonic `0xba65aa3954878a9b225b10355e1e24cc4dd10692`; sonic `0xcc4bae1e2ffaf69fd0c0848d21dafcc7e25ae56c`; sonic `0xe339f4b7c065f15d6bb43d39d5f107ee56265055` | ⚠️ Unaudited |
| Equal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 12 deployments: sonic `0x0dd7c089612fcea9a61e30c34983a0934751fe2c`; sonic `0x16641a85dccfe28b368eaaa7125be669ed0b26c8`; sonic `0x21c785c5aa1355ff510af97d4c1688aabc8b3383`; sonic `0x591e027153ed4e536275984e1b7573367e11dac4`; sonic `0x5babd555e03bcde12c918718cd59b1eba0f52b63`; sonic `0xa821d17cbe05fb8628a5a5e3d4f58d0beb20b5fd`; sonic `0xb934dea8ca266ff2f1a36b9bc2017760a0fe602c`; sonic `0xcfc8d248a9c2b8af3e64d7cf08333e1fecc64f15`; sonic `0xefbf87e112be572bf3c7f8009633f4863ef330f2`; sonic `0xfa6d96d605035e23e7f4b14b745da3e133dbe89b`; base `0x7be024bbd16e3e0ab6839cb94d0dc25b7a101eab`; base `0xdf486980df72446a5eff76263efb2fa9391be136` | ⚠️ Unaudited |
| Equalens_supplyStats | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x1b62eb66389456187576907b2fce1fe2274b2f89`; sonic `0x6ce9287d4020909bbf1f55e49ebde1a52cfde033`; sonic `0xd1cc94d602ccad07cf40daf1a36a615b972f13ae` | ⚠️ Unaudited |
| EqualizerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x10b1df11a6834ac8afe6efa654fc8c8396e47d10`; base `0x3ba64e3d39aaaf65e1c8bafc37ec91d40256a481`; base `0x75a1d75f4dc8ad7740cd0a1ea93cd6da57053859` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5300db6baf9a1272121f74b7b2df0d2f79631dd2`; sonic `0x83291ffc4831844dbcb5cd31fd8aab39e93ac4d4` | ⚠️ Unaudited |
| fBOMB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x807c19badabc848336fe0379bd659e4e4608542d`; sonic `0xedf8b632b537d5993adb5e2e15882cd791c284cb` | ⚠️ Unaudited |
| FeeSynthesizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: sonic `0x5023217a94416ddb2aa4fbf00b4fd24cbf56f04c`; sonic `0x9df999b5f338dca61c4bd4a0262ac8137726c317`; sonic `0xb5aed208a908bbad4cd8e4308a8ef9e69e644127`; base `0x11b3dc196ce5195e0ab82052cb9dfd468da1218e`; base `0x4031fcef4b30da197d4a29b8e5b0b2f0014f4cc8`; base `0x8ad889dfca6667ef014b944c04c2aaec09c78f13`; base `0x9bf40a7d80ba9e2b4d4fdfa8d87677d4ad83bace`; base `0xbd52ef870792b4a875167374e4c1ce98e6fa11d1` | ⚠️ Unaudited |
| FeeTierManager_2Thick | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5126cbc2597681cdc7c648dd74b19fb12f77dc30` | ⚠️ Unaudited |
| GaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x1c0f3c36c68cf8e12e0abe83f03062bc3d6e37b9`; base `0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27`; base `0x9997408b7735db87747a055a51ea39607591885f`; base `0xa4d2b96c1dd4d404b371c7013fda386dfc8b0c85`; base `0xcc835d13543cec819ac0226dd9ff35b6312b8fca` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | project_anchor | own_supporting | 1 | base | unit-239130 | `0xb136b45e3e241bb0d0c037395446cf42e4db13d6` | ⚠️ Unaudited |
| impermaxBorrowableERC4626Wrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xc7d31877e3b1d55ff48a6e3dcfa846fa3e00d083`; sonic `0xffa942079e238353423ab468acc10dc9343dccf0` | ⚠️ Unaudited |
| LocklessReceiptMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0d571c1ac1e1d806256d639eef65a017b8445ca2`; sonic `0x8b2d8ebb49f1133522e669166e605799dc445f6e` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x078c68189c788f2e1df314276fd5492a32dc8ecb`; sonic `0x3fdd8a90947d84a3e5c221bf8dfd39f3a868de1e`; sonic `0x7697cc621f05cb824c9c1c83868cb4d5c611147b`; sonic `0xb8711942ee4a18f3f7686f64fe6206115186322a`; base `0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4`; base `0x731372585450adbbb35e88ac18cd5d906eb8dd46`; base `0xa1b88ec609223113e6ed5aa4c75a487fffab54b4` | ⚠️ Unaudited |
| MultiNotify | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b`; base `0xf7d8c4094c330f3d70f597ba892c44206f07d792` | ⚠️ Unaudited |
| multiNotifyEqualToEltokenGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: sonic `0x1244a7a6ee179bbbd332f6f6673259e569b9c92c`; sonic `0x4e552d7055436bdbf3bc8a4d377b0c3e85ec2463`; sonic `0x608469806c0845dd9fa1568480c34c2c68baa077`; sonic `0x79f90ddb40c5c83b70fca3a29f1cbd6221236f49`; sonic `0x8a969057f9888992dd72a9613999f15df4d83e9a`; sonic `0xac4dbdc09d5f6e8632af9e8620c285dfbc19e075`; sonic `0xb959fa7a62026976ff6439bbd3108721b4ec8c8b`; sonic `0xe377f23e13ec2cf5d8d575f7c6d3e0bb017cf89c`; sonic `0xfb3e3d1e7b1919e08ed84de83ea9a493127be6bc`; sonic `0xff1329d7b2c088ea5e173324e6af2d171562856e` | ⚠️ Unaudited |
| NFP_Staker | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 8 deployments: sonic `0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306`; sonic `0x8273ae81fd417c3d87beda5386939a1c6b780af1`; sonic `0x9a18740dd1938ca5cd7cf1d39c89474dfe3b8209`; sonic `0xafe7acc555cb8d5bd2a8d665fb53fbf741103ad8`; sonic `0xcfa61dfd052b833b6005ae6ff76957b03913dca2`; sonic `0xd7a6f11de764184f193d82fb4b9d71a78d35c56c`; sonic `0xdc58475bc731673b0413873a8cec5ba5485ee35f`; sonic `0xdf805701f2ad494c1289cb9a778a2ca412828c09` | ⚠️ Unaudited |
| NFTDescriptor | token | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239112 | `0x97a7b2f95fda7181da16aec3072cd55a58d85073` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | sonic | unit-238979 | `0x79c26d7ac184bb9c453b996475f484668e516de5` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc905262ed27c56da7e5df67a51e8e1bbcd23fa0b` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239085 | `0x2b52294425a9a229322228de659ede9d146d7c2f` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 0 | base | unit-239106 | `0x79c26d7ac184bb9c453b996475f484668e516de5` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83240b049fa89b65be714aed68e5b074df6aac84` | ⚠️ Unaudited |
| PairFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x312e1fd8f3281b8b476030ed1b058f62d800572d`; sonic `0xb6a21a40b42b5610edf37d437a6abf237552f637`; sonic `0xcdc292046ea39e0ab0bcf7ad100c4506846bf6a0`; sonic `0xfcfa93364ea2cfcdb15a1afceb2e2683284fdf2d`; base `0x39cc812e698a61f1883f7b9dba54159aa7b1d91c`; base `0x653ce153d56f749671d42d58b749d02fd9ad3414`; base `0x8104beae44f19f0cbda1985ac983a107115a417f`; base `0xc295f619afc2b8543d91c8970ea4c0726f197250`; base `0xd7627edf607c49f525212fc09d650a91a9b222e1` | ⚠️ Unaudited |
| PriceGuru | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02c32e0a34ab6fa5825565254f79c8c690d98666` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: sonic `0x0be40f3289c1a2b7c380086490393e6ef7c1d1aa`; sonic `0x1d864a2087c61cdcce1d6ff4b9ebc400e7ed1f2e`; sonic `0x3ba64e3d39aaaf65e1c8bafc37ec91d40256a481`; sonic `0x4fdd88e41b9f3e67ac874b698802d44c35487c6c`; sonic `0x5cfdf393f776f696c7c123e7c63e7ab2f8627db6`; sonic `0x6d93a966dc69a667d9584befc2eeb167df9f8356`; sonic `0x93b25ca96088e09ebb85ac979f087a899c891738`; sonic `0xa543f1b89cdb3b45c90b81b559948b1c54ea7324`; sonic `0xc55ebfb742a6a43a14bf3b68b20a9c300dbe0979`; sonic `0xcd4f9a345aa5ad9d34e92635d7c1d9b609ae0304`; sonic `0xeaa0dc1077d743f2b4a86a21949c9cd9d792125a`; sonic `0xf2d79a0f220679ddda599e63484877c93c4846ca`; base `0x23c5e56183371e1fead04674730be924f1a4d71e`; base `0x7de81435f4686734835a79ae753f791068e71c1e`; base `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b` | ⚠️ Unaudited |
| ProxyAdmin | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239101 | `0x687dad08623c88452a5deb3a4482c979fa3f571e` | ⚠️ Unaudited |
| ProxyAdmin4 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8eb10eb24d258f832f0d6603544b7ab794ebfa10` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-238992 | `0xc701e92db1ef14ab64f66f18536b1e07678db678` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3c938a44848378430a12bc7b7d350409d366142` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | base | unit-239119 | `0xc701e92db1ef14ab64f66f18536b1e07678db678` | ⚠️ Unaudited |
| QuoterV2 | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239129 | `0xf5b7181877feab982a4b49a99e84bb7cbebeff98` | ⚠️ Unaudited |
| Router02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238977 | `0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b` | ⚠️ Unaudited |
| Router03 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x0929b85d1bf640e5af61ed97a30ace3058d284de`; sonic `0x571b196a894bacd9c922c6b5fefe2c955cc0d431`; sonic `0x6087760e9b092bcfa56f077f43bf7eb184f0189e`; sonic `0xb7861f0989082b4133968ba63e96f8a22ea9b268`; sonic `0xc477f030ae8d15fc3e9561d1caea7493ad7cb1e6` | ⚠️ Unaudited |
| Router03 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238994 | `0xcc6169aa1e879d3a4227536671f85afdb2d23fad` | ⚠️ Unaudited |
| sAMM_Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0d809fc015810ce75aa1c939c28e1355ad789048` | ⚠️ Unaudited |
| Scalepounder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x659aa8d33caaba3e178551af4e439f99dd12b9e9`; base `0x74a022ccd2d15d19633a44b4e869c26299dbc272`; base `0xde0ec128c6b0f6d3077de315684da741c7d61606` | ⚠️ Unaudited |
| ScaleRouter | adapter | project_anchor | own_supporting | 0 | base | unit-239086 | `0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa` | ⚠️ Unaudited |
| ScaleRouter | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239100 | `0x5e9d25014d01323d6f8c0c6640572e4444d11c94` | ⚠️ Unaudited |
| SolidlyExtendedRouter03 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x6411350def83147130b26c1e90dc7afbbb66e9bb`; base `0x750281e6b7d14d6afe29f6d1295ba3d8869e422f`; base `0xa78618818503902f369748a6fb3b379f6897aaab` | ⚠️ Unaudited |
| solidlyRouterCalcs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x27a2bd2070675ac6b40ecc6ed2ef5bcc25157a80`; sonic `0x442d31d9e1371b6528acbf846c26b8250bb8db95` | ⚠️ Unaudited |
| SSR2Thick_Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x25374db31147061cac658af137c4231ac77a1af9`; sonic `0x6ea84bbdee1885f46bca590e611bee08ab32525c` | ⚠️ Unaudited |
| SuperVoter | unknown | project_anchor | own_supporting | 0 | sonic | unit-238988 | `0xb6dfc39b3270f059f32eb9d680d994cdecfad93f` | ⚠️ Unaudited |
| SuperVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: sonic `0x107240e7ab30f602ebc792e30d6579b0b3a0d008`; sonic `0x2792f2dafb583e034124f7196ad8c019c2fa62cd`; base `0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1af947b517cb63b1442ced9af215c34efa608bcc` | ⚠️ Unaudited |
| SwapRouter02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-238998 | `0xe4ba08712c404042b8eefc3fdf3b603c977500df` | ⚠️ Unaudited |
| SwapRouter02 | adapter | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239082 | `0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8` | ⚠️ Unaudited |
| ThickALMGaugeEquivalentFarmland | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 24 deployments: sonic `0x2cb66d0c9209f42af70568d0d551d649dff1d65a`; sonic `0xd057ef7249ed884b4a1114cd0b853367aed965ff`; sonic `0xf3e31b7e8f9ba4bca8aa81ff63052d97b6a8bda9`; base `0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df`; base `0x159aef7df8d1bdef4f99c825a8b7931c01919ef2`; base `0x17a0d9b9147b139eeb4470da2ca92bbcb9112baa`; base `0x1dcdf000566622e4dc53e9d7359e83552425890c`; base `0x2735a783a160e3be8ce91b2b51fb39f5d6f53191`; base `0x338b1832a84813a52634471ac3015ae54508b5f3`; base `0x3c93f6391f1a3e9609e23c7424ffe4c029f2035a`; base `0x3f4d382f48562978bdc58ecd4a584296cb16a13e`; base `0x427141e639dda0ad344df29b35241d7c480eecb6`; base `0x56c90e0673e1e2d1c732841f5f41b251e37916c2`; base `0x5b50274ff4439424b7c501c3fd8a426464f9de7b`; base `0x66a5dfec671685fa4479bb1abbe1cfb99145dcc6`; base `0x8d6afe72a159baabded2d1314660476a180f1733`; base `0x98adfea120f646315eb8d7492be29a177344fd1e`; base `0xa7672a68a3ab5215f4adac2789376487fbc6ae8e`; base `0xb1486253757cb88fd006b242cbed82401e56e8d3`; base `0xc8eaae6e26434e2f0d0cce23309e3f453abf6a72`; base `0xdeba7ad89eab7e155413d35e59ff5893a17d6327`; base `0xf1580aff4ad58357a75b44adaacb35e621444354`; base `0xf269270d0b6fdbf34ba57bf8293455dedae2bf1d`; base `0xfcc85a764b6ae62fdaee33b8e7a2b59297b69068` | ⚠️ Unaudited |
| TickLens | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239116 | `0xb80a72281c76464cc0e1fbf2431a897393e0d757` | ⚠️ Unaudited |
| TvlGuru_ThickALM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b54dfec0d532808d23cc24e0035d74557e46f75` | ⚠️ Unaudited |
| TvlGuru_ThickThickALM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a949959057fbbdf1be20b489ceea51994fa59c9` | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | sonic | unit-238986 | `0x9b500c0a544b870d9c4c441147dcaef599e542e7` | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239094 | `0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-238981 | `0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | base | unit-239108 | `0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40` | ⚠️ Unaudited |
| UniswapV3Factory | registry | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239127 | `0xe6da85feb3b4e0d6aed95c41a125fba859bb9d24` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5ebd6536a0f8dc9b2aad4a8e750eafff60047437`; sonic `0xb654fa8d1027a305e4213709371d380d549beead` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 14 deployments: sonic `0x064e1cf18cdbbf2c0c7965630ab06a05acd5b3ae`; sonic `0x16448c5af53ce02e78311c11e6932c8107ffe52c`; sonic `0x240e58c255ecb811afc3b3c4e651fc7cb387db9f`; sonic `0x5bce722013d21dceb75276f48f69810af1663bc3`; sonic `0x5cb8cb459f491a74ee4f5d5597757d7b9e4fc109`; sonic `0xc72d0d8da18116790e06a6df3ff16869f3c6858b`; sonic `0xc9a2e42586de0cd45846d60f0368fea802f26ec3`; sonic `0xe164f4ddd1c804813cfc6b4e0b9795a3c7e1fb47`; base `0x050b424b074ae99a8c4fd176aad21fafa8d4e842`; base `0x18c7ad880a07d363f2d034a8523ae34b8068845a`; base `0x4232781d0ffa68440ba6aa6d5e8ba04c25a325a3`; base `0xa8bc72582856b0d4939e30988773df882f849aa2`; base `0xf795188d24c65255ad712cafca6756c7d05b9d31`; base `0xf88005d839a2f14e6b4f14938bb3deb4521cff21` | ⚠️ Unaudited |
| Voter | unknown | project_anchor | own_supporting | 1 | base | unit-239131 | `0x46abb88ae1f2a35ea559925d99fdc5441b592687` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x0a4531ded5c360c468b560ffdbce6058e19fbbfd`; sonic `0x58df0d595f1a6313be5e68b40aba031a3cbbeb03`; sonic `0x8a1eacca25c0c7aff16413165d5836cdbeb6ff68`; sonic `0xac33231c0a7e5d09dbde39161f13b0d46433325d`; sonic `0xb69d5fa3f5e7c6b6630869e22bff094f03ed339b`; sonic `0xbdc4cc7702f40ba157953e43d1c571c60ee02581`; sonic `0xe90f1b19d11f2505e8bc98e39ccf68fbf7e9893b`; sonic `0xff002f072d1c3683ea386a21c6935e027c23b279`; base `0x1d6dc86c3910c3fdedad9fd59c5ecf634b2e71d7`; base `0x3ce7ba8ad19fe33ae2ce20a4cc1b0d91c5053549`; base `0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1` | ⚠️ Unaudited |
| weightedMultiTokenBalance | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe41b49a03b367ecb41f834801c7f1922d8587eae` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (266)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x02ea3bf01f74acdaeb80efa0128e7a9fb29187cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x062ebc912ba97d1377edbd28a921c66dde2faaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x069a953ab1ff8f2ad1f17dd753b2e8fbb8344442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x09e6c1edbd4f106a452611515d40b71a7dc5a4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b2e3610f21088c65f7e8fd58ce8aa22c79ac204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0c2b506e2fe63d32e1f2e77caf32a99bfdb220aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0cb18bc7d3244153e4a9bbd5fa51aac3dbd8a818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1448d5c6c64dab7f1cea8e8c27167b88f2fd08c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1547620568e0494c4dbbe67e0c7543ce1c4eb361` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238957 | `0x17fa9da6e01ad59513707f92033a6eb03ccb10b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a61f0cd3ff95844fd8b45067b191b63eef2ddd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1ae47e8d7eda17bc3fc4716c290aaa840fb99293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1b1c9a41a96de931c7508bd2c653c57c63cd32a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1bf6ad96f89b475dd24b51b5af21d5284a737ff2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238959 | `0x1c065b52c73d791951572e343b21b5f476d303fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1d50ebd0db4c832b5bbd16fc2f4162130a4167dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1f60ee0c9de0480b68dd299103396cf59146d5fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238960 | `0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x23072c68ec53f19eed09d85aa6193affe18a08f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2453b0f6b2267101d1ab370284f1c9a0fd93d69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2696f94f11dff0d77875e2652fcdb537274b9ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x284d3cbc5ead19f016412c1dd4d1d6a23c903179` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238962 | `0x2b52294425a9a229322228de659ede9d146d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2b5cb80a1501b83ef35baca7403585ca801c00e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2c34a616da514f6083a55c01d351a605288efbf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2cf503ace60d2c9321a77401f8b1c9c1d9910380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2fc7879c6d0a4242acd59c900965cca8159e382e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x302e60a0a669878f0e960042e572df214af3cbca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238963 | `0x3045119766352ff250b3d45312bd0973cbf7235a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238964 | `0x30f45defbbce0030ee14f9e08d36102115e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x311c256aab987414afc886669801344ac556198e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31686c006a915904efa2da955f87e7a40424699f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x316e8bb62549e7f3ebcf38f146daa974a2d8c165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31e812c1302331caca4c5f211c52821b0f023392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3244084d18ea2e652fa7ab4deb6d9cabaa2bcefc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x326b73b2674ef61f12f6c63899bc85a7204564af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3466dc7641fc59763db95b50c125b877bd54d0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x36fb2d01dff252167daa6e7d04df17e1a243b92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d37f2076b2c16e80c7d1621182795ec47399ae8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238966 | `0x3fd3a0c85b70754efc07ac9ac0cbbdce664865a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x430997c51a6f6f8a7a60bdcd2ad5f44347d86dd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x430a47353cb2b7db4a0f311d7a48bcaeec1db6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43da59150c4a392cf9dc19b9013729382ac05f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x45482bb70b9737c2a0e07a623fe828fb4546ab66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4696ffbb324b643578103dd4cde6e04f9121d8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4b175408aaa9d87da71b6f549ac16a9727b85db2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238968 | `0x4bfb3993733b13bba2376e56f9d7ffaf56e047cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238969 | `0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4cfcc95cb36fcbe0e35c2404ed9b29c7dc1b5a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d9c51bea6ea827ea18fe87d287821a66177faf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50c24424746716ba2eed4baffd42a8c88c0f6e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x54080ba6edf63aeab03e19bd84507ecd19215c04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238970 | `0x547db6759b0af9e050855106993e3cefc16e937e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x55936f612dfea43ac6180534de31002896ce5810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x56f86380c506d9d082252722122bce7254894f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x594230fa4999c3de8a37d925738998e5094b6bbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x59c3cbf0e9cad3c7e9995973a1b0e27c727f6b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ae3295f198dcba4b88371a33ebbd059863889bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5ea576bb35d38b59dc35891b57c8047efd6de45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67b0cbdf0548c459ad3734d63b580beadc7c931c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x67ce89f6eeaed5d3c4a0dbd4002c3414f2051979` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238974 | `0x687dad08623c88452a5deb3a4482c979fa3f571e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238975 | `0x6bd73537da943723124c2a50f0f95557f4acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6c654110229a43bf0f347d5388eb3b32fc6f946d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6ec438cc50ca75b261a93039c4342e697468e272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70532d4caea4bb9df61794e7e0864f5a1bf11262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7169b46d8f99719beaf39ec63dbc798e1aa9000d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x716d5f93e612f0cebcda369b0c43da5e5a70ea14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x77081dd15d399b1dca135885a0e299b833ef95d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x771a9923422a9f3538ee5606a3404f384395a170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x79719592eac65aeacc4cf2eb39aee40d73bede99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a45a53aae3d6c2c32b07139874610320e5b1d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7c9ec9189120a9142b4a55b228abbff21794c1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7dde13416ee7560155c2353ceaae26594741b3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7ebf10a03a5aee2e475e07e2271afe3c0b5b16bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7febd8342077d7ca2a36ea6fca6daf70d9ff8d95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x82f244020a41264f26dadc3e09ec6990d04a3de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8394946b44cb0643a13cb29958ea70875560c6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83a4daa49f5257407179400c17c201c0406e015e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x85348cdd5d20ea246cd18e48717ab788d102eff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x87ca0bb1260bf6d4622630029e3c26100db4600c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8bedd6227445ae061ed42645fc4d32be897ed2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d111f63ea50e966f3cb1ad4b26942d481d470cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d3413c1368b347f1e15a134fac54b302090e793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x93590cdbc4ba47f419bc3652d54634e3ac361615` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x945763239775f324f14286913c6551a1feaa21bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94920b0b84a7df3299ef05e3478dc922f0e566b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x955f99aff4b66def6f0866b6295344bee46a83d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238985 | `0x97a7b2f95fda7181da16aec3072cd55a58d85073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9858027470c9d464e7465e1d50933f5666029bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x994d38babb4c6a3766cb658df9a5ed3f42369295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9d9682577ca889c882412056669bd936894663fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9dddb1cd8db2630204819e3550940b1edff1897c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0abf1669d2cc0edd227a5979759949f775d1174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa174350f831698336b8cf241b27b3a1d9241c6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa2a6a1a0543fa8752f6f5b52478df7fac5916298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa3ffc79679ac2a422bc52f4cad83a4c09d0721a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa6faf97f04dcfbe42fc269ec7329b361f94007e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa722586c2ca505182aa52ef016d08bb0d3b9a636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa87f2260c2a0e7fdbf8a3121aa911b589515dd41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa8e5d922774c2b0360083b64879fb23869fcd343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xab492b40817e9dc5195df543fbd8c71974855d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb32f2f6f808da563e86a42776f3ec4e25e4c02f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb79f47a60c44334dd4e2a9663a9242eb3c41ec9b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238989 | `0xb80a72281c76464cc0e1fbf2431a897393e0d757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238990 | `0xbf4bfeb838de95d64726d55dfae5295b3dfb4b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc218d5b24fdea3011e22747dd8bfbefe1f13a61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc28ca71006e2dc0510d12a6efca90e71498f1dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc33c20d4798a637aec2bbc6e1ffcd59b461aadf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xceb494c78b73670574bf7c5bb531be5eb249926d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2ce7238c07746e00ed1aec4ae3472e0cb18fc2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd3b05b1e4869a5ffe5ed0ab8d8182771dfcef7b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd5876948078eb89b3fea6d102112bf1910b7a994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd6d75f1dabeda4068aa8c0f1dc614b55876811b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd78d00bce60ff268bfc2833319f70032087bc3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda0b0e91e5fb62a8e01c4121f36ba30505949911` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238995 | `0xddd9845ba0d8f38d3045f804f67a1a8b9a528fcc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-238996 | `0xddf26b42c1d903de8962d3f79a74a501420d5f19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xde33b82c5e46f1d43ff49991f13d482500868ed2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdf486980df72446a5eff76263efb2fa9391be136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe07c8782f7cf1571639900aa60882de39f82b619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe188f2cd8cd7bc0b32e4d21135e0f7ee9d947f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe38145a0974a42f8f1ae33e469363874eacb9fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe63dfbd304cc6fe47e7c263fd9631631821f26cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-238999 | `0xe6da85feb3b4e0d6aed95c41a125fba859bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe7313f025167f5c22af8aa5a3b03eab215350a95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe8615b3549e69a274bc311429efd8daba8d0a6d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeae1040fba00d7907ba97e85acf8cf122ddaabaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xef085d64ddc05d5b0a372792cac5e0573dbbcea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf08413857af2cfbb6edb69a92475cc27ea51453b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2858f778656b181c1b1628dd17ed82b74890f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf29754a856798af118317a26dca23337aaa1b7f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2e90116e9436b8ecc78fc5f8ec60dd90ff7b120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf3022ee1a5da06a3b1efa1062074b710dd570130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf452efcba35d21ac8c59fe666dc393f6ae19e9bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf5b6cc236ff06ff9681a761a869da61c7564925f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | sonic | unit-239000 | `0xf5b7181877feab982a4b49a99e84bb7cbebeff98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf726dfcf71eccf6462ff533ac3ba32819fc85b94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfaad658bf2614c00369592df2ea0bd6ba168402c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfe554406879023921c69bb4c5d07622247ee7c15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239001 | `0x03f7ad0a6546a367a78cfd65159a86ce9e029ec5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239002 | `0x05733de76ba7ef6cac81507f884dc839fb905ac9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239003 | `0x07378e3b1fc43f7a37630c739a2f29f5b2442e60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239004 | `0x0b5c7bfcfff3d98c7e84a60c29b0c50f47de8516` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239005 | `0x0d90b147fb412fb8469b82bc73623ff8e19fccf0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239006 | `0x0fb84adb9c16d28b92c09c382caadbddd8e354c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239007 | `0x162378c7c6df312285b6f1d1b27d07cba30c9113` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239009 | `0x180da8bd91406dd41f18b6200c53deb553f86180` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239010 | `0x1a05eb736873485655f29a37def8a0aa87f5a447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239012 | `0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239013 | `0x2aa07920e4ecb4ea8c801d9dfece63875623b285` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239014 | `0x2b52294425a9a229322228de659ede9d146d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239015 | `0x2c9344d00f0c49c338a0ef87495796f9bd484fce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239017 | `0x30f45defbbce0030ee14f9e08d36102115e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239018 | `0x33da53f731458d6bc970b0c5fcbb0b3db4aaa470` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239019 | `0x380bd52af7db3b5173c18f89f5f3bf11a8e2c7dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239020 | `0x3e8b14b5534333a2b83a31d778ec3bcd9dc946f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239021 | `0x3fd3a0c85b70754efc07ac9ac0cbbdce664865a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239022 | `0x4bebeb8188aef8287f9a7d1e4f01d76cbe060d5b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239023 | `0x4bfb3993733b13bba2376e56f9d7ffaf56e047cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239024 | `0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239025 | `0x547db6759b0af9e050855106993e3cefc16e937e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239026 | `0x58be1f04029ffdccbd34919fe0118cd207d746b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239027 | `0x59f557679fa642e0e37cbaddb64d39403d05db35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239028 | `0x5b3220cb732245ffe8e26df228ac93feb685c157` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239029 | `0x5d4589bba42df0c53bbcb7ec59160de64b9d4308` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239030 | `0x6690adb6445971b04524abe951a18d230e863eca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239031 | `0x687dad08623c88452a5deb3a4482c979fa3f571e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239032 | `0x6bd73537da943723124c2a50f0f95557f4acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239033 | `0x6ef2fa893319db4a06e864d1dee17a90fcc34130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239035 | `0x777928f0b5f9066a14f7317d57e660f1d754cad8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239036 | `0x79c26d7ac184bb9c453b996475f484668e516de5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239037 | `0x7ba9b16586593a0cae883c9873b114e16f69eb6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239038 | `0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239039 | `0x8313f3551c4d3984ffbadfb42f780d0c8763ce94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239040 | `0x85e7f59248d1c52bd635f27518333f75fb80c72d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239041 | `0x88171375f6236885f463341d001b419d477edb74` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239042 | `0x8b3e5efaa3ea8e875112c6464218c28db8f0b4d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239043 | `0x8e2a632a3b76e7c3c10e5cfd82af87a6e6dfd06f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239044 | `0x8f02357cb55dbad26df5a7558cd810d5d0f05f43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239045 | `0x8f6666bd81c4811f433b8232a1c7d4383f11b2dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239046 | `0x93b97347722b8a0d21b0dddf79ae1c85c05041f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239047 | `0x940407988c4b94fe95ee4e0a91983015f765b2b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239048 | `0x97a7b2f95fda7181da16aec3072cd55a58d85073` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239049 | `0x9b500c0a544b870d9c4c441147dcaef599e542e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239050 | `0x9ca9805dbace7aee0565c546145ca105b202a979` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239051 | `0x9e4105f9e2284532474f69e65680e440f4c91cb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239052 | `0x9e4fb3c60a08a0685d32c2a7788843c440171060` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239053 | `0xa83f31af44e812d2edf0536516e7d274cd7301b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239054 | `0xaec6d3e4d319cdc6553f0379e4ff9001d022bea9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239055 | `0xb0f598bbb524acb35f9e7c60c645f09e78eb079f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239057 | `0xb80a72281c76464cc0e1fbf2431a897393e0d757` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239059 | `0xbf65ca2747a1eeebf8a1b0d119de8be0540c57cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239060 | `0xc4a987a83acfaca50e19a20bab263cafd5e7506c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239061 | `0xc6366efd0af1d09171fe0ebf32c7943bb310832a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239062 | `0xc701e92db1ef14ab64f66f18536b1e07678db678` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239063 | `0xc8be3d680e31187a94b47119c5b2b095ce2be578` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239065 | `0xcc82bff654433c5674945c10ab0808863d4c8c48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239066 | `0xd0f8d544d2534e09937b6d8ab1c2734530a1ed8b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239067 | `0xd311fd89e8403c2e90593457543e99cecc70d511` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239070 | `0xe17e46780461bb7e7397fb36ac6d03a307055c4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239071 | `0xe3d1a117df7dcac2eb0ac8219341bad92f18dac1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239072 | `0xe4ba08712c404042b8eefc3fdf3b603c977500df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239073 | `0xe6da85feb3b4e0d6aed95c41a125fba859bb9d24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239074 | `0xe8ca91bae8aa0e9229f6e78f8976b837134b60e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239075 | `0xf2bfb9ca6e21b30034b9d56cb4735d2c180cc7e1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-239076 | `0xf5b7181877feab982a4b49a99e84bb7cbebeff98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-239077 | `0xfb0c0ce1d43b373b7535ef556e1d55d285156887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01d5505ff29871afdca8984e7e95f0e943f34072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d153abe762083b507329618969b8f34c9136dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1633670d2ae6ebe5ff7d9d9c24a8c59b617e4884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x165f11f698fd7765cff7cc92989e872e511bb977` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16e3ca4d54db5d8cbd070c1743043a9a7b19ff3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x20cfe3733db39d9c1cdefd6b6fe5186c74b8f448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x24584bb7ca5274c78cbbaa21138f8dc1e813189a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239083 | `0x28c9c71c776a1203000b56c0cca48bef1cd51c53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2dcc87751fff3e250a4dd0037991653472bffa64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239088 | `0x30f45defbbce0030ee14f9e08d36102115e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3979d8149099b98cde35e08722f05dc477f55b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39cc1c9691a2d6bef97db057bc09039869f17536` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f0458ffb6d106d2f5cdec9cedc9054a69275489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f34e0fd8dac50868ccb28eb2042f11e687886c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3f73079e99244b15fb7fa9a2bef2e3a1eb9926e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4046c4a45b0472fbce61965c7b84e05fe90a40c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239091 | `0x44621ccef14730a2f864ec11311a7f0bcb005685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x480a9864f941804a8d8b0f3e3c6660097954fbdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bcb116341b0de791a0105e6caebb93b9b12aaf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239093 | `0x4bfb3993733b13bba2376e56f9d7ffaf56e047cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d0c30815893b381558a91a8dd889552aa6e2cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5023217a94416ddb2aa4fbf00b4fd24cbf56f04c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239095 | `0x54016a4848a38f257b6e96331f7404073fd9c32c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239096 | `0x547db6759b0af9e050855106993e3cefc16e937e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x548551b86edce0614d6d77f3f3829b049d730813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54967f6e63a5cadb35f5a713be82a8fab80c67ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6693bc4d757bd1b625f1f429d2c3045da44e416d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68a5d249d9ac9a6404eb816285e61d980df1299f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x68ea7c60f14c7faac59dbb546836237afd0eb023` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | base | unit-239102 | `0x6bd73537da943723124c2a50f0f95557f4acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c60189e1fec8fdbd950873898561aa696d20945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x771a9923422a9f3538ee5606a3404f384395a170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7898a099b61fdecd83a26f4006812ef04e0ceb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x861fe22b721602954d34f2e4a5843e6a295811c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b759517f13337e351e0e715d5fa7de2c5c4388d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ddd725a8a8666c4166879e45c8704d60df6c60d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x931389186c11eb3e9dc3fe388b2291ea80327bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x93b25ca96088e09ebb85ac979f087a899c891738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x94ea6664805a871201f8716e5a54262466acdb59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97dd08a563ae4af9c39c0c9cb294fab76ca1f55a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239113 | `0x9b500c0a544b870d9c4c441147dcaef599e542e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d88ac7c10826b377e28b61f9ef11d07b7c58612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2a6a1a0543fa8752f6f5b52478df7fac5916298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5aed208a908bbad4cd8e4308a8ef9e69e644127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe83cd6c533c6048554871e7e84a713fc75f9876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbed5a253797e9be02ed5433c49f65eb4342fc3ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239121 | `0xcb418f555974ef099a528c2c866b35520230ae18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc1eff4e5f1b82a96179b9044e93e142285fee93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd45f5dc2adf3b3a35a00d8b4e51b2b4afffccf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd467b1bb20e9c5569ad8bc91d2236a8ceb574075` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239126 | `0xe4ba08712c404042b8eefc3fdf3b603c977500df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-239128 | `0xed8db60acc29e14bc867a497d94ca6e3ceb5ec04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xee52637ecc95f3d20c67b6e26c986add50fdfa9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf024aa99d33e3818c0248302eb9c286af67e779b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3e31b7e8f9ba4bca8aa81ff63052d97b6a8bda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4f5af3502916314ec17ebc813fd33f5bd29c986` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 220
- Live contracts: 4
- Unknown liveness contracts: 216
- Source-verified contracts: 111
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=14, contamination review=9, exact address book overlap=5, source verified unclassified=87, unverified unclassified=105

Showing first 200 of 220 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ERC1967Proxy<br>`0x83291ffc4831844dbcb5cd31fd8aab39e93ac4d4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| candidate review | ERC1967Proxy<br>`0xedf8b632b537d5993adb5e2e15882cd791c284cb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| candidate review | ProxyAdmin<br>`0x0be40f3289c1a2b7c380086490393e6ef7c1d1aa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0x1d864a2087c61cdcce1d6ff4b9ebc400e7ed1f2e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0x3ba64e3d39aaaf65e1c8bafc37ec91d40256a481` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| candidate review | ProxyAdmin<br>`0x4fdd88e41b9f3e67ac874b698802d44c35487c6c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0x5cfdf393f776f696c7c123e7c63e7ab2f8627db6` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0x6d93a966dc69a667d9584befc2eeb167df9f8356` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0x93b25ca96088e09ebb85ac979f087a899c891738` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| candidate review | ProxyAdmin<br>`0xa543f1b89cdb3b45c90b81b559948b1c54ea7324` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0xc55ebfb742a6a43a14bf3b68b20a9c300dbe0979` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0xcd4f9a345aa5ad9d34e92635d7c1d9b609ae0304` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0xeaa0dc1077d743f2b4a86a21949c9cd9d792125a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| candidate review | ProxyAdmin<br>`0xf2d79a0f220679ddda599e63484877c93c4846ca` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | BribeFactory<br>`0x0f0c346dff7ea5d612c67dc3eb06f6166a067160` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | eLOCKS<br>`0x26d70b26df8619fd3eeec07e22873b9f617e35da` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | Equalens_supplyStats<br>`0x1b62eb66389456187576907b2fce1fe2274b2f89` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | GaugeFactory<br>`0x1c0f3c36c68cf8e12e0abe83f03062bc3d6e37b9` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | LocklessReceiptMinter<br>`0x0d571c1ac1e1d806256d639eef65a017b8445ca2` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| contamination review | multiNotifyEqualToEltokenGauge<br>`0x1244a7a6ee179bbbd332f6f6673259e569b9c92c` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | PairFactory<br>`0x312e1fd8f3281b8b476030ed1b058f62d800572d` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | Router03<br>`0x0929b85d1bf640e5af61ed97a30ace3058d284de` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| contamination review | solidlyRouterCalcs<br>`0x27a2bd2070675ac6b40ecc6ed2ef5bcc25157a80` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| exact address book overlap | QuoterV2<br>`0xc701e92db1ef14ab64f66f18536b1e07678db678` | project_anchor | unknown | live | verified | n/a | `0x2f4f4b196beed7f23526f69e9460a8e50eabbc15` |
| exact address book overlap | UnnamedContract<br>`0x30f45defbbce0030ee14f9e08d36102115e5ce3b` | project_anchor | unknown | live | unverified | n/a | `0x2f4f4b196beed7f23526f69e9460a8e50eabbc15` |
| exact address book overlap | UnnamedContract<br>`0x547db6759b0af9e050855106993e3cefc16e937e` | project_anchor | unknown | live | unverified | n/a | `0x2f4f4b196beed7f23526f69e9460a8e50eabbc15` |
| exact address book overlap | UnnamedContract<br>`0xbf4bfeb838de95d64726d55dfae5295b3dfb4b4b` | project_anchor | unknown | live | unverified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| exact address book overlap | UnnamedContract<br>`0x6bd73537da943723124c2a50f0f95557f4acc9a2` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xa51a2227064265afdeac8d9840a400ba446ad130` |
| source verified unclassified | BribeFactory<br>`0x3dd53ed3263f06cf3c6238a08e6422714bcefc2e` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | BribeFactory<br>`0xa07662bbbc760e3d6097d179946b80d5fa5de5c4` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | BribeFactory<br>`0xded25736417d0398e479a4dbdfff1d85c36d456e` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | BribeFactory<br>`0xfeffd4506d973f92427e7bc5c68b62984ad9f60f` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | ElitenessERC20<br>`0x5e9d25014d01323d6f8c0c6640572e4444d11c94` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | ElitenessERC20<br>`0x86112bd87647c9b492890db795eb403b08e8da63` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | ElitenessERC20<br>`0x88dd903e5bbacf1551161b33266bef05ef218c34` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | ElitenessERC20<br>`0xd600ec98cf6418c50ee051ace53219d95aeaa134` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | ElitenessERC20<br>`0xdac17491596a15702ce927921284c71e44951694` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | ElitenessFarmland<br>`0xde24d6b5ff9ec06a35f17e3a9cfdc35c5e966ec7` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eliteRingsManager<br>`0x52ce458bf911b30db8875ec21c5a37829bfff2a6` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eliteRingsManager<br>`0x54ec1ea013eb3f3ffb32b87326cb040599f1a397` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eliteRingsManager<br>`0x5f36086558cda9464eac6c5daeafa6364a18141a` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eliteRingsManager<br>`0x6164b6de90de0332a1ae4f928528957829e9e950` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eliteRingsManager<br>`0xad27dfad489587cb62933695498fdf78653ba57e` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0x18f8ad653867fc53b4d75bda1b610a5f3325b2db` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0x23bf562322f5f2f3d9b6837d9943b12e537ed48f` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0x5a94c997feb8e7d15506fdde4959a3a9a01fbe9f` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0x61bd439acc1990eff3b586edc4307980b0d7f53b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0x681f98969781cc6349fe98953d58bc2b7fcfdc5b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0x8f7df16df96458478168340edf93fae831e59af5` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0xa25e8e042637feb16f5f22d9d037e32084d6ce7e` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCK<br>`0xa7678e1954e35e8193151319c480f307111e1abb` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCKS<br>`0x3518b5c20e3e7e166fbec4013486fa9bb7ad89eb` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCKS<br>`0x3e286614806e290731fbc962a4289ccd536f308e` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCKS<br>`0x7f7fc8b1b4c0618a6e6554da6bc461021afffe99` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | eLOCKS<br>`0x8ff927bd5c1524dafb874a571c710cb28451a430` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | elTokenZap<br>`0xcc4bae1e2ffaf69fd0c0848d21dafcc7e25ae56c` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0x0dd7c089612fcea9a61e30c34983a0934751fe2c` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0x16641a85dccfe28b368eaaa7125be669ed0b26c8` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0x21c785c5aa1355ff510af97d4c1688aabc8b3383` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0x591e027153ed4e536275984e1b7573367e11dac4` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0x5babd555e03bcde12c918718cd59b1eba0f52b63` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0xa821d17cbe05fb8628a5a5e3d4f58d0beb20b5fd` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0xb934dea8ca266ff2f1a36b9bc2017760a0fe602c` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0xcfc8d248a9c2b8af3e64d7cf08333e1fecc64f15` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0xefbf87e112be572bf3c7f8009633f4863ef330f2` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equal<br>`0xfa6d96d605035e23e7f4b14b745da3e133dbe89b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equalens_supplyStats<br>`0x6ce9287d4020909bbf1f55e49ebde1a52cfde033` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Equalens_supplyStats<br>`0xd1cc94d602ccad07cf40daf1a36a615b972f13ae` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | fBOMB<br>`0x807c19badabc848336fe0379bd659e4e4608542d` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | FeeSynthesizer<br>`0x5023217a94416ddb2aa4fbf00b4fd24cbf56f04c` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | FeeSynthesizer<br>`0x9df999b5f338dca61c4bd4a0262ac8137726c317` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | FeeSynthesizer<br>`0xb5aed208a908bbad4cd8e4308a8ef9e69e644127` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | LocklessReceiptMinter<br>`0x8b2d8ebb49f1133522e669166e605799dc445f6e` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | Minter<br>`0x078c68189c788f2e1df314276fd5492a32dc8ecb` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Minter<br>`0x3fdd8a90947d84a3e5c221bf8dfd39f3a868de1e` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Minter<br>`0x7697cc621f05cb824c9c1c83868cb4d5c611147b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Minter<br>`0xb8711942ee4a18f3f7686f64fe6206115186322a` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | multiNotifyEqualToEltokenGauge<br>`0x4e552d7055436bdbf3bc8a4d377b0c3e85ec2463` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | multiNotifyEqualToEltokenGauge<br>`0xac4dbdc09d5f6e8632af9e8620c285dfbc19e075` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | multiNotifyEqualToEltokenGauge<br>`0xb959fa7a62026976ff6439bbd3108721b4ec8c8b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | NonfungiblePositionManager<br>`0xc905262ed27c56da7e5df67a51e8e1bbcd23fa0b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | PairFactory<br>`0xb6a21a40b42b5610edf37d437a6abf237552f637` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | PairFactory<br>`0xcdc292046ea39e0ab0bcf7ad100c4506846bf6a0` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | PairFactory<br>`0xfcfa93364ea2cfcdb15a1afceb2e2683284fdf2d` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | QuoterV2<br>`0xd3c938a44848378430a12bc7b7d350409d366142` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Router03<br>`0x571b196a894bacd9c922c6b5fefe2c955cc0d431` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Router03<br>`0x6087760e9b092bcfa56f077f43bf7eb184f0189e` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Router03<br>`0xb7861f0989082b4133968ba63e96f8a22ea9b268` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Router03<br>`0xc477f030ae8d15fc3e9561d1caea7493ad7cb1e6` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | solidlyRouterCalcs<br>`0x442d31d9e1371b6528acbf846c26b8250bb8db95` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | SuperVoter<br>`0x107240e7ab30f602ebc792e30d6579b0b3a0d008` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | SuperVoter<br>`0x2792f2dafb583e034124f7196ad8c019c2fa62cd` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | SwapRouter02<br>`0x1af947b517cb63b1442ced9af215c34efa608bcc` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | ThickALMGaugeEquivalentFarmland<br>`0x2cb66d0c9209f42af70568d0d551d649dff1d65a` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | ThickALMGaugeEquivalentFarmland<br>`0xd057ef7249ed884b4a1114cd0b853367aed965ff` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | ThickALMGaugeEquivalentFarmland<br>`0xf3e31b7e8f9ba4bca8aa81ff63052d97b6a8bda9` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | Voter<br>`0x064e1cf18cdbbf2c0c7965630ab06a05acd5b3ae` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Voter<br>`0x16448c5af53ce02e78311c11e6932c8107ffe52c` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Voter<br>`0x240e58c255ecb811afc3b3c4e651fc7cb387db9f` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Voter<br>`0x5cb8cb459f491a74ee4f5d5597757d7b9e4fc109` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Voter<br>`0xc72d0d8da18116790e06a6df3ff16869f3c6858b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | Voter<br>`0xc9a2e42586de0cd45846d60f0368fea802f26ec3` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0x0a4531ded5c360c468b560ffdbce6058e19fbbfd` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0x58df0d595f1a6313be5e68b40aba031a3cbbeb03` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0x8a1eacca25c0c7aff16413165d5836cdbeb6ff68` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0xac33231c0a7e5d09dbde39161f13b0d46433325d` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0xb69d5fa3f5e7c6b6630869e22bff094f03ed339b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0xbdc4cc7702f40ba157953e43d1c571c60ee02581` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0xe90f1b19d11f2505e8bc98e39ccf68fbf7e9893b` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | VotingEscrow<br>`0xff002f072d1c3683ea386a21c6935e027c23b279` | non_address_book | unknown | unknown | verified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| source verified unclassified | BribeFactory<br>`0x90cda9b619b124d321111fe240f8191a72e93297` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | Equal<br>`0x7be024bbd16e3e0ab6839cb94d0dc25b7a101eab` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | Minter<br>`0x731372585450adbbb35e88ac18cd5d906eb8dd46` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | PairFactory<br>`0x8104beae44f19f0cbda1985ac983a107115a417f` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| source verified unclassified | VotingEscrow<br>`0x1d6dc86c3910c3fdedad9fd59c5ecf634b2e71d7` | non_address_book | unknown | unknown | verified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| unverified unclassified | UnnamedContract<br>`0x02ea3bf01f74acdaeb80efa0128e7a9fb29187cb` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x062ebc912ba97d1377edbd28a921c66dde2faaaf` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x069a953ab1ff8f2ad1f17dd753b2e8fbb8344442` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x0b2e3610f21088c65f7e8fd58ce8aa22c79ac204` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x0c2b506e2fe63d32e1f2e77caf32a99bfdb220aa` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x1448d5c6c64dab7f1cea8e8c27167b88f2fd08c2` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x1547620568e0494c4dbbe67e0c7543ce1c4eb361` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x1ae47e8d7eda17bc3fc4716c290aaa840fb99293` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x1b1c9a41a96de931c7508bd2c653c57c63cd32a4` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x1bf6ad96f89b475dd24b51b5af21d5284a737ff2` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x1f60ee0c9de0480b68dd299103396cf59146d5fa` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x23072c68ec53f19eed09d85aa6193affe18a08f9` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x2696f94f11dff0d77875e2652fcdb537274b9ce7` | non_address_book | unknown | unknown | unverified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| unverified unclassified | UnnamedContract<br>`0x284d3cbc5ead19f016412c1dd4d1d6a23c903179` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x2b5cb80a1501b83ef35baca7403585ca801c00e9` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x2cf503ace60d2c9321a77401f8b1c9c1d9910380` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x2fc7879c6d0a4242acd59c900965cca8159e382e` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x302e60a0a669878f0e960042e572df214af3cbca` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x311c256aab987414afc886669801344ac556198e` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x31686c006a915904efa2da955f87e7a40424699f` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x316e8bb62549e7f3ebcf38f146daa974a2d8c165` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x3244084d18ea2e652fa7ab4deb6d9cabaa2bcefc` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x326b73b2674ef61f12f6c63899bc85a7204564af` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x3466dc7641fc59763db95b50c125b877bd54d0d2` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x36fb2d01dff252167daa6e7d04df17e1a243b92c` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x430a47353cb2b7db4a0f311d7a48bcaeec1db6c3` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x45482bb70b9737c2a0e07a623fe828fb4546ab66` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x4696ffbb324b643578103dd4cde6e04f9121d8bc` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x4cfcc95cb36fcbe0e35c2404ed9b29c7dc1b5a1d` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x4d9c51bea6ea827ea18fe87d287821a66177faf1` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x50c24424746716ba2eed4baffd42a8c88c0f6e97` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x5300db6baf9a1272121f74b7b2df0d2f79631dd2` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x54080ba6edf63aeab03e19bd84507ecd19215c04` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x56f86380c506d9d082252722122bce7254894f0f` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x59c3cbf0e9cad3c7e9995973a1b0e27c727f6b56` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x5ae3295f198dcba4b88371a33ebbd059863889bd` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x5ea576bb35d38b59dc35891b57c8047efd6de45d` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x67b0cbdf0548c459ad3734d63b580beadc7c931c` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x67ce89f6eeaed5d3c4a0dbd4002c3414f2051979` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x6c654110229a43bf0f347d5388eb3b32fc6f946d` | non_address_book | unknown | unknown | unverified | n/a | `0x05dddf0ae24992bcc937569cf7018fef311d945a` |
| unverified unclassified | UnnamedContract<br>`0x6ec438cc50ca75b261a93039c4342e697468e272` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x70532d4caea4bb9df61794e7e0864f5a1bf11262` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x7169b46d8f99719beaf39ec63dbc798e1aa9000d` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x716d5f93e612f0cebcda369b0c43da5e5a70ea14` | non_address_book | unknown | unknown | unverified | n/a | `0x05dddf0ae24992bcc937569cf7018fef311d945a` |
| unverified unclassified | UnnamedContract<br>`0x77081dd15d399b1dca135885a0e299b833ef95d4` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x771a9923422a9f3538ee5606a3404f384395a170` | non_address_book | unknown | unknown | unverified | n/a | `0x2f4f4b196beed7f23526f69e9460a8e50eabbc15` |
| unverified unclassified | UnnamedContract<br>`0x79719592eac65aeacc4cf2eb39aee40d73bede99` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x7a45a53aae3d6c2c32b07139874610320e5b1d29` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x7c9ec9189120a9142b4a55b228abbff21794c1ae` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x7dde13416ee7560155c2353ceaae26594741b3e5` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x7ebf10a03a5aee2e475e07e2271afe3c0b5b16bd` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x7febd8342077d7ca2a36ea6fca6daf70d9ff8d95` | non_address_book | unknown | unknown | unverified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| unverified unclassified | UnnamedContract<br>`0x82f244020a41264f26dadc3e09ec6990d04a3de3` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x8394946b44cb0643a13cb29958ea70875560c6fc` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x83a4daa49f5257407179400c17c201c0406e015e` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x85348cdd5d20ea246cd18e48717ab788d102eff7` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x87ca0bb1260bf6d4622630029e3c26100db4600c` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x8bedd6227445ae061ed42645fc4d32be897ed2ec` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x8d111f63ea50e966f3cb1ad4b26942d481d470cf` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x8d3413c1368b347f1e15a134fac54b302090e793` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x93590cdbc4ba47f419bc3652d54634e3ac361615` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x94920b0b84a7df3299ef05e3478dc922f0e566b2` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x955f99aff4b66def6f0866b6295344bee46a83d4` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x9858027470c9d464e7465e1d50933f5666029bac` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x994d38babb4c6a3766cb658df9a5ed3f42369295` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0x9d9682577ca889c882412056669bd936894663fd` | non_address_book | unknown | unknown | unverified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| unverified unclassified | UnnamedContract<br>`0x9dddb1cd8db2630204819e3550940b1edff1897c` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xa174350f831698336b8cf241b27b3a1d9241c6fb` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xa2a6a1a0543fa8752f6f5b52478df7fac5916298` | non_address_book | unknown | unknown | unverified | n/a | `0x2f4f4b196beed7f23526f69e9460a8e50eabbc15` |
| unverified unclassified | UnnamedContract<br>`0xa3ffc79679ac2a422bc52f4cad83a4c09d0721a8` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xa6faf97f04dcfbe42fc269ec7329b361f94007e3` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xa722586c2ca505182aa52ef016d08bb0d3b9a636` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xa87f2260c2a0e7fdbf8a3121aa911b589515dd41` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xa8e5d922774c2b0360083b64879fb23869fcd343` | non_address_book | unknown | unknown | unverified | n/a | `0x5c146cd18fa53914580573c9b9604588529406ca` |
| unverified unclassified | UnnamedContract<br>`0xb32f2f6f808da563e86a42776f3ec4e25e4c02f5` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xb79f47a60c44334dd4e2a9663a9242eb3c41ec9b` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xc218d5b24fdea3011e22747dd8bfbefe1f13a61e` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xc28ca71006e2dc0510d12a6efca90e71498f1dac` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xc33c20d4798a637aec2bbc6e1ffcd59b461aadf0` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xceb494c78b73670574bf7c5bb531be5eb249926d` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xd2ce7238c07746e00ed1aec4ae3472e0cb18fc2d` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xd3b05b1e4869a5ffe5ed0ab8d8182771dfcef7b8` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xd5876948078eb89b3fea6d102112bf1910b7a994` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xd6d75f1dabeda4068aa8c0f1dc614b55876811b9` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |
| unverified unclassified | UnnamedContract<br>`0xd78d00bce60ff268bfc2833319f70032087bc3f1` | non_address_book | unknown | unknown | unverified | n/a | `0x70b4b5d30f9204c34e2a873fcf3dfa20591e6490` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xb136b45e3e241bb0d0c037395446cf42e4db13d6` | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x79c26d7ac184bb9c453b996475f484668e516de5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x79c26d7ac184bb9c453b996475f484668e516de5` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc701e92db1ef14ab64f66f18536b1e07678db678` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc701e92db1ef14ab64f66f18536b1e07678db678` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b` | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xcc6169aa1e879d3a4227536671f85afdb2d23fad` | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa` | ScaleRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb6dfc39b3270f059f32eb9d680d994cdecfad93f` | SuperVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe4ba08712c404042b8eefc3fdf3b603c977500df` | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x46abb88ae1f2a35ea559925d99fdc5441b592687` | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 5 |
| standard_library | 3 |
| needs_review | 267 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
