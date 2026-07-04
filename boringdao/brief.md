# Agentic Audit Brief: BoringDAO

## Project Overview

- Project: BoringDAO (`boringdao`)
- Website: [https://www.boringdao.com/](https://www.boringdao.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.751Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: arbitrum, aurora, avalanche, boba, bsc, ethereum, fantom, gnosis, harmony, heco, metis, optimism, polygon
- Contract surface: 603 unique implementations (769 raw deployments)
- DeFi Llama TVL: $269,853.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 235 project-authored contract(s) across 9 chain(s); 110 ERC20 tokens, 3 ERC721 NFTs, 2 ERC1155 multi-tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 11 functional families. Its contracts share 18 common project-authored base contract(s) (erc20detailed, structs, erc20pausable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 769; live-surface contracts included: 769 (230 live, 539 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/115 (0.9%)
- Deployed-live implementations: 120 of 603 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/127
- Verified + Unaudited implementations: 126
- Verified by bytecode match: 0
- Unverified implementations: 476
- Unique implementations: 603
- Raw deployments: 769
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 0.8% | 2020-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Tunnel | unknown | ethereum | n/a | [`0x258a1e...9cc9a1`](./contracts/ethereum-1/0x258a1eb6537ae84cf612f06b557b6d53f49cc9a1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (126)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAC | unknown | ethereum | n/a | [`0xe75ad3...1bd864`](./contracts/ethereum-1/0xe75ad3aab14e4b0df8c5da4286608dabb21bd864/) | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | ethereum | n/a | [`0x25f222...286491`](./contracts/ethereum-1/0x25f2226b597e8f9514b3f68f00f494cf4f286491/) | ⚠️ Unaudited |
| AaveTokenV3 | token | ethereum | n/a | [`0x7fc665...2ddae9`](./contracts/ethereum-1/0x7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AmyFinanceToken | token | arbitrum | n/a | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | ⚠️ Unaudited |
| ArbFiatToken | token | arbitrum | n/a | [`0xff970a...db5cc8`](./contracts/arbitrum-42161/0xff970a61a04b1ca14834a43f5de4533ebddb5cc8/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | 2 deployments: bsc [`0x433866...b0db94`](./contracts/bsc-56/0x4338665cbb7b2485a8855a139b75d5e34ab0db94/); bsc `0x8ff795...444adf` | ⚠️ Unaudited |
| BEP20Cardano | unknown | bsc | n/a | [`0x3ee220...435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | ⚠️ Unaudited |
| BEP20Cosmos | unknown | bsc | n/a | [`0x0eb3a7...62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | ⚠️ Unaudited |
| BEP20DAI | unknown | bsc | n/a | [`0x1af3f3...b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Tezos | unknown | bsc | n/a | [`0x16939e...12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | 12 deployments: bsc [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/); bsc `0x3d6545...e3c25e`; bsc `0x795086...f210f7`; bsc `0x8ac76a...cd580d`; bsc `0x947950...9124c4`; bsc `0x9a2f55...a1d8a2`; bsc `0xa2b726...e4d495`; bsc `0xb7f8cd...e5e094`; bsc `0xbf7c81...1337fe`; bsc `0xd475c9...185b92`; bsc `0xdd3c81...50385a`; bsc `0xfb6115...58f802` | ⚠️ Unaudited |
| BEP20TokenImplementationV2 | token | bsc | n/a | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BEP20XRP | unknown | bsc | n/a | [`0x1d2f0d...c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BEP20Zcash | unknown | bsc | n/a | [`0x1ba42e...ef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | ⚠️ Unaudited |
| Bor | unknown | ethereum | n/a | [`0x3c9d6c...1fc1a9`](./contracts/ethereum-1/0x3c9d6c1c73b31c837832c72e04d3152f051fc1a9/) | ⚠️ Unaudited |
| BorBSC | unknown | bsc | n/a | [`0x92d775...b32241`](./contracts/bsc-56/0x92d7756c60dcfd4c689290e8a9f4d263b3b32241/) | ⚠️ Unaudited |
| Boring | unknown | ethereum | n/a | [`0xbc1971...d792ca`](./contracts/ethereum-1/0xbc19712feb3a26080ebf6f2f7849b417fdd792ca/) | ⚠️ Unaudited |
| BoringChef | unknown | gnosis | n/a | 4 deployments: bsc `0xa056c1...147adf`; gnosis [`0x0bf101...afa414`](./contracts/gnosis-100/0x0bf101ab5cc8c6be93d9fb6742e1e4d724afa414/); polygon `0x9159b6...2cebb9`; avalanche `0xaf9f06...c87323` | ⚠️ Unaudited |
| BoringDAOV2 | unknown | ethereum | n/a | [`0x77f79f...8823f5`](./contracts/ethereum-1/0x77f79fea3d135847098adb1fdc6b10a0218823f5/) | ⚠️ Unaudited |
| BoringSatelliteChef | unknown | ethereum | n/a | [`0x204c87...66229c`](./contracts/ethereum-1/0x204c87cda5daac87b2fc562bfb5371a0b066229c/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | avalanche | n/a | 19 deployments: avalanche [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/); avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xa7d707...a4c664`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| CrossLock | unknown | ethereum | n/a | [`0x63a61b...93aba3`](./contracts/ethereum-1/0x63a61b21a5ed529986d572af747a22d96493aba3/) | ⚠️ Unaudited |
| EminenceCurrency | unknown | ethereum | n/a | 5 deployments: ethereum [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/); ethereum `0xd77c2a...9ee175`; ethereum `0xd9194d...ab029d`; ethereum `0xe4ffd6...02830e`; ethereum `0xed3519...b095bf` | ⚠️ Unaudited |
| ENMT | unknown | ethereum | n/a | [`0xcfeb09...e96eec`](./contracts/ethereum-1/0xcfeb09c3c5f0f78ad72166d55f9e6e9a60e96eec/) | ⚠️ Unaudited |
| equipment | unknown | metis | n/a | [`0x55254f...9afabd`](./contracts/metis-1088/0x55254fe138b0b5a85b27858c2f4ace9c509afabd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a342a...d9ba46`](./contracts/ethereum-1/0x6a342a4c2f7bba588af7e2766260b5b61cd9ba46/); ethereum `0xdbe43c...6d9173` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe08847...84cbd3`](./contracts/ethereum-1/0xe08847082a6b676e6aeb7434e76aabbbb984cbd3/); ethereum `0xecad1a...495616` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | optimism | n/a | 7 deployments: optimism [`0x29414e...a2443f`](./contracts/optimism-10/0x29414ec76d79ff238e5e773322799d1c7ca2443f/); polygon `0xbb5ea9...30059d`; metis `0x57e053...5b346e`; metis `0x6eccd6...7c02a9`; metis `0xd01a50...f6cf95`; aurora `0x68d97b...6e5e28`; aurora `0xb98863...e0a5bf` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | 2 deployments: bsc [`0x0075ac...078705`](./contracts/bsc-56/0x0075ac0c662a5b655060d1519ff739d834078705/); bsc `0xaa9fa0...dabc94` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | 2 deployments: bsc [`0x31c051...d0a2c6`](./contracts/bsc-56/0x31c05134ebcbb814d803efda34d1b53348d0a2c6/); bsc `0xe7b388...49fe86` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | gnosis | n/a | 2 deployments: gnosis [`0x805675...0d9e8d`](./contracts/gnosis-100/0x805675c662cf99b0156c8d1d76eab86a830d9e8d/); gnosis `0xa15feb...edaab8` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | gnosis | n/a | 2 deployments: gnosis [`0xe3b59f...1363fc`](./contracts/gnosis-100/0xe3b59fd01c0155a98146a6e0beb8376b751363fc/); gnosis `0xf4f3e1...252334` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | 7 deployments: polygon [`0x091c23...663d11`](./contracts/polygon-137/0x091c23c213945b1f96e4ba660bdee1fd61663d11/); polygon `0x421a53...3b0e4b`; polygon `0x6b906d...3bcaa5`; polygon `0x70dfe6...ed552d`; polygon `0x775e38...949019`; polygon `0xafe527...a1de3d`; polygon `0xc5e822...b9c861` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | 7 deployments: polygon [`0x0cad6e...23576b`](./contracts/polygon-137/0x0cad6ef3383c4349c68f072076bcde7b7623576b/); polygon `0x0d9cef...d73052`; polygon `0x413cfe...001fee`; polygon `0x4d9819...64bdca`; polygon `0x6944c0...ba3d26`; polygon `0x746158...6cbad2`; polygon `0x79904e...3e07e6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | 2 deployments: polygon [`0x4fa8d5...b887b1`](./contracts/polygon-137/0x4fa8d5ad8ffff7a09a6f15f8d6fdc4e8cfb887b1/); polygon `0x6dc551...7c8e87` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | 2 deployments: polygon [`0x64e4e7...9b04dd`](./contracts/polygon-137/0x64e4e7840bc20959c8ba984db82fa0132d9b04dd/); polygon `0xd76833...6a5291` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | polygon | n/a | 2 deployments: polygon [`0x8de93f...dd3b1d`](./contracts/polygon-137/0x8de93f998b6b0dda780ee12b97dde1f2fadd3b1d/); polygon `0x948535...e3ef16` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x10d863...dafbae`](./contracts/arbitrum-42161/0x10d863cfc519cc2412208b5294fe45afa4dafbae/); arbitrum `0x2e220e...4e4689` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x81114c...f83987`](./contracts/arbitrum-42161/0x81114cfc4dcb4de333a270041f6a67cf27f83987/); arbitrum `0x9d8bda...9858b8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x12dfc2...85ef81`](./contracts/avalanche-43114/0x12dfc25ae8336396bb673bc51512301c2f85ef81/); avalanche `0x12f3a5...226903` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | n/a | 2 deployments: avalanche [`0x2e220e...4e4689`](./contracts/avalanche-43114/0x2e220e3ab85fc4a46f770a34ef2cddc8074e4689/); avalanche `0xa497f1...0e6bd1` | ⚠️ Unaudited |
| ERC20Template | token | bsc | n/a | [`0x843d4a...dc3f28`](./contracts/bsc-56/0x843d4a358471547f51534e3e51fae91cb4dc3f28/) | ⚠️ Unaudited |
| EvmErc20 | token | aurora | n/a | 2 deployments: aurora [`0x4988a8...91571f`](./contracts/aurora-1313161554/0x4988a896b1227218e4a686fde5eabdcabd91571f/); aurora `0xb12bfc...c40802` | ⚠️ Unaudited |
| FeePool | core_logic | ethereum | n/a | [`0x2b7816...d66fcd`](./contracts/ethereum-1/0x2b781634e4cb0b5236cc957daba88f911fd66fcd/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FINToken | token | ethereum | n/a | 2 deployments: ethereum [`0x054f76...debe40`](./contracts/ethereum-1/0x054f76beed60ab6dbeb23502178c52d6c5debe40/); polygon `0x576c99...678e94` | ⚠️ Unaudited |
| FireToken | token | bsc | n/a | [`0x0f0dd5...f6745a`](./contracts/bsc-56/0x0f0dd5e2c0e0c4a41f8908d73d36b8d142f6745a/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| hero | unknown | metis | n/a | [`0xa53085...96f5b2`](./contracts/metis-1088/0xa530850a1a3388d5f4cb2e9ed3d3125d6d96f5b2/) | ⚠️ Unaudited |
| iNFTspaceMystery | token | polygon | n/a | [`0x6839e4...c49c97`](./contracts/polygon-137/0x6839e4acf7d69a9ea689fe133b994253e7c49c97/) | ⚠️ Unaudited |
| iNFTspaceToken | token | polygon | n/a | [`0xb988bd...645a26`](./contracts/polygon-137/0xb988bd378a0754957d5d9471c96e0f8051645a26/) | ⚠️ Unaudited |
| izumiToken | token | polygon | n/a | 2 deployments: ethereum `0x9ad372...c5c200`; polygon [`0x60d01e...27c747`](./contracts/polygon-137/0x60d01ec2d5e98ac51c8b4cf84dfcce98d527c747/) | ⚠️ Unaudited |
| JulPadToken | token | bsc | n/a | [`0xa58950...ea4901`](./contracts/bsc-56/0xa58950f05fea2277d2608748412bf9f802ea4901/) | ⚠️ Unaudited |
| Keep3r | unknown | ethereum | n/a | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | ⚠️ Unaudited |
| Keep3rV1 | unknown | ethereum | n/a | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | ⚠️ Unaudited |
| L2CustomGateway | unknown | arbitrum | n/a | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | ⚠️ Unaudited |
| L2ERC20Gateway | token | arbitrum | n/a | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | ⚠️ Unaudited |
| L2GatewayRouter | adapter | arbitrum | n/a | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | ⚠️ Unaudited |
| L2StandardERC20 | token | metis | n/a | 2 deployments: metis [`0xbb06dc...16f4dc`](./contracts/metis-1088/0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc/); metis `0xea32a9...cc1a21` | ⚠️ Unaudited |
| L2WethGateway | token | arbitrum | n/a | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | ⚠️ Unaudited |
| LendToAaveMigrator | periphery | ethereum | n/a | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | ⚠️ Unaudited |
| LiquidityIncome | unknown | ethereum | n/a | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | ⚠️ Unaudited |
| market | unknown | metis | n/a | [`0x7db21b...363a8b`](./contracts/metis-1088/0x7db21b2c3319e2d7ab2fd66e902e315ee7363a8b/) | ⚠️ Unaudited |
| MasterChefAPE | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4cb14a...1c634f`](./contracts/ethereum-1/0x4cb14a84da6e23bbb9b909880e2dca91c81c634f/); ethereum `0xe95da3...165be1` | ⚠️ Unaudited |
| MasterChefETH | unknown | ethereum | n/a | [`0x3a18b9...f4ff42`](./contracts/ethereum-1/0x3a18b916b72fcab7ba7d2882eeb4cccea7f4ff42/) | ⚠️ Unaudited |
| MasterChefLP | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe71883...87811c`](./contracts/ethereum-1/0xe718834ef396e8e327b591734c7df6f30687811c/); ethereum `0xf24a74...4cfa7d` | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| Multicall2 | periphery | metis | n/a | 2 deployments: metis [`0x5d78bf...f97f74`](./contracts/metis-1088/0x5d78bf8f79a66e43f5932c1ae0b8fa6563f97f74/); arbitrum `0x842ec2...c54eb2` | ⚠️ Unaudited |
| MVM_Coinbase | unknown | metis | n/a | [`0xdeadde...ad0000`](./contracts/metis-1088/0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000/) | ⚠️ Unaudited |
| NODE | unknown | ethereum | n/a | [`0x0c3ef3...1ccb81`](./contracts/ethereum-1/0x0c3ef32f802967db75b9d49fe1e76620151ccb81/) | ⚠️ Unaudited |
| OToken | token | ethereum | n/a | 4 deployments: ethereum [`0x07c44b...ff3cb1`](./contracts/ethereum-1/0x07c44b5ac257c2255aa0933112c3b75a6bff3cb1/); ethereum `0x8064d9...537a68`; ethereum `0x9c306a...653651`; ethereum `0xae5096...7e14f7` | ⚠️ Unaudited |
| OTokenBSC | token | bsc | n/a | [`0x0314fc...a9c33b`](./contracts/bsc-56/0x0314fc7180dd2a4370a4039ccf11f2c1a4a9c33b/) | ⚠️ Unaudited |
| OVM_ETH | unknown | metis | n/a | [`0x420000...00000a`](./contracts/metis-1088/0x420000000000000000000000000000000000000a/) | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | n/a | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | 3 deployments: gnosis [`0x4ecaba...d605c6`](./contracts/gnosis-100/0x4ecaba5870353805a9f068101a40e0f32ed605c6/); gnosis `0x6a023c...78f6e1`; gnosis `0xddafbb...fb7a83` | ⚠️ Unaudited |
| PPToken | token | ethereum | n/a | 2 deployments: ethereum [`0x6c189b...90bfc4`](./contracts/ethereum-1/0x6c189baa963060daeec77b7305b055216090bfc4/); ethereum `0xd221f7...1d70de` | ⚠️ Unaudited |
| StableAMM | unknown | ethereum | n/a | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | ⚠️ Unaudited |
| StableYieldCredit | unknown | ethereum | n/a | 3 deployments: ethereum [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/); ethereum `0x948a9b...4a492e`; ethereum `0xe0839f...660261` | ⚠️ Unaudited |
| StakedAaveV3 | token | ethereum | n/a | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | polygon | n/a | [`0x3c9d6c...1fc1a9`](./contracts/polygon-137/0x3c9d6c1c73b31c837832c72e04d3152f051fc1a9/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | 3 deployments: arbitrum [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/); arbitrum `0xae6aab...aba689`; arbitrum `0xe72ba9...a37333` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| Token | token | metis | n/a | 13 deployments: ethereum `0x5bdc32...a2cfca`; ethereum `0xb62251...da350d`; bsc `0x55e3f2...74b47e`; bsc `0xae9a0e...0d3c85`; bsc `0xedf3ce...fa7955`; bsc `0xffeecb...bfdf7f`; polygon `0x50d079...cb32af`; metis [`0x226d8b...f9fd34`](./contracts/metis-1088/0x226d8bfb4da78ddc5bd8fd6c1532c58e88f9fd34/); metis `0x4f497f...827211`; metis `0x55e3f2...74b47e`; metis `0x68d97b...6e5e28`; metis `0x87dd4a...af8663`; metis `0xd5b59f...58b6b2` | ⚠️ Unaudited |
| TokenWISTA | token | bsc | n/a | 2 deployments: bsc [`0x3720e3...c1ed35`](./contracts/bsc-56/0x3720e3c827dab665383b32bc49766d2d24c1ed35/); bsc `0xeae001...cd9f09` | ⚠️ Unaudited |
| TunnelV2 | unknown | ethereum | n/a | [`0x6adff7...4ec39c`](./contracts/ethereum-1/0x6adff7bedd9d7bf4794421d078cced17aa4ec39c/) | ⚠️ Unaudited |
| TwoWayChef | unknown | polygon | n/a | 2 deployments: polygon [`0x6ec7a6...8601ce`](./contracts/polygon-137/0x6ec7a6a14509da191c6fa1491ef6137bdd8601ce/); polygon `0xb225cc...e2464c` | ⚠️ Unaudited |
| UChildAdministrableERC20 | token | polygon | n/a | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x1bfd67...d9bfd6`](./contracts/polygon-137/0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0xff8843...96da6b`](./contracts/polygon-137/0xff88434e29d1e2333ad6baa08d358b436196da6b/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| UniSwap_ETH_CDAIZap | adapter | ethereum | n/a | [`0x74b238...58c76d`](./contracts/ethereum-1/0x74b23882a30290451a17c44f4f05243b6b58c76d/) | ⚠️ Unaudited |
| USDT | token | optimism | n/a | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| VempDao | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4fd88e...24937b`](./contracts/ethereum-1/0x4fd88ed42aa161a0e0293e2369ad583df424937b/); ethereum `0x87821c...bb968b` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 12 deployments: ethereum [`0x2f50d5...5846bb`](./contracts/ethereum-1/0x2f50d538606fa9edd2b11e2446beb18c9d5846bb/); ethereum `0x575ccd...318e2c`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x64e3c2...ac041d`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0xa90996...857849`; ethereum `0xb1f2cd...202cac`; ethereum `0xbbcf16...8b29cf`; ethereum `0xbc89cd...ca8f53`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52` | ⚠️ Unaudited |
| WBTC | token | ethereum | n/a | 2 deployments: ethereum [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/); optimism `0x68f180...0a2095` | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; optimism [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| xVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/); ethereum `0x67c472...06c365` | ⚠️ Unaudited |
| xVEMPBEP20Token | token | ethereum | n/a | [`0x9fc889...12d2b5`](./contracts/ethereum-1/0x9fc889ff92cbeeb12f8b70be8f0e7f329f12d2b5/) | ⚠️ Unaudited |
| xVEMPToken | token | ethereum | n/a | [`0x4a4e2d...70cc78`](./contracts/ethereum-1/0x4a4e2d4859af854d2a3fc6df295843d21e70cc78/) | ⚠️ Unaudited |
| yDAI | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/); ethereum `0xc2cb10...24ce32` | ⚠️ Unaudited |
| yDelegatedVault | core_logic | ethereum | n/a | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | ⚠️ Unaudited |
| YFI | unknown | ethereum | n/a | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | ⚠️ Unaudited |
| yInsure | unknown | ethereum | n/a | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | ⚠️ Unaudited |
| ySUSD | unknown | ethereum | n/a | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ⚠️ Unaudited |
| yTUSD | unknown | ethereum | n/a | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | ⚠️ Unaudited |
| yUSDC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/); ethereum `0xd6ad7a...a3436e` | ⚠️ Unaudited |
| yUSDT | token | ethereum | n/a | 3 deployments: ethereum [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/); ethereum `0xa17872...a1dd14`; ethereum `0xe6354e...92d447` | ⚠️ Unaudited |
| yVault | core_logic | ethereum | n/a | 10 deployments: ethereum [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/); ethereum `0x2f0811...9faf18`; ethereum `0x37d19d...eda74a`; ethereum `0x597ad1...33522e`; ethereum `0x5dbcf3...bca25c`; ethereum `0x629c75...21c129`; ethereum `0x7ff566...e9d0f6`; ethereum `0xacd43e...a6f952`; ethereum `0xba2e7f...b94fe1`; ethereum `0xe1237a...4d16c7` | ⚠️ Unaudited |
| yWBTC | token | ethereum | n/a | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | ⚠️ Unaudited |
| yWrappedVault | core_logic | ethereum | n/a | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (476)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00a487...5e49f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x015bd9...25cad4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x024902...e6519e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02f083...7dba1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x031b84...c299e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03f94b...7f0687` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06d954...0e4386` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x077101...4bd506` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d3158...15e1ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0de70b...15f976` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e08ed...4ada38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e2d37...d4dbde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f0dd5...f6745a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f58c2...13f11a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11deb1...b91af6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x170a04...5c069d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x178f1e...f13c37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18062e...951928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19bf5d...0536e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b0e95...96d719` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ca045...a1c299` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d2614...0d43d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e71f4...c796e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e87e1...0721e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e8f7a...b03be0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f61ed...0eace6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2170ed...f933f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x227d8d...644fc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22b1ac...6f0077` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x249e6d...5a603d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26b964...fc9410` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27872e...2a29f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27dd88...8818a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28bd8d...e16d17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b523f...50c321` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba9e0...85ca39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c5f8f...2cb998` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x310cb2...f75ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32565e...179bae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x341301...09f633` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x345d24...c21a78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38da03...a45aec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e451e...d3b697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41a005...d9087c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x420000...00000a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x437f2a...80c463` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43b41e...e7d4cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x457eac...8ccde9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46d253...31892e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48c57b...8f3ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49d5c2...c10bab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b018f...a401c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b4ecd...7fc04b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dfe96...0cc19e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508f4f...74ba3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5387ae...d01d96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54fd05...043c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58d243...c3ab51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58e25c...70809a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59214b...de1dd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5980dc...b545fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c8c44...5676ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d99a5...d1991b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5dc3a5...a135ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e9f5a...bf51c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60190c...3a127a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x637ca3...c0b02f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64ff63...28a1fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65dfd6...b50e48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x661e6e...e3500f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67d44f...f3be42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x687d76...6b9b3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69086b...3ded40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6983d1...3ea013` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a023c...78f6e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a5efc...aa2092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b85bd...f2f7d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ba404...b2d869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e3143...d97a44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x713450...8f1f15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72ea64...1d453c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74c574...74593c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74ccc7...589ef2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77a366...2bacda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78e1d1...df960f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7af128...caa0eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b9a69...4662ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bd846...8317af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bdd63...3f311a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ceb23...b9f619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82af49...3fbab1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82d8f3...87e81c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84de7b...a4373e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8789d2...97b1e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8816ce...7c7f00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x895a18...8af720` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89a198...f313cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b2eaf...f224c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bf434...d87035` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c6adc...0d3602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ce277...b1e1fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fc923...fdca60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a473...b94710` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a9ba...6e8c04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9217a6...7ea767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x931214...4a3b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x990a39...ed351b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9980b0...e04dae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d708e...d130f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e6c26...a4f9b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa250f2...ac569c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa254bb...d8b671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa40691...cbb3bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4dbb9...e135c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa504de...a76705` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa54cff...d8687a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac3bf6...a39bb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacb67b...075501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaccf6b...c9f722` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad2f80...28a569` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad5618...37953c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadee8b...147716` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf2183...e4a5b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafce15...823fe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb13e9f...ed0b18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb21ca1...1fbd5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8ad35...32c356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc91c1...ca1ab1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbca401...9b1d32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcd886...1d7eff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe7ef5...a0afd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02886...af720c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc23f4d...10f998` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc251a5...0c2de3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc28ae0...ec666f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5c623...181acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc65e17...390e14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7b35d...fbb4ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9bdee...fe3feb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca92fe...676167` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc7d5e...98eed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccca76...12068f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce61e0...66bf79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcee636...c64ab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf1077...33fea5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf5f73...8503f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcfffa0...df558e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0c4b4...26fbee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0f6ef...da3c81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd11fa1...49c1e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a686...f6d191` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd34b96...bf9d63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd52ce4...9c81ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd54d2e...9aba56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7d997...2426f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8fb22...f94322` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd98b67...946f9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb81f7...8f050a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbece0...3f5f10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc1687...232a03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd018a...693618` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddb6be...ab7c01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde62e8...845931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf6159...b5c7ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe030dc...da9ecd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe14fbf...457f31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3547b...b14f3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe410c8...b2de3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe79ed3...978fc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea3b3f...c3be03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3bb2...9ad94d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef71ca...72315c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf07fdc...0ad3b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf142ea...c43454` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4d25d...613918` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf55af1...4253b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6078d...c7b9f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8393b...b6b4ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9d6ab...a7104a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd16ea...364477` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfde699...a46e33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe2218...2c6633` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffac1a...17df7e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x020bc2...e708dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x11e4be...a1011a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1f5330...fdb855` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x226d8b...f9fd34` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4685d4...693dc5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x57c374...b523d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x68d97b...6e5e28` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6b2b23...e9a600` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x77b3aa...534c19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x87dd4a...af8663` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x91854b...bfbc7b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9d1853...1e7cc3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa39e3d...fa5b65` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa6b2d3...2fbf89` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbe4a54...dc9c03` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd01a50...f6cf95` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xea5fed...b22a17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x04540f...538b04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x082221...bd9b69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09378d...59d79b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a6899...396892` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e5d41...d6c03b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11c852...87a917` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1282a1...bd2804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x169ea8...b9521b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x171830...eadcd5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1776b6...c03e75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d3fa8...71cdb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f8396...37614f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23ad1e...c091c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24f585...5596fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x258902...14f893` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ca914...374407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dac22...2d02c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2fd99f...5e08a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3461d7...bf1c40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x353b90...b7fa82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37e681...94c397` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x396f8a...688524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aa7c2...884af7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cc9bf...a0ef80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e695b...2125ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ee7c8...05d7c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x418eac...a2cfae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41b70e...89ac28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41e645...ea00e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x420fd9...7cb354` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42ac2e...36d7e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4502ee...0588a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45745f...db87d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c1f4e...5f28f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d0514...83d987` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f15d0...770916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5254f8...2422ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x565237...9e0dc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56aa9b...a2bc25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b29b9...3dd54c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c6244...526d42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e8480...6dc038` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e97d3...98e4b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6062cb...989220` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x612261...37c0c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x643bfc...d2b474` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x670e68...006ee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67e38a...f43c6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x704d30...8710a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x730f76...22dc03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76cf55...2899b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79daa1...421204` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x807458...f8b7d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8119e8...befbfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81d8e0...c15f2b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8434b9...bdaa39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x844805...26028a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x864bff...37c976` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86d1e2...2ff6f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x89ba0a...668c13` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a62b6...98bd3f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bf144...cdf959` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e3b62...796d7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x92f8c8...16ff96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x983eed...cb4928` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b99c8...96f088` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c07d7...b88693` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa09018...95ba9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa194f1...6e58a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa20782...e52ff5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa482e6...c128a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa50c3b...fa1906` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa56983...51f84f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa56f18...16419e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6a320...f3441a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6b0d5...a2313a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7585f...ad8ba2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa91f3d...1b7da0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa96569...97aebc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9b46b...b8132d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa9f8c0...b4d02a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac0bfb...c55737` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaccd94...3c9804` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad2f7f...dd90ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb130c6...f8c5e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6b663...adb3e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb83cec...a2b4e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbdbb25...065819` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6da57...8493f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8406e...2de95d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca8eae...ece88f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccf376...f65ece` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd6b65...e7cc0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0d1a1...850914` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd46948...2b24d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd595a0...8f8ee4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd795a7...88b9d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdcbe42...e3f4b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd096d...0974fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfa342...ba0974` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe49483...5f23ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0347a...05c30c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf52d68...ed3062` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5b36a...1b88af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf606eb...39f2f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdb5bf...a10ab1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfea987...dd2ee3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0d028b...12662c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x29414e...a2443f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3065f5...0dc2c8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3c4975...16aacf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4f497f...827211` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x508a96...ef4b38` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x560eb8...61b14d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x61cf45...9405c3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8906fc...62ebf6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8b6453...25b454` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9f5950...daeefb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd01a50...f6cf95` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd1a058...aa8de5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd51ab6...35a7ce` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe9fe1c...644784` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfc7b93...87a006` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x152770...4f636b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x180cc9...e9b0a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x231d60...38eae9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2ce068...7a823b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f1195...6575b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fd719...5058e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32fa08...4e8660` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x36ad51...f55a79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45c0ab...ccb0e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a6e95...5be11c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50c063...859076` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x530499...f3333a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x54e265...12d319` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5abcf7...c63cec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d0649...1aa772` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6d8f55...ef0ffe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ed5c7...8b9492` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7007eb...3ac144` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x71ab7b...ceb5b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x74e4d5...9a6c8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x789835...68dd56` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8059cf...3d2f1c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x853844...e2350c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d5e2e...0b35d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fe430...30dc0f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9abfcf...7f671b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c9a5b...909b16` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e7611...4fcff9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ee266...fe4887` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1e4aa...b87918` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa43ab6...6efcdf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa5dbd7...a2e7df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa757bd...da3dac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xabde94...cc0055` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac1b9a...bb758b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadf99e...e92439` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xae15f4...00c010` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb10b38...a8f6cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2bae5...d3dc0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb34444...7ff7a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb41e90...21ef84` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb74547...2c0ca4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbb1ee6...002430` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0675c...9fd651` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc20826...ade4a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc947ab...cde77b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc98002...406e91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcda98d...4017bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd39a60...54edaa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd571af...656e03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd761ff...9ade33` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3981f...179891` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3ec91...e94f26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed6701...1691b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf18479...718482` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf63477...b654c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6d935...244de6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | 35 deployments: heco `0x0bf101...afa414`; heco `0x560eb8...61b14d`; heco `0x64ff63...28a1fd`; heco `0x66a79d...3f0bea`; heco `0x66d6a0...6b40d1`; heco `0x9362bb...26b73b`; heco `0xa71edc...c3e47a`; heco `0xe3b59f...1363fc`; heco `0xe9fe1c...644784`; fantom `0x04068d...5d5b75`; fantom `0x049d68...3a3c7a`; fantom `0x1f5330...fdb855`; fantom `0x66d6a0...6b40d1`; fantom `0x6d6d85...8765e6`; fantom `0x74b238...58c76d`; fantom `0x77b3aa...534c19`; fantom `0xb238a5...62066c`; fantom `0xce8688...c3dc06`; boba `0x017ff8...9de024`; boba `0x225247...08161a`; boba `0x364701...58acde`; boba `0x5de167...9c062d`; boba `0x66a2a9...90fbbc`; boba `0xb238a5...62066c`; boba `0xc8819c...a79aa2`; harmony `0x017ff8...9de024`; harmony `0x216f33...f7cc21`; harmony `0x323b6b...d18f86`; harmony `0x39c412...d8fbc9`; harmony `0x3c2b8b...5aba8f`; harmony `0x6983d1...3ea013`; harmony `0x7f942c...6a7f19`; harmony `0x985458...9dfab4`; harmony `0xb238a5...62066c`; harmony `0xb98863...e0a5bf` | ❓ Unverified |
| UnnamedContract | unknown | boba | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1bdbb9...75e4a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x76396d...c250b7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x7f942c...6a7f19` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x805675...0d9e8d` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9d1853...1e7cc3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9e32b1...d6ed8e` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xacad07...271303` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xca94f1...348c38` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd62a32...be65bc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfaf3c7...f1efdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x017ff8...9de024` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11e4be...a1011a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x216f33...f7cc21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x584c55...f9b929` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x603f0d...5c96be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x616500...bd335c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6d6d85...8765e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6eccd6...7c02a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f5950...daeefb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb238a5...62066c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe4a54...dc9c03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd01a50...f6cf95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd09eeb...b49c22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4af65...b09916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9fe1c...644784` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc7b93...87a006` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x020bc2...e708dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0bf101...afa414` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0f4c93...314c57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11e4be...a1011a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x17d31f...a9f6a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x185bd3...d9446f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18d7dd...668964` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x216f33...f7cc21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x225247...08161a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ba094...ab55a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x57c374...b523d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x603f0d...5c96be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61cf45...9405c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65c56c...f47529` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68d97b...6e5e28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x731203...9e4932` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77b3aa...534c19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87dd4a...af8663` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9d8bda...9858b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe4a54...dc9c03` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0b62f...c5441f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd01a50...f6cf95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9dd04...68962e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdfbcd9...7c76fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe4af65...b09916` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe9fe1c...644784` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x18921f...1617bc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x1bc741...3ee7b7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x1d1f82...6cd8b3` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x4cdf61...34400a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x4e834c...9dc00a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x584c55...f9b929` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x731203...9e4932` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x7821c7...0986b1` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x81114c...f83987` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x87dd4a...af8663` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x8828a5...0dc994` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x885f8c...80c781` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x8973c9...764c37` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x8bec47...3b9f79` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0x94190d...1e3178` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xa64514...ef85e0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xabe981...f9bd7f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xb59d0f...0926e2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xbc1971...d792ca` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xc1e6ae...af939a` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xd618d2...c8b989` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xdc9be1...442f74` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xdeacf0...7b4dcd` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xdfbcd9...7c76fe` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe35203...8a291b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xe95e40...cc00ad` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xf4eb21...10e89e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | n/a | `0xf8be62...076023` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xbc1971...d792ca` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [peckshield-audit-report-boringdao-v1.0rc.pdf](https://github.com/BoringDAO/boringDAO-contract/blob/master/peckshield-audit-report-boringdao-v1.0rc.pdf) | PeckShield | Audit | 2020-12 | stale | Direct | contract_name | 1 | high |
| [drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view](https://drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view](https://drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view](https://drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view](https://drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view](https://drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view?usp=sharing) | CertiK | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe75ad3...1bd864`](./contracts/ethereum-1/0xe75ad3aab14e4b0df8c5da4286608dabb21bd864/) | AAC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8fbd42...f2389c`](./contracts/arbitrum-42161/0x8fbd420956fdd301f4493500fd0bcaaa80f2389c/) | AmyFinanceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff970a...db5cc8`](./contracts/arbitrum-42161/0xff970a61a04b1ca14834a43f5de4533ebddb5cc8/) | ArbFiatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | BEP20BandProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x433866...b0db94`](./contracts/bsc-56/0x4338665cbb7b2485a8855a139b75d5e34ab0db94/) | BEP20BitcoinCash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3ee220...435d47`](./contracts/bsc-56/0x3ee2200efb3400fabb9aacf31297cbdd1d435d47/) | BEP20Cardano | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb3a7...62f335`](./contracts/bsc-56/0x0eb3a705fc54725037cc9e008bdede697f62f335/) | BEP20Cosmos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1af3f3...b1dbc3`](./contracts/bsc-56/0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3/) | BEP20DAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | BEP20EOS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | BEP20Ethereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | BEP20LINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | BEP20Ontology | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | BEP20Polkadot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x16939e...12623a`](./contracts/bsc-56/0x16939ef78684453bfdfb47825f8a5f714f12623a/) | BEP20Tezos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | BEP20TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | BEP20TokenImplementationV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d2f0d...c60dbe`](./contracts/bsc-56/0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe/) | BEP20XRP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | BEP20YFII | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ba42e...ef8eeb`](./contracts/bsc-56/0x1ba42e5193dfa8b03d15dd1b86a3113bbbef8eeb/) | BEP20Zcash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c9d6c...1fc1a9`](./contracts/ethereum-1/0x3c9d6c1c73b31c837832c72e04d3152f051fc1a9/) | Bor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x92d775...b32241`](./contracts/bsc-56/0x92d7756c60dcfd4c689290e8a9f4d263b3b32241/) | BorBSC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbc1971...d792ca`](./contracts/ethereum-1/0xbc19712feb3a26080ebf6f2f7849b417fdd792ca/) | Boring | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0bf101...afa414`](./contracts/gnosis-100/0x0bf101ab5cc8c6be93d9fb6742e1e4d724afa414/) | BoringChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77f79f...8823f5`](./contracts/ethereum-1/0x77f79fea3d135847098adb1fdc6b10a0218823f5/) | BoringDAOV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204c87...66229c`](./contracts/ethereum-1/0x204c87cda5daac87b2fc562bfb5371a0b066229c/) | BoringSatelliteChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x19860c...8dde98`](./contracts/avalanche-43114/0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/) | ChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63a61b...93aba3`](./contracts/ethereum-1/0x63a61b21a5ed529986d572af747a22d96493aba3/) | CrossLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ade7a...d221e8`](./contracts/ethereum-1/0x5ade7ae8660293f2ebfcefaba91d141d72d221e8/) | EminenceCurrency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcfeb09...e96eec`](./contracts/ethereum-1/0xcfeb09c3c5f0f78ad72166d55f9e6e9a60e96eec/) | ENMT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x55254f...9afabd`](./contracts/metis-1088/0x55254fe138b0b5a85b27858c2f4ace9c509afabd/) | equipment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x843d4a...dc3f28`](./contracts/bsc-56/0x843d4a358471547f51534e3e51fae91cb4dc3f28/) | ERC20Template | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x4988a8...91571f`](./contracts/aurora-1313161554/0x4988a896b1227218e4a686fde5eabdcabd91571f/) | EvmErc20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b7816...d66fcd`](./contracts/ethereum-1/0x2b781634e4cb0b5236cc957daba88f911fd66fcd/) | FeePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x054f76...debe40`](./contracts/ethereum-1/0x054f76beed60ab6dbeb23502178c52d6c5debe40/) | FINToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f0dd5...f6745a`](./contracts/bsc-56/0x0f0dd5e2c0e0c4a41f8908d73d36b8d142f6745a/) | FireToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xa53085...96f5b2`](./contracts/metis-1088/0xa530850a1a3388d5f4cb2e9ed3d3125d6d96f5b2/) | hero | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6839e4...c49c97`](./contracts/polygon-137/0x6839e4acf7d69a9ea689fe133b994253e7c49c97/) | iNFTspaceMystery | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb988bd...645a26`](./contracts/polygon-137/0xb988bd378a0754957d5d9471c96e0f8051645a26/) | iNFTspaceToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x60d01e...27c747`](./contracts/polygon-137/0x60d01ec2d5e98ac51c8b4cf84dfcce98d527c747/) | izumiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa58950...ea4901`](./contracts/bsc-56/0xa58950f05fea2277d2608748412bf9f802ea4901/) | JulPadToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9696fe...e54b32`](./contracts/ethereum-1/0x9696fea1121c938c861b94fcbee98d971de54b32/) | Keep3r | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ceb5c...185a44`](./contracts/ethereum-1/0x1ceb5cb57c4d4e2b2433641b95dd330a33185a44/) | Keep3rV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x096760...ef5562`](./contracts/arbitrum-42161/0x096760f208390250649e3e8763348e783aef5562/) | L2CustomGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09e922...351eee`](./contracts/arbitrum-42161/0x09e9222e96e7b4ae2a407b98d48e330053351eee/) | L2ERC20Gateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5288c5...84f933`](./contracts/arbitrum-42161/0x5288c571fd7ad117bea99bf60fe0846c4e84f933/) | L2GatewayRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xbb06dc...16f4dc`](./contracts/metis-1088/0xbb06dca3ae6887fabf931640f67cab3e3a16f4dc/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c411a...6c623b`](./contracts/arbitrum-42161/0x6c411ad3e74de3e7bd422b94a27770f5b86c623b/) | L2WethGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x317625...291de4`](./contracts/ethereum-1/0x317625234562b1526ea2fac4030ea499c5291de4/) | LendToAaveMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x288324...5a56cd`](./contracts/ethereum-1/0x28832484e8124634a248f2bc520f26e8345a56cd/) | LiquidityIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x7db21b...363a8b`](./contracts/metis-1088/0x7db21b2c3319e2d7ab2fd66e902e315ee7363a8b/) | market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a18b9...f4ff42`](./contracts/ethereum-1/0x3a18b916b72fcab7ba7d2882eeb4cccea7f4ff42/) | MasterChefETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe71883...87811c`](./contracts/ethereum-1/0xe718834ef396e8e327b591734c7df6f30687811c/) | MasterChefLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xdeadde...ad0000`](./contracts/metis-1088/0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000/) | MVM_Coinbase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3ef3...1ccb81`](./contracts/ethereum-1/0x0c3ef32f802967db75b9d49fe1e76620151ccb81/) | NODE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07c44b...ff3cb1`](./contracts/ethereum-1/0x07c44b5ac257c2255aa0933112c3b75a6bff3cb1/) | OToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0314fc...a9c33b`](./contracts/bsc-56/0x0314fc7180dd2a4370a4039ccf11f2c1a4a9c33b/) | OTokenBSC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x420000...00000a`](./contracts/metis-1088/0x420000000000000000000000000000000000000a/) | OVM_ETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x7f5c76...c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | OVMFiatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x4ecaba...d605c6`](./contracts/gnosis-100/0x4ecaba5870353805a9f068101a40e0f32ed605c6/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c189b...90bfc4`](./contracts/ethereum-1/0x6c189baa963060daeec77b7305b055216090bfc4/) | PPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13b9fb...ac48de`](./contracts/ethereum-1/0x13b9fbd6d642db0c9f54f58b21abca7e8cac48de/) | StableAMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11980d...d834e7`](./contracts/ethereum-1/0x11980d4bb4465cb4fc77a57b98a16787b3d834e7/) | StableYieldCredit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4da27a...e870f5`](./contracts/ethereum-1/0x4da27a545c0c5b758a6ba100e3a049001de870f5/) | StakedAaveV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3c9d6c...1fc1a9`](./contracts/polygon-137/0x3c9d6c1c73b31c837832c72e04d3152f051fc1a9/) | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x226d8b...f9fd34`](./contracts/metis-1088/0x226d8bfb4da78ddc5bd8fd6c1532c58e88f9fd34/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3720e3...c1ed35`](./contracts/bsc-56/0x3720e3c827dab665383b32bc49766d2d24c1ed35/) | TokenWISTA | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6adff7...4ec39c`](./contracts/ethereum-1/0x6adff7bedd9d7bf4794421d078cced17aa4ec39c/) | TunnelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2791bc...a84174`](./contracts/polygon-137/0x2791bca1f2de4661ed88a30c99a7a9449aa84174/) | UChildAdministrableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1bfd67...d9bfd6`](./contracts/polygon-137/0x1bfd67037b42cf73acf2047067bd4f2c47d9bfd6/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xff8843...96da6b`](./contracts/polygon-137/0xff88434e29d1e2333ad6baa08d358b436196da6b/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/) | UChildERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildUSDT0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x94b008...e58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f50d5...5846bb`](./contracts/ethereum-1/0x2f50d538606fa9edd2b11e2446beb18c9d5846bb/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ead6d...58d285`](./contracts/ethereum-1/0x2ead6dd0706c2d95c63ca26b39222a54f058d285/) | xVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9fc889...12d2b5`](./contracts/ethereum-1/0x9fc889ff92cbeeb12f8b70be8f0e7f329f12d2b5/) | xVEMPBEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a4e2d...70cc78`](./contracts/ethereum-1/0x4a4e2d4859af854d2a3fc6df295843d21e70cc78/) | xVEMPToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16de59...f0bd01`](./contracts/ethereum-1/0x16de59092dae5ccf4a1e6439d611fd0653f0bd01/) | yDAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29e240...f9f324`](./contracts/ethereum-1/0x29e240cfd7946ba20895a7a02edb25c210f9f324/) | yDelegatedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc529...6ad93e`](./contracts/ethereum-1/0x0bc529c00c6401aef6d220be8c6ea1667f6ad93e/) | YFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x181aea...d98f91`](./contracts/ethereum-1/0x181aea6936b407514ebfc0754a37704eb8d98f91/) | yInsure | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf61718...b45600`](./contracts/ethereum-1/0xf61718057901f84c4eec4339ef8f0d86d2b45600/) | ySUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x73a052...a8190f`](./contracts/ethereum-1/0x73a052500105205d34daf004eab301916da8190f/) | yTUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26ea74...b21951`](./contracts/ethereum-1/0x26ea744e5b887e5205727f55dfbe8685e3b21951/) | yUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x83f798...f1707d`](./contracts/ethereum-1/0x83f798e925bcd4017eb265844fddabb448f1707d/) | yUSDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x299452...99bbed`](./contracts/ethereum-1/0x2994529c0652d127b7842094103715ec5299bbed/) | yVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04aa51...787ec9`](./contracts/ethereum-1/0x04aa51bbcb46541455ccf1b8bef2ebc5d3787ec9/) | yWBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x881b06...025298`](./contracts/ethereum-1/0x881b06da56bb5675c54e4ed311c21e54c5025298/) | yWrappedVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 3 |
| standard_library | 10 |
| needs_review | 486 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [12828] drive.google.com/file/d/15U9L9OVMgiw0Ti8tRY-kh74o_qYh2_z9/view
- [12829] drive.google.com/file/d/1epeKsAzLm3Fp2lQvHQ_gICLjFfW4WoVF/view
- [12830] drive.google.com/file/d/1OOi2L3OHygFJXC-FM9uXNH9LjKHAZAH7/view
- [12831] drive.google.com/file/d/1_D-aHEn5-eUUDU4uKlK2FC5LXUuv5QkO/view
- [12832] drive.google.com/file/d/1ZtKp463HM0BlxdupFl3e6sw4TUdqMObT/view

Fork inheritance lineage and inherited audits are included when available.
