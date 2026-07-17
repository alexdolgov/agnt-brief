# Agentic Audit Brief: Inverse Finance

## Project Overview

- Project: Inverse Finance (`inverse-finance`)
- Website: [https://www.inverse.finance](https://www.inverse.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:23.703Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, berachain, ethereum, optimism
- Contract surface: 82 unique implementations (217 raw deployments)
- DeFi Llama TVL: $33,224,895.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 153 project-authored contract(s) across 5 chain(s); 10 ERC20 tokens, 26 Chainlink feeds; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 12 common project-authored base contract(s) (arbigasmanager, governable, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 384; live-surface contracts included: 217 (208 live, 9 unknown).
- Excluded by liveness: 167 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/72 (11.1%)
- Deployed-live implementations: 73 of 82 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/73
- Verified + Unaudited implementations: 65
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 82
- Raw deployments: 217
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: 6.9% (Code4rena, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 4 | 5.5% | 2025-11 |
| yAudit | Tier 2 | 3 | 4.1% | 2024-01 |
| Code4rena | Tier 1 | 1 | 1.4% | 2022-10 |
| Nomoi | Tier 2 | 1 | 1.4% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DolaSavings | unknown | ethereum | n/a | [`0xe5f24791e273cb96a1f8e5b67bc2397f0ad9b8b4`](./contracts/ethereum-1/0xe5f24791e273cb96a1f8e5b67bc2397f0ad9b8b4/) | ✅ Audited |
| FiRMSlashingModule | unknown | ethereum | n/a | 8 deployments: ethereum [`0x6d27dd57a7dbf5b27a3fcabd75c916ac765a346c`](./contracts/ethereum-1/0x6d27dd57a7dbf5b27a3fcabd75c916ac765a346c/); ethereum `0x98400130a60cd1e436a0f433100f2de17c658603`; ethereum `0x9c0e166052d69d6f46422525e1f75d4a8f295423`; ethereum `0xa56ed04eb7a51c62f3e4feee15bd5cf0d6efaa4e`; ethereum `0xc61059ee153d4396c0496056465d4a14ae16b8c1`; ethereum `0xc7aec40f225fffb92c271e9eb07f473504b74fad`; ethereum `0xefb3c69d7ed849340f60bb71f1e9c648be4a3914`; ethereum `0xefb4c3d1cad9f9eb0d458c6f89e5072777037f31` | ✅ Audited |
| JDola | unknown | ethereum | n/a | 8 deployments: ethereum [`0x1ce3f5d0c5f84a203167261f11c2e12c3d90fbb8`](./contracts/ethereum-1/0x1ce3f5d0c5f84a203167261f11c2e12c3d90fbb8/); ethereum `0x5bacafbe2788b0ec837eb95f05938daf49224f54`; ethereum `0x5cebb0db9cd7544201e91d17425dfcb919fd91b8`; ethereum `0x633821b8e003344e5223509277f2084ea809a452`; ethereum `0x6607efa88da3a37f9c645a586cfe73931fddb933`; ethereum `0x6f80a22a57c7f0257094ea8d426af3f747defbc7`; ethereum `0xd178f7a559d486ab1056c37630a51682c2c72f81`; ethereum `0xf4307a1354c0463812b3ce0f509c227f5cd1ccfd` | ✅ Audited |
| LinearInterpolationDelayModel | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b1e443ab423c9a7b1b2ea7b3cb7c0be012a4fbf`](./contracts/ethereum-1/0x3b1e443ab423c9a7b1b2ea7b3cb7c0be012a4fbf/); ethereum `0x6aa1051269e53bd22b7776c6cb5c7c55dc04ea5a`; ethereum `0xb1b62e269606a41e4f2e35b93772150889c67fca` | ✅ Audited |
| Market | unknown | ethereum | n/a | 36 deployments: ethereum [`0x0971b1690d101169bfca4715897ad3a9b3c39b26`](./contracts/ethereum-1/0x0971b1690d101169bfca4715897ad3a9b3c39b26/); ethereum `0x0c0bb843fabda441edefb93331cfff8ec92bd168`; ethereum `0x27b6c301fd441f3345d61b7a4245e1f823c3f9c4`; ethereum `0x28684485369f7478f42aaa62660123ab5d573537`; ethereum `0x29fe42f4f71ba5b9a7aae794468e7ca4128a93b8`; ethereum `0x2a256306d8ba899e33b01e495982656884ac77ff`; ethereum `0x2fed508aac87c0e6f0b647fe83164a7aa6eb2fc9`; ethereum `0x3474ad0e3a9775c9f68b415a7a9880b0cab9397a`; ethereum `0x3ac5cebc7a417db619b85660e4f284f5643dfd5e`; ethereum `0x3fd3dabb9f9480621c8a111603d3ba70f17550bc`; ethereum `0x48ba574edf0bc4e2e40b529863aaa6a67c264e7c`; ethereum `0x4a33bafa8a31e4ec9649f65646022cad1957808b`; ethereum `0x4e264618dc015219cd83dbc53b31251d73c2db1a`; ethereum `0x4f5ea72d932f554f08e97cb78dd25f8aae43c08e`; ethereum `0x5bb8f6aacff2971b42f9fe6945d24726a2541cf2`; ethereum `0x607370d051b70f66dd2efb7a6c03ad0c3871dcc5`; ethereum `0x63d27fc9d463ed727676367d3f818999962737e8`; ethereum `0x63df5e23db45a2066508318f172ba45b9cd37035`; ethereum `0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8`; ethereum `0x6a522f3bd3fda15e74180953f203cf55aa6c631e`; ethereum `0x743a502cf0e213f6fee56cd9c6b03de7fa951dcf`; ethereum `0x79ef6d28c41e47a588e2f2ffb4140eb6d952aec4`; ethereum `0x7cd3ab8354289bef52c84c2bf0a54e3608e66b37`; ethereum `0x85fdd73dec62541862b1d135591c0e1b5298dfc8`; ethereum `0x93685185666c8d34ad4c574b3dbf41231bbfb31b`; ethereum `0xb427fc22561f3963b04202f9bb5bcebd76c14a99`; ethereum `0xb516247596ca36bf32876199fbdcad6b3322330b`; ethereum `0xb686f195ecfb7cbdfc16d7d17cf12f500709c867`; ethereum `0xb8bc1e9c0a2d445bc39d2a745f47619e954dd565`; ethereum `0xb907dcc926b5991a149d04cb7c0a4a25dc2d8f9a`; ethereum `0xc0086ff652c67f43f00f0f9c69ef6c33640c8ccf`; ethereum `0xd68d3a44d46dd50bfeba8cca544717b76e7c4b29`; ethereum `0xdc2265cbd15bed67b5f2c0b82e23fce4a07ddf6b`; ethereum `0xe4d47ef77ac2c3fa4019cd169ac1dd9e27cb12e4`; ethereum `0xf85ed61dfd00bcd89ae0a6085b062a261e222db2`; ethereum `0xfea3a862ee4b3f9b6015581d6d2d25af816c54f1` | ✅ Audited |
| sDola | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2142c7c052e3b4a92e7d9f47410d6a7e6ede8f71`](./contracts/ethereum-1/0x2142c7c052e3b4a92e7d9f47410d6a7e6ede8f71/); ethereum `0xb45ad160634c528cc3d2926d9807104fa3157305`; ethereum `0xbbbfc183d57654c268bb2656bae98bfc502b12a1` | ✅ Audited |
| sDolaHelper | periphery | ethereum | n/a | [`0x3b3e4541975b9d754e27a8d68f259089d35fca61`](./contracts/ethereum-1/0x3b3e4541975b9d754e27a8d68f259089d35fca61/) | ✅ Audited |
| WithdrawalEscrow | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1f3068a1ac79d2cba4b692c5191ba1dbe2f25f2c`](./contracts/ethereum-1/0x1f3068a1ac79d2cba4b692c5191ba1dbe2f25f2c/); ethereum `0x3912365cc44309c99743597f9d18c6cb946ab5f0`; ethereum `0x3924a6b55b92529d1f96fa1031e639287351e9b0` | ✅ Audited |

### ⚠️ Verified + Unaudited (65)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ALEV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x39d167fe676efc3be49be874a37349a5d89f9058`](./contracts/ethereum-1/0x39d167fe676efc3be49be874a37349a5d89f9058/); ethereum `0x4df2eaa1658a220fdb415b9966a9ae7c3d16e240`; ethereum `0x63c017cdfc46a90d664d5116b8122fe6bb235a40` | ⚠️ Unaudited |
| Auction | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7cac7f6be1f74d00d874bbacb98b531fa889d613`](./contracts/ethereum-1/0x7cac7f6be1f74d00d874bbacb98b531fa889d613/); ethereum `0x933cbe81313d9dd523df6dc9b899a7af8ba073e3` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | optimism | n/a | 4 deployments: optimism [`0x8404024d8f74ad2d20e82c184816b64d4184a018`](./contracts/optimism-10/0x8404024d8f74ad2d20e82c184816b64d4184a018/); base `0xd84e1b7e1a7a8d49167884855c3985ef4bca45ab`; arbitrum `0xbbc28db61df26b76d5f7d5eed17ed4d6c278460e`; berachain `0x8bbd036d018657e454f679e7c4726f7a8ece2773` | ⚠️ Unaudited |
| BurnTokenPoolFactory | registry | optimism | n/a | 3 deployments: optimism [`0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8`](./contracts/optimism-10/0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8/); base `0x912fa810fc246bc60689a7b537d7344ee0366f69`; arbitrum `0x912fa810fc246bc60689a7b537d7344ee0366f69` | ⚠️ Unaudited |
| CErc20Immutable | token | ethereum | n/a | 6 deployments: ethereum [`0x0bc08f2433965ea88d977d7bfded0917f3a0f60b`](./contracts/ethereum-1/0x0bc08f2433965ea88d977d7bfded0917f3a0f60b/); ethereum `0x17786f3813e6ba35343211bd8fe18ec4de14f28b`; ethereum `0x7e18ab8d87f3430968f0755a623fb35017cb3eca`; ethereum `0xa978d807614c3bfb0f90bc282019b2898c617880`; ethereum `0xd60b06b457bff7fc38ac5e7ece2b5ad16b288326`; ethereum `0xd79bcf0ad38e06bc0be56768939f57278c7c42f7` | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x697b4acaa24430f254224eb794d2a85ba1fa1fb8`](./contracts/ethereum-1/0x697b4acaa24430f254224eb794d2a85ba1fa1fb8/) | ⚠️ Unaudited |
| ClampFeed | unknown | ethereum | n/a | 3 deployments: ethereum [`0x8cf8706451f1d8b3580930fffa4c8669876d132f`](./contracts/ethereum-1/0x8cf8706451f1d8b3580930fffa4c8669876d132f/); ethereum `0x91b79a9e3c5a18f09786fa3a2a228905649971b8`; ethereum `0xbac0c2936e159c7b1828290a1f3007e2445d11a1` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2c0edf1f7dbcdb347ed8ce626d4de2221f1d76a2`](./contracts/ethereum-1/0x2c0edf1f7dbcdb347ed8ce626d4de2221f1d76a2/); ethereum `0x731b65a993c7a4ff10d304d5204afc51033cda4c` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x4dcf7407ae5c07f8681e1659f626e114a7667339`](./contracts/ethereum-1/0x4dcf7407ae5c07f8681e1659f626e114a7667339/) | ⚠️ Unaudited |
| Controller | governance | ethereum | n/a | [`0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2`](./contracts/ethereum-1/0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2/) | ⚠️ Unaudited |
| ConvertibleFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/); ethereum `0x671f13a551af596de9106b24077d090850ab1424` | ⚠️ Unaudited |
| CYFI | unknown | ethereum | n/a | [`0xde2af899040536884e062d3a334f2dd36f34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | ⚠️ Unaudited |
| DbrHelper | periphery | ethereum | n/a | 3 deployments: ethereum [`0x3363ad5780316fd5180bb9f34297b533fb9cb335`](./contracts/ethereum-1/0x3363ad5780316fd5180bb9f34297b533fb9cb335/); ethereum `0x5caede3ad9e7c64ab512a3d774768fd8dc06d717`; ethereum `0xec51e66c1e1bfc85acc3b6847820a3ff0a38364b` | ⚠️ Unaudited |
| DolaBorrowingRights | core_logic | ethereum | n/a | [`0xad038eb671c44b853887a7e32528fab35dc5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | ⚠️ Unaudited |
| DolaPayroll | unknown | ethereum | n/a | [`0x32eddd879b199503c6fc37df95b8920cd415358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | ⚠️ Unaudited |
| ERC20 | token | ethereum | n/a | [`0x865377367054516e17014ccded1e7d814edc9ce4`](./contracts/ethereum-1/0x865377367054516e17014ccded1e7d814edc9ce4/) | ⚠️ Unaudited |
| ERC20Mintable | token | berachain | n/a | 7 deployments: optimism `0x912fa810fc246bc60689a7b537d7344ee0366f69`; optimism `0xfc63c9c8ba44ae89c01265453ed4f427c80cbd4e`; base `0xca78ee4544ec5a33af86f1e786efc7d3652bf005`; base `0xede7aae6c97a757b23fceb4f78349f296ae8dcdb`; arbitrum `0x788c3efc8182393915e216174a03cd81395f8c7a`; arbitrum `0x7a1e123e41458aabab8068bfed6010d8f9480898`; berachain [`0x02eaa69646183c069fc2b64f15923f27b9cf3b03`](./contracts/berachain-80094/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/) | ⚠️ Unaudited |
| ERC4626Feed | unknown | ethereum | n/a | 4 deployments: ethereum [`0x42bc5557b2ab996415bf98d7f83f977b2727dc6c`](./contracts/ethereum-1/0x42bc5557b2ab996415bf98d7f83f977b2727dc6c/); ethereum `0x5221571fb2c1eb20e905110fbad3a274529f58af`; ethereum `0x94eba5d48e8405b153d03e1e9ad6239b51c8715f`; ethereum `0xd398e8beee7dfdc52f066295a3db18bc177048c4` | ⚠️ Unaudited |
| ERC4626Helper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x99e38696ada09433afa79123595701a80a406780`](./contracts/ethereum-1/0x99e38696ada09433afa79123595701a80a406780/); ethereum `0xfbd90607cc42f8ae0e8b0ac94e7ab1631e494abd` | ⚠️ Unaudited |
| EthRepayAllHelper | periphery | ethereum | n/a | [`0xbe0c9650cf8ce5279b990e7a6634c63323adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | ⚠️ Unaudited |
| EthVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x2dcdca085af2e258654e47204e483127e0d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/); ethereum `0x89ec5df87a5186a0f0fa8cb84edd815de6047357` | ⚠️ Unaudited |
| ExchangeRateUpdater | unknown | arbitrum | n/a | 9 deployments: ethereum `0xd5a3416f7863f306ca7cd9b12f067fffd5d57a61`; ethereum `0xd6376e280b76eb83d36f690c360bdd6bfd704089`; optimism `0xca78ee4544ec5a33af86f1e786efc7d3652bf005`; optimism `0xede7aae6c97a757b23fceb4f78349f296ae8dcdb`; base `0x788c3efc8182393915e216174a03cd81395f8c7a`; base `0x7a1e123e41458aabab8068bfed6010d8f9480898`; arbitrum [`0x402f38457800c32c67c5983381a685a4a1d4f8bb`](./contracts/arbitrum-42161/0x402f38457800c32c67c5983381a685a4a1d4f8bb/); arbitrum `0x93685185666c8d34ad4c574b3dbf41231bbfb31b`; berachain `0xde1697a5da5d06904c9755e3fc287d215579daf0` | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83`](./contracts/ethereum-1/0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83/); ethereum `0x6262faa56151ff3412a211c6a777c7b8da2dd87e`; ethereum `0x6832802996e177660ede6095f184ec34d91c39e2`; ethereum `0x6ab52d36a1c29b6a00e0dbf6806728548ff16d66`; ethereum `0x9d556a572145cff26ef00ba00f004791a45419b1` | ⚠️ Unaudited |
| Factory | registry | ethereum | n/a | [`0x6d961c9dcf1ad73566822ba4b087892e3839b849`](./contracts/ethereum-1/0x6d961c9dcf1ad73566822ba4b087892e3839b849/) | ⚠️ Unaudited |
| Fed | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e075e40d01c82b6bf0b0ecdb4eb1d6984357ef7`](./contracts/ethereum-1/0x5e075e40d01c82b6bf0b0ecdb4eb1d6984357ef7/); ethereum `0xe3277f1102c1ca248ad859407ca0cbf128db0664` | ⚠️ Unaudited |
| FeedSwitch | unknown | ethereum | n/a | [`0x3e20dee27979a44eb4fd1dafc539f61515322561`](./contracts/ethereum-1/0x3e20dee27979a44eb4fd1dafc539f61515322561/) | ⚠️ Unaudited |
| FeedSwitchV2 | unknown | ethereum | n/a | [`0x3326a10a83b77faae29aedbb8aaeb18e5872624d`](./contracts/ethereum-1/0x3326a10a83b77faae29aedbb8aaeb18e5872624d/) | ⚠️ Unaudited |
| FixedPriceFeed | operational_periphery | ethereum | n/a | [`0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4`](./contracts/ethereum-1/0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4/) | ⚠️ Unaudited |
| FixedRateIRM | unknown | ethereum | n/a | [`0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | ⚠️ Unaudited |
| FoundationFunder | unknown | ethereum | n/a | [`0xadd84d9312ed1961ce80a1ceb17446737f480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 4 deployments: ethereum [`0x4b6c63e6a94ef26e2df60b89372db2d8e211f1b7`](./contracts/ethereum-1/0x4b6c63e6a94ef26e2df60b89372db2d8e211f1b7/); ethereum `0x8f97cca30dbe80e7a8b462f1dd1a51c32accdfc8`; ethereum `0x943dbdc995add25a1728a482322f9b3c575b16fb`; ethereum `0xe3ed95e130ad9e15643f5a5f232a3dae980784cd` | ⚠️ Unaudited |
| GovernanceProxy | unknown | berachain | n/a | 7 deployments: optimism `0x43d3942f46c8dc6e9adc8e0678e3ca073bae1e86`; optimism `0xaf956837af704d825c1fcbe2651d5c3c37ad5289`; base `0x1c064265e053d23d120c518fdbb542e6537f82d1`; base `0xc415ff1574a106e238bc29693457af5d224ec27c`; arbitrum `0x607bcd974bb69c78ecdbf0b68748b791bba24d94`; arbitrum `0xc761ebd4e2bd6cc171cbfb29e81bc9819e7f2a16`; berachain [`0x1992af61fbf8ee38741bcc57d636caa22a1a7702`](./contracts/berachain-80094/0x1992af61fbf8ee38741bcc57d636caa22a1a7702/) | ⚠️ Unaudited |
| GovernanceSender | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4e521fe7a9084067096d45a312b8feee39d5f1f3`](./contracts/ethereum-1/0x4e521fe7a9084067096d45a312b8feee39d5f1f3/); ethereum `0x8a0cecee2b16fc386942d3bf650e163e7600338d`; ethereum `0xaea8ae87a34a0faaea0e6bed9f4627f576b524fa` | ⚠️ Unaudited |
| GovernorMills | governance | ethereum | n/a | [`0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | ⚠️ Unaudited |
| Guardian | governance | ethereum | n/a | [`0x941c2699ec7e55a50bde030d8e1e70649839259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | ⚠️ Unaudited |
| Helper | periphery | ethereum | n/a | 9 deployments: ethereum [`0x0539638ba429c87ae2e8f7951e105df372a1e3bf`](./contracts/ethereum-1/0x0539638ba429c87ae2e8f7951e105df372a1e3bf/); ethereum `0x088d351e4ebe045c08bcdfb60234aae524776536`; ethereum `0x23de4f9a07bcb0141d6b04d074236c9069a588c5`; ethereum `0x658890f633b6892c1ba13247502791ad6da1c266`; ethereum `0x9229331500bb1773bf305cd05641ef9cea2e6bf6`; ethereum `0x93c0610b258e42c43544e74cfc1efec8c1f5459b`; ethereum `0xc7d5e6fa4d5b4b4a82b14a256008dafaf5232adb`; ethereum `0xd9ef7bee98a920e7727075f2fe770342089fc677`; ethereum `0xe0db3f30c96e272c5ef7dfe3d30272bd2ae3d3cf` | ⚠️ Unaudited |
| INV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/); ethereum `0x8805c8a08022a41fef736ea3af56dfdff282a9cb` | ⚠️ Unaudited |
| JrDolaDOLAFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0x315291397aa6dba866d5b5f695196864e89779c8`](./contracts/ethereum-1/0x315291397aa6dba866d5b5f695196864e89779c8/); ethereum `0x41939fd313f2f0880f6b5675f885b6b86cd6250b` | ⚠️ Unaudited |
| JrDolaUSDFeed | unknown | ethereum | n/a | 2 deployments: ethereum [`0x531899352531ea0ea7a74b60965b939c1e113795`](./contracts/ethereum-1/0x531899352531ea0ea7a74b60965b939c1e113795/); ethereum `0x9a4c95768749b4660b2614e1c6dc44ee3db593aa` | ⚠️ Unaudited |
| Lens | periphery | ethereum | n/a | 5 deployments: ethereum [`0x5336183353ca175cc1ed3e067c8f057683bf21a9`](./contracts/ethereum-1/0x5336183353ca175cc1ed3e067c8f057683bf21a9/); ethereum `0x8aab59675e123ceefe5e05b0bc1be8fe6101e60d`; ethereum `0x941a224090dc7890bcbc89adfd045d45e95e7fb7`; ethereum `0x9fb6d67bc0d112c428d7405a10f0a0029b478238`; ethereum `0xedb597c9715c648e4cf546464d365d5923d7f6c8` | ⚠️ Unaudited |
| LockedTokenPoolFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0xa251e6da77ded91a5990c12cacf117aec5481519`](./contracts/ethereum-1/0xa251e6da77ded91a5990c12cacf117aec5481519/); ethereum `0xd9f926a41e1f70004635c4a5d6a6f47c6b7a3974`; arbitrum `0xede7aae6c97a757b23fceb4f78349f296ae8dcdb` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | n/a | [`0x05eee76f456c51be0459ec1c0a78bf177b2c877c`](./contracts/ethereum-1/0x05eee76f456c51be0459ec1c0a78bf177b2c877c/) | ⚠️ Unaudited |
| MarketFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829`](./contracts/ethereum-1/0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829/); ethereum `0x85cc595086eca0ef79f2c4887b42d28667821575` | ⚠️ Unaudited |
| Metadata | unknown | ethereum | n/a | [`0x2afb125bb848049b54d0903a1fd365e7518f581a`](./contracts/ethereum-1/0x2afb125bb848049b54d0903a1fd365e7518f581a/) | ⚠️ Unaudited |
| Migration | operational_periphery | ethereum | n/a | [`0x043646a09fa89a1d8f48788008e70299bb269855`](./contracts/ethereum-1/0x043646a09fa89a1d8f48788008e70299bb269855/) | ⚠️ Unaudited |
| NavBeforeMaturityFeed | unknown | ethereum | n/a | [`0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9`](./contracts/ethereum-1/0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9/) | ⚠️ Unaudited |
| NormalizedPriceFeed | operational_periphery | ethereum | n/a | [`0x4a618c4ab1053739816cbbfc89f6c78c8746e40f`](./contracts/ethereum-1/0x4a618c4ab1053739816cbbfc89f6c78c8746e40f/) | ⚠️ Unaudited |
| Payroll | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/); ethereum `0xabfbf345dd103993c2524d9c5f3260845e372f2f` | ⚠️ Unaudited |
| PriceFeedNoStale | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xe928f79d6c7a315ad0a49254015ab8d64dde2f61`](./contracts/ethereum-1/0xe928f79d6c7a315ad0a49254015ab8d64dde2f61/); ethereum `0xea1dc98bf2308f31f3d26d40b31d4bec2d2cd61f` | ⚠️ Unaudited |
| PSM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d02f2841afa3cc20435a8c804c24deac5f30dfa`](./contracts/ethereum-1/0x1d02f2841afa3cc20435a8c804c24deac5f30dfa/); ethereum `0x4dfd662622d766304cb539e66f893c4defa19398` | ⚠️ Unaudited |
| PSMFed | unknown | ethereum | n/a | [`0x400510611bcbf9171f0e548f1c3dca7159e60d28`](./contracts/ethereum-1/0x400510611bcbf9171f0e548f1c3dca7159e60d28/) | ⚠️ Unaudited |
| PTUSDeFeedSwitchFactory | registry | ethereum | n/a | [`0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7`](./contracts/ethereum-1/0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7/) | ⚠️ Unaudited |
| ReceiptTokenHelper | unknown | ethereum | n/a | [`0x5554ea84a0cba7eb1ff91db9d9ea16e44cc087b2`](./contracts/ethereum-1/0x5554ea84a0cba7eb1ff91db9d9ea16e44cc087b2/) | ⚠️ Unaudited |
| RepayRewardEscrow | operational_periphery | ethereum | n/a | [`0x21f9049121f81ad1959938dc2e1c202412ac6766`](./contracts/ethereum-1/0x21f9049121f81ad1959938dc2e1c202412ac6766/) | ⚠️ Unaudited |
| sINV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x08d23468a467d2bb86fae0e32f247a26c7e2e994`](./contracts/ethereum-1/0x08d23468a467d2bb86fae0e32f247a26c7e2e994/); ethereum `0x857b87171c99c234ac7dcd6a96859e78b1d1a625` | ⚠️ Unaudited |
| Stabilizer | unknown | ethereum | n/a | [`0x7ec0d931affba01b77711c2cd07c76b970795cdd`](./contracts/ethereum-1/0x7ec0d931affba01b77711c2cd07c76b970795cdd/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4581958737c58a632621c82095664de7f4f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/); ethereum `0x5c1245f9db3f8f7fe1208cb82325ea88fc11fe89`; ethereum `0xa88948217f21175337226d94f1a47b7a01eed197` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0x96ad308cb4479fd2558d40a4abf420565fa80356`](./contracts/ethereum-1/0x96ad308cb4479fd2558d40a4abf420565fa80356/) | ⚠️ Unaudited |
| SwitchFeed | unknown | ethereum | n/a | [`0xeca2f329a011a4d464f8ef97e493974964911ed0`](./contracts/ethereum-1/0xeca2f329a011a4d464f8ef97e493974964911ed0/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/); ethereum `0xc8f2e91dc9d198eded1b2778f6f2a7fd5bbeac34` | ⚠️ Unaudited |
| VaultExchangeRateProvider | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x0ce2b4fda533e101d7bd84dcd6455ab129025831`](./contracts/ethereum-1/0x0ce2b4fda533e101d7bd84dcd6455ab129025831/); ethereum `0x9063007b3d024fb24c31ea9b6c29ac6cd41c707f` | ⚠️ Unaudited |
| VaultFed | core_logic | ethereum | n/a | [`0xe082eb109fad53ea8db9827ce6b8ef74882734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | ⚠️ Unaudited |
| VaultHelper | unknown | ethereum | n/a | [`0xe0bd59551661ff55fbb581fdf3abc8a5826a0957`](./contracts/ethereum-1/0xe0bd59551661ff55fbb581fdf3abc8a5826a0957/) | ⚠️ Unaudited |
| XINV | unknown | ethereum | n/a | [`0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | ⚠️ Unaudited |
| YVYCRVHelper | unknown | ethereum | n/a | [`0xe61d1c71a2311100670932c79b7316e9a568e401`](./contracts/ethereum-1/0xe61d1c71a2311100670932c79b7316e9a568e401/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x041c3a97843b2b5ea59fc02e4c20dd7bcd89f38a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15ff92a065995668d957325e872b5675e7f80a86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bec2fbc1a0c7e66ae0089450c0b3cc2813efcfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b09061ca23a820fb629041008ee99b4180918f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x780568f55941c12eaa86a79607855f349c48c9f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a01fe4771f0b41e5a0f901baaad8f381c0aabcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac37e688a2d40df9b69723b7b867812dc34de5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6479a77ecbd54893590d544c26eab6647e2a259` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xded891ac882394ce9ca794a2ebb576fb40875875` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [junior-sherlock-contest.pdf](https://www.inverse.finance/audits/junior-sherlock-contest.pdf) | Sherlock | Contest | 2025-11 | fresh | Direct | contract_name | 4 | n/a |
| [junior-sherlock-audit.pdf](https://www.inverse.finance/audits/junior-sherlock-audit.pdf) | Sherlock | Contest | 2025-10 | fresh | Direct | contract_name | 4 | n/a |
| [sDOLA-yAudit.pdf](https://www.inverse.finance/audits/sDOLA-yAudit.pdf) | yAudit | Audit | 2024-01 | stale | Direct | contract_name | 3 | n/a |
| [firm-nomoi.pdf](https://www.inverse.finance/audits/firm-nomoi.pdf) | Nomoi | Audit | 2023-05 | stale | Direct | contract_name | 1 | n/a |
| [code4rena.com/reports/2022-10-inverse](https://code4rena.com/reports/2022-10-inverse) | Code4rena | Contest | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [audits.sherlock.xyz/bug-bounties/233](https://audits.sherlock.xyz/bug-bounties/233) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view](https://drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x39d167fe676efc3be49be874a37349a5d89f9058`](./contracts/ethereum-1/0x39d167fe676efc3be49be874a37349a5d89f9058/) | ALEV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cac7f6be1f74d00d874bbacb98b531fa889d613`](./contracts/ethereum-1/0x7cac7f6be1f74d00d874bbacb98b531fa889d613/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8404024d8f74ad2d20e82c184816b64d4184a018`](./contracts/optimism-10/0x8404024d8f74ad2d20e82c184816b64d4184a018/) | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8`](./contracts/optimism-10/0x63fad99705a255fe2d500e498dbb3a9ae5aa1ee8/) | BurnTokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bc08f2433965ea88d977d7bfded0917f3a0f60b`](./contracts/ethereum-1/0x0bc08f2433965ea88d977d7bfded0917f3a0f60b/) | CErc20Immutable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x697b4acaa24430f254224eb794d2a85ba1fa1fb8`](./contracts/ethereum-1/0x697b4acaa24430f254224eb794d2a85ba1fa1fb8/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cf8706451f1d8b3580930fffa4c8669876d132f`](./contracts/ethereum-1/0x8cf8706451f1d8b3580930fffa4c8669876d132f/) | ClampFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c0edf1f7dbcdb347ed8ce626d4de2221f1d76a2`](./contracts/ethereum-1/0x2c0edf1f7dbcdb347ed8ce626d4de2221f1d76a2/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dcf7407ae5c07f8681e1659f626e114a7667339`](./contracts/ethereum-1/0x4dcf7407ae5c07f8681e1659f626e114a7667339/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2`](./contracts/ethereum-1/0xe3475728673eabaec90a37aa3ae2ced9f0db5ff2/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769`](./contracts/ethereum-1/0x6525fc98f2a43633c2a36d5cca0abbdaa6bd0769/) | ConvertibleFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde2af899040536884e062d3a334f2dd36f34b4a4`](./contracts/ethereum-1/0xde2af899040536884e062d3a334f2dd36f34b4a4/) | CYFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3363ad5780316fd5180bb9f34297b533fb9cb335`](./contracts/ethereum-1/0x3363ad5780316fd5180bb9f34297b533fb9cb335/) | DbrHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad038eb671c44b853887a7e32528fab35dc5d710`](./contracts/ethereum-1/0xad038eb671c44b853887a7e32528fab35dc5d710/) | DolaBorrowingRights | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32eddd879b199503c6fc37df95b8920cd415358f`](./contracts/ethereum-1/0x32eddd879b199503c6fc37df95b8920cd415358f/) | DolaPayroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x865377367054516e17014ccded1e7d814edc9ce4`](./contracts/ethereum-1/0x865377367054516e17014ccded1e7d814edc9ce4/) | ERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x02eaa69646183c069fc2b64f15923f27b9cf3b03`](./contracts/berachain-80094/0x02eaa69646183c069fc2b64f15923f27b9cf3b03/) | ERC20Mintable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42bc5557b2ab996415bf98d7f83f977b2727dc6c`](./contracts/ethereum-1/0x42bc5557b2ab996415bf98d7f83f977b2727dc6c/) | ERC4626Feed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99e38696ada09433afa79123595701a80a406780`](./contracts/ethereum-1/0x99e38696ada09433afa79123595701a80a406780/) | ERC4626Helper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe0c9650cf8ce5279b990e7a6634c63323adfeae`](./contracts/ethereum-1/0xbe0c9650cf8ce5279b990e7a6634c63323adfeae/) | EthRepayAllHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dcdca085af2e258654e47204e483127e0d8b277`](./contracts/ethereum-1/0x2dcdca085af2e258654e47204e483127e0d8b277/) | EthVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x402f38457800c32c67c5983381a685a4a1d4f8bb`](./contracts/arbitrum-42161/0x402f38457800c32c67c5983381a685a4a1d4f8bb/) | ExchangeRateUpdater | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83`](./contracts/ethereum-1/0x2c13d0f087c42644fcdeeb0f4d0a272c50618d83/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d961c9dcf1ad73566822ba4b087892e3839b849`](./contracts/ethereum-1/0x6d961c9dcf1ad73566822ba4b087892e3839b849/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e075e40d01c82b6bf0b0ecdb4eb1d6984357ef7`](./contracts/ethereum-1/0x5e075e40d01c82b6bf0b0ecdb4eb1d6984357ef7/) | Fed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e20dee27979a44eb4fd1dafc539f61515322561`](./contracts/ethereum-1/0x3e20dee27979a44eb4fd1dafc539f61515322561/) | FeedSwitch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3326a10a83b77faae29aedbb8aaeb18e5872624d`](./contracts/ethereum-1/0x3326a10a83b77faae29aedbb8aaeb18e5872624d/) | FeedSwitchV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4`](./contracts/ethereum-1/0x803a7114d7701e3e6d6f86edf5fbf73b1266e7f4/) | FixedPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7`](./contracts/ethereum-1/0xd3d6ddb266dc9db2b71b095840c3b98e17e6f1a7/) | FixedRateIRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xadd84d9312ed1961ce80a1ceb17446737f480993`](./contracts/ethereum-1/0xadd84d9312ed1961ce80a1ceb17446737f480993/) | FoundationFunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1992af61fbf8ee38741bcc57d636caa22a1a7702`](./contracts/berachain-80094/0x1992af61fbf8ee38741bcc57d636caa22a1a7702/) | GovernanceProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e521fe7a9084067096d45a312b8feee39d5f1f3`](./contracts/ethereum-1/0x4e521fe7a9084067096d45a312b8feee39d5f1f3/) | GovernanceSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6`](./contracts/ethereum-1/0xbeccb6bb0aa4ab551966a7e4b97cec74bb359bf6/) | GovernorMills | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x941c2699ec7e55a50bde030d8e1e70649839259d`](./contracts/ethereum-1/0x941c2699ec7e55a50bde030d8e1e70649839259d/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0539638ba429c87ae2e8f7951e105df372a1e3bf`](./contracts/ethereum-1/0x0539638ba429c87ae2e8f7951e105df372a1e3bf/) | Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68`](./contracts/ethereum-1/0x41d5d79431a913c4ae7d69a668ecdfe5ff9dfb68/) | INV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x315291397aa6dba866d5b5f695196864e89779c8`](./contracts/ethereum-1/0x315291397aa6dba866d5b5f695196864e89779c8/) | JrDolaDOLAFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x531899352531ea0ea7a74b60965b939c1e113795`](./contracts/ethereum-1/0x531899352531ea0ea7a74b60965b939c1e113795/) | JrDolaUSDFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5336183353ca175cc1ed3e067c8f057683bf21a9`](./contracts/ethereum-1/0x5336183353ca175cc1ed3e067c8f057683bf21a9/) | Lens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa251e6da77ded91a5990c12cacf117aec5481519`](./contracts/ethereum-1/0xa251e6da77ded91a5990c12cacf117aec5481519/) | LockedTokenPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05eee76f456c51be0459ec1c0a78bf177b2c877c`](./contracts/ethereum-1/0x05eee76f456c51be0459ec1c0a78bf177b2c877c/) | LockReleaseTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829`](./contracts/ethereum-1/0x0c8fd2764e3a3a98d115e3cf98a27eaaeabd6829/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2afb125bb848049b54d0903a1fd365e7518f581a`](./contracts/ethereum-1/0x2afb125bb848049b54d0903a1fd365e7518f581a/) | Metadata | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x043646a09fa89a1d8f48788008e70299bb269855`](./contracts/ethereum-1/0x043646a09fa89a1d8f48788008e70299bb269855/) | Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9`](./contracts/ethereum-1/0x9ce70fd21aa587a5016e9cae57a2382777d7c1d9/) | NavBeforeMaturityFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a618c4ab1053739816cbbfc89f6c78c8746e40f`](./contracts/ethereum-1/0x4a618c4ab1053739816cbbfc89f6c78c8746e40f/) | NormalizedPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e`](./contracts/ethereum-1/0x4e802cedf01f9c83d5dba3caf7e7b70deb4e560e/) | Payroll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe928f79d6c7a315ad0a49254015ab8d64dde2f61`](./contracts/ethereum-1/0xe928f79d6c7a315ad0a49254015ab8d64dde2f61/) | PriceFeedNoStale | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d02f2841afa3cc20435a8c804c24deac5f30dfa`](./contracts/ethereum-1/0x1d02f2841afa3cc20435a8c804c24deac5f30dfa/) | PSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x400510611bcbf9171f0e548f1c3dca7159e60d28`](./contracts/ethereum-1/0x400510611bcbf9171f0e548f1c3dca7159e60d28/) | PSMFed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7`](./contracts/ethereum-1/0xc1a266d46e107e08863890b1b8dccc3ce5ea16e7/) | PTUSDeFeedSwitchFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5554ea84a0cba7eb1ff91db9d9ea16e44cc087b2`](./contracts/ethereum-1/0x5554ea84a0cba7eb1ff91db9d9ea16e44cc087b2/) | ReceiptTokenHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f9049121f81ad1959938dc2e1c202412ac6766`](./contracts/ethereum-1/0x21f9049121f81ad1959938dc2e1c202412ac6766/) | RepayRewardEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08d23468a467d2bb86fae0e32f247a26c7e2e994`](./contracts/ethereum-1/0x08d23468a467d2bb86fae0e32f247a26c7e2e994/) | sINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ec0d931affba01b77711c2cd07c76b970795cdd`](./contracts/ethereum-1/0x7ec0d931affba01b77711c2cd07c76b970795cdd/) | Stabilizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4581958737c58a632621c82095664de7f4f5a9f4`](./contracts/ethereum-1/0x4581958737c58a632621c82095664de7f4f5a9f4/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96ad308cb4479fd2558d40a4abf420565fa80356`](./contracts/ethereum-1/0x96ad308cb4479fd2558d40a4abf420565fa80356/) | StakingRewardsFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeca2f329a011a4d464f8ef97e493974964911ed0`](./contracts/ethereum-1/0xeca2f329a011a4d464f8ef97e493974964911ed0/) | SwitchFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b`](./contracts/ethereum-1/0x41d079ce7282d49bf4888c71b5d9e4a02c371f9b/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ce2b4fda533e101d7bd84dcd6455ab129025831`](./contracts/ethereum-1/0x0ce2b4fda533e101d7bd84dcd6455ab129025831/) | VaultExchangeRateProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe082eb109fad53ea8db9827ce6b8ef74882734fc`](./contracts/ethereum-1/0xe082eb109fad53ea8db9827ce6b8ef74882734fc/) | VaultFed | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe0bd59551661ff55fbb581fdf3abc8a5826a0957`](./contracts/ethereum-1/0xe0bd59551661ff55fbb581fdf3abc8a5826a0957/) | VaultHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b`](./contracts/ethereum-1/0x1637e4e9941d55703a7a5e7807d6ada3f7dcd61b/) | XINV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe61d1c71a2311100670932c79b7316e9a568e401`](./contracts/ethereum-1/0xe61d1c71a2311100670932c79b7316e9a568e401/) | YVYCRVHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 72 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=13

Zero-match audit list:

- [1763] audits.sherlock.xyz/bug-bounties/233
- [1765] drive.google.com/file/d/1LWNG08mib2GcI1WqnMt5IdFoW73QU2F8/view

Fork inheritance lineage and inherited audits are included when available.
