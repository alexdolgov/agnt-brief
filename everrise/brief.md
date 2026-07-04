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
| BadBuildersClubSoulbound | unknown | avalanche | n/a | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | avalanche | n/a | 3 deployments: avalanche [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/); avalanche `0x846a4c...bfff23`; avalanche `0xbb28e0...0a7ad0` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/); avalanche `0xce63ec...412c5e`; avalanche `0xdc0730...4a7c62`; avalanche `0xe35e9c...9a386f` | ⚠️ Unaudited |
| CellToken | unknown | bsc | n/a | 2 deployments: bsc [`0x871848...c18df3`](./contracts/bsc-56/0x87184884fc32594d4e347874cbd8294d61c18df3/); bsc `0xf3e144...934346` | ⚠️ Unaudited |
| DeFido | unknown | bsc | n/a | 2 deployments: ethereum `0xf32122...c1cd91`; bsc [`0x199f78...db33de`](./contracts/bsc-56/0x199f788ddb566b7ebb59bf35b36914f2acdb33de/) | ⚠️ Unaudited |
| DiamondQ | unknown | bsc | n/a | [`0xbd573d...4d24e3`](./contracts/bsc-56/0xbd573ddc3ab93d7984012b897821f6c09f4d24e3/) | ⚠️ Unaudited |
| EFT | unknown | bsc | n/a | [`0xb72962...b187e6`](./contracts/bsc-56/0xb72962568345253f71a18318d67e13a282b187e6/) | ⚠️ Unaudited |
| ERC20Mock | unknown | avalanche | n/a | 2 deployments: avalanche [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/); avalanche `0x9e6cab...c05b09` | ⚠️ Unaudited |
| ERC721Staking | unknown | bsc | n/a | [`0x3ffdb9...f16e54`](./contracts/bsc-56/0x3ffdb968b20c95e3f7f33182482903ed37f16e54/) | ⚠️ Unaudited |
| EverOwn | unknown | ethereum | n/a | 3 deployments: ethereum [`0x78ab99...d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/); bsc `0x89dd30...abe0f4`; polygon `0x7dd45e...62fdef` | ⚠️ Unaudited |
| EverRise | unknown | bsc | n/a | 2 deployments: bsc [`0xc17c30...810ca3`](./contracts/bsc-56/0xc17c30e98541188614df99239cabd40280810ca3/); polygon [`0xc17c30...810ca3`](./contracts/polygon-137/0xc17c30e98541188614df99239cabd40280810ca3/) | ⚠️ Unaudited |
| EverRiseAvax | unknown | avalanche | n/a | [`0xc17c30...810ca3`](./contracts/avalanche-43114/0xc17c30e98541188614df99239cabd40280810ca3/) | ⚠️ Unaudited |
| EverRiseLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99fe7b...ff7bc1`](./contracts/ethereum-1/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/); ethereum `0xc17c30...810ca3` | ⚠️ Unaudited |
| EverRiseLib | unknown | bsc | n/a | 2 deployments: bsc [`0x99fe7b...ff7bc1`](./contracts/bsc-56/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/); polygon [`0x99fe7b...ff7bc1`](./contracts/polygon-137/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | ⚠️ Unaudited |
| EverRiseLibAvax | unknown | avalanche | n/a | [`0x99fe7b...ff7bc1`](./contracts/avalanche-43114/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | ⚠️ Unaudited |
| IterableMapping | unknown | bsc | n/a | [`0xa4013e...2e77b1`](./contracts/bsc-56/0xa4013e1e4f99f5cd22584424552c1d28342e77b1/) | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | 9 deployments: avalanche [`0x29472d...328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/); avalanche `0x3fe38b...a9eb1f`; avalanche `0x585e7b...b96c15`; avalanche `0x8b650e...1e4448`; avalanche `0x929f5c...4633fa`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc988c1...a7ca19`; avalanche `0xed6aaf...f637ac` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | avalanche | n/a | [`0xce095a...6a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | ⚠️ Unaudited |
| JoeBar | unknown | avalanche | n/a | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | ⚠️ Unaudited |
| JoeFactory | registry | avalanche | n/a | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | ⚠️ Unaudited |
| JoeHatToken | token | avalanche | n/a | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | ⚠️ Unaudited |
| JoeMaker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/); avalanche `0x861726...b65856` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | avalanche | n/a | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | ⚠️ Unaudited |
| JoeRoll | unknown | avalanche | n/a | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | ⚠️ Unaudited |
| JoeRouter02 | adapter | avalanche | n/a | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | ⚠️ Unaudited |
| JoeToken | token | avalanche | n/a | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/); avalanche `0x8b33e8...3d99b7` | ⚠️ Unaudited |
| Joetroller | unknown | avalanche | n/a | [`0xdc1368...a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | avalanche | n/a | [`0xc22f01...4ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | ⚠️ Unaudited |
| KetherNFTLoaner | unknown | ethereum | n/a | [`0x6d0274...b9dbed`](./contracts/ethereum-1/0x6d02744ef4418cb0d72f54c1ee53140430b9dbed/) | ⚠️ Unaudited |
| KingFund | unknown | bsc | n/a | [`0x838e37...d79cf8`](./contracts/bsc-56/0x838e37f209950540bbd54d4f52c693a968d79cf8/) | ⚠️ Unaudited |
| KINGSHIBA | unknown | bsc | n/a | [`0x84f4f7...22316c`](./contracts/bsc-56/0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c/) | ⚠️ Unaudited |
| KishuForever | unknown | bsc | n/a | [`0x5990a2...2931cd`](./contracts/bsc-56/0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd/) | ⚠️ Unaudited |
| Landarno | unknown | bsc | n/a | 2 deployments: ethereum `0xd5641a...a5afb2`; bsc [`0x3dbfc6...556321`](./contracts/bsc-56/0x3dbfc6387560a7216174a367573290db14556321/) | ⚠️ Unaudited |
| LiquidityGeneratorToken | token | bsc | n/a | [`0xc46fe5...7bca67`](./contracts/bsc-56/0xc46fe585f349b782ae319046683868b6227bca67/) | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | avalanche | n/a | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/); avalanche `0x3eb4ec...6e8945` | ⚠️ Unaudited |
| Maximillion | unknown | avalanche | n/a | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | ⚠️ Unaudited |
| Momento | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ae8b7...b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/); bsc `0x1b9a8c...0c67ee` | ⚠️ Unaudited |
| MRC20 | unknown | polygon | n/a | [`0x000000...001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | ⚠️ Unaudited |
| MTGY | unknown | ethereum | n/a | 2 deployments: ethereum [`0x025c9f...c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/); bsc [`0x025c9f...c8ca23`](./contracts/bsc-56/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | ⚠️ Unaudited |
| MTGYAirdropper | unknown | ethereum | n/a | 4 deployments: ethereum [`0x87db34...fc8a97`](./contracts/ethereum-1/0x87db3450ae10ae95b4e683c2d4a2270a7cfc8a97/); ethereum `0x9e2618...f93902`; bsc `0x9c171a...0e0b01`; bsc `0xc3f2a5...017272` | ⚠️ Unaudited |
| MTGYAtomicSwap | unknown | bsc | n/a | 2 deployments: ethereum `0xa6c81e...95d919`; bsc [`0x5b88b0...03627e`](./contracts/bsc-56/0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e/) | ⚠️ Unaudited |
| MTGYFaaS | unknown | bsc | n/a | 7 deployments: ethereum `0x207b1a...1d3c39`; ethereum `0x306996...d4aab7`; ethereum `0x5cfc47...3534e1`; ethereum `0x7c20db...c0c51d`; ethereum `0xf99693...89b32a`; bsc [`0x1e07f7...48a878`](./contracts/bsc-56/0x1e07f7ad3e722f434604e7617d6dae0a9a48a878/); bsc `0xaa0c28...5fe7e7` | ⚠️ Unaudited |
| MTGYOKLGSwap | unknown | bsc | n/a | 2 deployments: bsc [`0x55e1d9...91bd55`](./contracts/bsc-56/0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55/); bsc `0xed5bb0...7839c5` | ⚠️ Unaudited |
| MTGYPasswordManager | unknown | ethereum | n/a | [`0xc8dd32...6619e2`](./contracts/ethereum-1/0xc8dd32752abe732bc586dd42740895b6736619e2/) | ⚠️ Unaudited |
| MTGYRaffle | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0424f9...3bd1b7`](./contracts/ethereum-1/0x0424f9347c26a25cd8516a63692662fc013bd1b7/); bsc `0xbd3f48...ca1024` | ⚠️ Unaudited |
| MTGYSpend | unknown | ethereum | n/a | [`0x8a31f7...c573a5`](./contracts/ethereum-1/0x8a31f723fbfa371308e5f5dd637246e0f6c573a5/) | ⚠️ Unaudited |
| MTGYTrustedTimestamping | unknown | ethereum | n/a | [`0x266bff...d49eb6`](./contracts/ethereum-1/0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6/) | ⚠️ Unaudited |
| MUSO | unknown | ethereum | n/a | 3 deployments: ethereum [`0x204a77...45c292`](./contracts/ethereum-1/0x204a771341fcf8b95e56b8fb3a93bdc25a45c292/); bsc `0x746bad...51ae2b`; bsc `0xc08e10...3a2dd1` | ⚠️ Unaudited |
| MyContractOwn | unknown | bsc | n/a | 3 deployments: bsc [`0x21e9d9...8d75e0`](./contracts/bsc-56/0x21e9d965404befefb80ea7bae582ab3c4c8d75e0/); bsc `0x75a6bf...e037be`; bsc `0xa8b978...919139` | ⚠️ Unaudited |
| nftEverRise | unknown | ethereum | n/a | 4 deployments: ethereum [`0x23cd2e...11807e`](./contracts/ethereum-1/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/); bsc [`0x23cd2e...11807e`](./contracts/bsc-56/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/); polygon [`0x23cd2e...11807e`](./contracts/polygon-137/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/); avalanche [`0x23cd2e...11807e`](./contracts/avalanche-43114/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/) | ⚠️ Unaudited |
| OKLGRewards | unknown | ethereum | n/a | [`0x24bc6f...d668c4`](./contracts/ethereum-1/0x24bc6f1f7d954345c989be71934d2396c0d668c4/) | ⚠️ Unaudited |
| Ownable | unknown | bsc | n/a | [`0xf0720d...dda0c9`](./contracts/bsc-56/0xf0720d11feab2dfe53666039dd6186fc1cdda0c9/) | ⚠️ Unaudited |
| PabloEscoMars | unknown | bsc | n/a | [`0xa03c49...fa91c8`](./contracts/bsc-56/0xa03c494ed39aa54f9b1d85647a54670f54fa91c8/) | ⚠️ Unaudited |
| PancakeFactory | registry | bsc | n/a | [`0xca143c...350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | ⚠️ Unaudited |
| PigToken | unknown | ethereum | n/a | [`0x92446b...fe820e`](./contracts/ethereum-1/0x92446b00281dc85185053fe4d7e5062f65fe820e/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | avalanche | n/a | [`0x99f873...ec2bd3`](./contracts/avalanche-43114/0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x1035b0...c3d784`](./contracts/avalanche-43114/0x1035b0c31d92d5a8cd9efcc9ed240aaa64c3d784/) | ⚠️ Unaudited |
| RewardDistributor | unknown | avalanche | n/a | 4 deployments: avalanche [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/); avalanche `0x45b2c4...420324`; avalanche `0x7dcdb8...ec03b6`; avalanche `0xe72438...4d3f99` | ⚠️ Unaudited |
| Spooky | unknown | bsc | n/a | 2 deployments: bsc [`0x612e35...8ddc93`](./contracts/bsc-56/0x612e353a8595f0481e6ddf507935e897c38ddc93/); bsc `0x7818bd...eed948` | ⚠️ Unaudited |
| SpookyShiba | unknown | bsc | n/a | [`0xed74bc...4334a4`](./contracts/bsc-56/0xed74bc5dc139356e08de28143996f5ef6e4334a4/) | ⚠️ Unaudited |
| SpookyShiba_V2 | unknown | bsc | n/a | [`0x9c2b1b...1bf25a`](./contracts/bsc-56/0x9c2b1b3780a8b36b695f0b2781668664ac1bf25a/) | ⚠️ Unaudited |
| TokenVesting | unknown | avalanche | n/a | 126 deployments: avalanche [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/); avalanche `0x01b269...2145e3`; avalanche `0x02d632...cab641`; avalanche `0x0473f2...2465a9`; avalanche `0x0584e6...2fd302`; avalanche `0x072c47...6f97f6`; avalanche `0x076917...72cd75`; avalanche `0x089ec7...c22dcc`; avalanche `0x0a3b77...972c0e`; avalanche `0x0a64e8...3b0d7b`; avalanche `0x0cc47a...66a557`; avalanche `0x0f9e96...06e27b`; avalanche `0x0fb72b...faf162`; avalanche `0x0fefca...fb54b0`; avalanche `0x10f672...cb5029`; avalanche `0x123780...dfb337`; avalanche `0x132492...ce10d3`; avalanche `0x14d458...664301`; avalanche `0x14f28f...36e08a`; avalanche `0x156539...0feae4`; avalanche `0x16f419...8ed79e`; avalanche `0x1771ba...dba954`; avalanche `0x1a7727...4c30a9`; avalanche `0x1b2d91...9b440c`; avalanche `0x1fcfde...5501ad`; avalanche `0x23eb41...18f628`; avalanche `0x25dd4a...29d7cc`; avalanche `0x2a834d...086401`; avalanche `0x2aa5ee...75d2da`; avalanche `0x2cd215...1de38b`; avalanche `0x2d92ee...e048eb`; avalanche `0x31ba32...d859ce`; avalanche `0x357211...f67b1c`; avalanche `0x386fbf...122329`; avalanche `0x3c3246...0354ec`; avalanche `0x3c9211...d7b5d9`; avalanche `0x3cb560...eaad04`; avalanche `0x3ccfc1...2f8e24`; avalanche `0x3dca53...a60a63`; avalanche `0x3e6125...01acd1`; avalanche `0x3e9263...ff864d`; avalanche `0x43feff...682414`; avalanche `0x444d68...6890fe`; avalanche `0x45acb6...587d87`; avalanche `0x4d0b73...377313`; avalanche `0x4e931f...112538`; avalanche `0x52d69a...5ea435`; avalanche `0x5410c2...e4c118`; avalanche `0x5caaf1...006e22`; avalanche `0x5d57f6...899c7c`; avalanche `0x5da155...5405ca`; avalanche `0x5f0902...865095`; avalanche `0x5fe9ad...5ec7ec`; avalanche `0x61ecdb...ff90e2`; avalanche `0x627237...7e9f80`; avalanche `0x650967...76f430`; avalanche `0x66b145...f3142d`; avalanche `0x66fa31...7efb63`; avalanche `0x670968...198eec`; avalanche `0x68b28f...264bff`; avalanche `0x6af7e2...eec3a5`; avalanche `0x6baa88...3a4db8`; avalanche `0x6d3431...368edb`; avalanche `0x6ee70b...031ec7`; avalanche `0x703473...b96460`; avalanche `0x70466e...ad27cc`; avalanche `0x70a5e4...be307b`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x763dc8...e64864`; avalanche `0x76eaa1...f63008`; avalanche `0x770b6e...b264f3`; avalanche `0x7a609a...dc490e`; avalanche `0x7d0a30...311326`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x7e9499...22063f`; avalanche `0x7ef4e0...b975e0`; avalanche `0x7fa453...bcb6fe`; avalanche `0x810998...cbf66d`; avalanche `0x815cbe...a2c9ee`; avalanche `0x81a003...98237e`; avalanche `0x8637eb...08636d`; avalanche `0x868848...43cc3b`; avalanche `0x872f15...f8030f`; avalanche `0x895a53...1c02e7`; avalanche `0x8b58a5...662afc`; avalanche `0x90bbc3...1f6fce`; avalanche `0x927be1...50848b`; avalanche `0x948cf2...566e8f`; avalanche `0x952d82...56d57e`; avalanche `0x96a6b2...c20718`; avalanche `0x971156...997c50`; avalanche `0x99727c...f4e01e`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9c5b9e...0e135d`; avalanche `0x9eb54a...793200`; avalanche `0x9f8c00...b7c983`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xa526c8...419d97`; avalanche `0xafb2aa...c7fe8b`; avalanche `0xb2d98a...191cf1`; avalanche `0xb31a19...0dfec0`; avalanche `0xb3d05b...b8a30e`; avalanche `0xb7b46f...693e26`; avalanche `0xb864ba...3d274e`; avalanche `0xc3e997...2b3429`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xcbaf30...c15965`; avalanche `0xcdac33...30fbeb`; avalanche `0xd60366...fa5360`; avalanche `0xdc0d42...a187a7`; avalanche `0xddf06d...a4fd9d`; avalanche `0xde8cb3...79d652`; avalanche `0xdf1339...ef8fe7`; avalanche `0xdf781b...242aa4`; avalanche `0xe5ba4d...cd298b`; avalanche `0xea347e...d6d0c3`; avalanche `0xec8184...dd7d1a`; avalanche `0xf19c35...ecb452`; avalanche `0xf2eb59...734279`; avalanche `0xfa4329...6abf9b`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9`; avalanche `0xfc22e8...d56a25`; avalanche `0xfc2f38...747bbb` | ⚠️ Unaudited |
| UniswapV2Factory | registry | polygon | n/a | 2 deployments: ethereum `0x5c69be...c5aa6f`; polygon [`0x575737...d3ab32`](./contracts/polygon-137/0x5757371414417b8c6caad45baef941abc7d3ab32/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0xf3c62d...c224e2`](./contracts/polygon-137/0xf3c62dbbfec92a2e73d676d62ebec06a6bc224e2/) | ⚠️ Unaudited |
| Uptrend | unknown | bsc | n/a | [`0xc4ed75...552d23`](./contracts/bsc-56/0xc4ed752d658989fe86db8ddad3f6f19271552d23/) | ⚠️ Unaudited |
| VeJoeStaking | unknown | avalanche | n/a | [`0xdefdbe...e4e933`](./contracts/avalanche-43114/0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933/) | ⚠️ Unaudited |
| veRise | unknown | bsc | n/a | 2 deployments: bsc [`0xdba7b2...072f1b`](./contracts/bsc-56/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/); avalanche [`0xdba7b2...072f1b`](./contracts/avalanche-43114/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x478c18...0523d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48d6f1...51713d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7051...786b83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd93c68...eb8983` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f230a...55116f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x117247...20c94f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b4349...cbdba3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e0110...a3fda4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2de069...94c578` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f74df...86b28f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30f401...43d35e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x319652...e357eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d2c8a...c0556d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47a576...23d629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ce46b...8bdafb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dcc38...24b4e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51807e...2a73dc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x519cb8...e48a82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cfc47...3534e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x650582...350fd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d0274...b9dbed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e7373...52122d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79cde6...154b3d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ae49b...9ffeaa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8f7051...786b83` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9adaff...f9ca97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dcc41...8f2bb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5b65a...5eabce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac2f4e...426d56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2be0d...83f7fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc00d97...6d6eff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8ae5e...37450d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb6308...fb69a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc5233...397808` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd736f8...2636d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdbd8e0...dea723` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde761a...b22d04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe06eca...03d2a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4fa55...1fd386` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xefd47d...07c2b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf51576...95d61c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf67f6a...a04524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdac84...28ae89` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x194528...ba4701` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5ffe1a...4f295c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x66b51b...25dba9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7a9a00...77d739` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf0200...887dad` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 3 deployments: fantom `0x152ee6...e61be3`; fantom `0x595036...f4d32b`; fantom `0xde62a6...299383` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05300c...4d6df6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07dfe5...25a922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b94d3...de5864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e1ec3...18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x160bb4...c9b38f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16c553...a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18ce97...5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x195759...1298a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a6708...8f0849` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1af353...2d232c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c4b41...62c452` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22a8e3...b6477d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x250a0a...a109b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33fa3d...eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a0fa8...cef572` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bcda0...54f1c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x47d99d...044f0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4acc99...ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54fe8e...c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x587b32...1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x598deb...3ee498` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b4dfd...fef862` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bbfa5...13fe20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5cfca5...4c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e1e12...a424ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x623877...c2f037` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65f17e...5d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b516b...5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c6f89...ee6459` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77b995...6403e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aca03...0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d9d90...e87740` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8165aa...aec225` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x884d2e...9d0861` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x931b5d...5989ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x98c1f6...d99125` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x997fba...2bb073` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1246c...5f83fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2008a...a840d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa49fac...a38f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4e65d...7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa60ef5...28b9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa71a7c...2959fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaeee31...aaf61c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb06b46...16bce3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5a917...27f800` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbaf1a2...8cb510` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb09ac...9bfec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb83b6...72d204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc05fb...ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf7023...d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc35660...2350bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc63085...9158e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7d35c...395be5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd12cf5...1e3075` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd19dac...9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdad1d7...881ac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc3b37...8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe59bb0...04d0d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8a191...529707` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf47b8c...d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf975aa...68ecbd` | ❓ Unverified |

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
| avalanche | [`0x2d1e2e...ac6a42`](./contracts/avalanche-43114/0x2d1e2e2fdab5047b5227e8c16e01432699ac6a42/) | BadBuildersClubSoulbound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x217945...8266e9`](./contracts/avalanche-43114/0x217945d4cb3386420252da73743f1730f38266e9/) | BoostedMasterChefJoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1dd4d8...ab5741`](./contracts/avalanche-43114/0x1dd4d86180eee39ac4fb35eca67cacf608ab5741/) | BoringHelperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x871848...c18df3`](./contracts/bsc-56/0x87184884fc32594d4e347874cbd8294d61c18df3/) | CellToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x199f78...db33de`](./contracts/bsc-56/0x199f788ddb566b7ebb59bf35b36914f2acdb33de/) | DeFido | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbd573d...4d24e3`](./contracts/bsc-56/0xbd573ddc3ab93d7984012b897821f6c09f4d24e3/) | DiamondQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb72962...b187e6`](./contracts/bsc-56/0xb72962568345253f71a18318d67e13a282b187e6/) | EFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x72281a...106587`](./contracts/avalanche-43114/0x72281a435fe5a9945e04ef4d0a32771430106587/) | ERC20Mock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ffdb9...f16e54`](./contracts/bsc-56/0x3ffdb968b20c95e3f7f33182482903ed37f16e54/) | ERC721Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78ab99...d3a69d`](./contracts/ethereum-1/0x78ab99dae7302ea91e36962f4b23418a89d3a69d/) | EverOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc17c30...810ca3`](./contracts/bsc-56/0xc17c30e98541188614df99239cabd40280810ca3/) | EverRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc17c30...810ca3`](./contracts/avalanche-43114/0xc17c30e98541188614df99239cabd40280810ca3/) | EverRiseAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99fe7b...ff7bc1`](./contracts/ethereum-1/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | EverRiseLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99fe7b...ff7bc1`](./contracts/bsc-56/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | EverRiseLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x99fe7b...ff7bc1`](./contracts/avalanche-43114/0x99fe7b37639ae33d0f15f61f4288a2fc9cff7bc1/) | EverRiseLibAvax | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa4013e...2e77b1`](./contracts/bsc-56/0xa4013e1e4f99f5cd22584424552c1d28342e77b1/) | IterableMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x29472d...328db2`](./contracts/avalanche-43114/0x29472d511808ce925f501d25f9ee9effd2328db2/) | JCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xce095a...6a75ea`](./contracts/avalanche-43114/0xce095a9657a02025081e0607c8d8b081c76a75ea/) | JCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x57319d...fd4f33`](./contracts/avalanche-43114/0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33/) | JoeBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9ad6c3...0cfa10`](./contracts/avalanche-43114/0x9ad6c38be94206ca50bb0d90783181662f0cfa10/) | JoeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82fe03...62077c`](./contracts/avalanche-43114/0x82fe038ea4b50f9c957da326c412ebd73462077c/) | JoeHatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4247c5...bcdcfe`](./contracts/avalanche-43114/0x4247c5dbac51a135939cc904c34e4913b6bcdcfe/) | JoeMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb5b4c...a475d3`](./contracts/avalanche-43114/0xdb5b4cc0276389a943dba9eb07a97c10e8a475d3/) | JoeMakerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xacff0f...0bcb58`](./contracts/avalanche-43114/0xacff0fbf56baeb9ef677de19aded8f7a950bcb58/) | JoeRoll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x60ae61...0933d4`](./contracts/avalanche-43114/0x60ae616a2155ee3d9a68541ba4544862310933d4/) | JoeRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6e84a6...bc0fdd`](./contracts/avalanche-43114/0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd/) | JoeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1ed836...92cfcb`](./contracts/avalanche-43114/0x1ed8368ca83437dbf43e50e85e6f82342e92cfcb/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdc1368...a1edac`](./contracts/avalanche-43114/0xdc13687554205e5b89ac783db14bb5bba4a1edac/) | Joetroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc22f01...4ec29e`](./contracts/avalanche-43114/0xc22f01ddc8010ee05574028528614634684ec29e/) | JWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d0274...b9dbed`](./contracts/ethereum-1/0x6d02744ef4418cb0d72f54c1ee53140430b9dbed/) | KetherNFTLoaner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x838e37...d79cf8`](./contracts/bsc-56/0x838e37f209950540bbd54d4f52c693a968d79cf8/) | KingFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84f4f7...22316c`](./contracts/bsc-56/0x84f4f7cdb4574c9556a494dab18ffc1d1d22316c/) | KINGSHIBA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5990a2...2931cd`](./contracts/bsc-56/0x5990a27bccaf2ea39d3e8ff1fd29c60bf02931cd/) | KishuForever | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3dbfc6...556321`](./contracts/bsc-56/0x3dbfc6387560a7216174a367573290db14556321/) | Landarno | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc46fe5...7bca67`](./contracts/bsc-56/0xc46fe585f349b782ae319046683868b6227bca67/) | LiquidityGeneratorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd6a4f1...f53052`](./contracts/avalanche-43114/0xd6a4f121ca35509af06a0be99093d08462f53052/) | MasterChefJoeV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x188bed...c18f00`](./contracts/avalanche-43114/0x188bed1968b795d5c9022f6a0bb5931ac4c18f00/) | MasterChefJoeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe5cdda...7ab7e7`](./contracts/avalanche-43114/0xe5cddafd0f7af3deaf4bd213bbaee7a5927ab7e7/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ae8b7...b76a37`](./contracts/ethereum-1/0x0ae8b74cd2d566853715800c9927f879d6b76a37/) | Momento | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x000000...001010`](./contracts/polygon-137/0x0000000000000000000000000000000000001010/) | MRC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c9f...c8ca23`](./contracts/ethereum-1/0x025c9f1146d4d94f8f369b9d98104300a3c8ca23/) | MTGY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87db34...fc8a97`](./contracts/ethereum-1/0x87db3450ae10ae95b4e683c2d4a2270a7cfc8a97/) | MTGYAirdropper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b88b0...03627e`](./contracts/bsc-56/0x5b88b0cfaf3f97fb1a66b16681f6e502ec03627e/) | MTGYAtomicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1e07f7...48a878`](./contracts/bsc-56/0x1e07f7ad3e722f434604e7617d6dae0a9a48a878/) | MTGYFaaS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55e1d9...91bd55`](./contracts/bsc-56/0x55e1d9d077cbee2f39f9e1a45e9f73235891bd55/) | MTGYOKLGSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8dd32...6619e2`](./contracts/ethereum-1/0xc8dd32752abe732bc586dd42740895b6736619e2/) | MTGYPasswordManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0424f9...3bd1b7`](./contracts/ethereum-1/0x0424f9347c26a25cd8516a63692662fc013bd1b7/) | MTGYRaffle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a31f7...c573a5`](./contracts/ethereum-1/0x8a31f723fbfa371308e5f5dd637246e0f6c573a5/) | MTGYSpend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x266bff...d49eb6`](./contracts/ethereum-1/0x266bffc052a5f02d4797a3dd99c3455ac9d49eb6/) | MTGYTrustedTimestamping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204a77...45c292`](./contracts/ethereum-1/0x204a771341fcf8b95e56b8fb3a93bdc25a45c292/) | MUSO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x21e9d9...8d75e0`](./contracts/bsc-56/0x21e9d965404befefb80ea7bae582ab3c4c8d75e0/) | MyContractOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cd2e...11807e`](./contracts/ethereum-1/0x23cd2e6b283754fd2340a75732f9ddbb5d11807e/) | nftEverRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24bc6f...d668c4`](./contracts/ethereum-1/0x24bc6f1f7d954345c989be71934d2396c0d668c4/) | OKLGRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf0720d...dda0c9`](./contracts/bsc-56/0xf0720d11feab2dfe53666039dd6186fc1cdda0c9/) | Ownable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa03c49...fa91c8`](./contracts/bsc-56/0xa03c494ed39aa54f9b1d85647a54670f54fa91c8/) | PabloEscoMars | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xca143c...350c73`](./contracts/bsc-56/0xca143ce32fe78f1f7019d7d551a6402fc5350c73/) | PancakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92446b...fe820e`](./contracts/ethereum-1/0x92446b00281dc85185053fe4d7e5062f65fe820e/) | PigToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x99f873...ec2bd3`](./contracts/avalanche-43114/0x99f873a8e3e21ccf3e9b691f02fc86a6a2ec2bd3/) | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x227449...a14885`](./contracts/avalanche-43114/0x2274491950b2d6d79b7e69b683b482282ba14885/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x612e35...8ddc93`](./contracts/bsc-56/0x612e353a8595f0481e6ddf507935e897c38ddc93/) | Spooky | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xed74bc...4334a4`](./contracts/bsc-56/0xed74bc5dc139356e08de28143996f5ef6e4334a4/) | SpookyShiba | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c2b1b...1bf25a`](./contracts/bsc-56/0x9c2b1b3780a8b36b695f0b2781668664ac1bf25a/) | SpookyShiba_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0147c0...0ef296`](./contracts/avalanche-43114/0x0147c0212ca4aba29d26dffd3c800893080ef296/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc4ed75...552d23`](./contracts/bsc-56/0xc4ed752d658989fe86db8ddad3f6f19271552d23/) | Uptrend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdefdbe...e4e933`](./contracts/avalanche-43114/0xdefdbe9cafcf25e1c0c23b53a631e4fbe8e4e933/) | VeJoeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdba7b2...072f1b`](./contracts/bsc-56/0xdba7b24257fc6e397cb7368b4bc922e944072f1b/) | veRise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
