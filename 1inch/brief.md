# Agentic Audit Brief: 1inch

⚠️ Lifecycle status: DECLINING - TVL dropped 22.4% over 90 days

## Project Overview

- Project: 1inch (`1inch`)
- Website: [https://1inch.com](https://1inch.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:52:57.760Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: bsc, ethereum, zksync-era
- Contract surface: 331 unique implementations (526 raw deployments)
- DeFi Llama TVL: $2,274,711.87
- On-chain TVL (included contracts): $16,092,203.53
- TVL by chain: Ethereum $16,092,203.53

## Project Description

DEX Aggregator. Structurally: 543 project-authored contract(s) across 2 chain(s); 37 ERC20 tokens, 7 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 63 common project-authored base contract(s) (accesscontrolupgradeable, contextupgradeable, erc165upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 964; live-surface contracts included: 509 (234 live, 275 unknown).
- Excluded by liveness: 455 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 18/49 (36.7%)
- Deployed-live implementations: 56 of 331 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 18/56
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 275
- Unique implementations: 331
- Raw deployments: 526
- Audits discovered: 150 (150 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 84
- ASD (verified + unaudited TVL): $16,092,203.53
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 8 fresh, 24 aging, 111 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 20.4% (ChainSecurity, MixBytes, OpenZeppelin, Sherlock)
- Note: This protocol is classified as [declining]. ASD of $16,092,203.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 16 | 28.6% | 2025-09 |
| Decurity | Tier 2 | 6 | 10.7% | 2025-08 |
| MixBytes | Tier 1 | 6 | 10.7% | 2022-11 |
| ABDK | Tier 2 | 4 | 7.1% | 2023-02 |
| OpenZeppelin | Tier 1 | 4 | 7.1% | 2025-08 |
| CertiK | Tier 2 | 3 | 5.4% | 2021-11 |
| PeckShield | Tier 2 | 3 | 5.4% | 2023-12 |
| Sherlock | Tier 1 | 2 | 3.6% | 2025-08 |
| Ackee Blockchain | Tier 2 | 1 | 1.8% | 2021-08 |
| ChainSecurity | Tier 1 | 1 | 1.8% | 2023-01 |
| Pashov Audit Group | Tier 2 | 1 | 1.8% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregationRouterV6 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x111111125421ca6dc452d289314280a0f8842a65`](./contracts/ethereum-1/0x111111125421ca6dc452d289314280a0f8842a65/); bsc [`0x111111125421ca6dc452d289314280a0f8842a65`](./contracts/bsc-56/0x111111125421ca6dc452d289314280a0f8842a65/) | ✅ Audited |
| EscrowFactory | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a`](./contracts/ethereum-1/0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a/); bsc [`0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a`](./contracts/bsc-56/0xa7bcb4eac8964306f9e3764f67db6a7af6ddf99a/) | ✅ Audited |
| FarmingRewards | unknown | ethereum | n/a | 44 deployments: ethereum [`0x0da1b305d7101359434d71eceaab71e1ff5437e6`](./contracts/ethereum-1/0x0da1b305d7101359434d71eceaab71e1ff5437e6/); ethereum `0x1055f60bbf27d233c4e34d2e03e35567427415fa`; ethereum `0x13927a60c7bf4d3d00e3c1593e0ec713e35d2106`; ethereum `0x18d410f651289bb978fc32f90d2d7e608f4f4560`; ethereum `0x2cb9e71a5cf989008ba93dad8edb988ec1b4182f`; ethereum `0x2ec255797fef7669fa243509b7a599121148ffba`; ethereum `0x2ede375d73d81dbd19ef58a75ba359dd28d25de8`; ethereum `0x302a6eda4e2b2c563a80cc17bd80a1251b986677`; ethereum `0x322e22cc258cba8b1d40348cb375bedddd3c2d4c`; ethereum `0x3eb586541287e57c4d2661c0d28bcbddfe2b640d`; ethereum `0x48371588e964f1e8939127af68622e32268640fa`; ethereum `0x4dab1ba9609c1546a0a69a76f00ed935b0b9c45e`; ethereum `0x598032ba8e7acb625ea6854b4696e25afa2ec9f0`; ethereum `0x73f5e5260423a2742d9f8ac49dea6cb5eaec465e`; ethereum `0x7cb203834ce6792756541d722d94296f4c1ca356`; ethereum `0x7ded1b278d244f707214759c45c1540834890e95`; ethereum `0x8acdb3bcc5101b1ba8a5070f003a77a2da376fe8`; ethereum `0x8b1af1298f5c0ca8a6b4e66626a4bdae0f7521e5`; ethereum `0x8ba0ef03c26fa2a11bde30db4e87c87408b9761b`; ethereum `0x9070832cf729a5150bb26825c2927e7d343eabd9`; ethereum `0x94bc2a1c732bcad7343b25af48385fe76e08734f`; ethereum `0x950a9414700e8ee8041c1cab5a0c6afddf0e9257`; ethereum `0x98484d4259a70b73af58180521f2eb71a3f00ae6`; ethereum `0xa218543cc21ee9388fa1e509f950fd127ca82155`; ethereum `0xa355b4b904ce09bd1847f4cf133769bc0dfbc51b`; ethereum `0xa83fcea9229c7f1e02acb46abe8d6889259339e8`; ethereum `0xafea5601b0a894451955355e79ad3026515e500d`; ethereum `0xb54fc9c8913f282fca235721095d57d6eded3ce7`; ethereum `0xc1e16013a158d57a60d6aa5bb3108722b0ac6df5`; ethereum `0xc7c42eccac0d4bb790a32bc86519ac362e01d388`; ethereum `0xc84dcdaff87f9b5639db82f434c8ba1c2023f6eb`; ethereum `0xca6e3ebf4ac8c3e84bccdf5cd89aece74d69f2a7`; ethereum `0xd7012cdebf10d5b352c601563aa3a8d1795a3f52`; ethereum `0xd7936052d1e096d48c81ef3918f9fd6384108480`; ethereum `0xe0c70111b6ee26865eadb35311748bfd45a3596e`; ethereum `0xe22f6a5dd9e491dfab49faefdb32d01aaf99703e`; ethereum `0xe49055ac21af33ba5ac59a40d0e10fbfb00d9583`; ethereum `0xe65184b402376703adc27a7d7e0e8d35a264a240`; ethereum `0xeb7dbc5a64d2d083d774595e560b147c5021eacd`; ethereum `0xfbd61b037c325b959c0f6a7e69d8f37770c2c550`; bsc `0x5d0ec1f843c1233d304b96dbde0cab9ec04d71ef`; bsc `0x7731f8df999a9441ae10519617c24568dc82f697`; bsc `0x8b01d28f4fddd89322711d832325f7eb1f122fb2`; bsc `0xcb06df7f0be5b8bb261d294cf87c794eb9da85b1` | ✅ Audited |
| FeeTaker | unknown | ethereum | n/a | [`0x1c30a1aeeafab7f5edb1a09a7a4a0b8bed8ee401`](./contracts/ethereum-1/0x1c30a1aeeafab7f5edb1a09a7a4a0b8bed8ee401/) | ✅ Audited |
| FixedFeeSwap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0115d08f81a7b5f70316e0a85f776c43c5814043`](./contracts/ethereum-1/0x0115d08f81a7b5f70316e0a85f776c43c5814043/); ethereum `0xc61f21d7e40c5024f6f0d8b711b76802a1300637` | ✅ Audited |
| FixedRateSwap | unknown | ethereum | n/a | [`0x92b3842c822810774ac077703a96e194ac9ddcd1`](./contracts/ethereum-1/0x92b3842c822810774ac077703a96e194ac9ddcd1/) | ✅ Audited |
| GovernanceMothership | unknown | ethereum | n/a | [`0xa0446d8804611944f1b527ecd37d7dcbe442caba`](./contracts/ethereum-1/0xa0446d8804611944f1b527ecd37d7dcbe442caba/) | ✅ Audited |
| GovernanceRewards | unknown | ethereum | n/a | [`0x0f85a912448279111694f4ba4f85dc641c54b594`](./contracts/ethereum-1/0x0f85a912448279111694f4ba4f85dc641c54b594/) | ✅ Audited |
| LimitOrderProtocol | unknown | bsc | n/a | 2 deployments: ethereum `0x3ef51736315f52d568d6d2cf289419b9cfffe782`; bsc [`0x0da1b305d7101359434d71eceaab71e1ff5437e6`](./contracts/bsc-56/0x0da1b305d7101359434d71eceaab71e1ff5437e6/) | ✅ Audited |
| MooniswapFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643`](./contracts/ethereum-1/0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643/); ethereum `0xc4a8b7e29e3c8ec560cd4945c1cf3461a85a148d`; ethereum `0xe1b8ff58432916ccfbf65a467b66fa4313dc04d3`; bsc `0xd41b24bba51fac0e4827b6f94c0d6ddeb183cd64` | ✅ Audited |
| OneInch | unknown | ethereum | n/a | 2 deployments: ethereum [`0x111111111117dc0aa78b770fa6a738034120c302`](./contracts/ethereum-1/0x111111111117dc0aa78b770fa6a738034120c302/); bsc [`0x111111111117dc0aa78b770fa6a738034120c302`](./contracts/bsc-56/0x111111111117dc0aa78b770fa6a738034120c302/) | ✅ Audited |
| PowerPod | unknown | ethereum | n/a | 6 deployments: ethereum [`0x806d9073136c8a4a3fd21e0e708a9e17c87129e8`](./contracts/ethereum-1/0x806d9073136c8a4a3fd21e0e708a9e17c87129e8/); ethereum `0x8dd297f5e487f2a6243bf7962303cdd4563d1b9c`; ethereum `0xaccfac2339e16dc80c50d2fa81b5c2b049b4f947`; ethereum `0xad9aebfd9875e27b569c0125c35ee8e4227792e3`; ethereum `0xdaf782667d98d5069ee7ba139932945c4d08fde9`; ethereum `0xeee4b3a0de82e3dbceb0a0060ebcb4c7be448741` | ✅ Audited |
| Settlement | unknown | bsc | n/a | 3 deployments: ethereum `0x2ad5004c60e16e54d5007c80ce329adde5b51ef5`; bsc [`0x1d0ae300eec4093cee4367c00b228d10a5c7ac63`](./contracts/bsc-56/0x1d0ae300eec4093cee4367c00b228d10a5c7ac63/); bsc `0xadc1eb0fb29d2a3bc9aaafbcdec115e03fbe3648` | ✅ Audited |
| St1inch | unknown | ethereum | n/a | 3 deployments: ethereum [`0x03e93bea40b2f7e25a1b3709822744a932342241`](./contracts/ethereum-1/0x03e93bea40b2f7e25a1b3709822744a932342241/); ethereum `0x0fd0c5b70e913f73f0434658394a4804e062bcf1`; ethereum `0x9a0c8ff858d273f57072d714bca7411d717501d7` | ✅ Audited |
| StakingFarmingPod | unknown | ethereum | n/a | [`0x1a87c0f9cca2f0926a155640e8958a8a6b0260be`](./contracts/ethereum-1/0x1a87c0f9cca2f0926a155640e8958a8a6b0260be/) | ✅ Audited |
| StepVesting | operational_periphery | ethereum | n/a | 89 deployments: ethereum [`0x003ea55ef6fb46de28fe05ae695042f103b05f30`](./contracts/ethereum-1/0x003ea55ef6fb46de28fe05ae695042f103b05f30/); ethereum `0x0820e5e3963f7f636f3a59b0cb4c3b48585acd42`; ethereum `0x0a678d071bf7b3edfb808a913e838c33215ff4b0`; ethereum `0x0da1fc783c5db27d325ff9991362ff49e1d139c0`; ethereum `0x0f66df40a7e2313bd19c5435960f6752923b366e`; ethereum `0x116f044f186e3438b79fbd0f543f71230c578ef5`; ethereum `0x1217f22c1ad0e6bbec742a2e7b5207ea251d4cc8`; ethereum `0x1707e0d730176e0639c71a65e0fbae52206ed297`; ethereum `0x177f865fb68593d654e29c8bbbc4d3271b3720ef`; ethereum `0x204165f03974ef4a0389d4a50d8eb2c8a69cbea9`; ethereum `0x218d066ca78e6ccf7165e4624a7863ba1c60c31e`; ethereum `0x24029d808938460ac0c36e1aae56dbd024d5f796`; ethereum `0x24a2626dcb538ae217f6ca0c419feb4779475b27`; ethereum `0x24cb49ce80c65c35c5d07ea76e8b45477957ca5f`; ethereum `0x26a34f65b76374084c0283358c9755a99bfcc2c5`; ethereum `0x2c63587685e5cd21cd382af203ae1798cc70df71`; ethereum `0x2ea4b89d7b6860eadb40f9013d79561b57cfcb21`; ethereum `0x2ff2444b7369f166e8886c4407aac69bfdf72bc7`; ethereum `0x3053c07c5d91947c1e180efd8b53a57e40027b19`; ethereum `0x31d2bc56a009b4635137503f5990c62b1d00607d`; ethereum `0x321c039cda90a337558b4c59b04a0feabfefc386`; ethereum `0x35d668a35d60034004bcb62945fd26db9d391a6b`; ethereum `0x434f5ac26bd617deb2369c7c4e9798711d0a00fa`; ethereum `0x449f039bdddfc5888be8539519ae1dc3f3ceeb96`; ethereum `0x451ab165ff40bf746f3d8b9e15b8fe7cd9ea4775`; ethereum `0x4d8c1ef71d9c809b86a888f4056a6fbaf50c3845`; ethereum `0x4fd984ac0a49da3ae5c4f918325afebe2328c411`; ethereum `0x50980ee96cd26b68bcd327999695fe4c7d88e958`; ethereum `0x56217d2f2beffa8a48a04606f97fee78750598d7`; ethereum `0x572a534d434b5a8ee8ad03fc042871b0d7987980`; ethereum `0x57618123368345e23b156170c735d3cd737cbc4f`; ethereum `0x59d8e269f148e29fea8764d347266583620296d5`; ethereum `0x5dadbd7e577eaf893ec21f1edafa10d7c61e46dd`; ethereum `0x5f30daa9a3e2c4df7ffc2fb3e0cbca2ea9d814d2`; ethereum `0x5fcfcb3609455efcd2afcc449537e5894aa414f6`; ethereum `0x6505892e5312c895e3279180fa83767ebeb75e6a`; ethereum `0x694d505afa244106a260cc1435ddc8d6eb5a52f8`; ethereum `0x69804ff1451f95bcab1ec071e2d85df7c6f33c13`; ethereum `0x6b3c647d46ee4001c813393eda8bb43030419e5d`; ethereum `0x6b4a1d061a2e641a3df57451025276fa486f9920`; ethereum `0x70888b97bc86a7f2b486a2bfbb05089b0de096b9`; ethereum `0x76b8b5ff6e94fcbe3c44984d4e1bdce795665312`; ethereum `0x785cf01f74d953b71640e4c0f47386f85afa317f`; ethereum `0x794c479615bcae649fe3f274e47ba4c0b3c9ab7e`; ethereum `0x798da01cc732a8891471e9d4aa6ccac0f2cf320d`; ethereum `0x7df42864f30d9a2f4576b20f3772c0ce91ab18b8`; ethereum `0x8d877f2ea4c7f3293edb4ed699ae8b245995a07d`; ethereum `0x942488905931f23964a935461ec4cd42d44b0f07`; ethereum `0x94b14cd4f3647c768d648d2b6643ef6591509409`; ethereum `0x960bbe122aec5e597789eb9eeb75c37c53dee8fd`; ethereum `0x99398c24c76f45b67c6133fe21a0f9d5711809d1`; ethereum `0x9cbe105f269ed6367199e62f82690e61d3b2f36b`; ethereum `0xa1ac928de83bc6ff6728d8f1a851e4f492f69b36`; ethereum `0xa8864303060795212fbc3064eef422aa805052eb`; ethereum `0xa8e7fccdf6fbc2059bc85d8fecadde997d293d10`; ethereum `0xb0cdb9d1e0ddb5c645abe80d8e09719cdc9504d4`; ethereum `0xb93217c3caed2e1ca7fe73dd334e5f9666fb5faf`; ethereum `0xc061dff68e575fab0a597f3d38a620950f87513f`; ethereum `0xc0dfbef020e932cd144fae195de605076f2bdf1e`; ethereum `0xc1cb968cd8e716ab8bc986b508b85b3e461322f3`; ethereum `0xc41494c732ba3186401d01c3b27596212ca56908`; ethereum `0xc554d48662e25b301ce23b7d56b21472e89d2f6d`; ethereum `0xc5ea79ce9db7bb9a1d55db273b10d1911b9c9f8d`; ethereum `0xc870650ffcbdec708ce8cb49f5704f0f574ca442`; ethereum `0xc8b514e99ed998771cce2a34f3cc60c0f574d389`; ethereum `0xc8e0bb4556f4f7ed52d6245fe21bb34ca85b8cea`; ethereum `0xcad8f8ca69d8039f576f7b2d6494e455b75755a6`; ethereum `0xcb945a5e02edc1ce937baf0f58663f8e2f2348f7`; ethereum `0xcca41c625fcb98808c4c8637bacd9fe946bc94ef`; ethereum `0xcdb8841d6b6bd02e2c1fb419f4532583a4d5aeb1`; ethereum `0xd24536a0b2523bb2a51bb8557b853150e42d5388`; ethereum `0xd442932f19fc8a91aceb1b5fa77a07000f2bf202`; ethereum `0xd4a6c7d083c1a1e7974594cb1395336f1575b7dd`; ethereum `0xda5cc71f189ececafd52e096bdc5ccdaa42559a4`; ethereum `0xdb662a1e0bb767e0d442ac03259280e6109801d2`; ethereum `0xdc4fa1b5d7ee46dcff5c4e08b5f184440993e592`; ethereum `0xdcdd9132a5006399c1e86d0414e203d6a2f11988`; ethereum `0xddad32fa00d364dfb399ed54a152129cc25df122`; ethereum `0xdeff4cab6319951504071596c19f212c46f734cf`; ethereum `0xe44c9a72bba9cabc5434b5b4665acf7e2e13071c`; ethereum `0xe4cc3511e704246d0cfada64d502568ae2164dd1`; ethereum `0xe523d087f9912afa910b97f24034f45647f7f1f6`; ethereum `0xededb539c22e83a2a9a8804fadfd39d3a0dc52f3`; ethereum `0xeeef4f3b559b550abaef0f3633c75c1427a05413`; ethereum `0xf55f2eb72fa1ca4df999ef7592fb21bc2401bd68`; ethereum `0xf56af2cc501e9529a8eaf926a97eed43dc496c78`; ethereum `0xf808a9e05b0643f3356490c6220506e2a1073f7e`; ethereum `0xf8d4ab4b2d5ae54a0fd2eb3b4eab782fdff5d859`; ethereum `0xffb603417b36ae0d213983449d36db608f2e1e43` | ✅ Audited |
| WethUnwrapper | token | bsc | n/a | [`0x0eee00137d807a461702e9e0640c599de663e7e4`](./contracts/bsc-56/0x0eee00137d807a461702e9e0640c599de663e7e4/) | ✅ Audited |
| WhitelistRegistry | unknown | ethereum | n/a | 7 deployments: ethereum [`0x105bc5c5cdd224f48be9d279dd114f0a3fe53aa7`](./contracts/ethereum-1/0x105bc5c5cdd224f48be9d279dd114f0a3fe53aa7/); ethereum `0x8797c24656bc45954c5c8e46df591812c89efad5`; ethereum `0xa49ecb28cc8ab39659be2bfb6f7b86f0c4461a0b`; ethereum `0xbcf2e529996a436ebaab962740628cfe1e21fbcb`; ethereum `0xcb8308fcb7bc2f84ed1bea2c016991d34de5cc77`; ethereum `0xd6413452198f9c416374084dd40b89a86a5093b0`; ethereum `0xf55684bc536487394b423e70567413fab8e45e26` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MiniMeToken | token | ethereum | n/a | [`0xcd62b1c403fa761baadfc74c525ce2b51780b184`](./contracts/ethereum-1/0xcd62b1c403fa761baadfc74c525ce2b51780b184/) | ⚠️ Unaudited |
| HolyToken | token | ethereum | n/a | [`0x39eae99e685906ff1c11a962a743440d0a1a6e09`](./contracts/ethereum-1/0x39eae99e685906ff1c11a962a743440d0a1a6e09/) | ⚠️ Unaudited |
| HolyPoolV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1e7062f6458d67e74f84c37c189ab3e69eefdb58`](./contracts/ethereum-1/0x1e7062f6458d67e74f84c37c189ab3e69eefdb58/); ethereum `0xaf985437dca19deff89e61f83cd526b272523719` | ⚠️ Unaudited |
| MoverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3fa729b4548becbad4eab6ef18413470e6d5324c`](./contracts/ethereum-1/0x3fa729b4548becbad4eab6ef18413470e6d5324c/); ethereum `0xb05e8de2036ba9eaa4439b3c2243494a162203a5` | ⚠️ Unaudited |
| HolyValorYearnUSDCVaultV2 | core_logic | ethereum | n/a | [`0xfa9ba210f70987477f4d65639ebd194dc1184e61`](./contracts/ethereum-1/0xfa9ba210f70987477f4d65639ebd194dc1184e61/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1fac81af4dde6276e5e3283ff2b0bd9970b8e755`](./contracts/ethereum-1/0x1fac81af4dde6276e5e3283ff2b0bd9970b8e755/); ethereum `0x6ad299b9bd8312f47b132257a95842ba3c1c48b4`; ethereum `0xbb2390d791850d976c87dbbada1d9992c9b123ad` | ⚠️ Unaudited |
| CrosschainWhitelistRegistry | registry | ethereum | n/a | [`0xbe89346fe1ce1367f3d80c8522209a86511b1201`](./contracts/ethereum-1/0xbe89346fe1ce1367f3d80c8522209a86511b1201/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | n/a | [`0xee262adcd9ecc0476452e302cf3c822f634dafaf`](./contracts/ethereum-1/0xee262adcd9ecc0476452e302cf3c822f634dafaf/) | ⚠️ Unaudited |
| DAPFToken | token | ethereum | n/a | [`0xbb9284484cb9a2bc7950a1276edba2f6358ea677`](./contracts/ethereum-1/0xbb9284484cb9a2bc7950a1276edba2f6358ea677/) | ⚠️ Unaudited |
| Dice | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa60184b67a665ede46774b5fee0acdf115080456`](./contracts/ethereum-1/0xa60184b67a665ede46774b5fee0acdf115080456/); ethereum `0xb75acece1f77fe7059cfff8ef76f73b7e999edd2` | ⚠️ Unaudited |
| FarmingVoter | unknown | ethereum | n/a | [`0x11a5504d869409d6e43d6ee18b41c6e7f16b09dc`](./contracts/ethereum-1/0x11a5504d869409d6e43d6ee18b41c6e7f16b09dc/) | ⚠️ Unaudited |
| GovernanceFeeReceiver | unknown | ethereum | n/a | [`0x4dfa40fdaa7694676899f8887a45603922609af4`](./contracts/ethereum-1/0x4dfa40fdaa7694676899f8887a45603922609af4/) | ⚠️ Unaudited |
| HolyHandV7 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1ef7a557cfa8436ee08790e3f2b190b8937fda0e`](./contracts/ethereum-1/0x1ef7a557cfa8436ee08790e3f2b190b8937fda0e/); ethereum `0xd33d88df1c821b82c09ca950314c14d0c4e1e1f3` | ⚠️ Unaudited |
| HolyPassageV4 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3`](./contracts/ethereum-1/0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3/); ethereum `0xc09d9d61aaef986f92058f29ee48136d16bde363` | ⚠️ Unaudited |
| HolyRedeemer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2576c08de9a369491d148f82356c5b1431da361a`](./contracts/ethereum-1/0x2576c08de9a369491d148f82356c5b1431da361a/); ethereum `0x496599b4de503d5c5c11882501af64d04025c6dd` | ⚠️ Unaudited |
| HolyVisorV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c946caa389b7325141c035d71c667d4f9627697`](./contracts/ethereum-1/0x0c946caa389b7325141c035d71c667d4f9627697/); ethereum `0x636356f857f89af15cb67735b68b9b673b5cda6c` | ⚠️ Unaudited |
| HolyWingV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9b986b20243b62628f7b47a2dea602c29eb8ace1`](./contracts/ethereum-1/0x9b986b20243b62628f7b47a2dea602c29eb8ace1/); ethereum `0xd5b3230ea9bf7bad9541f8564fa2fa72b350427b` | ⚠️ Unaudited |
| HumanitarianAidNFT | token | ethereum | n/a | 2 deployments: ethereum [`0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911`](./contracts/ethereum-1/0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911/); ethereum `0xebfb3b9f34307de7a72edda8696c1e14e0f41d8b` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/); ethereum `0xe295ad71242373c37c5fda7b57f26f9ea1088afe` | ⚠️ Unaudited |
| Mooniswap | unknown | ethereum | n/a | [`0x59a0a6d73e6a5224871f45e6d845ce1574063ade`](./contracts/ethereum-1/0x59a0a6d73e6a5224871f45e6d845ce1574063ade/) | ⚠️ Unaudited |
| MooniswapDeployer | unknown | bsc | n/a | 3 deployments: ethereum `0xa31bb36c5164b165f9c36955ea4ccbab42b3b28e`; ethereum `0xcb06df7f0be5b8bb261d294cf87c794eb9da85b1`; bsc [`0x11431a89893025d2a48dca4eddc396f8c8117187`](./contracts/bsc-56/0x11431a89893025d2a48dca4eddc396f8c8117187/) | ⚠️ Unaudited |
| MoverNFT1v2 | token | ethereum | n/a | 2 deployments: ethereum [`0x0769747d4cac06bc2320e0bb1efb31d53fa0aaa1`](./contracts/ethereum-1/0x0769747d4cac06bc2320e0bb1efb31d53fa0aaa1/); ethereum `0xcf55b32955abece275cd67406e1da6815b33da71` | ⚠️ Unaudited |
| MoverNFTSWS | token | ethereum | n/a | 2 deployments: ethereum [`0x129b9083a9f02aed65e31644a8103d5aa2c73701`](./contracts/ethereum-1/0x129b9083a9f02aed65e31644a8103d5aa2c73701/); ethereum `0xc649a0442073d993a1b629449d18c57cd6827534` | ⚠️ Unaudited |
| MoverOlympusNFT | token | ethereum | n/a | 2 deployments: ethereum [`0x2733a766d2d79d26b2d23343db5bf38290f67f22`](./contracts/ethereum-1/0x2733a766d2d79d26b2d23343db5bf38290f67f22/); ethereum `0x76dc7e3e883017741d8dc050debe5fe6deaaa409` | ⚠️ Unaudited |
| MoverUBTStakeNodeV2 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3f1256afbfae473f17f07c17b1ec0c9f0326fb49`](./contracts/ethereum-1/0x3f1256afbfae473f17f07c17b1ec0c9f0326fb49/); ethereum `0x4690d1d12b3f2c60987c6fe4b1b525a0204dad73`; ethereum `0x67686e74e5256652e0ab0a9f5c1e61d11a66cace`; ethereum `0x88e7e1b3ec590512dcd8c8dbc1b8bd4cb15f1ee8`; ethereum `0xb494c12dee7bd77f27ad476f9709e54f1b410450`; ethereum `0xd39f523ee00aef6b75b76fecce36a8c09ee77b88`; ethereum `0xd5f911a64156e5b79239d8ef76baa1c2f1991526` | ⚠️ Unaudited |
| MoverUBTStakePoolV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1f15f293c1cd3d05d58d3edeaf0c72c5a2dfeaff`](./contracts/ethereum-1/0x1f15f293c1cd3d05d58d3edeaf0c72c5a2dfeaff/); ethereum `0x61b3bb68bbd8e6550aa13bee806e7a63d24f183f` | ⚠️ Unaudited |
| MoverValorYearnUSDCv2VaultV2 | core_logic | ethereum | n/a | [`0x541d78076352a884c8358a2ac3f36408b99a18db`](./contracts/ethereum-1/0x541d78076352a884c8358a2ac3f36408b99a18db/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 4 deployments: ethereum [`0x0f7615375e3671de18ca653a5a7f332c50360fff`](./contracts/ethereum-1/0x0f7615375e3671de18ca653a5a7f332c50360fff/); ethereum `0x9d2efa062ab5b3cef05ec569fa5f6d8044c03466`; ethereum `0x9fc17aa5dc312633094fca8bb55638750b87e532`; ethereum `0xca33913c9c553e5c165e0413e0278bf03afa5cce` | ⚠️ Unaudited |
| ReferralFeeReceiver | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1cc61726b11613b37854a1c9ebc9a2092ed91b9d`](./contracts/ethereum-1/0x1cc61726b11613b37854a1c9ebc9a2092ed91b9d/); ethereum `0x2eea44e40930b1984f42078e836c659a12301e40`; ethereum `0x735247fb0a604c0adc6cab38ace16d0dba31295f`; ethereum `0xf5ab9bf279284fb8e3de1c3bf0b0b4a6fb0bb538`; bsc `0x29bc86ad68bb3bd3d54841a8522e0020c1882c22` | ⚠️ Unaudited |
| SeriesNonceManager | governance | ethereum | n/a | [`0x303389f541ff2d620e42832f180a08e767b28e10`](./contracts/ethereum-1/0x303389f541ff2d620e42832f180a08e767b28e10/) | ⚠️ Unaudited |
| SmartTreasuryFragmentPWC | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa8afb8272434f76f9cd0fd483f15c69aaf9a2e68`](./contracts/ethereum-1/0xa8afb8272434f76f9cd0fd483f15c69aaf9a2e68/); ethereum `0xf5d7bd43597ecfe1a3cf812d6589b2b89bde157d` | ⚠️ Unaudited |
| SmartTreasuryV4 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x47795ab886f53719e38780cedf40083aaec28315`](./contracts/ethereum-1/0x47795ab886f53719e38780cedf40083aaec28315/); ethereum `0x94f748bfd1483750a7df01acd993213ab64c960f` | ⚠️ Unaudited |
| St1inchPreview | unknown | ethereum | n/a | 3 deployments: ethereum [`0x069f63ecf6ad9b14d3cdb479b97989501b5a7f83`](./contracts/ethereum-1/0x069f63ecf6ad9b14d3cdb479b97989501b5a7f83/); ethereum `0x45c2a2f06a6b40c13750ab2b75f9d74e628d09a4`; ethereum `0x722e140f1222d404916b8d0a8fd2f6233d446905` | ⚠️ Unaudited |
| TORN | unknown | ethereum | n/a | [`0x77777feddddffc19ff86db637967013e6c6a116c`](./contracts/ethereum-1/0x77777feddddffc19ff86db637967013e6c6a116c/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x0b7438606a13f4e91305b36b7596dda4679689e3`](./contracts/ethereum-1/0x0b7438606a13f4e91305b36b7596dda4679689e3/); ethereum `0x96aa3bd52181b4a540834c63b32b80fd8c3e815a` | ⚠️ Unaudited |
| WhitelistHelper | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1ad2aef39a9036147aee2a8edd5c5092466d3963`](./contracts/ethereum-1/0x1ad2aef39a9036147aee2a8edd5c5092466d3963/); ethereum `0x441619f9325c893623c981578133d00d944a5c54`; ethereum `0x8c3e4353a8860461f948035a2f57c74b9a26a2fa`; ethereum `0xb61c79ab7730860cd89bcd45dfe25c5e4979c96d`; ethereum `0xf6b00079d22dd7fada360d7317625458aaae4a93`; ethereum `0xf779bdde38c39138dcaf1514b8a6b8a6c165642d` | ⚠️ Unaudited |
| Yobitcoin | unknown | ethereum | n/a | [`0x9dcae4a9e65bf7925eb7809142f848d3cf8e96ac`](./contracts/ethereum-1/0x9dcae4a9e65bf7925eb7809142f848d3cf8e96ac/) | ⚠️ Unaudited |
| Zedxion | unknown | ethereum | n/a | [`0xfbc4f3f645c4003a2e4f4e9b51077d2daa9a9341`](./contracts/ethereum-1/0xfbc4f3f645c4003a2e4f4e9b51077d2daa9a9341/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (275)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x02f56bf179e0af6fdb5de68b6692cd195930d265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03d0ab4333329aa9f63c9c1d859b7360bb863151` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0478910ac0bed350984220ea84f4ba29807b40ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x063a5d5676f7b26d04a917596d0de1a8999cc087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x075c42cd233a1c723c0f18f6dd575c8d679fea85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x081d5b92280ebf7deacdffecec6f2d356f47266c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09483fa83804d5618e2fe8a86164a88073c29990` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b3f6d4a5d6835137ccb2c1248f5a7d882c0dbda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bf16c34b38648bb08deacf4dd4b239c44bb33c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f4d9951cc5eaf7ee36df4b8226733189fe29e99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1040adc0e34b63ea837eb0b4ff20ecab3115e936` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1136b25047e142fa3018184793aec68fbb173ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11cb4a28289d8104d70c14d08c5ea6f199c42cd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x129925f72641a84053c148d7efab590cb9d217ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x12e427aafe3bd8dd8543cdd944970d0ae453b678` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x153eff6f64ca509ff051ca6d448eddafa8dd445f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a3c296eae49734bc467f95815f6dea9a3de233` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a57db50085be07ce161fd8d9167f06392a63bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x168d49d9b69f18bffb5dc1e70dd98073d0656d41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18acf236eb40c0d4824fb8f2582ebbecd325ef6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18bcfc93e30db323befa50788cdcb7cb0ab50b1f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19ea2e6f21bdfc894abf09fa179d59f6c0e0797b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d68da0290df4b77a7aafbda6729351dbe4d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ecd10d6e91b8eefa46bf8f131ec4467a42ada97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2057cfb9fd11837d61b294d514c5bd03e5e7189a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2086cc1bc6cfe9e4da52c37845294db631b739f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20d83a454f3e3b0ccda7c173dbb517b23316db4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21c83be47d0e95cee9643c300a8311114119f6ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2207f04c5c3cbed83cac44c53dc0019a8d7ddbf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x220bda5c8994804ac96ebe4df184d25e5c2196d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x228fb0747338f95ef7ec47d21de3d9104c20f112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22c7e7454fa9519810bda46da4c1e96f1425c344` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25af9244ef693050a6ceb652ab0dadd776690756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27239549dd40e1d60f5b80b0c4196923745b1fd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x288931fa76d7b0482f0fd0bca9a50bf0d22b9fef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29142e644343067a98a1c6c25d08df9928df6f81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x298a51689ad25338d5d3639f19e0eefb10b807b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a037bd83d4cccafd4e28f8b16dbbfcd22bded55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b6e7fbdf8739ad39f73909fa4af7dd7abde076e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c26ccdb0f3528ad6dcac4d911aab1030d8f3b74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d96fde7319f28732d042201da15dc4023a59a39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e574811f6b437e9e4be8ef5785040d7494d5f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30dcf96a8a0c742aa1f534fac79e99d320c97901` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3208684f96458c540eb08f6f01b9e9afb2b7d4f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3451b6b219478037a1ac572706627fc2bda1e812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35ea3885bf9cfdd04dd9c6071e7660acd028ab15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39f2bc191252adbe4f27fefb8a8b2be3f69f76bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a78de40ecf0da9b00e921b9a29fa316da564c72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b17056cc4439c61cea41fe1c9f517af75a978f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c3f3cd07c290ec3a4da12633dff415f868c7c19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c96960adbbfc027672589274a025f5ff459fe60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d75b34ea2b6354f824515aed5470519a0b4909b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e430c50ee6296df6ae05c4c72bb97dc1e158e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e7751aedbd6c2b6c69cc3e3c0a887994759f092` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4487cc7516cb34ef3e63db371e9aa50f3ba47caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x449c9d2f1de1f182777bd7102730b4426ae27c48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aaffca65f5f9cbf51abf0f03d11d5f446bdf8e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c5f47cd8f4b2147d32a6f3314f854f9655e8e6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cbb5f562e3dc7c35b54fc2c2719b489b84dc884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d8f74decbc4b16b7455c7ab5cc978968191533c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4da45fd706fc5e18bf1baa8468833890cee32365` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e5622102130f5d64b352e1b59bd0711de6f6881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x521abad8e91e2126e66b018170184da26aeabfc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53222470cdcfb8081c0e3a50fd106f0d69e63f20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54fc51d32bbb9f224ef62e36af71aa003ca3dbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57eaec4e8ff5991be999d4f5ab1bf1d670c87ba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58730ae0faa10d73b0cddb5e7b87c3594f7a20cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58e1566053b7d3e2d0da64d615614d765f913f1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5acc37f1003f8dba4cfcd5ea7873fefb412c3e77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5deb3f3a56441454ee063018d1e2e08ffab0982f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x609262f06dc1967ee0c475991b2030cca4233741` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61120753a1fb2a62cc1cb394056f8d1bf232538c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62c9c2ace3e86eee3016c7e73df70edd8a45ace9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x673e8e3c4042ed70eed45a142fdc484a6dd3c4a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6aa7a8539543210563af6cf575cc5079b194d0c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e97464cc8e6c5dcde21f4b1afe7fbc241d4f127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x702fb610447570f55dbf2e9c9126405611e68d7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7122db0ebe4eb9b434a9f2ffe6760bc03bfbd0e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x720b9bb3ba15dd2c5ed53e3f7a10a2746f5b670e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74f33228ced53754d0e3fe7ba92e46abd5b15763` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76d2999ab762d3d5f27f2f1edab2ce282d9927c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x772418e26ab32833f4b889855b09e31abcb14775` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777c7f705fef3cb159a2231f858bda7b399d2fb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ff2e079f3cb3f903eef225da8edf88e1c51045` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x794e56201852e976dd37f127019752c424ef3103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b539639fd6470ad6b2e0311f86286e55998a7a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c327e1ee66d4cf7f4053387241351fdc95a0c04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c6ce24d013cd4ddf4c193ce318e3d5533a33f42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d8e61e59b68c787e358404998941cbbef272331` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f22fc5dd4e763332c17ef0f8db90c640f20422b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80833e36474c9949e48f7b4943c0408df12e5e70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84ab1dcc1dca3baeac593ad5b81c38b0172c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84d99aa569d93a9ca187d83734c8c4a519c4e9b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8607bcb7bc99159ec3900cd4720d264ff573e186` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d674c4d7beae85496aaa4bf69526529a0f0b17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88e4174a997dce828a0efa2fd35ea06bd087f6eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b1ac2aae1d313a246cb2b741577cfcac8906a51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b4f625bae312cd775d5373f21cd30824b8f7027` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x910b9ba6a775e060a6f8dbee86f536a1e8f26021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92f3f71cef740ed5784874b8c70ff87ecdf33588` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94a68df7e81b90a9007db9db7ffb3e6a2f1e6c1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94dadd1dc3935bc2d6c24bf17fa8ac1205b5e36c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989c41f84cbda8c677d9b83565596787a522a00d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9942e9b206184786cbe84812702d6350edac061d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9943806d7a21a775e44f7557d1b425b1bdf55ced` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99edd1dadf3c960bd26e0d87e0649940b346f33d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ad44ae076e99ea39b892ef280b8bc941762723d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b934b33fef7a899f502bc191e820ae655797ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cea1722a029d4bd73257c6f801e868ca0b8f756` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2e9556885df5ed2b6eea6f7ad43076ba8b00261` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa77c88abcaa770c54a6cfbfd0c586a475537bbc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7cd9837513236493e7dcdbbddf45887963aa308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8418d0d3330659772895bd27dab3f570c698a65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa5ad0433efe8f4355a242433a1fcaf11f3cc222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaffdd36e419e5663c321e823c52c212b62999d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb712e4c7c75302972c0179804b8496caa072ddf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb71cce7e61a98863fea4c5b8cc882be63745bdba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7b2a71f1020906519de942dda52d7308132393a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8a3352ecf932100393dcfec1ec4a045b48aae22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae79cabd1f03ebbc94bb348bbfacccc8c87c8e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd74ecbf489ab700577e669f8eccabbd0dd36e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf683b7aaf9accea6bff8e926e03f6ceb98b525a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc176761d388caf2f56cf03329d82e1e7c48ae09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1cbfc6871b67c128505601242149a7f45a10c76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2c3f838f26aebf12054735f2283ced022c5dd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6f9b19e2e91a8cd3b7ff62aa68e4de8f7cdddbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb13e91f957de7fb5f77a7e933fe04bc464f895d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc0333574bac61e0d891053083465ef68f544d2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcccf7daae841e5a372c2387fa7cebe42c8142c2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd9797e66c41f80b9d91b201d2f10e1bd7a268fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd01ecc7c8fe397d34c7b9a92b2d4fb8611e8516b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0bae9b165467f105fe073054dc2b310a78e2866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1821b0d6dbed74b4f0e916be4f5addb672dc76c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6a5cadeb1627195cbcce41e926ad48f79132ac5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6eedcbfd0808452b5640846efaf06e3dd489495` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7304bf8c422d9b0fda6141f51ccca3e271c187e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7e1c884d82f4cc5fe804297015f347f5f9155e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8f177ecd1bdc958cbd8c9fb5a96f4dc8113c7dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9ac77bcb240961b5e5a8b016ddce022adff162b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda63a326d2c3c09586676a036e79af2e3c524090` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda90ab57fff622ab3398ad753ce2a10c36f548c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdab676631ed9fd84443cce917c7dd6e2054f6c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb38ae75c5f44276803345f7f02e95a0aeef5944` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbe8fdf8b10d24d02459bcc616c2670a44cfb727` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc939842eb670efbfafe0fb395d1778cdd7b8be7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd39714d15d6242919fd8f75717b1a8a87ab0536` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdebf8987a15e0000c16940f1469813dde31289cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdecf04ca46d287b3cb99692ad512e568ba276140` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf660ad74919ce2f294b4c183453f958fa28d1bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0e294ba477c9a08e8fdf4062a232dc90b0054a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe408d8fb81176fb620ef616c3fa5f5f076fd4269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5c375ae041f39ce9301aff84fa6a83ec0b124b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7879476b32f8244889c133e63269d8f22c9507b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe872e6e4db953285d7cfcb2625380f691e510fea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93f1a57aedb6b1b63a155eb9fa684d1ea9786a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea2a75cf4ab697371cbf3a64e2b5558925180fb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec193b3d86657ab0dcce9f33641cb7da6acefb0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee0ea80525bcec175bb4df71c7424ace92910931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3cff1bc1bb041616ab56dd36e6fbdbe4673394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef6fa3307af6ab6ddcc4826c4945041dd5c18d4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf021f084477242fe6835c67234b4345de4db19e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2445e7f77f334c536ce984820f5db5efec38e37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf28b44c48c572a512bfa7d2d79f09c30d0cb38be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2f400c138f9fb900576263af0bc7fcde2b1b8a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf313b370d28760b98a2e935e56be92feb2c4ec04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf37b9a4314a04af86ea59aee358f176c37ae24e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4c0b8d97254e1a0682a6700d06d7d389b5e6049` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4fce3137d8d167fc633cdcaa53d1a44ab60a4b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5903b583a2159c7e5169add5a2d439a822a91b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf62678a4efe16d80c1a3201bcdf3921658f6884f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf62bb7aaa74903f9488add955d8cef3c510a5681` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6784ffe84a774ece91767018d8f9a925b7cbc8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf67b40329aa289856f9cd279aa7e2f3b771e8a59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8439e85df95751e0ef141e6c84d08d8108595a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8a1527325bb62d6d0320eb2312748d590f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9088dbf7dea22f0219afbbedfd49328a73fdbe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc79e93958bd1c25a0ee7d3818fe72d33d529e35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd3dfb524b2da40c8a6d703c62be36b5d8540626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd4875a2cb805ea98c0fae086eb739233f38fcb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff0822c78af03a9e6f8e2cd5dfb4e622369baf5b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05ad60d9a2f1aa30ba0cdbaf1e0a0a145fbea16f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06cc74503b6d1eb6d4d6bc402f48fc07b804105f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0c10ead1244c490e15fc34e38613eb15aa0d84c0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0dd29a6472b4e92e138535e1b9c75ad62711168f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e6b8845f6a316f92efbaf30af21ff9e78f0008f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f85a912448279111694f4ba4f85dc641c54b594` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11523c87494d517a001c2ee620e7a0a00d9e61cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11dee30e710b8d4a8630392781cc3c0046365d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14831f12fccc86c4f3dae41c769593df766e4353` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170d2ed0b2a5d9f450652be814784f964749ffa4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x18101ac1d35230f1a3c005e2abaaeb25cae79e7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1b40183efb4dd766f11bda7a7c3ad8982e998421` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e8ae092651e7b14e4d0f93611267c5be19b8b9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f667d066b72589e0419d3057dde7008f25cfdea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x220b71671b649c03714da9c621285943f3cbcdc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2307979f43c59581682f7e4abc7b09ef51a38378` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2403f84f99a2fb353a36867ad4b0b7909436bbb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25b230b5b39270f79522335fee992719fe086521` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26bbe81e5080403e65234a8765c37e7a052e1279` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dfe49b3bb7ad1fc1fea12eb421bfa60d040329f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ede375d73d81dbd19ef58a75ba359dd28d25de8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3169de0e661d684e0d235f19cf72327173e0be11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x322e22cc258cba8b1d40348cb375bedddd3c2d4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3436fd3d499f353efde05ed748d250263f2b96b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35df9901e79aca6b920abbb53758ffb3de725af8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36d91208a97b89a9807e420d5e9b0c4d833b5251` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3790c9b5a9b9d9aa1c69140a5f01a57c9b868e1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3eb586541287e57c4d2661c0d28bcbddfe2b640d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x403a9472a80b5d94a0b458e3aec5203dcaa5cbd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54431918cec22932fcf97e54769f4e00f646690f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56f9c3982925f3867b1636d4aeb9ca63c9f7b2e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d4e6621cf662cf2dc9e3851df6c52ddc8b83dcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5fdb07873d4e5e04b6886fd54edf7fdc43cbd3e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64768a3a2453f1e8de9e43e92d65fc36e4c9872d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67227938ca5ef479ccd849460dc879789294a9ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6df58bcf86039c78792629d5765966230b52fb9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ecacdf8856454fd71b29871ad86eb25e3964331` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78ff2e079f3cb3f903eef225da8edf88e1c51045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f9e3430880580713b03670046c7e89a0a91403b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x826802a868fc07356b502951b5b3c1cd7cf6b5e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84ab1dcc1dca3baeac593ad5b81c38b0172c9f4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x851de4ae771483bff6790f79ee78a92daf400e76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x864a6a3671ccdc5a98ed3a9ac92d9e7a63e1a453` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x875773784af8135ea0ef43b5a374aad105c5d39e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8789f0caa761a967473908c8829e596a34dc86db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x878fd00f2fbc204048713be5da34cb816ccb438b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x888888888889c00c67689029d7856aac1065ec11` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a75e9a979c24580c71552bbcfd1905bda9dca9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9070832cf729a5150bb26825c2927e7d343eabd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x950a9414700e8ee8041c1cab5a0c6afddf0e9257` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98484d4259a70b73af58180521f2eb71a3f00ae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c4350f527ff7f96b650ee894ae9103bdfec0432` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0446d8804611944f1b527ecd37d7dcbe442caba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0f3b13fbd36df6dbeb6e4865dfc2ad3a4b5a12d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa31bb36c5164b165f9c36955ea4ccbab42b3b28e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3c7c40c185306468870185a74c8d59a331f019d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa7a9ca87d3694b5755f213b5d04094b8d0f0a6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab4c212e7f4d51372ec314ff59dfcd946126f591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab6391d02c7410302f5d1db1c22b0c06714c041a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab8bdf37ddca9173b433054e65d12dd9539adbb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac383ebd7305d8d27191a192ce025a9c973de751` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaea46a60368a7bd060eec7df8cba43b7ef41ad85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaec4a3cdfb800e1240a9f3d2ea378ae09b7ac68b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafc12b728079690e8e9a7b4d80bd496978320baf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb13c194eb6285865949a795792b3c31cb08c4c27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b418760b438e287b5ef4ad8a7a175956f9c7d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb37689e1c3f10c85fa5bdfc4719361123d72fc52` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb482ce1985df33a0d16a2630df896c8ca6521553` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb63aae6c353636d66df13b89ba4425cfe13d10ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbaf9a5d4b0052359326a6cdab54babaa3a3a9643` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0702e554149cc857299e6b0eb324eef306457b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0e6263ae62d514a70de747a7c08a168db60628b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1e16013a158d57a60d6aa5bb3108722b0ac6df5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4368c06629b6227c5ea48446733081c557ec6f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc603a00595d5f8ea8d93c5c338c00ff29dba6258` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc66a8b74da6a2ef73abb1942a2d302babc9f32ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7c42eccac0d4bb790a32bc86519ac362e01d388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9245224b83c4389b103b4110d8b79f11b180d71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd143c8163e7adcce79d0829615b7ff01fbc28fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd9797e66c41f80b9d91b201d2f10e1bd7a268fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfd674f8731e801a4a15c1ae31770960e1afded1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0937e7b3905a96dd69df5cf468954f9eed1491a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd7936052d1e096d48c81ef3918f9fd6384108480` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8121433a2b8653b8eb62bd76273eaf104f9be09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2942bf5973ce8746a6dae222e11b5a56bc84202` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe295ad71242373c37c5fda7b57f26f9ea1088afe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3c6b9c13739087c89dcb83d3ec15a767d829aa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5c375ae041f39ce9301aff84fa6a83ec0b124b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe680189951a3f78a0663a342b84446fa67200872` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe796d6ca1ceb1b022ece5296226bf784110031cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea7caf0764411d9467eddfe71767150deff9d15c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed60f3344a9af88332dd3c8bec692455315595df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8a1527325bb62d6d0320eb2312748d590f1ce27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf94feba0441edb73044ba58e80f245868d314ef3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6fd4383cb451173d5f9304f041c7bcbf27d561ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [1inch Aggregation Router V5_ABDK Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) | ABDK | Audit | 2022-09 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) | MixBytes | Audit | 2022-11 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) | unknown | Audit | 2022-10 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) | unknown | Audit | 2022-07 | stale | Direct | contract_name | 3 | high |
| [1inch Aggregation Router V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) | unknown | Audit | 2022-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) | Decurity | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) | Decurity | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) | Decurity | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 2 | n/a |
| [1inch Aggregation Router V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch Aggregation Router V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 1 | medium |
| [1inch Aggregation Router V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 1 | n/a |
| [1inch Limit Order Protocol v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch Limit Order Protocol v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | contract_name | 1 | n/a |
| [Certik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf) | CertiK | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Chainsulting - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Coinfabrik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Hacken - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf) | Hacken | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Haechi - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [MixBytes - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Scott Bigelow - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Slowmist - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Certik - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf) | CertiK | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Gulamov - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [MixBytes - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [1Inch Aggregation Router v4 Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router v4 Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) | ABDK | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 2 | high |
| [1inch Aggregation Router v4 Audit_Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) | unknown | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |
| [1inch Aggregation Router v4 Audit_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Pessimistic.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-swap-v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-AstraSec.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Consensys.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-swap-v1-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Pessimistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Astrasec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Astrasec.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Consensys.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-v2-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [1inch-cross-chain-v2-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Igor%20Gulamov.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-v2-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | contract_name | 1 | n/a |
| [1inch-cross-chain-v2-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Pessimistic.pdf) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Certora.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Certora.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [1inch Crosschain Fee v1.1_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [1inch Crosschain Fee v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | contract_name | 1 | n/a |
| [Fee flow v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-AstraSec.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Bailsec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Bailsec.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-ChainLight.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-ChainLight.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Open%20Zepplin.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [Fee flow v1-Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | 1 | high |
| [1inch FixedRateSwap_Ackee Blockchain.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch FixedRateSwap_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Chainsulting.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch FixedRateSwap_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_CoinFabrik.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch FixedRateSwap_MixedBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_MixedBytes.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 2 | high |
| [1inch FixedRateSwap_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Pessimistic.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |
| [1inch Settlement v2.1_AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_AstraSec.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [1inch Settlement v2.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Hexens.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [1inch Settlement v2.1_Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Open%20Zepplin.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2.1_Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pashov.pdf) | Pashov Audit Group | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2.1_Pessemistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pessemistic.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 3 | high |
| [1inch Settlement v2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Decurity.pdf) | Decurity | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Hexens.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [1inch Settlement v2_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Peckshield.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Settlement v2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Pessimistic.pdf) | unknown | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ABDK.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_ChainSecurity1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_ChainSecurity2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity2.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_ChainSecurity3.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity3.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | contract_name | 2 | n/a |
| [1inch_FusionMode_Hexens.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.1.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_Hexens.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.2.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 2 | n/a |
| [1inch_FusionMode_OpenZepplin.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.1.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 3 | n/a |
| [1inch_FusionMode_OpenZepplin.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.2.pdf) | unknown | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [1inch_FusionMode_Oxorio.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Oxorio.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Peckshield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | 1 | n/a |
| [1inch_FusionMode_iosiro.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_iosiro.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 1 | n/a |
| [1inch_TokenPlugins-Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_TokenPlugins-Pashov.pdf) | Pashov Audit Group | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_ABDK.pdf) | ABDK | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [1Inch Limit Order Protocol_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_Chainsulting.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |
| [1Inch Limit Order Protocol_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_CoinFabrik.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [1Inch Limit Order Protocol_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_IgorGulamov.pdf) | unknown | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [1Inch Limit Order Protocol_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_MixBytes.pdf) | MixBytes | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [1inch Limit Order Portocol_Certik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1inch%20Limit%20Order%20Portocol_Certik.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 1 | n/a |
| [ABDK - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/ABDK%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | ABDK | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [Chainsulting - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Chainsulting%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [Coinfabrik - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinfabrik%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [Coinspect - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinspect%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 1 | n/a |
| [LimitSwap audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/LimitSwap%20audit.pdf) | unknown | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Pessimistic - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Pessimistic%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |
| [Certik - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Certik%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | CertiK | Audit | 2020-12 | stale | Direct | contract_name | 2 | n/a |
| [Chainsulting - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Chainsulting%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 2 | n/a |
| [Coinfabrik - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Coinfabrik%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 2 | n/a |
| [Cure53 - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Cure53%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2020-12 | stale | Direct | contract_name | 4 | n/a |
| [Gulamov - 1inch Farming audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Farming/Gulamov%20-%201inch%20Farming%20audit.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 1 | n/a |
| [Gulamov - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Gulamov%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 2 | n/a |
| [MixBytes - 1inch Liquidity Protocol Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/MixBytes%20-%201inch%20Liquidity%20Protocol%20Report.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | contract_name | 2 | n/a |
| [1inch Multi-Farming Contracts V3_Chainsafe.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Chainsafe.pdf) | unknown | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_CoinFabrik.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Gulamov.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Peckshield.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Pessimistic.pdf) | unknown | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [1inch Multi-Farming Contracts V3_Smartstate.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Smartstate.pdf) | unknown | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Solana Fusion - Decurity v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Decurity%20v1.pdf) | Decurity | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Hexens v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Hexens%20v1.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Open Zepplin v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Open%20Zepplin%20v1.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Ottersec v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Ottersec%20v1.pdf) | unknown | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Quantstamp v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Quantstamp%20v1.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion - Zenith v1.01.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Zenith%20v1.01.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_Kudelski.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_Kudelski.pdf) | unknown | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [Solana Fusion v1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_OffsideLabs.pdf) | unknown | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Hexens.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0-Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Zenith.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Decurity.pdf) | Decurity | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_OffsideLabs.pdf) | unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.0_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Sherlock.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Hexens.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_OffsideLabs.pdf) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Solana cross-chain v1.1_Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Zenith.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Chainsulting - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Chainsulting%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Coinfabrik - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Coinfabrik%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Gulamov - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Gulamov%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [Pessimistic - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Pessimistic%20-%201inch%20Vesting%20Contract%20audit.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 1 | n/a |
| [MixBytes.pdf](https://github.com/1inch/1inch-token/blob/master/audits/MixBytes.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | 2 | high |
| [whitepaper-aqua-1.0.pdf](https://github.com/1inch/aqua/blob/main/docs/whitepaper-aqua-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [whitepaper-swap-vm-1.0.pdf](https://github.com/1inch/swap-vm/blob/release%2F1.1/docs/whitepaper-swap-vm-1.0.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [aqua-dev-preview.pdf](https://github.com/1inch/aqua-app-template/blob/main/docs/aqua-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [swapvm-dev-preview.pdf](https://github.com/1inch/swap-vm-template/blob/main/docs/swapvm-dev-preview.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [help.1inch.com/en/articles/4585088-how-secure-is-1inch](https://help.1inch.com/en/articles/4585088-how-secure-is-1inch) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x39eae99e685906ff1c11a962a743440d0a1a6e09`](./contracts/ethereum-1/0x39eae99e685906ff1c11a962a743440d0a1a6e09/) | HolyToken | token | $272,006.00 | Verified native implementation with $272,006.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e7062f6458d67e74f84c37c189ab3e69eefdb58`](./contracts/ethereum-1/0x1e7062f6458d67e74f84c37c189ab3e69eefdb58/) | HolyPoolV2 | core_logic | $15,894.81 | Verified native implementation with $15,894.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fa729b4548becbad4eab6ef18413470e6d5324c`](./contracts/ethereum-1/0x3fa729b4548becbad4eab6ef18413470e6d5324c/) | MoverToken | token | $15,209.99 | Verified native implementation with $15,209.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe89346fe1ce1367f3d80c8522209a86511b1201`](./contracts/ethereum-1/0xbe89346fe1ce1367f3d80c8522209a86511b1201/) | CrosschainWhitelistRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee262adcd9ecc0476452e302cf3c822f634dafaf`](./contracts/ethereum-1/0xee262adcd9ecc0476452e302cf3c822f634dafaf/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb9284484cb9a2bc7950a1276edba2f6358ea677`](./contracts/ethereum-1/0xbb9284484cb9a2bc7950a1276edba2f6358ea677/) | DAPFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa60184b67a665ede46774b5fee0acdf115080456`](./contracts/ethereum-1/0xa60184b67a665ede46774b5fee0acdf115080456/) | Dice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11a5504d869409d6e43d6ee18b41c6e7f16b09dc`](./contracts/ethereum-1/0x11a5504d869409d6e43d6ee18b41c6e7f16b09dc/) | FarmingVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfa40fdaa7694676899f8887a45603922609af4`](./contracts/ethereum-1/0x4dfa40fdaa7694676899f8887a45603922609af4/) | GovernanceFeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3`](./contracts/ethereum-1/0x39ac24fd08991b1d69a9ef7189bc718c988ff5b3/) | HolyPassageV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2576c08de9a369491d148f82356c5b1431da361a`](./contracts/ethereum-1/0x2576c08de9a369491d148f82356c5b1431da361a/) | HolyRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c946caa389b7325141c035d71c667d4f9627697`](./contracts/ethereum-1/0x0c946caa389b7325141c035d71c667d4f9627697/) | HolyVisorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b986b20243b62628f7b47a2dea602c29eb8ace1`](./contracts/ethereum-1/0x9b986b20243b62628f7b47a2dea602c29eb8ace1/) | HolyWingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911`](./contracts/ethereum-1/0xdb33de0ee7b1410d653ada5d05aef9cf37ef0911/) | HumanitarianAidNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5`](./contracts/ethereum-1/0x4ee7c0f5480eb1edd8902a5e8b991ed52992d5f5/) | MerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59a0a6d73e6a5224871f45e6d845ce1574063ade`](./contracts/ethereum-1/0x59a0a6d73e6a5224871f45e6d845ce1574063ade/) | Mooniswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11431a89893025d2a48dca4eddc396f8c8117187`](./contracts/bsc-56/0x11431a89893025d2a48dca4eddc396f8c8117187/) | MooniswapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2733a766d2d79d26b2d23343db5bf38290f67f22`](./contracts/ethereum-1/0x2733a766d2d79d26b2d23343db5bf38290f67f22/) | MoverOlympusNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc61726b11613b37854a1c9ebc9a2092ed91b9d`](./contracts/ethereum-1/0x1cc61726b11613b37854a1c9ebc9a2092ed91b9d/) | ReferralFeeReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x303389f541ff2d620e42832f180a08e767b28e10`](./contracts/ethereum-1/0x303389f541ff2d620e42832f180a08e767b28e10/) | SeriesNonceManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47795ab886f53719e38780cedf40083aaec28315`](./contracts/ethereum-1/0x47795ab886f53719e38780cedf40083aaec28315/) | SmartTreasuryV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x069f63ecf6ad9b14d3cdb479b97989501b5a7f83`](./contracts/ethereum-1/0x069f63ecf6ad9b14d3cdb479b97989501b5a7f83/) | St1inchPreview | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ad2aef39a9036147aee2a8edd5c5092466d3963`](./contracts/ethereum-1/0x1ad2aef39a9036147aee2a8edd5c5092466d3963/) | WhitelistHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 70 |
| upstream | 2 |
| standard_library | 12 |
| needs_review | 247 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 66
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=25, medium=1
- Match method counts: contract_name=71, extraction_exact=51

Zero-match audit list:

- [8166] 1inch Aggregation Router V5_PeckShield.pdf
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf
- [8185] Certik - 1inch v2 Audit Report.pdf
- [8186] Chainsulting - 1inch v2 Audit Report.pdf
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf
- [8188] Hacken - 1inch v2 Audit Report.pdf
- [8189] Haechi - 1inch v2 Audit Report.pdf
- [8190] MixBytes - 1inch v2 Audit Report.pdf
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf
- [8192] Slowmist - 1inch v2 Audit Report.pdf
- [8193] Certik - 1inch v3 Audit Report.pdf
- [8194] Gulamov - 1inch v3 Audit Report.pdf
- [8195] MixBytes - 1inch v3 Audit Report.pdf
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf
- [8209] 1inch-cross-chain-v2-Astrasec.pdf
- [8211] 1inch-cross-chain-v2-Decurity.pdf
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf
- [8237] 1inch Settlement v2_Decurity.pdf
- [8238] 1inch Settlement v2_Hexens.pdf
- [8240] 1inch Settlement v2_Peckshield.pdf
- [8241] 1inch Settlement v2_Pessimistic.pdf
- [8244] 1inch_FusionMode_ChainSecurity2.pdf
- [8245] 1inch_FusionMode_ChainSecurity3.pdf
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf
- [8255] 1inch_TokenPlugins-Pashov.pdf
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf
- [8267] LimitSwap audit.pdf
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf
- [8284] Solana Fusion - Decurity v1.pdf
- [8285] Solana Fusion - Hexens v1.pdf
- [8286] Solana Fusion - Open Zepplin v1.pdf
- [8287] Solana Fusion - Ottersec v1.pdf
- [8288] Solana Fusion - Quantstamp v1.pdf
- [8289] Solana Fusion - Zenith v1.01.pdf
- [8290] Solana Fusion v1_Kudelski.pdf
- [8291] Solana Fusion v1_OffsideLabs.pdf
- [8292] Solana cross-chain v1.0-Hexens.pdf
- [8293] Solana cross-chain v1.0-Zenith.pdf
- [8294] Solana cross-chain v1.0_Decurity.pdf
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf
- [8296] Solana cross-chain v1.0_Sherlock.pdf
- [8297] Solana cross-chain v1.1_Decurity.pdf
- [8298] Solana cross-chain v1.1_Hexens.pdf
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf
- [8300] Solana cross-chain v1.1_Sherlock.pdf
- [8301] Solana cross-chain v1.1_Zenith.pdf
- [8550] whitepaper-aqua-1.0.pdf
- [8552] whitepaper-swap-vm-1.0.pdf
- [8593] aqua-dev-preview.pdf
- [8595] swapvm-dev-preview.pdf
- [15510] help.1inch.com/en/articles/4585088-how-secure-is-1inch

Fork inheritance lineage and inherited audits are included when available.
