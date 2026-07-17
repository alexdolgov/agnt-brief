# Agentic Audit Brief: Segment Finance

## Project Overview

- Project: Segment Finance (`segment-finance`)
- Website: [https://segment.finance](https://segment.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.275Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc, opbnb
- Contract surface: 76 unique implementations (128 raw deployments)
- DeFi Llama TVL: $510,615.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 89 project-authored contract(s) across 2 chain(s); 34 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 34 common project-authored base contract(s) (sefvestingadminstorage, setokeninterface, setokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 153; live-surface contracts included: 118 (104 live, 14 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/56 (3.6%)
- Deployed-live implementations: 62 of 76 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/62
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 76
- Raw deployments: 128
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 3.2% | 2023-11 |
| Verichains | Tier 2 | 2 | 3.2% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PoolRegistry | unknown | bsc | n/a | 2 deployments: bsc [`0x0c6690df4ade82435e1dcc41d010b368103b27d5`](./contracts/bsc-56/0x0c6690df4ade82435e1dcc41d010b368103b27d5/); bsc `0xb5983ac361c827add2aeeff800034174f9f54cf4` | ✅ Audited |
| PoolRegistry | unknown | opbnb | n/a | 2 deployments: opbnb [`0x5c9bf9c77c66fb59590acd2a7eac21601ee933be`](./contracts/opbnb-204/0x5c9bf9c77c66fb59590acd2a7eac21601ee933be/); opbnb `0xe890d810332bf468c56dcb3ceee1e3c5299ecb83` | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlManager | governance | opbnb | n/a | [`0x2e81af8bdb43eaacf96d79145b36abc2407cc80a`](./contracts/opbnb-204/0x2e81af8bdb43eaacf96d79145b36abc2407cc80a/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x8ff795a6f4d97e7887c79bea79aba5cc76444adf`](./contracts/bsc-56/0x8ff795a6f4d97e7887c79bea79aba5cc76444adf/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb708fc5732dec1afc8d8556423a2edccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed0880ac9a755fd29b2688956bd959f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a77848f1c2d67e05e54d78d174a0c850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x7083609fce4d1d8dc0c979aab8c869ea2c873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | 12 deployments: bsc [`0x1fa4a73a3f0133f0025378af00236f3abdee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/); bsc `0x3d6545b08693dae087e957cb1180ee38b9e3c25e`; bsc `0x7950865a9140cb519342433146ed5b40c6f210f7`; bsc `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d`; bsc `0x947950bcc74888a40ffa2593c5798f11fc9124c4`; bsc `0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2`; bsc `0xa2b726b1145a4773f68593cf171187d8ebe4d495`; bsc `0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094`; bsc `0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe`; bsc `0xd475c9c934dcd6d5f1cac530585aa5ba14185b92`; bsc `0xdd3c817354e3855ef2b52d15ad2244793c50385a`; bsc `0xfb6115445bff7b52feb98650c87f44907e58f802` | ⚠️ Unaudited |
| BEP20TokenImplementationV2 | token | bsc | n/a | [`0x250632378e573c6be1ac2f97fcdf00515d0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f70642d88cf1c4a3a7abb072b53b929b653eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BinanceOracle | operational_periphery | bsc | n/a | [`0x71b5cd8e8ea2dc81fdd49ede79ea7c65a2f79cf2`](./contracts/bsc-56/0x71b5cd8e8ea2dc81fdd49ede79ea7c65a2f79cf2/) | ⚠️ Unaudited |
| BinanceOracle | unknown | opbnb | n/a | 2 deployments: opbnb [`0x15cb42a8bc953ba604cf17dcbaa7d78b235979bf`](./contracts/opbnb-204/0x15cb42a8bc953ba604cf17dcbaa7d78b235979bf/); opbnb `0x8769277379fbb80e28666238e98f67ebbdb4fff7` | ⚠️ Unaudited |
| BoundValidator | unknown | opbnb | n/a | 2 deployments: opbnb [`0x76e6ee5a0dade9a47b60f3320b1b05dd0b86ecb2`](./contracts/opbnb-204/0x76e6ee5a0dade9a47b60f3320b1b05dd0b86ecb2/); opbnb `0x7b6c69200fcee97aa65c6fa992af2e38a24121be` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | bsc | n/a | [`0xdaaf3c2454340e5fa6c1754b8e88b1586a30aeb0`](./contracts/bsc-56/0xdaaf3c2454340e5fa6c1754b8e88b1586a30aeb0/) | ⚠️ Unaudited |
| ComptrollerLens | periphery | bsc | n/a | [`0x69c577f76bdebcaaaae12bcc0c25b692ba33af77`](./contracts/bsc-56/0x69c577f76bdebcaaaae12bcc0c25b692ba33af77/) | ⚠️ Unaudited |
| Diamond | unknown | bsc | n/a | 2 deployments: bsc [`0x57e09c96daee58b77dc771b017de015c38060173`](./contracts/bsc-56/0x57e09c96daee58b77dc771b017de015c38060173/); bsc `0xdeb81884f0405aaa777744a57e8f1097e0c92fa5` | ⚠️ Unaudited |
| Diamond | unknown | opbnb | n/a | 2 deployments: opbnb [`0x71ac0e9a7113130280040d0189d0556f45a8cbb5`](./contracts/opbnb-204/0x71ac0e9a7113130280040d0189d0556f45a8cbb5/); opbnb `0xae2a97297ea09f82229076c9caff7c00a6140817` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0xd76d8ca186690ca2b6e0f6e3c5282da70fb1df3c`](./contracts/bsc-56/0xd76d8ca186690ca2b6e0f6e3c5282da70fb1df3c/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | opbnb | n/a | [`0x1f41cfbbf95bac4f5a220700f78dbaa1e34b97d1`](./contracts/opbnb-204/0x1f41cfbbf95bac4f5a220700f78dbaa1e34b97d1/) | ⚠️ Unaudited |
| HypFiatToken | unknown | bsc | n/a | 2 deployments: bsc [`0x1b993debdfa1ff322a91ca0963cea42735ca68c6`](./contracts/bsc-56/0x1b993debdfa1ff322a91ca0963cea42735ca68c6/); bsc `0xf0a54a488e0324e7d9d595cb648b1576b6ee3862` | ⚠️ Unaudited |
| HypFiatToken | token | bsc | n/a | [`0x7d6549aa8bfd0d3068a2690010fec0fa6edebbc1`](./contracts/bsc-56/0x7d6549aa8bfd0d3068a2690010fec0fa6edebbc1/) | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x6a4e7e205801f8999a2a5f39f9ad83f616d35ecd`](./contracts/bsc-56/0x6a4e7e205801f8999a2a5f39f9ad83f616d35ecd/); bsc `0x8c248e305c2ca62f942f3f2f2c4acab46f295f75`; bsc `0xac4abaa93740d6b6d7e91aeb92c53da76b337aef`; bsc `0xe500c58b4e7667532ca39b3b770dd02fd4e9b47e`; bsc `0xec430a0c8d2c11f0df864a9d7879b9a8ad0ca8dc` | ⚠️ Unaudited |
| Liquidator | unknown | bsc | n/a | 2 deployments: bsc [`0x04ee3f93c686082be14fb1bd7f02a167b51c678a`](./contracts/bsc-56/0x04ee3f93c686082be14fb1bd7f02a167b51c678a/); bsc `0x099f50ad9507556c5a15131e35fa10c409bfdb20` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | bsc | n/a | [`0xf1c743cc02eb58bdba48cea7137570f18b05fc12`](./contracts/bsc-56/0xf1c743cc02eb58bdba48cea7137570f18b05fc12/) | ⚠️ Unaudited |
| MarketFacet | unknown | bsc | n/a | [`0xeebe1abc85014b114d691ec1f0d72c38001b3d3d`](./contracts/bsc-56/0xeebe1abc85014b114d691ec1f0d72c38001b3d3d/) | ⚠️ Unaudited |
| Multicall3 | periphery | bsc | n/a | [`0xcefe1d8291de82fcd7e8225affed20276202bc7d`](./contracts/bsc-56/0xcefe1d8291de82fcd7e8225affed20276202bc7d/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | opbnb | n/a | 4 deployments: opbnb [`0x50c5725949a6f0c72e6c4a641f24049a917db0cb`](./contracts/opbnb-204/0x50c5725949a6f0c72e6c4a641f24049a917db0cb/); opbnb `0x7c6b91d9be155a6db01f749217d76ff02a7227f2`; opbnb `0x9e5aac1ba1a2e6aed6b32689dfcf62a509ca96f3`; opbnb `0xe7798f023fc62146e8aa1b36da45fb70855a77ea` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x48758b4aee6f6752830fa86dedc7ce919ea97155`](./contracts/bsc-56/0x48758b4aee6f6752830fa86dedc7ce919ea97155/); bsc `0xd5f76751784e8e96966cbf8cff026a1b7caf0626` | ⚠️ Unaudited |
| PoolLens | core_logic | bsc | n/a | 2 deployments: bsc [`0x759dd15bb7d910269a3b2b5d4bbc6953c91c4cbe`](./contracts/bsc-56/0x759dd15bb7d910269a3b2b5d4bbc6953c91c4cbe/); opbnb `0x7a72b36e69d95e9bbd60ae5f5f55a80c767435fb` | ⚠️ Unaudited |
| Proxy | proxy | bsc | n/a | 3 deployments: bsc [`0x36c12bec21bc4bfa9860139b95fd765c41f8480e`](./contracts/bsc-56/0x36c12bec21bc4bfa9860139b95fd765c41f8480e/); bsc `0x4cafd82ba11f41f97374292064354bb72b88b72c`; bsc `0xcf00bde51a23b97286d3104802d8ad9c2de11881` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | [`0xdc99f23af49fe9ccf65bf61f1e7bbc54f14bea92`](./contracts/bsc-56/0xdc99f23af49fe9ccf65bf61f1e7bbc54f14bea92/) | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x763217cfefac3b26191b1dcae1926f65157b9a05`](./contracts/bsc-56/0x763217cfefac3b26191b1dcae1926f65157b9a05/); bsc `0xba86bce76e4b940371b3093118d0074278e578eb` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | opbnb | n/a | 2 deployments: opbnb [`0xaacf634dd705d37e94c38ea68384e669d2b4d491`](./contracts/opbnb-204/0xaacf634dd705d37e94c38ea68384e669d2b4d491/); opbnb `0xe9ad4be42b717b0cd3b38be5d05729b51d0ad469` | ⚠️ Unaudited |
| S1 | unknown | bsc | n/a | [`0x5d731723cb5f7055c80c28e77062a80fb24e4ef5`](./contracts/bsc-56/0x5d731723cb5f7055c80c28e77062a80fb24e4ef5/) | ⚠️ Unaudited |
| SeBep20Delegate | unknown | bsc | n/a | 6 deployments: bsc [`0x12cd46b96fe0d86e396248a623b81fd84dd0f61d`](./contracts/bsc-56/0x12cd46b96fe0d86e396248a623b81fd84dd0f61d/); bsc `0x24a8117bf6f4a5be6759918f7c111f279a999ef3`; bsc `0x3821175e59cd0acda6c5fd3ebb618b204e5d7eed`; bsc `0x44b1e0f4533fd155b9859a9db292c90e5b300119`; bsc `0x8969b89d5f38359fbe95bbe392f5ad82dd93e226`; bsc `0x9c1f9b823b5aa5352831f050178fdd9b3503677f` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | opbnb | n/a | 2 deployments: opbnb [`0xbe7c6bed5c0b79c3be45b1013f12a98c533c4798`](./contracts/opbnb-204/0xbe7c6bed5c0b79c3be45b1013f12a98c533c4798/); opbnb `0xfe62ba7400d902a9773da9f7469da457cf54a565` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | bsc | n/a | 4 deployments: bsc [`0x07b4fbc9b123ac8eed171372969dd55410946d75`](./contracts/bsc-56/0x07b4fbc9b123ac8eed171372969dd55410946d75/); bsc `0xf8adf750633b8f95aa00bdbe2ed2924b6c386004`; opbnb `0x567558167f102bb45c0437f1fd5a527c5c534c3c`; opbnb `0x81b98b2896f1f262714f12be36264aa8e02a08d2` | ⚠️ Unaudited |
| SeBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x5fcea94b96858048433359bb5278a402363328c3`](./contracts/bsc-56/0x5fcea94b96858048433359bb5278a402363328c3/); opbnb `0x7e844423510a5081de839e600f7960c7ce84eb82` | ⚠️ Unaudited |
| SEF | unknown | bsc | n/a | [`0x5de40c1152c990492eaeaeecc4ecaab788bbc4fd`](./contracts/bsc-56/0x5de40c1152c990492eaeaeecc4ecaab788bbc4fd/) | ⚠️ Unaudited |
| SEFStore | unknown | bsc | n/a | [`0x2d7e06cfc08348f4114dad2d1665474a55ab446d`](./contracts/bsc-56/0x2d7e06cfc08348f4114dad2d1665474a55ab446d/) | ⚠️ Unaudited |
| SEFVault | unknown | bsc | n/a | 2 deployments: bsc [`0x409db442b65e3f034a6a9d938d512bcecb13b160`](./contracts/bsc-56/0x409db442b65e3f034a6a9d938d512bcecb13b160/); bsc `0xc6bcbe182b0f85dbff6b49dc81cecee02a16fe57` | ⚠️ Unaudited |
| SEFVault | core_logic | bsc | n/a | [`0xf58defeb311f10343b1af216b2f35a0a365d59d2`](./contracts/bsc-56/0xf58defeb311f10343b1af216b2f35a0a365d59d2/) | ⚠️ Unaudited |
| SEFVaultDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x11844e2f0f9904a24290f784809ff4ff20d43521`](./contracts/bsc-56/0x11844e2f0f9904a24290f784809ff4ff20d43521/); bsc `0xd1449974b4302107977b77b382865053de53e5a0` | ⚠️ Unaudited |
| SEFVaultDistributor | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x81c2be2b48cdc0f57fd3e11357c29cf3f35b5b14`](./contracts/bsc-56/0x81c2be2b48cdc0f57fd3e11357c29cf3f35b5b14/); bsc `0xeddaa1c5d0aaeb05f3e2415026af5df2b03d2000` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | unknown | bsc | n/a | 2 deployments: bsc [`0x0b9c8c4612bd93fd1c351c960b6eaec66472fc7e`](./contracts/bsc-56/0x0b9c8c4612bd93fd1c351c960b6eaec66472fc7e/); bsc `0x5d7c4fa3ff3c3b020095c96b37797bca292c9b86` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x8404f19cb0490b424f9848ae568a28cfd5af6090`](./contracts/bsc-56/0x8404f19cb0490b424f9848ae568a28cfd5af6090/); bsc `0xa609d4f86ba67904d8da16f485e920037b431c1b`; bsc `0xe020895566e2cdf0d3ad67bc9770d8af43619e50` | ⚠️ Unaudited |
| SEFVesting | operational_periphery | bsc | n/a | [`0x855826b8492b137b84b3a4a445ef573a7c2c4ac6`](./contracts/bsc-56/0x855826b8492b137b84b3a4a445ef573a7c2c4ac6/) | ⚠️ Unaudited |
| SEFVestingProxy | operational_periphery | bsc | n/a | [`0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd`](./contracts/bsc-56/0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd/) | ⚠️ Unaudited |
| SegmentLens | unknown | bsc | n/a | 2 deployments: bsc [`0x31e98e70470d06955fb2634f3080ea663646856b`](./contracts/bsc-56/0x31e98e70470d06955fb2634f3080ea663646856b/); opbnb `0xf9fd960104998b981b0ecda4becda8f601a817e6` | ⚠️ Unaudited |
| SequenceUtils | unknown | bsc | n/a | [`0xb40d2ba22217c24cee52e28755bb4a2275a8e1e1`](./contracts/bsc-56/0xb40d2ba22217c24cee52e28755bb4a2275a8e1e1/) | ⚠️ Unaudited |
| SetterFacet | unknown | bsc | n/a | [`0xadbfba66c5634825a720c2f23be36ae42367c0bf`](./contracts/bsc-56/0xadbfba66c5634825a720c2f23be36ae42367c0bf/) | ⚠️ Unaudited |
| STreasury | operational_periphery | opbnb | n/a | 2 deployments: bsc `0x3a833e6e977e0442e3cbe911507f8d9178f134b9`; opbnb [`0x2f67784d367bab5fd7b8dc607504e0c8de0ad696`](./contracts/opbnb-204/0x2f67784d367bab5fd7b8dc607504e0c8de0ad696/) | ⚠️ Unaudited |
| STreasuryThena | operational_periphery | bsc | n/a | [`0xbab56fe68fff46a0ab1f03728abad41b2588a983`](./contracts/bsc-56/0xbab56fe68fff46a0ab1f03728abad41b2588a983/) | ⚠️ Unaudited |
| TeamBacker | unknown | bsc | n/a | [`0x849a60e159981f88d9794dba8de7a0487e251d90`](./contracts/bsc-56/0x849a60e159981f88d9794dba8de7a0487e251d90/) | ⚠️ Unaudited |
| ThenaTwapOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x01275690da9dca1f1d032897c9f3ea4d91db7c9f`](./contracts/bsc-56/0x01275690da9dca1f1d032897c9f3ea4d91db7c9f/); bsc `0xdbdbc23aeca0068026280a59aeb26c97925da93b` | ⚠️ Unaudited |
| Timelock | governance | bsc | n/a | [`0xc835e17ca0b709527f94c345d4d7aa3b3069a4ec`](./contracts/bsc-56/0xc835e17ca0b709527f94c345d4d7aa3b3069a4ec/) | ⚠️ Unaudited |
| V1PriceOracle | operational_periphery | bsc | n/a | [`0xf88af457ffa385ee115d794558dd0530fbf3b590`](./contracts/bsc-56/0xf88af457ffa385ee115d794558dd0530fbf3b590/) | ⚠️ Unaudited |
| VesterSale | operational_periphery | bsc | n/a | [`0xc83b96ecc30c6449f2627c44367d95a1a18ac564`](./contracts/bsc-56/0xc83b96ecc30c6449f2627c44367d95a1a18ac564/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x301f88d95f78f07ed87598df113212ed93603e0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4852c2e1ac64cc4a35e0382fe32110640fb89591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5272e4b3defff1ac5499b5a19ccb458df380114b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x687fba511dd72f1b47a6e1e9c968fb5d5e879a34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc415ebe6c87567b7c5a9a140ace8c65044e25c9` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x31e98e70470d06955fb2634f3080ea663646856b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3988954f79d577a608f80c9fbf7bcd4e480a75ce` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3f1512db6579c68ae4235b68051a7f70b08c041e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x515d382d778a8f52d09d412088bf21705fc7385d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x719af7ef0cbe54cf84c1c76ccd72c5c135765113` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xba3835ed56a8b705a202642a83595cddc5b7b729` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc344000a28f00e879c566f1ec259da24d6279592` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xec53a905a4fd8aed02464d7f7975f1f4c4f87d26` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf6fc4382660d8a36f09987c1727a8ae118d2b68b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf](https://1437394138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcYvodOcCalriGDOIk0m4%2Fuploads%2F2aV2FDinQ3TxtFSRRnqN%2FSegment_Finance_-_Public_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Segment%20Finance%20Pool%20Register%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| opbnb | [`0x2e81af8bdb43eaacf96d79145b36abc2407cc80a`](./contracts/opbnb-204/0x2e81af8bdb43eaacf96d79145b36abc2407cc80a/) | AccessControlManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | BEP20BandProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ff795a6f4d97e7887c79bea79aba5cc76444adf`](./contracts/bsc-56/0x8ff795a6f4d97e7887c79bea79aba5cc76444adf/) | BEP20BitcoinCash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56b6fb708fc5732dec1afc8d8556423a2edccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | BEP20EOS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2170ed0880ac9a755fd29b2688956bd959f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | BEP20Ethereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfd7b3a77848f1c2d67e05e54d78d174a0c850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | BEP20Ontology | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7083609fce4d1d8dc0c979aab8c869ea2c873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | BEP20Polkadot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/) | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1fa4a73a3f0133f0025378af00236f3abdee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/) | BEP20TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x250632378e573c6be1ac2f97fcdf00515d0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | BEP20TokenImplementationV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7f70642d88cf1c4a3a7abb072b53b929b653eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | BEP20YFII | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x71b5cd8e8ea2dc81fdd49ede79ea7c65a2f79cf2`](./contracts/bsc-56/0x71b5cd8e8ea2dc81fdd49ede79ea7c65a2f79cf2/) | BinanceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x15cb42a8bc953ba604cf17dcbaa7d78b235979bf`](./contracts/opbnb-204/0x15cb42a8bc953ba604cf17dcbaa7d78b235979bf/) | BinanceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x76e6ee5a0dade9a47b60f3320b1b05dd0b86ecb2`](./contracts/opbnb-204/0x76e6ee5a0dade9a47b60f3320b1b05dd0b86ecb2/) | BoundValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69c577f76bdebcaaaae12bcc0c25b692ba33af77`](./contracts/bsc-56/0x69c577f76bdebcaaaae12bcc0c25b692ba33af77/) | ComptrollerLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x57e09c96daee58b77dc771b017de015c38060173`](./contracts/bsc-56/0x57e09c96daee58b77dc771b017de015c38060173/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x71ac0e9a7113130280040d0189d0556f45a8cbb5`](./contracts/opbnb-204/0x71ac0e9a7113130280040d0189d0556f45a8cbb5/) | Diamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b993debdfa1ff322a91ca0963cea42735ca68c6`](./contracts/bsc-56/0x1b993debdfa1ff322a91ca0963cea42735ca68c6/) | HypFiatToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7d6549aa8bfd0d3068a2690010fec0fa6edebbc1`](./contracts/bsc-56/0x7d6549aa8bfd0d3068a2690010fec0fa6edebbc1/) | HypFiatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6a4e7e205801f8999a2a5f39f9ad83f616d35ecd`](./contracts/bsc-56/0x6a4e7e205801f8999a2a5f39f9ad83f616d35ecd/) | JumpRateModelV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ee3f93c686082be14fb1bd7f02a167b51c678a`](./contracts/bsc-56/0x04ee3f93c686082be14fb1bd7f02a167b51c678a/) | Liquidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf1c743cc02eb58bdba48cea7137570f18b05fc12`](./contracts/bsc-56/0xf1c743cc02eb58bdba48cea7137570f18b05fc12/) | LiquidityGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xeebe1abc85014b114d691ec1f0d72c38001b3d3d`](./contracts/bsc-56/0xeebe1abc85014b114d691ec1f0d72c38001b3d3d/) | MarketFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x50c5725949a6f0c72e6c4a641f24049a917db0cb`](./contracts/opbnb-204/0x50c5725949a6f0c72e6c4a641f24049a917db0cb/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x48758b4aee6f6752830fa86dedc7ce919ea97155`](./contracts/bsc-56/0x48758b4aee6f6752830fa86dedc7ce919ea97155/) | OwnedDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x759dd15bb7d910269a3b2b5d4bbc6953c91c4cbe`](./contracts/bsc-56/0x759dd15bb7d910269a3b2b5d4bbc6953c91c4cbe/) | PoolLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x763217cfefac3b26191b1dcae1926f65157b9a05`](./contracts/bsc-56/0x763217cfefac3b26191b1dcae1926f65157b9a05/) | ResilientOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0xaacf634dd705d37e94c38ea68384e669d2b4d491`](./contracts/opbnb-204/0xaacf634dd705d37e94c38ea68384e669d2b4d491/) | ResilientOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5d731723cb5f7055c80c28e77062a80fb24e4ef5`](./contracts/bsc-56/0x5d731723cb5f7055c80c28e77062a80fb24e4ef5/) | S1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x12cd46b96fe0d86e396248a623b81fd84dd0f61d`](./contracts/bsc-56/0x12cd46b96fe0d86e396248a623b81fd84dd0f61d/) | SeBep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0xbe7c6bed5c0b79c3be45b1013f12a98c533c4798`](./contracts/opbnb-204/0xbe7c6bed5c0b79c3be45b1013f12a98c533c4798/) | SeBep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x07b4fbc9b123ac8eed171372969dd55410946d75`](./contracts/bsc-56/0x07b4fbc9b123ac8eed171372969dd55410946d75/) | SeBep20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5fcea94b96858048433359bb5278a402363328c3`](./contracts/bsc-56/0x5fcea94b96858048433359bb5278a402363328c3/) | SeBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5de40c1152c990492eaeaeecc4ecaab788bbc4fd`](./contracts/bsc-56/0x5de40c1152c990492eaeaeecc4ecaab788bbc4fd/) | SEF | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d7e06cfc08348f4114dad2d1665474a55ab446d`](./contracts/bsc-56/0x2d7e06cfc08348f4114dad2d1665474a55ab446d/) | SEFStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x409db442b65e3f034a6a9d938d512bcecb13b160`](./contracts/bsc-56/0x409db442b65e3f034a6a9d938d512bcecb13b160/) | SEFVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf58defeb311f10343b1af216b2f35a0a365d59d2`](./contracts/bsc-56/0xf58defeb311f10343b1af216b2f35a0a365d59d2/) | SEFVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11844e2f0f9904a24290f784809ff4ff20d43521`](./contracts/bsc-56/0x11844e2f0f9904a24290f784809ff4ff20d43521/) | SEFVaultDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x81c2be2b48cdc0f57fd3e11357c29cf3f35b5b14`](./contracts/bsc-56/0x81c2be2b48cdc0f57fd3e11357c29cf3f35b5b14/) | SEFVaultDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b9c8c4612bd93fd1c351c960b6eaec66472fc7e`](./contracts/bsc-56/0x0b9c8c4612bd93fd1c351c960b6eaec66472fc7e/) | SEFVaultDistributorBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8404f19cb0490b424f9848ae568a28cfd5af6090`](./contracts/bsc-56/0x8404f19cb0490b424f9848ae568a28cfd5af6090/) | SEFVaultDistributorBacker | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x855826b8492b137b84b3a4a445ef573a7c2c4ac6`](./contracts/bsc-56/0x855826b8492b137b84b3a4a445ef573a7c2c4ac6/) | SEFVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd`](./contracts/bsc-56/0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd/) | SEFVestingProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31e98e70470d06955fb2634f3080ea663646856b`](./contracts/bsc-56/0x31e98e70470d06955fb2634f3080ea663646856b/) | SegmentLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb40d2ba22217c24cee52e28755bb4a2275a8e1e1`](./contracts/bsc-56/0xb40d2ba22217c24cee52e28755bb4a2275a8e1e1/) | SequenceUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xadbfba66c5634825a720c2f23be36ae42367c0bf`](./contracts/bsc-56/0xadbfba66c5634825a720c2f23be36ae42367c0bf/) | SetterFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| opbnb | [`0x2f67784d367bab5fd7b8dc607504e0c8de0ad696`](./contracts/opbnb-204/0x2f67784d367bab5fd7b8dc607504e0c8de0ad696/) | STreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbab56fe68fff46a0ab1f03728abad41b2588a983`](./contracts/bsc-56/0xbab56fe68fff46a0ab1f03728abad41b2588a983/) | STreasuryThena | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x849a60e159981f88d9794dba8de7a0487e251d90`](./contracts/bsc-56/0x849a60e159981f88d9794dba8de7a0487e251d90/) | TeamBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01275690da9dca1f1d032897c9f3ea4d91db7c9f`](./contracts/bsc-56/0x01275690da9dca1f1d032897c9f3ea4d91db7c9f/) | ThenaTwapOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc835e17ca0b709527f94c345d4d7aa3b3069a4ec`](./contracts/bsc-56/0xc835e17ca0b709527f94c345d4d7aa3b3069a4ec/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf88af457ffa385ee115d794558dd0530fbf3b590`](./contracts/bsc-56/0xf88af457ffa385ee115d794558dd0530fbf3b590/) | V1PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc83b96ecc30c6449f2627c44367d95a1a18ac564`](./contracts/bsc-56/0xc83b96ecc30c6449f2627c44367d95a1a18ac564/) | VesterSale | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
