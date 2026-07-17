# Agentic Audit Brief: Tranchess

## Project Overview

- Project: Tranchess (`tranchess`)
- Website: [https://tranchess.com](https://tranchess.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.409Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: bsc, ethereum, scroll
- Contract surface: 108 unique implementations (352 raw deployments)
- DeFi Llama TVL: $4,205,134.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 113 project-authored contract(s) across 3 chain(s); 9 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 22 common project-authored base contract(s) (coreutility, itrancheindexv2, votingescrowcheckpoint). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 514; live-surface contracts included: 346 (302 live, 44 unknown).
- Excluded by liveness: 168 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/74 (17.6%)
- Deployed-live implementations: 80 of 108 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/81
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 108
- Raw deployments: 352
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 8 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 11 | 13.6% | 2023-12 |
| CertiK | Tier 2 | 3 | 3.7% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Chess | unknown | bsc | n/a | [`0x20de22029ab63cf9a7cf5feb2b737ca1ee4c82a6`](./contracts/bsc-56/0x20de22029ab63cf9a7cf5feb2b737ca1ee4c82a6/) | ✅ Audited |
| Exchange | unknown | bsc | n/a | 2 deployments: bsc [`0x907a50140aee1e457b8d8116f9b5f8ead1931e25`](./contracts/bsc-56/0x907a50140aee1e457b8d8116f9b5f8ead1931e25/); bsc `0xfa5f5940beb7b37ae5c39660f2601d0d75f9ad95` | ✅ Audited |
| ExchangeV2 | unknown | bsc | n/a | 4 deployments: bsc [`0xabad55484c39d0394279ffcedc11e23001415080`](./contracts/bsc-56/0xabad55484c39d0394279ffcedc11e23001415080/); bsc `0xb4fd07748bb1f1d5736876f6b672a49b81a7b299`; bsc `0xc39d296db45d728cd4b5beff882c2aa2fe329c4c`; bsc `0xe5cc18efa78874c30bdee8a5b34f56392e94ac41` | ✅ Audited |
| FeeDistributor | unknown | ethereum | n/a | 15 deployments: ethereum [`0x00db7b1300b2b24fb9bdf4f661f650a2998e367a`](./contracts/ethereum-1/0x00db7b1300b2b24fb9bdf4f661f650a2998e367a/); ethereum `0xbc428f6573827db9773f9e4bc1f5c899c884842c`; ethereum `0xe6e659ad43029e8d89ded5d3ff030ddc5c909cbf`; bsc `0x111150736cdea75eb84cfd86a93e93a60ec56628`; bsc `0x4832f0faeae2b9458d0c01bcc11b99d44d16fd42`; bsc `0x4d8dcec171be8cb32ac9a39f6b024879459b7bb7`; bsc `0x57c6df30436c9f1864536315e157cb999ee20edb`; bsc `0x5bd53b0258c38cbf3e57950697f06021c037eb22`; bsc `0x67eb546a69c7e4d83f3c66018fa549dff5fed35b`; bsc `0x857486754792f1a8cacfc2c07cb4e227ec20e0e7`; bsc `0x85ae5e9d510d8723438b0135cbf29d4f2e8bcda8`; bsc `0xa4ecd920aa06639cf27e817c358d5480dafafb69`; bsc `0xa80287d7183e23d460ac01f05c1b7f3d0fb76ea2`; bsc `0xe06f85862af08c1c5f67f96e41ea663e29639dae`; bsc `0xe5f4efe076b830f69a6b3bad6005618f86dad5c6` | ✅ Audited |
| Fund | unknown | bsc | n/a | 2 deployments: bsc [`0x677b7304cb944b413d3c9aebc4d4b5da1a698a6b`](./contracts/bsc-56/0x677b7304cb944b413d3c9aebc4d4b5da1a698a6b/); bsc `0xd6b3b86209ebb3c608f3f42bf52818169944e402` | ✅ Audited |
| FundV5 | unknown | ethereum | n/a | [`0x811c9dd8b7b670a78d02fac592ebbe465e5dd0fa`](./contracts/ethereum-1/0x811c9dd8b7b670a78d02fac592ebbe465e5dd0fa/) | ✅ Audited |
| InterestRateBallot | unknown | bsc | n/a | 2 deployments: bsc [`0xe8061a74412e78dda7a762b8f6361518bb9783d3`](./contracts/bsc-56/0xe8061a74412e78dda7a762b8f6361518bb9783d3/); bsc `0xeb76e34834fb0e2c31d92f0284466385bce5c09a` | ✅ Audited |
| PrimaryMarket | unknown | bsc | n/a | 2 deployments: bsc [`0x19ca3baaeaf37b857026dfed3a0ba63987a1008d`](./contracts/bsc-56/0x19ca3baaeaf37b857026dfed3a0ba63987a1008d/); bsc `0x57c8041c6aa3440843b5e48b16016a95f822195f` | ✅ Audited |
| PrimaryMarketV2 | unknown | bsc | n/a | [`0x15f2fefcf313d397f9933c1cb7590ab925d5cb59`](./contracts/bsc-56/0x15f2fefcf313d397f9933c1cb7590ab925d5cb59/) | ✅ Audited |
| PrimaryMarketV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x25c601a3fca896be827ef47e52bfcab18601eb17`](./contracts/bsc-56/0x25c601a3fca896be827ef47e52bfcab18601eb17/); bsc `0x991c55304790c75cebee69da7601a18aa0977f24`; bsc `0xec887f1ed49ff192a8ac3fcb82e120bd6785f522` | ✅ Audited |
| PrimaryMarketV4 | unknown | ethereum | n/a | [`0xcf116313bc9c3712a8165d9a8e1c311567c4c829`](./contracts/ethereum-1/0xcf116313bc9c3712a8165d9a8e1c311567c4c829/) | ✅ Audited |
| Share | unknown | bsc | n/a | 9 deployments: bsc [`0x15d0318fddf785ac0d3ba690c0033b3bedf4c648`](./contracts/bsc-56/0x15d0318fddf785ac0d3ba690c0033b3bedf4c648/); bsc `0x3a632b713637d837ff3b0e34d093a21da1ef9fb1`; bsc `0x80da8ca6c3dabd3a9f06ca8eeed5d61687fab7ef`; bsc `0x8cc456b384c8ad06bf430f4f130aa63ef0dc6f85`; bsc `0x9fd554cdb6e77d9aa048a37dcccee41fffad1a90`; bsc `0xa0c1a9a702de28d1562c423ccef74bbd45e4dcbb`; bsc `0xed3805ede679cc48fe1e91e561138bca659fca43`; bsc `0xf8d829c3eb05c078e7911efb3303c7899c8d2c3a`; bsc `0xfff9fc084cb58974defaa27e05e1fe2439b75dd9` | ✅ Audited |
| VotingEscrowV2 | unknown | bsc | n/a | [`0x147c0057de638259715edd90772ea568f7775620`](./contracts/bsc-56/0x147c0057de638259715edd90772ea568f7775620/) | ✅ Audited |

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapChess | unknown | scroll | n/a | 2 deployments: ethereum `0xd6123271f980d966b00ca4fca6c2c021f05e2e73`; scroll [`0x9735fb1126b521a913697a541f768376011bccf9`](./contracts/scroll-534352/0x9735fb1126b521a913697a541f768376011bccf9/) | ⚠️ Unaudited |
| BatchOperationHelper | periphery | bsc | n/a | 5 deployments: ethereum `0x97238bc81fcede211ecb49a6b16ca0ad1d55a1d5`; bsc [`0x5647bed4a4d7544d667aeaabf71b13f1c152529d`](./contracts/bsc-56/0x5647bed4a4d7544d667aeaabf71b13f1c152529d/); bsc `0xa6fd871d96f4e612b2ed7655f3fb78d9672815a1`; bsc `0xdcf0bfff2d6b542b55840621fb560d43d0a35eba`; scroll `0xbefeb1f4afc01416ac25640c482defbf8f9d6e68` | ⚠️ Unaudited |
| BatchSettleHelper | unknown | bsc | n/a | [`0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca`](./contracts/bsc-56/0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca/) | ⚠️ Unaudited |
| BatchUpgradeTool | periphery | bsc | n/a | [`0xd7d8484c835487c2a88c5e653f75e570eecde071`](./contracts/bsc-56/0xd7d8484c835487c2a88c5e653f75e570eecde071/) | ⚠️ Unaudited |
| BishopStableSwap | unknown | bsc | n/a | 3 deployments: bsc [`0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37`](./contracts/bsc-56/0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37/); bsc `0x87585a84e0a04b96e653de3dda77a3cb1fdf5b6a`; bsc `0x999db223f0807b164b783ee33d48782cc6e06742` | ⚠️ Unaudited |
| BishopStableSwapV2 | unknown | bsc | n/a | 19 deployments: bsc [`0x01209a232daf2068136d15e76c867c7f7fc21f4e`](./contracts/bsc-56/0x01209a232daf2068136d15e76c867c7f7fc21f4e/); bsc `0x09427783666ec4173e951222ab9b3c12871400aa`; bsc `0x2fa534b3c9cd003e58dc1e8f44969846af311698`; bsc `0x399bbbf150af24851b60a55d8de3397195d62b07`; bsc `0x6da3a029d0f0911c7ee36c1cea2ea69fc31dd970`; bsc `0xa6d9ad9fd68fa46333a13bb383cc682f50473596`; bsc `0xb4c672600497efd6ee1a74a50788a5cd1a0893e6`; bsc `0xba5a53180504cae2f038685914084ed85d336c2b`; bsc `0xbbb1aa81e95298d64b7f710b936d89394dbdd28f`; bsc `0xc3655312b88b18c5ab089192c46bdf9f73e75dbe`; bsc `0xd0cc89ccf8c7500a3437952a61df5e5d976e735c`; bsc `0xd3392699d679dfa57bc8ee71a0ad44902c1ab9f7`; bsc `0xd3d47598b56e15d5a3f466fc93517d97f7b6256e`; bsc `0xda3bd77f8d05d86b9a6356a9cc89ac74939d1ad4`; bsc `0xf4302b631516e1bda4f46730856dcaa588ed2bbb`; bsc `0xf443f22bdf347c2898429031512036191c5651bc`; scroll `0x3d9f20e4f1f5ac1d5f24e271ce6364b2eed71ca6`; scroll `0xd151ce31322aea25e4779678df0a3f376f9ffc6f`; scroll `0xec8bfa1d15842d6b670d11777a08c39b09a5ff00` | ⚠️ Unaudited |
| Briber | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3`](./contracts/ethereum-1/0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3/); ethereum `0x5d76ee4b800660565832f2323f4ac92856fa9776`; ethereum `0x99248d40a4880cb7bb188427e9556f8182e9b614` | ⚠️ Unaudited |
| BscAprOracleProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x1c319ec0def2474108ad5645a8b6fd92f9f35583`](./contracts/bsc-56/0x1c319ec0def2474108ad5645a8b6fd92f9f35583/); bsc `0x82c9fdf1a17071cd8150af9c125a21d566d5b165`; bsc `0xfc36880eba1194c3b7bdfc8f2934c34944f9c931` | ⚠️ Unaudited |
| BscStakingStrategyV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x0391ba6f1c59a923f727a6549d27c895fefcab66`](./contracts/bsc-56/0x0391ba6f1c59a923f727a6549d27c895fefcab66/); bsc `0xde9f4b6637531852a0c9edad0c92be839b92437b` | ⚠️ Unaudited |
| ChessControllerV4 | unknown | bsc | n/a | [`0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70`](./contracts/bsc-56/0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70/) | ⚠️ Unaudited |
| ChessControllerV6 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x419d4c1e4b64c7fdebb6ceb729881ff297843f1e`](./contracts/ethereum-1/0x419d4c1e4b64c7fdebb6ceb729881ff297843f1e/); ethereum `0xec5468780b57a8988666140a153d858bd00c9113` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac`](./contracts/ethereum-1/0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac/); ethereum `0xaa75969e8e407534f6f44d95b5b43b0e6a062750` | ⚠️ Unaudited |
| ChessControllerV6 | unknown | bsc | n/a | 2 deployments: bsc [`0x0a7e898e1fab8639dc3a416fe844662f209de8ed`](./contracts/bsc-56/0x0a7e898e1fab8639dc3a416fe844662f209de8ed/); bsc `0x94ddc5d023e3e4266380a9199d3fae86195dcece` | ⚠️ Unaudited |
| ChessSchedule | unknown | bsc | n/a | 2 deployments: bsc [`0x0519ff24c82c7fb914334ec36a71cdd199855332`](./contracts/bsc-56/0x0519ff24c82c7fb914334ec36a71cdd199855332/); bsc `0xf071de0e7a6ffceee252df25678c725f04a03b80` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c5f4b16378dfbb71102db10745b79b2dc22b03d`](./contracts/ethereum-1/0x0c5f4b16378dfbb71102db10745b79b2dc22b03d/); ethereum `0xf4d665541eaa7e5d27703030ca958d9686ceec69` | ⚠️ Unaudited |
| ChessSubSchedule | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4dad1d42753f2cbab2bb9c3402baa8903583bb47`](./contracts/ethereum-1/0x4dad1d42753f2cbab2bb9c3402baa8903583bb47/); ethereum `0xc88ac7d60c8f3f90b43c5ba144f3cd684f01d040` | ⚠️ Unaudited |
| ConstAprOracle | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x9060dac075f6b96e7d753a321652626cec038d86`](./contracts/bsc-56/0x9060dac075f6b96e7d753a321652626cec038d86/); bsc `0xa096796e289609c715b4a3765e726097108b6e48`; bsc `0xc61198fdd3b058ae355ebd55591f9cf81dfe83ea`; bsc `0xfdc433b0df72cd366f1864cc05553340d3ebc56c` | ⚠️ Unaudited |
| ConstPriceOracle | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x64d5af5ee4e2a6e9b7adc04b340723011a25715c`](./contracts/bsc-56/0x64d5af5ee4e2a6e9b7adc04b340723011a25715c/); bsc `0x7a5a1170192f28f3efe30ee6740a104b186f38a7`; bsc `0x894738a7465422c69c7372be4ad448c6400fbc6c`; bsc `0x8ceb0f7f13c1d2a1076ff3e57493fc1e063b476f` | ⚠️ Unaudited |
| ControllerBallot | unknown | bsc | n/a | 2 deployments: bsc [`0x66cae7a198792089060c7d68e31ca7fcf9274377`](./contracts/bsc-56/0x66cae7a198792089060c7d68e31ca7fcf9274377/); bsc `0xd28073478157357171f7a8ae111b1c3302ece043` | ⚠️ Unaudited |
| ControllerBallotV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x41b598d49ade2dbf870b5987c25975ecec16826f`](./contracts/ethereum-1/0x41b598d49ade2dbf870b5987c25975ecec16826f/); ethereum `0xadf40ca696df9185015fab296546dd702186acef`; bsc `0xd1d463d180bc057d104a11654fad4c5493faf8d3` | ⚠️ Unaudited |
| CrossChainWrappedToken | token | bsc | n/a | [`0x352e9a93498c4aa72734a32433bca094f5ab6da8`](./contracts/bsc-56/0x352e9a93498c4aa72734a32433bca094f5ab6da8/) | ⚠️ Unaudited |
| EthStakingStrategy | unknown | ethereum | n/a | 4 deployments: ethereum [`0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e`](./contracts/ethereum-1/0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e/); ethereum `0x66453f68d6dbcf7859e08f0c43df74e6da06ef8c`; ethereum `0x96f4489fe75d0494bd5088b0d80b17a5759dac37`; ethereum `0xf737012c83c0ac5cc55df3bbcda7d82dd8c4081b` | ⚠️ Unaudited |
| ExchangeV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7`](./contracts/bsc-56/0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7/); bsc `0xb13a07c57ba5297506c71e9c958210fea8bbcef0` | ⚠️ Unaudited |
| ExchangeV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x1216be0c4328e75ae9adf726141c2254c2dcc1b6`](./contracts/bsc-56/0x1216be0c4328e75ae9adf726141c2254c2dcc1b6/); bsc `0x8c4e46e99db41d121ac58e72e2b62f56fc0553c6` | ⚠️ Unaudited |
| ExchangeV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x3826314c4d7d2d6eee7bfed4302a55b422540e87`](./contracts/bsc-56/0x3826314c4d7d2d6eee7bfed4302a55b422540e87/); bsc `0x42867df3c1ce62613aae3f4238cbcf3d7630880b` | ⚠️ Unaudited |
| FeeConverter | unknown | bsc | n/a | 4 deployments: bsc [`0x6b0c7dd95e9db7edd2ed5adf056bc502eb1aeaf3`](./contracts/bsc-56/0x6b0c7dd95e9db7edd2ed5adf056bc502eb1aeaf3/); bsc `0x911237fcf21421fe50715b05304780006409e57a`; bsc `0xc36b90e56a1961cd24dc1e72118c4f635b87368f`; bsc `0xfced57ff211587a9bee78bdb7bcba3f726ce8885` | ⚠️ Unaudited |
| FlashSwapRouter | adapter | bsc | n/a | 3 deployments: bsc [`0x0d5108377c86f4dcfe473177e0ca555095fda0e0`](./contracts/bsc-56/0x0d5108377c86f4dcfe473177e0ca555095fda0e0/); bsc `0xc841bd0ab8b6cb580ecff647a79ad94287851c49`; bsc `0xcf40917491c60afc1d60888f73f7dfd4629e0a2c` | ⚠️ Unaudited |
| FlashSwapRouterV2 | unknown | ethereum | n/a | [`0x0c18932d6dd86fbea662de6389fae86f5570983c`](./contracts/ethereum-1/0x0c18932d6dd86fbea662de6389fae86f5570983c/) | ⚠️ Unaudited |
| FlashSwapRouterV3 | adapter | bsc | n/a | 2 deployments: ethereum `0xd462276ef4aa78a3533cf13518d97a16b96e0c95`; bsc [`0x5f2217f0e67af3a6571cf4356dd8f6aeb6c60024`](./contracts/bsc-56/0x5f2217f0e67af3a6571cf4356dd8f6aeb6c60024/) | ⚠️ Unaudited |
| FlashSwapRouterV3Helper | unknown | bsc | n/a | [`0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9`](./contracts/bsc-56/0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9/) | ⚠️ Unaudited |
| FundV2 | unknown | bsc | n/a | [`0x629d4562033e432b390d0808b54a82b0c4a0896b`](./contracts/bsc-56/0x629d4562033e432b390d0808b54a82b0c4a0896b/) | ⚠️ Unaudited |
| FundV3 | unknown | bsc | n/a | 3 deployments: bsc [`0x1f18cc2b50575a71dd2ebf58793d4e661a7ba0e0`](./contracts/bsc-56/0x1f18cc2b50575a71dd2ebf58793d4e661a7ba0e0/); bsc `0x2f40c245c66c5219e0615571a526c93883b456bb`; bsc `0x7618f37efe8930d5ee6da34185b3abb750bd2a34` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b`](./contracts/ethereum-1/0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b`](./contracts/bsc-56/0x1bf019a44a708fbeba7adc79bdad3d0769ff3a7b/) | ⚠️ Unaudited |
| InterestRateBallotV2 | operational_periphery | bsc | n/a | [`0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e`](./contracts/bsc-56/0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e/) | ⚠️ Unaudited |
| LiquidityGauge | unknown | bsc | n/a | 4 deployments: bsc [`0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a`](./contracts/bsc-56/0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a/); bsc `0x131678e24f5f447d0a6a1a42ff7d7723861a9d30`; bsc `0x3f586aa29c61488f25748911be3c52246c744fc2`; bsc `0x7350d28b4919d9b05443c0d0121b6dbcb76f022f` | ⚠️ Unaudited |
| LiquidityGaugeV2 | operational_periphery | scroll | n/a | [`0x3c8465c04e7478b11c7b5cee3919781db5e6d464`](./contracts/scroll-534352/0x3c8465c04e7478b11c7b5cee3919781db5e6d464/) | ⚠️ Unaudited |
| LiquidityGaugeV3 | operational_periphery | bsc | n/a | 4 deployments: bsc [`0x70548df45cd73ea326dedcf2f6f774e165cd52e3`](./contracts/bsc-56/0x70548df45cd73ea326dedcf2f6f774e165cd52e3/); bsc `0xa1e3f70c640126d7c3a7a4d026b7601c1942da66`; bsc `0xc837bed032a798836214b587b3f7baa0b70cd295`; bsc `0xf11a107a7bbfcff107383f47249661f4e852371c` | ⚠️ Unaudited |
| MaturityFund | unknown | bsc | n/a | 7 deployments: bsc [`0x155ded598a186148b8a2f1c7b442f9ceaab0ec37`](./contracts/bsc-56/0x155ded598a186148b8a2f1c7b442f9ceaab0ec37/); bsc `0x2383a2fdaa3536be5191e5eeaf57b9c9f71b8df0`; bsc `0x29a90f69af6ae84c745a3a83cdac153987be387e`; bsc `0x91b07b0fb40874a61c2ed26dd63869f579befd34`; bsc `0xac05ff30f79d0d697b5156f85839127101a51fe6`; bsc `0xc410977aa97366eb0250678cdc890c5e650609ed`; bsc `0xcb00aa9d486c1ef51d38a85c2d16cb849affe6b6` | ⚠️ Unaudited |
| MaturityPrimaryMarket | unknown | bsc | n/a | 18 deployments: bsc [`0x07a2d8c053015b57c2dfc2b7450d521de1bf5559`](./contracts/bsc-56/0x07a2d8c053015b57c2dfc2b7450d521de1bf5559/); bsc `0x188fe201b4335cfc1cc4f08b0c7a53488159f274`; bsc `0x27b5dc8d68499a3878805daa4dcbff154cdd7fc4`; bsc `0x2c5752df78d53955fbd4c585a66eb12dcc78033a`; bsc `0x4346d53e77fbca11c37e25a51189e0344c8b93f5`; bsc `0x64e30fade0ebf18ab8a5123117729d1e374d8a45`; bsc `0x756889b49e77e56606a715e4b20d9ec438b8602a`; bsc `0x7a7bbe67a88f1bc13cad01d9b1e2eca4af47459d`; bsc `0x9af013fabfd2f4b8e3cd4cf6d13dfa502604198b`; bsc `0x9fb23b8a8eb33546346e09a9b780d8f54922ead0`; bsc `0xb26009f75e3f79122d69ecd4688f0e0b90a0eb2f`; bsc `0xc667109e0c857dd7badf3db28a57410ee18e29eb`; bsc `0xc94231f2f60656d1ccd1129d67076157a4842166`; bsc `0xf2b1eb5486c2abccb0ea5b434338fe66b6a111c0`; bsc `0xfaf33641c879bf7b5ad9387c0cf5b2084e0eeac9`; scroll `0x088e2f0fcb2acaa5ad990311839b1d37ee41679d`; scroll `0x21366de9707a1044e351280f085821c734791cee`; scroll `0x47b3913e6ac7dcb9752769465f875596c6f194d4` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2625871323360a04d1d4302a993a2b2d049dc51e`](./contracts/ethereum-1/0x2625871323360a04d1d4302a993a2b2d049dc51e/); ethereum `0xe926f01953c3b94222fcac7474b31e3f8eafb308` | ⚠️ Unaudited |
| PrimaryMarketRouter | unknown | ethereum | n/a | 6 deployments: ethereum [`0x10e02a656b5f9de2c44c687787c36a2c4801cc40`](./contracts/ethereum-1/0x10e02a656b5f9de2c44c687787c36a2c4801cc40/); ethereum `0xba3c7ac882c99ae139a1a9d84e6cc03aa62a2aef`; ethereum `0xea8e6f2c426d207ca0916adb42cea032102b18ba`; bsc `0x678dad6d69b610e0a6440ca2bd184154689d0fcd`; bsc `0xa61f3d8073f7d83c21761a123b8083ff73e2f6e1`; bsc `0xd5396f6d8173bd0a8f64c68d81b41a39162673ee` | ⚠️ Unaudited |
| PrimaryMarketRouterV2 | adapter | bsc | n/a | 16 deployments: bsc [`0x01a45d60af80c42aa3199899f37a9867a87eb9ee`](./contracts/bsc-56/0x01a45d60af80c42aa3199899f37a9867a87eb9ee/); bsc `0x09e9ecb58e8e485a4999cfe27a6acfe2cd029290`; bsc `0x1058c324d2e37c2da848e7f427debf6ef8264191`; bsc `0x235f1bd0c3e155d6e214474a4f6c76350d1a3c20`; bsc `0x245a734d01d594430fdf55b46c23c4f477134123`; bsc `0x32a8bb260c6be0191ad63c4bcf6990d8d4ab4335`; bsc `0x3a000a62b82f9b4203c9686e1069d8f8f1c63977`; bsc `0x46e6a5989569669b6b99c36f8b5c73dd28a4f5b0`; bsc `0x55ab1fa264113e32a709a380322ecdf33f4c3dd6`; bsc `0x675b9d7f14596478fc8cff1a83bc60cf46eaf832`; bsc `0x8cf1643c988d105a4b1a83df8995ff52b083b276`; bsc `0xa2e8c2aee371d2065d08bbc40a953c8832fb5ca6`; bsc `0xbd1450ae1ef037861f762c03aa55af29f8bdfe17`; bsc `0xc5d5f9b2bc49fbc0a3565a48ee21256dfe79c343`; bsc `0xe3515efd6a2d4c49dd7572546985bdee36542979`; bsc `0xfdf6c8cf9faadc5b9b829c9c8dbbcf15c3fd3463` | ⚠️ Unaudited |
| PrimaryMarketV5 | unknown | ethereum | n/a | [`0xa8be5ab62794a647254e1e62844201efc8477e22`](./contracts/ethereum-1/0xa8be5ab62794a647254e1e62844201efc8477e22/) | ⚠️ Unaudited |
| ProtocolDataProvider | unknown | bsc | n/a | 2 deployments: bsc [`0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9`](./contracts/bsc-56/0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9/); bsc `0xc4df282fda961f534002cef2bd76e3e649ec0acb` | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 2 deployments: ethereum [`0x18b80619fca159fe3c655a11c94c040f72241abc`](./contracts/ethereum-1/0x18b80619fca159fe3c655a11c94c040f72241abc/); bsc `0x88c8890505384f4eb3a281274b1dedfff8448147` | ⚠️ Unaudited |
| ProxyOFTPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x25cd496d66708166a06da16ed641dd286ce76815`](./contracts/ethereum-1/0x25cd496d66708166a06da16ed641dd286ce76815/); bsc `0x38f51be38c01126fd671586ec9d35c58a1672d59`; scroll `0xf440e381e682a458505c12db813dbc36da4f5970` | ⚠️ Unaudited |
| QueenStableSwap | unknown | bsc | n/a | [`0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773`](./contracts/bsc-56/0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773/) | ⚠️ Unaudited |
| RewardCashier | unknown | bsc | n/a | 2 deployments: bsc [`0x79e8ea3cf94327ebf1b23fb67c1afdb835dcfe0d`](./contracts/bsc-56/0x79e8ea3cf94327ebf1b23fb67c1afdb835dcfe0d/); bsc `0xacc5b89b8bf6705aeb9db8889ab85d3dba505e37` | ⚠️ Unaudited |
| RewardClaimer | unknown | ethereum | n/a | [`0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1`](./contracts/ethereum-1/0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1/) | ⚠️ Unaudited |
| SafeStaking | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1ef20947d0de8f8db3acec9f349b72d75383f8a9`](./contracts/ethereum-1/0x1ef20947d0de8f8db3acec9f349b72d75383f8a9/); ethereum `0xe83f1b5681cd8a7eb132baf2d219331d90d9df03`; ethereum `0xfb399517bcb023751b363c2b4333f59d3a202f3d` | ⚠️ Unaudited |
| ShareStaking | unknown | bsc | n/a | 3 deployments: bsc [`0x66f9d16db828d340858b1fd4859c4030247d4b70`](./contracts/bsc-56/0x66f9d16db828d340858b1fd4859c4030247d4b70/); bsc `0xaf098f9aadad3bd8c9fc17ca16c7148f992aa1b4`; bsc `0xfa7b73009d635b0ab069cbe99c5a5d498f701c76` | ⚠️ Unaudited |
| ShareV2 | unknown | bsc | n/a | 52 deployments: ethereum `0x379e8d9f6a8a045a8654169fabff8bcfec0d3934`; ethereum `0x93ef1ea305d11a9b2a3ebb9bb4fcc34695292e7d`; ethereum `0xd2df8d600f7b32b8e708900646f8898c52158690`; bsc [`0x0818293f0c6c4e752c4927fff881cbad1f3723b7`](./contracts/bsc-56/0x0818293f0c6c4e752c4927fff881cbad1f3723b7/); bsc `0x0a229c88653ec608f7fd63d50a2c10169864223f`; bsc `0x0e5304160fb7750e89f0a617f5e02bdcf15ac4a4`; bsc `0x1094ee7227b03ccb47113309ee51f327bbd6f175`; bsc `0x1424cac841de6540a0df0ed102be0c18c40a5bd3`; bsc `0x1d56ee9c14734da0a6ff3eb2a9b7b2669a387e2b`; bsc `0x20d269c5bf15b6679d832ed05734e30a7657ddf3`; bsc `0x21944a92fb925c811d0543b7b23cffb4b4385ff1`; bsc `0x3f143697aced30dc167a4cfd73a6ce6bc56a4c7a`; bsc `0x40faca191e8c571ffe37c631e78732b49845d52f`; bsc `0x47cc4beda800a7860c1a310eb8d8c440cad74759`; bsc `0x4c1e90a25d2782080114a1a58f78d91429e222b2`; bsc `0x53ef5c1b632e483e659a07de6e72d9295da471fd`; bsc `0x5aa9038e1934b163740b5077b679ccd833c79da8`; bsc `0x5d3c9406fefb2d75f21a24118fa3cf549c59557f`; bsc `0x6369395ab20386b3bf6fefb30e6eb759012fea89`; bsc `0x65067cd304850a06a083c4dbc59a57940db9df6d`; bsc `0x716155ad72558e848eab5cb88d6522a3102f5e21`; bsc `0x81607ff6fb66e089b573f2cdb428de4c7fcdbdde`; bsc `0x89035eb6dc4d3bb504c39e05f6cf25a7c8f68bbc`; bsc `0x9c1829b5d1d8533a4ec1d1b8e62081a34ee82244`; bsc `0xa14424044cd3e78a4f20da2adb25533837fa3547`; bsc `0xa5235d6e6b7684e5c870b797fd3ba35cc7ec4e7b`; bsc `0xa5b75770ffbcac62aac621d57d7ce9f4ea60d7e7`; bsc `0xa8494ca15c6e70b9b27067fd90be614aaaf6389e`; bsc `0xaa107d3cf7035397e2f71b2b588926b01ca125b4`; bsc `0xb87967ea83a8d980f1c4034d8319372e3fbe45d5`; bsc `0xbe7ee1b9abf7cb4e781fca15fdc9e72fadd601e1`; bsc `0xc28fb6da376a442b589a218e9f9bef138e01d76c`; bsc `0xcdd85b349861e20bd35c4de72ccd1034d46390c3`; bsc `0xce2a34da4f20b942038114799ce8b3db0f9d9955`; bsc `0xd4b3c0e0b7ffc5166539e816d187e7f871c7188a`; bsc `0xd4c753a46fb7861138c82588fa9bc5dfd318856e`; bsc `0xd94f01d2fb791882fc5e4d11ca7ffd8192ae5f00`; bsc `0xdbeb5f6667d3a6bf54603687e2d23273990ce0b9`; bsc `0xe94a3eaedca412a92869345492cb95c1b80f4665`; bsc `0xecd4a7410aad70858eb38f710e9fdba49992653a`; bsc `0xf87e3d9c0fbd50eeb82ce55205ad68d71177e77e`; bsc `0xf9cd7acabacaba9e3170106663f18824ca1b9926`; bsc `0xfdc8a37f4286868751ad24af083cc31cbb991286`; bsc `0xff23266e1d30582bb4280d3f01f573a75bb79c7c`; scroll `0x09750800529e7bbcd07d4760989b19061e79165b`; scroll `0x0e6a005790559b60bff5b8c3ea68d2361f92ccaa`; scroll `0x3b97ccc0c8c5e10ac3e7f1594b55b6239a493eea`; scroll `0x6e20e4f0f1a3a6836840001e4195b65d7735d92d`; scroll `0x6f2d7ce6601a07fbfaa7b9c9608ca99d5f35ff4a`; scroll `0x820144d59d20f1838a88cae95c946a9bb6a7fea2`; scroll `0xb5e3d3fd34689c27f3549781b0369b87db105839`; scroll `0xbf4ff74af2f4e1b3820c32a0fc3a47530367112e` | ⚠️ Unaudited |
| SwapBonus | unknown | ethereum | n/a | 28 deployments: ethereum [`0x0df2489117b0e5b72b83c9d263bf609b30322231`](./contracts/ethereum-1/0x0df2489117b0e5b72b83c9d263bf609b30322231/); ethereum `0x321091eabb7db3e0a26494d0b822f24ffbf95308`; ethereum `0xb6f98aa542c3c4aafc1a187a39159bfb25b7c9e4`; bsc `0x125ed6972c9baf701f33a2605cac33a2e5ce9c27`; bsc `0x1a4ba3793e16265af18248ea0127119881f62add`; bsc `0x1b52ba6a757434b6b9c62e0d92e3d0ba1e3aa832`; bsc `0x23fac9e289cc5eeabd763af6d83086274749bc88`; bsc `0x32b67cb26f8fb268c6c4f289e809173f4f6d33ae`; bsc `0x41e80d4bb7f6922fcdee112474ee1e0ffbe65d65`; bsc `0x4871782098ef453226b6bea633280c4533d78bae`; bsc `0x4ae8190fd543167341ddc51682182f5bcb7f4056`; bsc `0x4fca6bab60c2cfd7852781efc18972454752a500`; bsc `0x646b96ee9bbd2cf2858c8a846e7181aa803602c2`; bsc `0x6911a973ab19ac6258e5a1e866cc497bba8a6594`; bsc `0x6bec981b14e5a3872eb35bc19d9672078aa2eb2b`; bsc `0x6e6dfc6cb7d8c3a7d5d03e3179e977aed69978a0`; bsc `0x7813b3ee5fb6e296c73039d0561cec875cfcd0c3`; bsc `0x7c29a6a27d3ebd23d6908d16aad6381377b1fc71`; bsc `0x9797976a17101b447c19bd421fdb9b5d875c234f`; bsc `0xa703768eec79cfd3b442539fbdaafc8cfa723f52`; bsc `0xaa712f33796ae98a884fbbefb78dfbd839692c13`; bsc `0xb48d3cd9b1c34c204ce2e2d9bb7accaa937f0bba`; bsc `0xc219786f83f25ad0dcee8a3bd1077cb729e056d5`; bsc `0xc29d808ead2d9dba0edd04ca0cfee0bd8d90b15f`; bsc `0xc532079ea8f21f81e191cf67373a99268ca5d3f8`; bsc `0xc6549dcff837bbe9a2f4061aed188c91dccccba7`; bsc `0xdfd3b0dbf3e506e8ef4d0ffe2820b5a798f793ed`; bsc `0xe68910beabb617cd40f2ea68a3bf755ae1adf3cb` | ⚠️ Unaudited |
| SwapBonusWrapper | unknown | bsc | n/a | 2 deployments: ethereum `0xc690f967ee9036d6a47f75c1f8ade2bb6bbd4855`; bsc [`0x6983d348b10bf5c581ed682f041edaa3b800a1ca`](./contracts/bsc-56/0x6983d348b10bf5c581ed682f041edaa3b800a1ca/) | ⚠️ Unaudited |
| SwapRouter | adapter | bsc | n/a | 3 deployments: ethereum `0x657498143d67e14d9928bc5ec1608c771e6c3314`; ethereum `0x688de10e3f17eab15ff45c8da4f39df89cb378a3`; bsc [`0x3599ddc1efce801f8657f64127acb07c0b5cadc2`](./contracts/bsc-56/0x3599ddc1efce801f8657f64127acb07c0b5cadc2/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | 2 deployments: ethereum `0x509b82c847f90e9d19297c25965c534ae0562c35`; bsc [`0x4bb3aeb5ba75bc6a44177907b54911b19d1cf8f7`](./contracts/bsc-56/0x4bb3aeb5ba75bc6a44177907b54911b19d1cf8f7/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | n/a | [`0xffd17794bf2e3ba798170f358225763f1af8f5ba`](./contracts/scroll-534352/0xffd17794bf2e3ba798170f358225763f1af8f5ba/) | ⚠️ Unaudited |
| UpgradeTool | unknown | bsc | n/a | 3 deployments: bsc [`0x8347b6f298340954565bc6c8a47d55bb21313aa8`](./contracts/bsc-56/0x8347b6f298340954565bc6c8a47d55bb21313aa8/); bsc `0x8369d4c07a1f853c5d167c9a042fcc918c3705a6`; bsc `0xfd781525e7778cfc84d005cb120cf550e1536b9b` | ⚠️ Unaudited |
| VotingEscrow | unknown | bsc | n/a | 3 deployments: bsc [`0x5cb57f1e5b463b093efac1222e87fa51982b5f23`](./contracts/bsc-56/0x5cb57f1e5b463b093efac1222e87fa51982b5f23/); bsc `0x8fb2a4d801e223a3f76326106b396d3ed25837b4`; bsc `0xc11f14da5e998be1010c06f9d92574c2e88672c1` | ⚠️ Unaudited |
| VotingEscrowHelper | unknown | bsc | n/a | 3 deployments: bsc [`0x718620141c129fce223287a2f6dda1d4aa5b57f8`](./contracts/bsc-56/0x718620141c129fce223287a2f6dda1d4aa5b57f8/); bsc `0x983f6170394d21c3cedb10f04eabdcdf87355066`; bsc `0xf60b5beb3d86a4939558a7ae4197e83801479936` | ⚠️ Unaudited |
| VotingEscrowV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x116aeb23c7912c0cda16cbfc5f406e5b1dbdee9b`](./contracts/ethereum-1/0x116aeb23c7912c0cda16cbfc5f406e5b1dbdee9b/); ethereum `0xb9d0dd8e9d21aaa785ce6f745012d5084bd4daa4` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x229cf058e5103b657cd035b79e2f1a9d107036e9`](./contracts/ethereum-1/0x229cf058e5103b657cd035b79e2f1a9d107036e9/); bsc `0x36f4178a988799c5a316fb4fe57b540d4c3b3dcd` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fadadf8f443a6dc1e091f14ddf8d5046b6cf95e`](./contracts/ethereum-1/0x3fadadf8f443a6dc1e091f14ddf8d5046b6cf95e/); ethereum `0xa0fe80780ac30afdaaa37f4b4428fc409cd8cb7b` | ⚠️ Unaudited |
| VotingEscrowV4 | unknown | bsc | n/a | 2 deployments: bsc [`0x613576abb2fdbc4108a58aab744154cc5a32863e`](./contracts/bsc-56/0x613576abb2fdbc4108a58aab744154cc5a32863e/); bsc `0x95a2bbcd64e2859d40e2ad1b5ba49dc0e1abc6c2` | ⚠️ Unaudited |
| WithdrawalManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x16d0ff163e6430b99c3e23b8eecbf840a029dd88`](./contracts/ethereum-1/0x16d0ff163e6430b99c3e23b8eecbf840a029dd88/); ethereum `0x4ec117002928e5319be38faa16c7f87b0ef3e6d3` | ⚠️ Unaudited |
| WithdrawalManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x901d53bb0362288acbd12113e5b97fbb6c49d7db`](./contracts/ethereum-1/0x901d53bb0362288acbd12113e5b97fbb6c49d7db/); ethereum `0xb0a90429e2bc26209e04330456a69aef5f9ece05`; ethereum `0xfcd9a180a30bf2c0a1f4994ceed6649ea99234ee` | ⚠️ Unaudited |
| WstETHBishopStableSwap | unknown | ethereum | n/a | [`0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5`](./contracts/ethereum-1/0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x17f4d4d859dbc2fac2a5103e4ad5d4d2a871b9d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89d5a6d1b0fef4b745d144db9107c4813b83ccb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9af9ece0bc1f7082f6396494c39c0a32c7f06bf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e9cd4957277bc39ed5aaf21a4d45b174de04f99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8e56fceb946239a71ec13b886abb45824f9291e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe17b1db06bcc3c705634c09aab735129b06b5bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfffa6232db0e278bbc55881e2c3454991a17e54f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d7f76f83e208cd19dd1f609cb40750e40aa25d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1dfd37cc31e09c0d2f38eaf7f12b71f604d2bf89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2142a458704d4e8e8fd93c166438a5c2ebbb58cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2aca3dfdd18c91e3131741468e3e186cbc9d5cf2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f65f53fbadcb5bfba1150bd2bf944783180d66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3634e6728a84ea7ab959953b93f41446f3a306dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41092e225e46898e53b35c147420f758ad004906` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44073262764d7cce3ded8882e637e957dcc7c503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x47a115ccd06fc8c122ade86d03ff510e32326225` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x534b38e2558779e93a0f5f0e7b4fb7205a955d75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fe452832c69b1ac282dc6984d5bf9ebe1120cbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e32a0d408a55c1319a7761688ab0d7c2ec218f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93ac57a2933069196bdf8b772379f2f676a3c43c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x953ffb6eda97fa3e22bc1b869e4fe6beaa6dcaf2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97993cd66e13fb3f4877886cf5974c4bc78f74af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb6689acac60667c4439c448a83a7f96c3d9a677c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb66ecdce9089e6122f3cb17d140f433bb92edcb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb9a8adf44c74ab46d9821805f3d13070af4f959` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67428c43238c18a1a588d5429283ade3d98fe76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff12efb4dd001b3fa41e86f3e2660938bfdc9c35` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Tranchess-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Tranchess-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [skynet.certik.com/projects/tranchess](https://skynet.certik.com/projects/tranchess) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [certik-2021-06-02.pdf](https://github.com/tranchess/contract-core/blob/main/audits/certik-2021-06-02.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 3 | n/a |
| [peckshield-2021-06-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-06-28.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [peckshield-2021-09-10.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-09-10.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 11 | high |
| [peckshield-2021-12-24.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2021-12-24.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [peckshield-2022-05-20.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-05-20.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | 2 | n/a |
| [peckshield-2022-10-30.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2022-10-30.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [peckshield-2023-12-28.pdf](https://github.com/tranchess/contract-core/blob/main/audits/peckshield-2023-12-28.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x5647bed4a4d7544d667aeaabf71b13f1c152529d`](./contracts/bsc-56/0x5647bed4a4d7544d667aeaabf71b13f1c152529d/) | BatchOperationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca`](./contracts/bsc-56/0x78fab7fd7fc80518543af92777dbbb18d7dcb2ca/) | BatchSettleHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd7d8484c835487c2a88c5e653f75e570eecde071`](./contracts/bsc-56/0xd7d8484c835487c2a88c5e653f75e570eecde071/) | BatchUpgradeTool | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37`](./contracts/bsc-56/0x56118e49582a8ffa8e7309c58e9cd8a7e2ddaa37/) | BishopStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01209a232daf2068136d15e76c867c7f7fc21f4e`](./contracts/bsc-56/0x01209a232daf2068136d15e76c867c7f7fc21f4e/) | BishopStableSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3`](./contracts/ethereum-1/0x4eca7fc4cceea6c47a498e60e295d14abbf76fd3/) | Briber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c319ec0def2474108ad5645a8b6fd92f9f35583`](./contracts/bsc-56/0x1c319ec0def2474108ad5645a8b6fd92f9f35583/) | BscAprOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0391ba6f1c59a923f727a6549d27c895fefcab66`](./contracts/bsc-56/0x0391ba6f1c59a923f727a6549d27c895fefcab66/) | BscStakingStrategyV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70`](./contracts/bsc-56/0xbeca6962759c7ae25e900dbe3f898bcf1fb1dd70/) | ChessControllerV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x419d4c1e4b64c7fdebb6ceb729881ff297843f1e`](./contracts/ethereum-1/0x419d4c1e4b64c7fdebb6ceb729881ff297843f1e/) | ChessControllerV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac`](./contracts/ethereum-1/0x58e2dbf7b25f485ae00983671b517c4cebb7a8ac/) | ChessControllerV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a7e898e1fab8639dc3a416fe844662f209de8ed`](./contracts/bsc-56/0x0a7e898e1fab8639dc3a416fe844662f209de8ed/) | ChessControllerV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0519ff24c82c7fb914334ec36a71cdd199855332`](./contracts/bsc-56/0x0519ff24c82c7fb914334ec36a71cdd199855332/) | ChessSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c5f4b16378dfbb71102db10745b79b2dc22b03d`](./contracts/ethereum-1/0x0c5f4b16378dfbb71102db10745b79b2dc22b03d/) | ChessSubSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dad1d42753f2cbab2bb9c3402baa8903583bb47`](./contracts/ethereum-1/0x4dad1d42753f2cbab2bb9c3402baa8903583bb47/) | ChessSubSchedule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9060dac075f6b96e7d753a321652626cec038d86`](./contracts/bsc-56/0x9060dac075f6b96e7d753a321652626cec038d86/) | ConstAprOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64d5af5ee4e2a6e9b7adc04b340723011a25715c`](./contracts/bsc-56/0x64d5af5ee4e2a6e9b7adc04b340723011a25715c/) | ConstPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66cae7a198792089060c7d68e31ca7fcf9274377`](./contracts/bsc-56/0x66cae7a198792089060c7d68e31ca7fcf9274377/) | ControllerBallot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41b598d49ade2dbf870b5987c25975ecec16826f`](./contracts/ethereum-1/0x41b598d49ade2dbf870b5987c25975ecec16826f/) | ControllerBallotV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x352e9a93498c4aa72734a32433bca094f5ab6da8`](./contracts/bsc-56/0x352e9a93498c4aa72734a32433bca094f5ab6da8/) | CrossChainWrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e`](./contracts/ethereum-1/0x50fe5165be08095a1f4cd96877cc54b3cc2ea08e/) | EthStakingStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7`](./contracts/bsc-56/0x04ff932ca53ed6e1f5b4b6e98693bd95b0f647d7/) | ExchangeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1216be0c4328e75ae9adf726141c2254c2dcc1b6`](./contracts/bsc-56/0x1216be0c4328e75ae9adf726141c2254c2dcc1b6/) | ExchangeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3826314c4d7d2d6eee7bfed4302a55b422540e87`](./contracts/bsc-56/0x3826314c4d7d2d6eee7bfed4302a55b422540e87/) | ExchangeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b0c7dd95e9db7edd2ed5adf056bc502eb1aeaf3`](./contracts/bsc-56/0x6b0c7dd95e9db7edd2ed5adf056bc502eb1aeaf3/) | FeeConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d5108377c86f4dcfe473177e0ca555095fda0e0`](./contracts/bsc-56/0x0d5108377c86f4dcfe473177e0ca555095fda0e0/) | FlashSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c18932d6dd86fbea662de6389fae86f5570983c`](./contracts/ethereum-1/0x0c18932d6dd86fbea662de6389fae86f5570983c/) | FlashSwapRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f2217f0e67af3a6571cf4356dd8f6aeb6c60024`](./contracts/bsc-56/0x5f2217f0e67af3a6571cf4356dd8f6aeb6c60024/) | FlashSwapRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9`](./contracts/bsc-56/0x04ab3fbd6b47683b7d3926e38d80c8198cc3ddd9/) | FlashSwapRouterV3Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x629d4562033e432b390d0808b54a82b0c4a0896b`](./contracts/bsc-56/0x629d4562033e432b390d0808b54a82b0c4a0896b/) | FundV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f18cc2b50575a71dd2ebf58793d4e661a7ba0e0`](./contracts/bsc-56/0x1f18cc2b50575a71dd2ebf58793d4e661a7ba0e0/) | FundV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e`](./contracts/bsc-56/0xe5cf958ff94eadb5247fd4d5c649d85dcf828a0e/) | InterestRateBallotV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a`](./contracts/bsc-56/0x00d150c057f5d66107dfdb9d6d97f8b53ebd4d7a/) | LiquidityGauge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | [`0x3c8465c04e7478b11c7b5cee3919781db5e6d464`](./contracts/scroll-534352/0x3c8465c04e7478b11c7b5cee3919781db5e6d464/) | LiquidityGaugeV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x70548df45cd73ea326dedcf2f6f774e165cd52e3`](./contracts/bsc-56/0x70548df45cd73ea326dedcf2f6f774e165cd52e3/) | LiquidityGaugeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x155ded598a186148b8a2f1c7b442f9ceaab0ec37`](./contracts/bsc-56/0x155ded598a186148b8a2f1c7b442f9ceaab0ec37/) | MaturityFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07a2d8c053015b57c2dfc2b7450d521de1bf5559`](./contracts/bsc-56/0x07a2d8c053015b57c2dfc2b7450d521de1bf5559/) | MaturityPrimaryMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2625871323360a04d1d4302a993a2b2d049dc51e`](./contracts/ethereum-1/0x2625871323360a04d1d4302a993a2b2d049dc51e/) | NodeOperatorRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e02a656b5f9de2c44c687787c36a2c4801cc40`](./contracts/ethereum-1/0x10e02a656b5f9de2c44c687787c36a2c4801cc40/) | PrimaryMarketRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01a45d60af80c42aa3199899f37a9867a87eb9ee`](./contracts/bsc-56/0x01a45d60af80c42aa3199899f37a9867a87eb9ee/) | PrimaryMarketRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8be5ab62794a647254e1e62844201efc8477e22`](./contracts/ethereum-1/0xa8be5ab62794a647254e1e62844201efc8477e22/) | PrimaryMarketV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9`](./contracts/bsc-56/0x023748ca9e8658a4b6815ba8fd396b0ffa7d2ea9/) | ProtocolDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25cd496d66708166a06da16ed641dd286ce76815`](./contracts/ethereum-1/0x25cd496d66708166a06da16ed641dd286ce76815/) | ProxyOFTPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773`](./contracts/bsc-56/0xfcf44d5eb5c4a03d03cf5b567c7cde9b66ba5773/) | QueenStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x79e8ea3cf94327ebf1b23fb67c1afdb835dcfe0d`](./contracts/bsc-56/0x79e8ea3cf94327ebf1b23fb67c1afdb835dcfe0d/) | RewardCashier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1`](./contracts/ethereum-1/0x7f08c4f98265712c162975cb8da1cf3f5bf8fac1/) | RewardClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef20947d0de8f8db3acec9f349b72d75383f8a9`](./contracts/ethereum-1/0x1ef20947d0de8f8db3acec9f349b72d75383f8a9/) | SafeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66f9d16db828d340858b1fd4859c4030247d4b70`](./contracts/bsc-56/0x66f9d16db828d340858b1fd4859c4030247d4b70/) | ShareStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0818293f0c6c4e752c4927fff881cbad1f3723b7`](./contracts/bsc-56/0x0818293f0c6c4e752c4927fff881cbad1f3723b7/) | ShareV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0df2489117b0e5b72b83c9d263bf609b30322231`](./contracts/ethereum-1/0x0df2489117b0e5b72b83c9d263bf609b30322231/) | SwapBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6983d348b10bf5c581ed682f041edaa3b800a1ca`](./contracts/bsc-56/0x6983d348b10bf5c581ed682f041edaa3b800a1ca/) | SwapBonusWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3599ddc1efce801f8657f64127acb07c0b5cadc2`](./contracts/bsc-56/0x3599ddc1efce801f8657f64127acb07c0b5cadc2/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8347b6f298340954565bc6c8a47d55bb21313aa8`](./contracts/bsc-56/0x8347b6f298340954565bc6c8a47d55bb21313aa8/) | UpgradeTool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5cb57f1e5b463b093efac1222e87fa51982b5f23`](./contracts/bsc-56/0x5cb57f1e5b463b093efac1222e87fa51982b5f23/) | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x718620141c129fce223287a2f6dda1d4aa5b57f8`](./contracts/bsc-56/0x718620141c129fce223287a2f6dda1d4aa5b57f8/) | VotingEscrowHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x116aeb23c7912c0cda16cbfc5f406e5b1dbdee9b`](./contracts/ethereum-1/0x116aeb23c7912c0cda16cbfc5f406e5b1dbdee9b/) | VotingEscrowV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x229cf058e5103b657cd035b79e2f1a9d107036e9`](./contracts/ethereum-1/0x229cf058e5103b657cd035b79e2f1a9d107036e9/) | VotingEscrowV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fadadf8f443a6dc1e091f14ddf8d5046b6cf95e`](./contracts/ethereum-1/0x3fadadf8f443a6dc1e091f14ddf8d5046b6cf95e/) | VotingEscrowV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x613576abb2fdbc4108a58aab744154cc5a32863e`](./contracts/bsc-56/0x613576abb2fdbc4108a58aab744154cc5a32863e/) | VotingEscrowV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d0ff163e6430b99c3e23b8eecbf840a029dd88`](./contracts/ethereum-1/0x16d0ff163e6430b99c3e23b8eecbf840a029dd88/) | WithdrawalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x901d53bb0362288acbd12113e5b97fbb6c49d7db`](./contracts/ethereum-1/0x901d53bb0362288acbd12113e5b97fbb6c49d7db/) | WithdrawalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5`](./contracts/ethereum-1/0xad06a2dbd34da8f8cf5f85d284a5b93a2057bdb5/) | WstETHBishopStableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 75 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=10, extraction_exact=12

Zero-match audit list:

- [2426] skynet.certik.com/projects/tranchess

Fork inheritance lineage and inherited audits are included when available.
