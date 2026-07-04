# Agentic Audit Brief: Segment Finance

## Project Overview

- Project: Segment Finance (`segment-finance`)
- Website: [https://segment.finance](https://segment.finance)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:53.499Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc, opbnb
- Contract surface: 77 unique implementations (129 raw deployments)
- DeFi Llama TVL: $510,615.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 89 project-authored contract(s) across 2 chain(s); 34 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 34 common project-authored base contract(s) (sefvestingadminstorage, setokeninterface, setokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 162; live-surface contracts included: 119 (104 live, 15 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/62 (3.2%)
- Deployed-live implementations: 62 of 77 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/62
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 77
- Raw deployments: 129
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
| PoolRegistry | unknown | bsc | n/a | 2 deployments: bsc [`0x0c6690...3b27d5`](./contracts/bsc-56/0x0c6690df4ade82435e1dcc41d010b368103b27d5/); bsc `0xb5983a...f54cf4` | ✅ Audited |
| PoolRegistry | unknown | opbnb | n/a | 2 deployments: opbnb [`0x5c9bf9...e933be`](./contracts/opbnb-204/0x5c9bf9c77c66fb59590acd2a7eac21601ee933be/); opbnb `0xe890d8...9ecb83` | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlManager | governance | opbnb | n/a | [`0x2e81af...7cc80a`](./contracts/opbnb-204/0x2e81af8bdb43eaacf96d79145b36abc2407cc80a/) | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | bsc | n/a | [`0xad6cae...6c6c18`](./contracts/bsc-56/0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18/) | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | bsc | n/a | [`0x8ff795...444adf`](./contracts/bsc-56/0x8ff795a6f4d97e7887c79bea79aba5cc76444adf/) | ⚠️ Unaudited |
| BEP20EOS | unknown | bsc | n/a | [`0x56b6fb...dccbd6`](./contracts/bsc-56/0x56b6fb708fc5732dec1afc8d8556423a2edccbd6/) | ⚠️ Unaudited |
| BEP20Ethereum | unknown | bsc | n/a | [`0x2170ed...f933f8`](./contracts/bsc-56/0x2170ed0880ac9a755fd29b2688956bd959f933f8/) | ⚠️ Unaudited |
| BEP20Ontology | unknown | bsc | n/a | [`0xfd7b3a...850335`](./contracts/bsc-56/0xfd7b3a77848f1c2d67e05e54d78d174a0c850335/) | ⚠️ Unaudited |
| BEP20Polkadot | unknown | bsc | n/a | [`0x708360...873402`](./contracts/bsc-56/0x7083609fce4d1d8dc0c979aab8c869ea2c873402/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | n/a | 2 deployments: bsc [`0x7130d2...3ead9c`](./contracts/bsc-56/0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c/); bsc `0xe9e7ce...087d56` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | 12 deployments: bsc [`0x1fa4a7...ee5d63`](./contracts/bsc-56/0x1fa4a73a3f0133f0025378af00236f3abdee5d63/); bsc `0x3d6545...e3c25e`; bsc `0x795086...f210f7`; bsc `0x8ac76a...cd580d`; bsc `0x947950...9124c4`; bsc `0x9a2f55...a1d8a2`; bsc `0xa2b726...e4d495`; bsc `0xb7f8cd...e5e094`; bsc `0xbf7c81...1337fe`; bsc `0xd475c9...185b92`; bsc `0xdd3c81...50385a`; bsc `0xfb6115...58f802` | ⚠️ Unaudited |
| BEP20TokenImplementationV2 | token | bsc | n/a | [`0x250632...0aa91b`](./contracts/bsc-56/0x250632378e573c6be1ac2f97fcdf00515d0aa91b/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BEP20YFII | unknown | bsc | n/a | [`0x7f7064...53eda5`](./contracts/bsc-56/0x7f70642d88cf1c4a3a7abb072b53b929b653eda5/) | ⚠️ Unaudited |
| BinanceOracle | operational_periphery | bsc | n/a | [`0x71b5cd...f79cf2`](./contracts/bsc-56/0x71b5cd8e8ea2dc81fdd49ede79ea7c65a2f79cf2/) | ⚠️ Unaudited |
| BinanceOracle | unknown | opbnb | n/a | 2 deployments: opbnb [`0x15cb42...5979bf`](./contracts/opbnb-204/0x15cb42a8bc953ba604cf17dcbaa7d78b235979bf/); opbnb `0x876927...b4fff7` | ⚠️ Unaudited |
| BoundValidator | unknown | opbnb | n/a | 2 deployments: opbnb [`0x76e6ee...86ecb2`](./contracts/opbnb-204/0x76e6ee5a0dade9a47b60f3320b1b05dd0b86ecb2/); opbnb `0x7b6c69...4121be` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | bsc | n/a | [`0xdaaf3c...30aeb0`](./contracts/bsc-56/0xdaaf3c2454340e5fa6c1754b8e88b1586a30aeb0/) | ⚠️ Unaudited |
| ComptrollerLens | periphery | bsc | n/a | [`0x69c577...33af77`](./contracts/bsc-56/0x69c577f76bdebcaaaae12bcc0c25b692ba33af77/) | ⚠️ Unaudited |
| Diamond | unknown | bsc | n/a | 2 deployments: bsc [`0x57e09c...060173`](./contracts/bsc-56/0x57e09c96daee58b77dc771b017de015c38060173/); bsc `0xdeb818...c92fa5` | ⚠️ Unaudited |
| Diamond | unknown | opbnb | n/a | 2 deployments: opbnb [`0x71ac0e...a8cbb5`](./contracts/opbnb-204/0x71ac0e9a7113130280040d0189d0556f45a8cbb5/); opbnb `0xae2a97...140817` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | n/a | [`0xd76d8c...b1df3c`](./contracts/bsc-56/0xd76d8ca186690ca2b6e0f6e3c5282da70fb1df3c/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | opbnb | n/a | [`0x1f41cf...4b97d1`](./contracts/opbnb-204/0x1f41cfbbf95bac4f5a220700f78dbaa1e34b97d1/) | ⚠️ Unaudited |
| HypFiatToken | unknown | bsc | n/a | 2 deployments: bsc [`0x1b993d...ca68c6`](./contracts/bsc-56/0x1b993debdfa1ff322a91ca0963cea42735ca68c6/); bsc `0xf0a54a...ee3862` | ⚠️ Unaudited |
| HypFiatToken | token | bsc | n/a | [`0x7d6549...debbc1`](./contracts/bsc-56/0x7d6549aa8bfd0d3068a2690010fec0fa6edebbc1/) | ⚠️ Unaudited |
| JumpRateModelV2 | operational_periphery | bsc | n/a | 5 deployments: bsc [`0x6a4e7e...d35ecd`](./contracts/bsc-56/0x6a4e7e205801f8999a2a5f39f9ad83f616d35ecd/); bsc `0x8c248e...295f75`; bsc `0xac4aba...337aef`; bsc `0xe500c5...e9b47e`; bsc `0xec430a...0ca8dc` | ⚠️ Unaudited |
| Liquidator | unknown | bsc | n/a | 2 deployments: bsc [`0x04ee3f...1c678a`](./contracts/bsc-56/0x04ee3f93c686082be14fb1bd7f02a167b51c678a/); bsc `0x099f50...bfdb20` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | bsc | n/a | [`0xf1c743...05fc12`](./contracts/bsc-56/0xf1c743cc02eb58bdba48cea7137570f18b05fc12/) | ⚠️ Unaudited |
| MarketFacet | unknown | bsc | n/a | [`0xeebe1a...1b3d3d`](./contracts/bsc-56/0xeebe1abc85014b114d691ec1f0d72c38001b3d3d/) | ⚠️ Unaudited |
| Multicall3 | periphery | bsc | n/a | [`0xcefe1d...02bc7d`](./contracts/bsc-56/0xcefe1d8291de82fcd7e8225affed20276202bc7d/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | opbnb | n/a | 4 deployments: opbnb [`0x50c572...7db0cb`](./contracts/opbnb-204/0x50c5725949a6f0c72e6c4a641f24049a917db0cb/); opbnb `0x7c6b91...7227f2`; opbnb `0x9e5aac...ca96f3`; opbnb `0xe7798f...5a77ea` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x48758b...a97155`](./contracts/bsc-56/0x48758b4aee6f6752830fa86dedc7ce919ea97155/); bsc `0xd5f767...af0626` | ⚠️ Unaudited |
| PoolLens | core_logic | bsc | n/a | 2 deployments: bsc [`0x759dd1...1c4cbe`](./contracts/bsc-56/0x759dd15bb7d910269a3b2b5d4bbc6953c91c4cbe/); opbnb `0x7a72b3...7435fb` | ⚠️ Unaudited |
| Proxy | proxy | bsc | n/a | 3 deployments: bsc [`0x36c12b...f8480e`](./contracts/bsc-56/0x36c12bec21bc4bfa9860139b95fd765c41f8480e/); bsc `0x4cafd8...88b72c`; bsc `0xcf00bd...e11881` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | n/a | [`0xdc99f2...4bea92`](./contracts/bsc-56/0xdc99f23af49fe9ccf65bf61f1e7bbc54f14bea92/) | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x763217...7b9a05`](./contracts/bsc-56/0x763217cfefac3b26191b1dcae1926f65157b9a05/); bsc `0xba86bc...e578eb` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | opbnb | n/a | 2 deployments: opbnb [`0xaacf63...b4d491`](./contracts/opbnb-204/0xaacf634dd705d37e94c38ea68384e669d2b4d491/); opbnb `0xe9ad4b...0ad469` | ⚠️ Unaudited |
| S1 | unknown | bsc | n/a | [`0x5d7317...4e4ef5`](./contracts/bsc-56/0x5d731723cb5f7055c80c28e77062a80fb24e4ef5/) | ⚠️ Unaudited |
| SeBep20Delegate | unknown | bsc | n/a | 6 deployments: bsc [`0x12cd46...d0f61d`](./contracts/bsc-56/0x12cd46b96fe0d86e396248a623b81fd84dd0f61d/); bsc `0x24a811...999ef3`; bsc `0x382117...5d7eed`; bsc `0x44b1e0...300119`; bsc `0x8969b8...93e226`; bsc `0x9c1f9b...03677f` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | opbnb | n/a | 2 deployments: opbnb [`0xbe7c6b...3c4798`](./contracts/opbnb-204/0xbe7c6bed5c0b79c3be45b1013f12a98c533c4798/); opbnb `0xfe62ba...54a565` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | bsc | n/a | 4 deployments: bsc [`0x07b4fb...946d75`](./contracts/bsc-56/0x07b4fbc9b123ac8eed171372969dd55410946d75/); bsc `0xf8adf7...386004`; opbnb `0x567558...534c3c`; opbnb `0x81b98b...2a08d2` | ⚠️ Unaudited |
| SeBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x5fcea9...3328c3`](./contracts/bsc-56/0x5fcea94b96858048433359bb5278a402363328c3/); opbnb `0x7e8444...84eb82` | ⚠️ Unaudited |
| SEF | unknown | bsc | n/a | [`0x5de40c...bbc4fd`](./contracts/bsc-56/0x5de40c1152c990492eaeaeecc4ecaab788bbc4fd/) | ⚠️ Unaudited |
| SEFStore | unknown | bsc | n/a | [`0x2d7e06...ab446d`](./contracts/bsc-56/0x2d7e06cfc08348f4114dad2d1665474a55ab446d/) | ⚠️ Unaudited |
| SEFVault | unknown | bsc | n/a | 2 deployments: bsc [`0x409db4...13b160`](./contracts/bsc-56/0x409db442b65e3f034a6a9d938d512bcecb13b160/); bsc `0xc6bcbe...16fe57` | ⚠️ Unaudited |
| SEFVault | core_logic | bsc | n/a | [`0xf58def...5d59d2`](./contracts/bsc-56/0xf58defeb311f10343b1af216b2f35a0a365d59d2/) | ⚠️ Unaudited |
| SEFVaultDistributor | unknown | bsc | n/a | 2 deployments: bsc [`0x11844e...d43521`](./contracts/bsc-56/0x11844e2f0f9904a24290f784809ff4ff20d43521/); bsc `0xd14499...53e5a0` | ⚠️ Unaudited |
| SEFVaultDistributor | operational_periphery | bsc | n/a | 2 deployments: bsc [`0x81c2be...5b5b14`](./contracts/bsc-56/0x81c2be2b48cdc0f57fd3e11357c29cf3f35b5b14/); bsc `0xeddaa1...3d2000` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | unknown | bsc | n/a | 2 deployments: bsc [`0x0b9c8c...72fc7e`](./contracts/bsc-56/0x0b9c8c4612bd93fd1c351c960b6eaec66472fc7e/); bsc `0x5d7c4f...2c9b86` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x8404f1...af6090`](./contracts/bsc-56/0x8404f19cb0490b424f9848ae568a28cfd5af6090/); bsc `0xa609d4...431c1b`; bsc `0xe02089...619e50` | ⚠️ Unaudited |
| SEFVesting | operational_periphery | bsc | n/a | [`0x855826...2c4ac6`](./contracts/bsc-56/0x855826b8492b137b84b3a4a445ef573a7c2c4ac6/) | ⚠️ Unaudited |
| SEFVestingProxy | operational_periphery | bsc | n/a | [`0x05357a...4d94bd`](./contracts/bsc-56/0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd/) | ⚠️ Unaudited |
| SegmentLens | unknown | bsc | n/a | 2 deployments: bsc [`0x31e98e...46856b`](./contracts/bsc-56/0x31e98e70470d06955fb2634f3080ea663646856b/); opbnb `0xf9fd96...a817e6` | ⚠️ Unaudited |
| SequenceUtils | unknown | bsc | n/a | [`0xb40d2b...a8e1e1`](./contracts/bsc-56/0xb40d2ba22217c24cee52e28755bb4a2275a8e1e1/) | ⚠️ Unaudited |
| SetterFacet | unknown | bsc | n/a | [`0xadbfba...67c0bf`](./contracts/bsc-56/0xadbfba66c5634825a720c2f23be36ae42367c0bf/) | ⚠️ Unaudited |
| STreasury | operational_periphery | opbnb | n/a | 2 deployments: bsc `0x3a833e...f134b9`; opbnb [`0x2f6778...0ad696`](./contracts/opbnb-204/0x2f67784d367bab5fd7b8dc607504e0c8de0ad696/) | ⚠️ Unaudited |
| STreasuryThena | operational_periphery | bsc | n/a | [`0xbab56f...88a983`](./contracts/bsc-56/0xbab56fe68fff46a0ab1f03728abad41b2588a983/) | ⚠️ Unaudited |
| TeamBacker | unknown | bsc | n/a | [`0x849a60...251d90`](./contracts/bsc-56/0x849a60e159981f88d9794dba8de7a0487e251d90/) | ⚠️ Unaudited |
| ThenaTwapOracle | unknown | bsc | n/a | 2 deployments: bsc [`0x012756...db7c9f`](./contracts/bsc-56/0x01275690da9dca1f1d032897c9f3ea4d91db7c9f/); bsc `0xdbdbc2...5da93b` | ⚠️ Unaudited |
| Timelock | governance | bsc | n/a | [`0xc835e1...69a4ec`](./contracts/bsc-56/0xc835e17ca0b709527f94c345d4d7aa3b3069a4ec/) | ⚠️ Unaudited |
| V1PriceOracle | operational_periphery | bsc | n/a | [`0xf88af4...f3b590`](./contracts/bsc-56/0xf88af457ffa385ee115d794558dd0530fbf3b590/) | ⚠️ Unaudited |
| VesterSale | operational_periphery | bsc | n/a | [`0xc83b96...8ac564`](./contracts/bsc-56/0xc83b96ecc30c6449f2627c44367d95a1a18ac564/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x0d2811...133cf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x301f88...603e0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4852c2...b89591` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5272e4...80114b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x687fba...879a34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc415e...4e25c9` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x31e98e...46856b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x398895...0a75ce` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3f1512...8c041e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x515d38...c7385d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x719af7...765113` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xba3835...b7b729` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc34400...279592` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xec53a9...f87d26` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xf6fc43...d2b68b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf](https://1437394138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcYvodOcCalriGDOIk0m4%2Fuploads%2F2aV2FDinQ3TxtFSRRnqN%2FSegment_Finance_-_Public_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |
| [Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Segment%20Finance%20Pool%20Register%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=8

Fork inheritance lineage and inherited audits are included when available.
