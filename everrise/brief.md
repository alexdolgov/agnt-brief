# Agentic Audit Brief: EverRise

## Project Overview

- Project: EverRise (`everrise`)
- Website: [https://www.everrise.com](https://www.everrise.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.669Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 186 unique implementations (365 raw deployments)
- DeFi Llama TVL: $596,676.32
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 100 project-authored contract(s) across 4 chain(s); 49 ERC20 tokens, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 22 common project-authored base contract(s) (erc165, uniswapv2erc20, everriseconfigurable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 438; live-surface contracts included: 365 (241 live, 124 unknown).
- Excluded by liveness: 73 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/64 (0.0%)
- Deployed-live implementations: 67 of 186 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/69
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 117
- Unique implementations: 186
- Raw deployments: 365
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BadBuildersClubSoulbound | unknown | avalanche | n/a | [`0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | 3 deployments: avalanche [`0x217945d4cb3386420252da73743f1730f38266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/); avalanche `0x846a4c2e80da03e4d8aef07a9503ecf854bfff23`; avalanche `0xbb28e074c1448c92b1403ba3bd4d6905e20a7ad0` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x1dd4d86180eee39ac4fb35eca67cacf608ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/); avalanche `0xce63eca0c8a2084c1baece7737db88f10c412c5e`; avalanche `0xdc0730f8fc5f0efa1c304716a50d0a96ce4a7c62`; avalanche `0xe35e9cd716d9b87ed4bc2bb7ee8249aaee9a386f` | ⚠️ Unaudited |
| CellToken | unknown | bsc | n/a | 2 deployments: bsc [`0x87184884fc32594d4e347874cbd8294d61c18df3`](./contracts/bsc-56/0x87184884fc32594d4e347874cbd8294d61c18df3/); bsc `0xf3e1449ddb6b218da2c9463d4594ceccc8934346` | ⚠️ Unaudited |
| DeFido | unknown | bsc | n/a | 2 deployments: ethereum `0xf32122561d51e891b823dec2b42f644884c1cd91`; bsc [`0x199f788ddb566b7ebb59bf35b36914f2acdb33de`](./contracts/bsc-56/0x199f788ddb566b7ebb59bf35b36914f2acdb33de/) | ⚠️ Unaudited |
| DiamondQ | unknown | bsc | n/a | [`0xbd573ddc3ab93d7984012b897821f6c09f4d24e3`](./contracts/bsc-56/0xbd573ddc3ab93d7984012b897821f6c09f4d24e3/) | ⚠️ Unaudited |
| EFT | unknown | bsc | n/a | [`0xb72962568345253f71a18318d67e13a282b187e6`](./contracts/bsc-56/0xb72962568345253f71a18318d67e13a282b187e6/) | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | 2 deployments: avalanche [`0x72281a435fe5a9945e04ef4d0a32771430106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/); avalanche `0x9e6cab0d18291c56e7e1d6e92c268bdc75c05b09` | ⚠️ Unaudited |
| ERC721Staking | unknown | bsc | n/a | [`0x3ffdb968b20c95e3f7f33182482903ed37f16e54`](./contracts/bsc-56/0x3ffdb968b20c95e3f7f33182482903ed37f16e54/) | ⚠️ Unaudited |
| EverOwn | unknown | ethereum | n/a | 3 deployments: ethereum [`0x78ab99dae7302ea91e36962f4b23418a89d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/); bsc `0x89dd305ffbd8e684c77758288c48cdf4f4abe0f4`; polygon `0x7dd45e9be23219fd8ccfc584b652775aba62fdef` | ⚠️ Unaudited |
| EverRise | unknown | bsc | n/a | 2 deployments: bsc [`0xc17c30e98541188614df99239cabd40280810ca3`](./contracts/bsc-56/0xc17c30e98541188614df99239cabd40280810ca3/); polygon [`0xc17c30e98541188614df99239cabd40280810ca3`](./contracts/polygon-137/0xc17c30e98541188614df99239cabd40280810ca3/) | ⚠️ Unaudited |
| EverRiseAvax | unknown | avalanche | n/a | [`0xc17c30e98541188614df99239cabd40280810ca3`](./contracts/avalanche-43114/0xc17c30e98541188614df99239cabd40280810ca3/) | ⚠️ Unaudited |
| EverRiseLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1`](./contracts/ethereum-1/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/); ethereum `0xc17c30e98541188614df99239cabd40280810ca3` | ⚠️ Unaudited |
| EverRiseLib | unknown | bsc | n/a | 2 deployments: bsc [`0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1`](./contracts/bsc-56/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/); polygon [`0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1`](./contracts/polygon-137/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | ⚠️ Unaudited |
| EverRiseLibAvax | unknown | avalanche | n/a | [`0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1`](./contracts/avalanche-43114/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | ⚠️ Unaudited |
| IterableMapping | unknown | bsc | n/a | [`0xa4013e1e4f99f5cd22584424552c1d28342e77b1`](./contracts/bsc-56/0xa4013e1e4f99f5cd22584424552c1d28342e77b1/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | 9 deployments: avalanche [`0x29472d511808ce925f501d25f9ee9effd2328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/); avalanche `0x3fe38b7b610c0acd10296fef69d9b18eb7a9eb1f`; avalanche `0x585e7bc75089ed111b656faa7aeb1104f5b96c15`; avalanche `0x8b650e26404ac6837539ca96812f0123601e4448`; avalanche `0x929f5cab61dfec79a5431a7734a68d714c4633fa`; avalanche `0xbfdbe35168953c9d29bdf9a0043f902f233c76e0`; avalanche `0xc146783a59807154f92084f9243eb139d58da696`; avalanche `0xc988c170d0e38197dc634a45bf00169c7aa7ca19`; avalanche `0xed6aaf91a2b084bd594dbd1245be3691f9f637ac` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | [`0xce095a9657a02025081e0607c8d8b081c76a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | registry | avalanche | n/a | [`0x9ad6c38be94206ca50bb0d90783181662f0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeHatToken | token | avalanche | n/a | [`0x82fe038ea4b50f9c957da326c412ebd73462077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4247c5dbac51a135939cc904c34e4913b6bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/); avalanche `0x861726bfe27931a4e22a7277bde6cb8432b65856` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | n/a | [`0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | n/a | [`0xacff0fbf56baeb9ef677de19aded8f7a950bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | adapter | avalanche | n/a | [`0x60ae616a2155ee3d9a68541ba4544862310933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| JoeToken | token | avalanche | n/a | [`0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/); avalanche `0x8b33e813e6757f5c1a5e662333463c2ab23d99b7` | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | [`0xdc13687554205e5b89ac783db14bb5bba4a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0xc22f01ddc8010ee05574028528614634684ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | ⚠️ Unaudited |
| KetherNFTLoaner | unknown | ethereum | n/a | [`0x6d02744ef4418cb0d72f54c1ee53140430b9dbed`](./contracts/ethereum-1/0x6d02744ef4418cb0d72f54c1ee53140430b9dbed/) | ⚠️ Unaudited |
| KingFund | unknown | bsc | n/a | [`0x838e37f209950540bbd54d4f52c693a968d79cf8`](./contracts/bsc-56/0x838e37f209950540bbd54d4f52c693a968d79cf8/) | ⚠️ Unaudited |
| KINGSHIBA | unknown | bsc | n/a | [`0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c`](./contracts/bsc-56/0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c/) | ⚠️ Unaudited |
| KishuForever | unknown | bsc | n/a | [`0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd`](./contracts/bsc-56/0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd/) | ⚠️ Unaudited |
| Landarno | unknown | bsc | n/a | 2 deployments: ethereum `0xd5641ab6c45b30b401aeafbef72052e5eba5afb2`; bsc [`0x3dbfc6387560a7216174a367573290db14556321`](./contracts/bsc-56/0x3dbfc6387560a7216174a367573290db14556321/) | ⚠️ Unaudited |
| LiquidityGeneratorToken | token | bsc | n/a | [`0xc46fe585f349b782ae319046683868b6227bca67`](./contracts/bsc-56/0xc46fe585f349b782ae319046683868b6227bca67/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f121ca35509af06a0be99093d08462f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x188bed1968b795d5c9022f6a0bb5931ac4c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/); avalanche `0x3eb4ec45b791c6d43b8dd5373c2e94d8996e8945` | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| Momento | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ae8b74cd2d566853715800c9927f879d6b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/); bsc `0x1b9a8c4f2df5dc7b8744b1a170d8d727360c67ee` | ⚠️ Unaudited |
| MRC20 | unknown | polygon | n/a | [`0x0000000000000000000000000000000000001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | ⚠️ Unaudited |
| MTGY | unknown | ethereum | n/a | 2 deployments: ethereum [`0x025c9f1146d4d94f8f369b9d98104300a3c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/); bsc [`0x025c9f1146d4d94f8f369b9d98104300a3c8ca23`](./contracts/bsc-56/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | ⚠️ Unaudited |
| MTGYAirdropper | unknown | ethereum | n/a | 4 deployments: ethereum [`0x87db3450ae10ae95b4e683c2d4a2270a7cfc8a97`](./contracts/ethereum-1/0x87db3450ae10ae95b4e683c2d4a2270a7cfc8a97/); ethereum `0x9e26185f07d890266e25af6da810dd31cef93902`; bsc `0x9c171ab0d912154bff2eb0e3967d28e6d30e0b01`; bsc `0xc3f2a5d962d86a6305c5f9bd0badf3af6a017272` | ⚠️ Unaudited |
| MTGYAtomicSwap | unknown | bsc | n/a | 2 deployments: ethereum `0xa6c81ea7a97432f330f878650a5d5d376795d919`; bsc [`0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e`](./contracts/bsc-56/0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e/) | ⚠️ Unaudited |
| MTGYFaaS | unknown | bsc | n/a | 7 deployments: ethereum `0x207b1ab683ee9e29d76fa2690be0c4e1391d3c39`; ethereum `0x306996a2f45f3ca3472caba245d772d566d4aab7`; ethereum `0x5cfc47359381526615f7eb91d8460f4eb73534e1`; ethereum `0x7c20dbf097bda344b6fb8fcb5e7a96e2e8c0c51d`; ethereum `0xf99693b010e35b38274835ce91cccbb1eb89b32a`; bsc [`0x1e07f7ad3e722f434604e7617d6dae0a9a48a878`](./contracts/bsc-56/0x1e07f7ad3e722f434604e7617d6dae0a9a48a878/); bsc `0xaa0c2852f5391919b8ace9ac079cf3791e5fe7e7` | ⚠️ Unaudited |
| MTGYOKLGSwap | unknown | bsc | n/a | 2 deployments: bsc [`0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55`](./contracts/bsc-56/0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55/); bsc `0xed5bb0c91d8b55472b7fe7139dd660222c7839c5` | ⚠️ Unaudited |
| MTGYPasswordManager | unknown | ethereum | n/a | [`0xc8dd32752abe732bc586dd42740895b6736619e2`](./contracts/ethereum-1/0xc8dd32752abe732bc586dd42740895b6736619e2/) | ⚠️ Unaudited |
| MTGYRaffle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0424f9347c26a25cd8516a63692662fc013bd1b7`](./contracts/ethereum-1/0x0424f9347c26a25cd8516a63692662fc013bd1b7/); bsc `0xbd3f48b42407aa5ca75b9e7cf0765b227aca1024` | ⚠️ Unaudited |
| MTGYSpend | unknown | ethereum | n/a | [`0x8a31f723fbfa371308e5f5dd637246e0f6c573a5`](./contracts/ethereum-1/0x8a31f723fbfa371308e5f5dd637246e0f6c573a5/) | ⚠️ Unaudited |
| MTGYTrustedTimestamping | unknown | ethereum | n/a | [`0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6`](./contracts/ethereum-1/0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6/) | ⚠️ Unaudited |
| MUSO | unknown | ethereum | n/a | 3 deployments: ethereum [`0x204a771341fcf8b95e56b8fb3a93bdc25a45c292`](./contracts/ethereum-1/0x204a771341fcf8b95e56b8fb3a93bdc25a45c292/); bsc `0x746baddcec5b90b182d1389c9aa454f18551ae2b`; bsc `0xc08e10b7eb0736368a0b92ee7a140ec8c63a2dd1` | ⚠️ Unaudited |
| MyContractOwn | unknown | bsc | n/a | 3 deployments: bsc [`0x21e9d965404befefb80ea7bae582ab3c4c8d75e0`](./contracts/bsc-56/0x21e9d965404befefb80ea7bae582ab3c4c8d75e0/); bsc `0x75a6bfe6faf7afd61cd3c9ea16fbcc755de037be`; bsc `0xa8b97810cac53a3ad108ef294a1704af6a919139` | ⚠️ Unaudited |
| nftEverRise | unknown | ethereum | n/a | 4 deployments: ethereum [`0x23cd2e6b283754fd2340a75732f9ddbb5d11807e`](./contracts/ethereum-1/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/); bsc [`0x23cd2e6b283754fd2340a75732f9ddbb5d11807e`](./contracts/bsc-56/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/); polygon [`0x23cd2e6b283754fd2340a75732f9ddbb5d11807e`](./contracts/polygon-137/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/); avalanche [`0x23cd2e6b283754fd2340a75732f9ddbb5d11807e`](./contracts/avalanche-43114/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/) | ⚠️ Unaudited |
| OKLGRewards | unknown | ethereum | n/a | [`0x24bc6f1f7d954345c989be71934d2396c0d668c4`](./contracts/ethereum-1/0x24bc6f1f7d954345c989be71934d2396c0d668c4/) | ⚠️ Unaudited |
| Ownable | unknown | bsc | n/a | [`0xf0720d11feab2dfe53666039dd6186fc1cdda0c9`](./contracts/bsc-56/0xf0720d11feab2dfe53666039dd6186fc1cdda0c9/) | ⚠️ Unaudited |
| PabloEscoMars | unknown | bsc | n/a | [`0xa03c494ed39aa54f9b1d85647a54670f54fa91c8`](./contracts/bsc-56/0xa03c494ed39aa54f9b1d85647a54670f54fa91c8/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143ce32fe78f1f7019d7d551a6402fc5350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| PigToken | unknown | ethereum | n/a | [`0x92446b00281dc85185053fe4d7e5062f65fe820e`](./contracts/ethereum-1/0x92446b00281dc85185053fe4d7e5062f65fe820e/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | [`0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3`](./contracts/avalanche-43114/0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784`](./contracts/avalanche-43114/0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784/) | ⚠️ Unaudited |
| RewardDistributor | unknown | avalanche | n/a | 4 deployments: avalanche [`0x2274491950b2d6d79b7e69b683b482282ba14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/); avalanche `0x45b2c4139d96f44667577c0d7f7a7d170b420324`; avalanche `0x7dcdb863215656e34470690432058b03d7ec03b6`; avalanche `0xe72438e508039e94250756c69c3e6b520e4d3f99` | ⚠️ Unaudited |
| Spooky | unknown | bsc | n/a | 2 deployments: bsc [`0x612e353a8595f0481e6ddf507935e897c38ddc93`](./contracts/bsc-56/0x612e353a8595f0481e6ddf507935e897c38ddc93/); bsc `0x7818bd4b7bae6a4be0a2ebb04d166a7f69eed948` | ⚠️ Unaudited |
| SpookyShiba | unknown | bsc | n/a | [`0xed74bc5dc139356e08de28143996f5ef6e4334a4`](./contracts/bsc-56/0xed74bc5dc139356e08de28143996f5ef6e4334a4/) | ⚠️ Unaudited |
| SpookyShiba_V2 | unknown | bsc | n/a | [`0x9c2b1b3780a8b36b695f0b2781668664ac1bf25a`](./contracts/bsc-56/0x9c2b1b3780a8b36b695f0b2781668664ac1bf25a/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | 126 deployments: avalanche [`0x0147c0212ca4aba29d26dffd3c800893080ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/); avalanche `0x01b269d2e685127f6ca3dfdc3494b204dd2145e3`; avalanche `0x02d632ba7f2a046817af67ef7b279080d3cab641`; avalanche `0x0473f2bb3eebfe6c014f196835624d6db12465a9`; avalanche `0x0584e65ae8a47f5cb8e6a10ec487ab06132fd302`; avalanche `0x072c476cc6f75f9c1ef88f9e7c5eed69686f97f6`; avalanche `0x0769179b35243a0506e890e09603c922be72cd75`; avalanche `0x089ec7a075afe4af4e49ff11a21a0c3b61c22dcc`; avalanche `0x0a3b77599e3c313a9059ff768faee349a0972c0e`; avalanche `0x0a64e8d4408f9d3ac1322fb93f4c3dd8143b0d7b`; avalanche `0x0cc47aa1252f25fd95b65f19c2fd6db33366a557`; avalanche `0x0f9e9622c9cb6f8ea6cf19fa26252c3c3c06e27b`; avalanche `0x0fb72b771511062c5fd1811fbdfdfeda4afaf162`; avalanche `0x0fefca42e2dbbb046e46e0572ccfc2aa7cfb54b0`; avalanche `0x10f67276b71842a0c757d4432124096b32cb5029`; avalanche `0x1237804f7f4b538844fa5be835f1862b57dfb337`; avalanche `0x132492509bc416f95fcbaba63f3d9dceecce10d3`; avalanche `0x14d458a63561ffe961544252d8eb05e606664301`; avalanche `0x14f28f124db1af40a3f034c611db75dea736e08a`; avalanche `0x1565398057096d4bf5b843f37279dee15e0feae4`; avalanche `0x16f419bbca0529ecc99ff595681b822e328ed79e`; avalanche `0x1771ba12fe9427c8416e7b64ae7349f287dba954`; avalanche `0x1a772776921a8d6cfdb266891d69907c474c30a9`; avalanche `0x1b2d9116606c09d6c9903eabc1bca2e6239b440c`; avalanche `0x1fcfdee3ab694032255cd5ffe24d66b6c85501ad`; avalanche `0x23eb4187580524d25ff93a3571b1969b8018f628`; avalanche `0x25dd4a2900ee3b16f8381349a34813d41d29d7cc`; avalanche `0x2a834dd3e1732ee6c37c8b93b7b5b08091086401`; avalanche `0x2aa5eeb740a9f873f07798e6a61ffc12ac75d2da`; avalanche `0x2cd215bc634df4962f296578a2b87a9d7a1de38b`; avalanche `0x2d92eeaa1fe94cd41c22b3fe987d48a0b2e048eb`; avalanche `0x31ba32089d5474fe5b60411985c5d227d9d859ce`; avalanche `0x357211bf58a13e626eeeb2e82e1297b9ebf67b1c`; avalanche `0x386fbff27b386738cbd16f253adf0f5f72122329`; avalanche `0x3c32463e25f562fbb3684125246c5b2ed30354ec`; avalanche `0x3c9211212118ce5fab57676c88541841d6d7b5d9`; avalanche `0x3cb560faeff708e21513b0ea7e65963f08eaad04`; avalanche `0x3ccfc1d0319c52f177f4281ac5146cffa62f8e24`; avalanche `0x3dca53bd528f5cb71ad837d6760074733ca60a63`; avalanche `0x3e612511900457c364190abf4b072a9fd001acd1`; avalanche `0x3e92639d1231befffd38d887199f87b813ff864d`; avalanche `0x43feff8296f4e7fd914b99e51a78c65c95682414`; avalanche `0x444d68379832b3570503c7f0e67c54087a6890fe`; avalanche `0x45acb67c90615acbe9566c6aadc23ef418587d87`; avalanche `0x4d0b7302d7ad0b0f9efdf16caed64868ed377313`; avalanche `0x4e931f09ee083b7abfb116889622d6f337112538`; avalanche `0x52d69a3f6ed50857e57be1f0cf1914db385ea435`; avalanche `0x5410c210c0011fe8dbd3aaef3d376e4105e4c118`; avalanche `0x5caaf127cda59a1e640414aaebecd2408c006e22`; avalanche `0x5d57f62027f567855e815489d2365c7976899c7c`; avalanche `0x5da155d0e75aa0e2b4c9cfc662275b95915405ca`; avalanche `0x5f0902b53f91b92b41f5a04c80bca3a722865095`; avalanche `0x5fe9ad068fb4c60c5ee173b12305803cb05ec7ec`; avalanche `0x61ecdb614646ccf28c027b2bde9fcdf602ff90e2`; avalanche `0x627237170706db6b63362e14b8195f2df87e9f80`; avalanche `0x650967969025dd84a3328f30b110eed22a76f430`; avalanche `0x66b1452bb1b5e05ce08725d392a1c9a5e5f3142d`; avalanche `0x66fa316b49ee32aab7a7f88f08e16d8e907efb63`; avalanche `0x670968ed86ae309f552acc60cb6716b9f8198eec`; avalanche `0x68b28fe0e0f91c672dcb91e5d18ac7a95f264bff`; avalanche `0x6af7e24ac12b6e6e72606746833587edafeec3a5`; avalanche `0x6baa882234924aa48d6c2a3d1d46d0ed723a4db8`; avalanche `0x6d34318aaeb5a2d404c0c176cc7db69865368edb`; avalanche `0x6ee70ba71c6e95893b34b78d20906858fd031ec7`; avalanche `0x703473623885ffd8357527c61ec14a03a6b96460`; avalanche `0x70466e105170d8bad56ba390a48bac649fad27cc`; avalanche `0x70a5e4384a39775918eb430dede38b0121be307b`; avalanche `0x70f7d4bc2725288a72ed3ca85a167c70bb5ac7da`; avalanche `0x73cd077010c53bbc140b70b8ddb9c832db6e9ca0`; avalanche `0x763dc8d725637571ea4cb85b6de3a1f568e64864`; avalanche `0x76eaa100e46475d69d22d9f42810ba4136f63008`; avalanche `0x770b6e8a1b39f1a3ea06069cbd6d1e0b5db264f3`; avalanche `0x7a609a474ac272f552b19defecd440210fdc490e`; avalanche `0x7d0a3006bafd1df0ac2870d4cf3c8ecb22311326`; avalanche `0x7e4d8a05e10f6cb3d19822ac7742ec034a31c1d4`; avalanche `0x7e94999005976e0715b3bac0ad2f70aa8822063f`; avalanche `0x7ef4e0a14f81f4964dbcb65ad915ce2361b975e0`; avalanche `0x7fa4538f2cd08d4be4172351544cec6206bcb6fe`; avalanche `0x810998c1014b877cde1370bf75e5defa0fcbf66d`; avalanche `0x815cbe0e248d2d378c5e9c141b2ba9adaba2c9ee`; avalanche `0x81a00330a5d7a1d4e73570a3959a7e2ad998237e`; avalanche `0x8637eb17e3f5553c9890db55f4d104e4b908636d`; avalanche `0x86884879b4213187e19fc2cd191133b86b43cc3b`; avalanche `0x872f15955dbdc1055405305558bf89ab3af8030f`; avalanche `0x895a539c88ca8a360ff0b085fd9c054ca61c02e7`; avalanche `0x8b58a5a6e8651d6ade1deec04e89131fae662afc`; avalanche `0x90bbc3995f473d64f973ab8066e77b98a71f6fce`; avalanche `0x927be1425f2c3599ced2146459f6491ee450848b`; avalanche `0x948cf23e1593d6b41d8de8b79e603e4734566e8f`; avalanche `0x952d827765b0b65465e3ab280b0d42819656d57e`; avalanche `0x96a6b2d888ec1dec1db4495680c7596616c20718`; avalanche `0x9711563c33968d063fe0a41f809c4834fa997c50`; avalanche `0x99727c80726332b3b59ff5158f106c6155f4e01e`; avalanche `0x9b711b3a4ea4390c77c9438852086b3d5af3bc5c`; avalanche `0x9c5b9ea52e0270a6bdc4d0daf9224766000e135d`; avalanche `0x9eb54aed8426cbcbb2d65ea74c94aadadf793200`; avalanche `0x9f8c00dce50f2cc5f4f9bad0a79cdd1023b7c983`; avalanche `0x9fcb6badfd73112c08e1cd607bbc09246263fa1c`; avalanche `0xa526c8919f190ae0b93049aa1bdc1264d4419d97`; avalanche `0xafb2aa50d458a5611a8e212f094871a992c7fe8b`; avalanche `0xb2d98a914c471ef2736e6875503f84bcae191cf1`; avalanche `0xb31a198f6fc551b3cb1262f4cec863f7240dfec0`; avalanche `0xb3d05b9db17fd6308b85875ad7344c1c4fb8a30e`; avalanche `0xb7b46f62b924c857ef49fadc73e57fc6f0693e26`; avalanche `0xb864ba8d53a87472d6eab93ebae58c65023d274e`; avalanche `0xc3e997334527e6f9fcefc5606e3a34f47b2b3429`; avalanche `0xc6001b0e628c967af6638f7538791ab3c4669249`; avalanche `0xc698d4fa211bdba3e48fe880efe371372774673c`; avalanche `0xcbaf300379da70be2f7964f6076610b633c15965`; avalanche `0xcdac336a4839090a091b0e7a9f8938f3a730fbeb`; avalanche `0xd603663bf9f8e3709445492112a9271248fa5360`; avalanche `0xdc0d421bef747406bb5c947dd75e7fda5ea187a7`; avalanche `0xddf06d89c908bc38e03067d65408d632fda4fd9d`; avalanche `0xde8cb3a7084e5bb6acc39afe8d0e67825379d652`; avalanche `0xdf1339ef77ba1ebd33cbe0d83b289af4c0ef8fe7`; avalanche `0xdf781bb633ab9d0041877f169ba47f07ba242aa4`; avalanche `0xe5ba4d94be0480a9dd21e38dfad5e9e408cd298b`; avalanche `0xea347ef58dfb129035dd40d6f88b453400d6d0c3`; avalanche `0xec8184390ff917370d700c10ea3c85d25fdd7d1a`; avalanche `0xf19c35991d1c2b961e5bce260095f34a55ecb452`; avalanche `0xf2eb595f140d86fe7631ae2ed711f4e844734279`; avalanche `0xfa4329691859e8f3a811b039e9e747b8d76abf9b`; avalanche `0xfa4ceb42b72f0c5e9cdedf68c006bdee5d0a1846`; avalanche `0xfb058632c903ef564ba9be42da94e818691a3fe9`; avalanche `0xfc22e8fa703c557ce2224524824a0784fed56a25`; avalanche `0xfc2f38445be02504df62753216fd2a4566747bbb` | ⚠️ Unaudited |
| UniswapV2Factory | registry | polygon | n/a | 2 deployments: ethereum `0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f`; polygon [`0x5757371414417b8c6caad45baef941abc7d3ab32`](./contracts/polygon-137/0x5757371414417b8c6caad45baef941abc7d3ab32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xf3c62dbbfec92a2e73d676d62ebec06a6bc224e2`](./contracts/polygon-137/0xf3c62dbbfec92a2e73d676d62ebec06a6bc224e2/) | ⚠️ Unaudited |
| Uptrend | unknown | bsc | n/a | [`0xc4ed752d658989fe86db8ddad3f6f19271552d23`](./contracts/bsc-56/0xc4ed752d658989fe86db8ddad3f6f19271552d23/) | ⚠️ Unaudited |
| VeJoeStaking | unknown | avalanche | n/a | [`0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933`](./contracts/avalanche-43114/0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933/) | ⚠️ Unaudited |
| veRise | unknown | bsc | n/a | 2 deployments: bsc [`0xdba7b24257fc6e397cb7368b4bc922e944072f1b`](./contracts/bsc-56/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/); avalanche [`0xdba7b24257fc6e397cb7368b4bc922e944072f1b`](./contracts/avalanche-43114/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (117)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x478c18a363bda6b415c13cb5599e2f110f0523d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48d6f1fa74ec4e752b5f7f3cf112ac783251713d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x598debe6aea559a0cd0f45ff76f4a769423ee498` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f70517bc8d336db91f5f3f8abb4b58e61786b83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98c1f6726db6d4d0306f4849329335b3e4d99125` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd93c68d0a3a2983cef79b788b3fd8f9476eb8983` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f230a3d18c5c93a1025d0f342133740d755116f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1172476e8dbb8dfe6ea0bd9d312f85c9da20c94f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b43492f6c2423b9d01d080e63517bd69acbdba3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e01101af412e4510e22d7cb1faf6f5e5ea3fda4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2de0690503ec853c11bfa51e2193e4ff1794c578` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f74dfc0753d9dd7e67a27ef8789745a8086b28f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f401b07b20f5f68e40858117e85a223d43d35e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3196526b54b166430aa60878e870d8edf0e357eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d2c8a4a5785fce1bcf86481510d505371c0556d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47a576de60dd8c8fab33810bf3ee81783f23d629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ce46bc0b2aa62f571dfe2f2945a6793198bdafb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dcc3841c73827ee6a33fa3f42d2a9328d24b4e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51807e0745bc0c4a2534ca7531f20e3c0f2a73dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x519cb8b6ad33b6aa97a124a43fe702bf2be48a82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x598debe6aea559a0cd0f45ff76f4a769423ee498` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cfc47359381526615f7eb91d8460f4eb73534e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65058255bb5324391eafb369c90732f15b350fd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d02744ef4418cb0d72f54c1ee53140430b9dbed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e73733642485b8eabfe89d2dbd844dcbc52122d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79cde611c2fd2a8e5ec18ed47ebdda1537154b3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ae49b71ad3207b6d3f457bb095e1a2c829ffeaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f70517bc8d336db91f5f3f8abb4b58e61786b83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98c1f6726db6d4d0306f4849329335b3e4d99125` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9adaffaf8457aa7cb12f1dd122c2140491f9ca97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dcc41e58c3515255c7cfb4e9fa118b5dc8f2bb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5b65a5e77cbdefcb554c2e6f391b6e4f45eabce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac2f4e214704791617f651fd1090800c68426d56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2be0d368b81ca8c328f7fbcb1e8ff186783f7fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc00d97e63d85ae362f5a90610c7b196e726d6eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8ae5e71134c37a0ecb2e0f2a77267234637450d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb630887b76bc8a2abbf323073293892d0fb69a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc52339e62a8e2297ebe5ad6c9389dad69397808` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd736f8de47e6c555f4bfe4bf58feece0602636d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbd8e0c519b0832a2037d18f32f304c3addea723` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde761a25de3ceb4dae52958bd489ef2991b22d04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe06eca79dfb883a5b0a1a0a3f9c8ba73cf03d2a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4fa5501ad9206a62b213a76e6e2b5b7371fd386` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefd47d675683c2788f8171fede12a1505d07c2b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf51576b5b5c7d93366c7d5ddfdc89bd66195d61c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf67f6a36d751677d67069f359be7623c4ea04524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdac847c0d7a5df0c93d4849b797cd6ac128ae89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1945284b0eb686931e75284ff65761eb78ba4701` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x598debe6aea559a0cd0f45ff76f4a769423ee498` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ffe1ac53eb60df5214b2d7bf441a19bb84f295c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x66b51bf0fce5fba8b9823f132be715124e25dba9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a9a001f1a906fbaea0d210c7f016813a077d739` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98c1f6726db6d4d0306f4849329335b3e4d99125` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf020077e915dcb6026f3e45bc44c8f556887dad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 3 deployments: fantom `0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3`; fantom `0x59503632ab8a093c266509c797c957e063f4d32b`; fantom `0xde62a6cdd8d5a3988495317cffac9f3fed299383` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05300c3c6d0d9d6e06165eba21a681ea124d6df6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07dfe570aabed486f5577472f7f7952de425a922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b94d3afa017e853c82676b4118500b8f9de5864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e1ec3666478c86ff4d5452a89250bbf9d18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x160bb4cba352ffbf2021ce848f37674eeac9b38f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16c5536c1b01c8037fba75bd7b9fd08d59a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18ce97e5a240813d922c6dcf962c91257f5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x195759c3f9fb62d740dd432e7a982c5dee1298a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a6708c0b9fb96df50c0a327be76ee4f088f0849` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1af353148f2316487b5311fcd522c037842d232c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c4b41ba54492f551e98ed0a9a59b952a962c452` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22a8e3f957fcdd4883cfcbc67c5e14cf2bb6477d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x250a0a76bb0139d65f14500c0149d2766ea109b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33fa3df22bac262f72a688877e728094b6eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a0fa80d30f8164212ac547c7d3eb8a254cef572` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bcda00c257179d4abee0d1d94a8a9720554f1c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47d99d622b25d86f4ff8925ca8db21ea47044f0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4acc99dc595e2df9838ddcb1ec5d94fe96ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54fe8edb139404228dd70c5fd0a06c7b46c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x587b32c2a5505e61cbeb252493e1286cab1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x598debe6aea559a0cd0f45ff76f4a769423ee498` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b4dfdeb4f4680425e0e78d6029eb9af5afef862` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bbfa5f49ec557eaba9427ac434f21b69113fe20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5cfca5b2149a20a166508b28e5fcfa65c44c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e1e12945adc54b5e5dd01582a19223ba5a424ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62387711313cc10f433b32e010a05bf768c2f037` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65f17eff747aeb3b14bb3712c6850c2da45d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b516b23a260e2d904dbfa47c7e7afd04e5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c6f89bce78d4e083a7ba71574594aeaffee6459` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77b995ff2bd2b5287f940bc379fbe214506403e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aca03e01e170107d01381a13281e4517f0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d9d90a915a74e4acaea1c0de4efa07fd9e87740` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8165aa29e883892d4b84775ec8abd0b6cfaec225` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x884d2e9ff9e36b3e5ce293f48e959b39ab9d0861` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x931b5dffebf156b3c295f0c50bbad494d35989ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x98c1f6726db6d4d0306f4849329335b3e4d99125` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x997fba28c75747417571c5f3fe50015aac2bb073` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1246c3d11049e4d3fdb319455d1c721a65f83fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2008a8c6a0f8f5cc6ca59b38d5dd90455a840d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa49facb26236aa5842b0817f634c482de9a38f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4e65d6ea294e3f4847651921adfd4e93f7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa60ef5447008adaf6de56320e9dff507b828b9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa71a7cbfb554519c5a8d2f9d0043ed0ff22959fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaeee314a3b0d88439b77fca9f125bbb66baaf61c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb06b4639b93863fecc3993eb0d6bf9779716bce3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5a917ed59db899f26ce05cc75e6bc16f927f800` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbaf1a2e7d8525c3a75a51067550ec6154a8cb510` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb09ac1c984b9d93104cedb21642cc15d09bfec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb83b6ecdeff084d7cd0a6ad96c3e7483672d204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc05fb8b47f6d574672a70eee04d73c647ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf70239349cd43598f7587a093232d07c5d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc356607e2ec30884bb0f84033c4d81419d2350bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc63085dd11fc473e6db8eba20af191885d9158e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7d35cdbc83cb4b90027a8036193f989c1395be5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd12cf5515a1acb84967980fcfada2832851e3075` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd19dacf775f9cdce4926c0467e3add92ca9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdad1d732e319fa87fe54afb10f229ae78b881ac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc3b37b5f0fe5d3f8b8701a3f8d81a02ee8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe59bb0090de7bdb1198fec7018134691f404d0d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8a191026e71c303b0f40f15be93403f7d529707` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf47b8c42664ef345f0be5e1c2dbfeea027d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf975aa561812cb957aa29c8dfac2c2494868ecbd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/everrise](https://skynet.certik.com/projects/everrise) | CertiK | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/EverRise/02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf) | chainsulting | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [audit.md](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/EverRise/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | BadBuildersClubSoulbound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x217945d4cb3386420252da73743f1730f38266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | BoostedMasterChefJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1dd4d86180eee39ac4fb35eca67cacf608ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | BoringHelperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x87184884fc32594d4e347874cbd8294d61c18df3`](./contracts/bsc-56/0x87184884fc32594d4e347874cbd8294d61c18df3/) | CellToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x199f788ddb566b7ebb59bf35b36914f2acdb33de`](./contracts/bsc-56/0x199f788ddb566b7ebb59bf35b36914f2acdb33de/) | DeFido | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbd573ddc3ab93d7984012b897821f6c09f4d24e3`](./contracts/bsc-56/0xbd573ddc3ab93d7984012b897821f6c09f4d24e3/) | DiamondQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb72962568345253f71a18318d67e13a282b187e6`](./contracts/bsc-56/0xb72962568345253f71a18318d67e13a282b187e6/) | EFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72281a435fe5a9945e04ef4d0a32771430106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ERC20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ffdb968b20c95e3f7f33182482903ed37f16e54`](./contracts/bsc-56/0x3ffdb968b20c95e3f7f33182482903ed37f16e54/) | ERC721Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78ab99dae7302ea91e36962f4b23418a89d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/) | EverOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc17c30e98541188614df99239cabd40280810ca3`](./contracts/bsc-56/0xc17c30e98541188614df99239cabd40280810ca3/) | EverRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc17c30e98541188614df99239cabd40280810ca3`](./contracts/avalanche-43114/0xc17c30e98541188614df99239cabd40280810ca3/) | EverRiseAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1`](./contracts/ethereum-1/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | EverRiseLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1`](./contracts/bsc-56/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | EverRiseLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1`](./contracts/avalanche-43114/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | EverRiseLibAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa4013e1e4f99f5cd22584424552c1d28342e77b1`](./contracts/bsc-56/0xa4013e1e4f99f5cd22584424552c1d28342e77b1/) | IterableMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x29472d511808ce925f501d25f9ee9effd2328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/) | JCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xce095a9657a02025081e0607c8d8b081c76a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | JCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | JoeBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9ad6c38be94206ca50bb0d90783181662f0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | JoeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82fe038ea4b50f9c957da326c412ebd73462077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | JoeHatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4247c5dbac51a135939cc904c34e4913b6bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | JoeMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | JoeMakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xacff0fbf56baeb9ef677de19aded8f7a950bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | JoeRoll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x60ae616a2155ee3d9a68541ba4544862310933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | JoeRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | JoeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdc13687554205e5b89ac783db14bb5bba4a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc22f01ddc8010ee05574028528614634684ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | JWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d02744ef4418cb0d72f54c1ee53140430b9dbed`](./contracts/ethereum-1/0x6d02744ef4418cb0d72f54c1ee53140430b9dbed/) | KetherNFTLoaner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x838e37f209950540bbd54d4f52c693a968d79cf8`](./contracts/bsc-56/0x838e37f209950540bbd54d4f52c693a968d79cf8/) | KingFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c`](./contracts/bsc-56/0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c/) | KINGSHIBA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd`](./contracts/bsc-56/0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd/) | KishuForever | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3dbfc6387560a7216174a367573290db14556321`](./contracts/bsc-56/0x3dbfc6387560a7216174a367573290db14556321/) | Landarno | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc46fe585f349b782ae319046683868b6227bca67`](./contracts/bsc-56/0xc46fe585f349b782ae319046683868b6227bca67/) | LiquidityGeneratorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd6a4f121ca35509af06a0be99093d08462f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | MasterChefJoeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x188bed1968b795d5c9022f6a0bb5931ac4c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | MasterChefJoeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ae8b74cd2d566853715800c9927f879d6b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/) | Momento | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0000000000000000000000000000000000001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | MRC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c9f1146d4d94f8f369b9d98104300a3c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | MTGY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87db3450ae10ae95b4e683c2d4a2270a7cfc8a97`](./contracts/ethereum-1/0x87db3450ae10ae95b4e683c2d4a2270a7cfc8a97/) | MTGYAirdropper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e`](./contracts/bsc-56/0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e/) | MTGYAtomicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e07f7ad3e722f434604e7617d6dae0a9a48a878`](./contracts/bsc-56/0x1e07f7ad3e722f434604e7617d6dae0a9a48a878/) | MTGYFaaS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55`](./contracts/bsc-56/0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55/) | MTGYOKLGSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8dd32752abe732bc586dd42740895b6736619e2`](./contracts/ethereum-1/0xc8dd32752abe732bc586dd42740895b6736619e2/) | MTGYPasswordManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0424f9347c26a25cd8516a63692662fc013bd1b7`](./contracts/ethereum-1/0x0424f9347c26a25cd8516a63692662fc013bd1b7/) | MTGYRaffle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a31f723fbfa371308e5f5dd637246e0f6c573a5`](./contracts/ethereum-1/0x8a31f723fbfa371308e5f5dd637246e0f6c573a5/) | MTGYSpend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6`](./contracts/ethereum-1/0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6/) | MTGYTrustedTimestamping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204a771341fcf8b95e56b8fb3a93bdc25a45c292`](./contracts/ethereum-1/0x204a771341fcf8b95e56b8fb3a93bdc25a45c292/) | MUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x21e9d965404befefb80ea7bae582ab3c4c8d75e0`](./contracts/bsc-56/0x21e9d965404befefb80ea7bae582ab3c4c8d75e0/) | MyContractOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cd2e6b283754fd2340a75732f9ddbb5d11807e`](./contracts/ethereum-1/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/) | nftEverRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24bc6f1f7d954345c989be71934d2396c0d668c4`](./contracts/ethereum-1/0x24bc6f1f7d954345c989be71934d2396c0d668c4/) | OKLGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0720d11feab2dfe53666039dd6186fc1cdda0c9`](./contracts/bsc-56/0xf0720d11feab2dfe53666039dd6186fc1cdda0c9/) | Ownable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa03c494ed39aa54f9b1d85647a54670f54fa91c8`](./contracts/bsc-56/0xa03c494ed39aa54f9b1d85647a54670f54fa91c8/) | PabloEscoMars | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca143ce32fe78f1f7019d7d551a6402fc5350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | PancakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92446b00281dc85185053fe4d7e5062f65fe820e`](./contracts/ethereum-1/0x92446b00281dc85185053fe4d7e5062f65fe820e/) | PigToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3`](./contracts/avalanche-43114/0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3/) | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2274491950b2d6d79b7e69b683b482282ba14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x612e353a8595f0481e6ddf507935e897c38ddc93`](./contracts/bsc-56/0x612e353a8595f0481e6ddf507935e897c38ddc93/) | Spooky | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xed74bc5dc139356e08de28143996f5ef6e4334a4`](./contracts/bsc-56/0xed74bc5dc139356e08de28143996f5ef6e4334a4/) | SpookyShiba | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c2b1b3780a8b36b695f0b2781668664ac1bf25a`](./contracts/bsc-56/0x9c2b1b3780a8b36b695f0b2781668664ac1bf25a/) | SpookyShiba_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0147c0212ca4aba29d26dffd3c800893080ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4ed752d658989fe86db8ddad3f6f19271552d23`](./contracts/bsc-56/0xc4ed752d658989fe86db8ddad3f6f19271552d23/) | Uptrend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933`](./contracts/avalanche-43114/0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933/) | VeJoeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdba7b24257fc6e397cb7368b4bc922e944072f1b`](./contracts/bsc-56/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | veRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 117 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3046] skynet.certik.com/projects/everrise
- [14288] 02_Smart_Contract_Audit_EverRise_Token_Staking_v3.pdf
- [14289] audit.md

Fork inheritance lineage and inherited audits are included when available.
