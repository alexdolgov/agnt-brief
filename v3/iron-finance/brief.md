# Agentic Audit Brief: Iron Finance

## Project Overview

- Project: Iron Finance (`iron-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:14.163Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: avalanche, polygon
- Contract surface: 83 unique implementations (83 raw deployments)
- DeFi Llama TVL: $448,975.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 82 project-authored contract(s) across 2 chain(s); 18 ERC20 tokens, 1 ERC1155 multi-token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 14 common project-authored base contract(s) (rtoken, rtokeninterface, rtokenstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 83; live-surface contracts included: 83 (82 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/82 (0.0%)
- Deployed-live implementations: 82 of 83 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/83
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 83
- Raw deployments: 83
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

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlueIce | unknown | polygon | n/a | [`0xb1bf26...dde010`](./contracts/polygon-137/0xb1bf26c7b43d2485fa07694583d2f17df0dde010/) | ⚠️ Unaudited |
| BlueIceStaking | unknown | polygon | n/a | [`0xcffc0c...def7d2`](./contracts/polygon-137/0xcffc0c2a7456de0145def3aab731b36375def7d2/) | ⚠️ Unaudited |
| BlueIceStakingV2 | unknown | polygon | n/a | [`0x0d88a7...2399d5`](./contracts/polygon-137/0x0d88a7052310880eda1f7826c7c8a2c6842399d5/) | ⚠️ Unaudited |
| BlueIceVotingProxy | unknown | polygon | n/a | [`0xeeb889...855024`](./contracts/polygon-137/0xeeb88963647d4306ae03bf8ab18aa2ed9f855024/) | ⚠️ Unaudited |
| CollateralOracle | unknown | polygon | n/a | [`0x785808...beab86`](./contracts/polygon-137/0x785808779131b0947f42b4b54537a4682ebeab86/) | ⚠️ Unaudited |
| CollateralRatioPolicy | unknown | polygon | n/a | [`0x267004...dc15e9`](./contracts/polygon-137/0x26700497c9302478bb0636a653c3d2ea64dc15e9/) | ⚠️ Unaudited |
| CollateralRatioPolicyV2 | unknown | polygon | n/a | [`0x25d4a2...59b47f`](./contracts/polygon-137/0x25d4a26714d418b7d3e98dd9cff6c7682059b47f/) | ⚠️ Unaudited |
| CollateralReserve | unknown | polygon | n/a | [`0x6ec0bf...4b8db2`](./contracts/polygon-137/0x6ec0bf4f783fd851dd3e0d7d0c7ecb31674b8db2/) | ⚠️ Unaudited |
| ConsolidatedFund | unknown | polygon | n/a | [`0x1f7439...d2f59d`](./contracts/polygon-137/0x1f743919dd5ea3d90f985a1d5c7b1719e8d2f59d/) | ⚠️ Unaudited |
| Dollar | unknown | polygon | n/a | [`0xa2c095...1a183a`](./contracts/polygon-137/0xa2c095c1987e7a0a6c4aac4e51a3ae1d411a183a/) | ⚠️ Unaudited |
| DollarOracle | unknown | polygon | n/a | [`0x232139...5a133f`](./contracts/polygon-137/0x2321394d45a58807f56439be0bd9071b255a133f/) | ⚠️ Unaudited |
| EIP173Proxy | unknown | polygon | n/a | [`0x1e55d5...2c4f66`](./contracts/polygon-137/0x1e55d522af8ee5b3ae5528b2ba2b4cd6f92c4f66/) | ⚠️ Unaudited |
| EmptyTreasury | unknown | polygon | n/a | [`0xb7784e...7862c8`](./contracts/polygon-137/0xb7784ed425c8d0eea1b09ece80f08d46787862c8/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | polygon | n/a | [`0xf0e515...70c1ba`](./contracts/polygon-137/0xf0e515dac20f68b841d1ae1df8ab24818870c1ba/) | ⚠️ Unaudited |
| FeeDistributor | unknown | polygon | n/a | [`0x08bb70...018510`](./contracts/polygon-137/0x08bb70d9ecf2bde15e1ec8a57ee1cb6e7d018510/) | ⚠️ Unaudited |
| FixedPool | unknown | polygon | n/a | [`0x3c73c9...3cf5ff`](./contracts/polygon-137/0x3c73c94f559c0202e71769b1b64d999cb13cf5ff/) | ⚠️ Unaudited |
| FixedShareOracle | unknown | polygon | n/a | [`0x483dfd...344140`](./contracts/polygon-137/0x483dfda87bfef85fe6ab0462310a00dc8e344140/) | ⚠️ Unaudited |
| FixedTitanOracle | unknown | polygon | n/a | [`0x4f8095...f44348`](./contracts/polygon-137/0x4f8095f94c91e60f577fc37a6a36519888f44348/) | ⚠️ Unaudited |
| FundDistributor | unknown | polygon | n/a | [`0xb627dc...67420e`](./contracts/polygon-137/0xb627dc38bcbc9d2b71564ec2db93ff8cc267420e/) | ⚠️ Unaudited |
| Ice | unknown | polygon | n/a | [`0x4a81f8...93f2ef`](./contracts/polygon-137/0x4a81f8796e0c6ad4877a51c86693b0de8093f2ef/) | ⚠️ Unaudited |
| IronChef | unknown | avalanche | n/a | [`0x073667...6dfc47`](./contracts/avalanche-43114/0x073667be2bc3efc8c03caf6c35632eb8ad6dfc47/) | ⚠️ Unaudited |
| IronController | unknown | polygon | n/a | [`0x0bc3d1...6b4ce7`](./contracts/polygon-137/0x0bc3d131723454748669275a0132959dba6b4ce7/) | ⚠️ Unaudited |
| IronInterestRateModel | unknown | polygon | n/a | [`0xa88631...659a50`](./contracts/polygon-137/0xa88631425208fffd31a4d2c6e4efd76cf8659a50/) | ⚠️ Unaudited |
| IronLens | unknown | polygon | n/a | [`0x5bd51b...d1e90d`](./contracts/polygon-137/0x5bd51b08f8328bf165194c2830e690ca93d1e90d/) | ⚠️ Unaudited |
| IronPool | unknown | polygon | n/a | [`0x27371d...50f701`](./contracts/polygon-137/0x27371de574ef0d678a6bf0d9cf885afcbe50f701/) | ⚠️ Unaudited |
| IronPriceOracle | unknown | polygon | n/a | [`0x1ab1e8...3b9121`](./contracts/polygon-137/0x1ab1e832701352c3fdafa1dca28f330a613b9121/) | ⚠️ Unaudited |
| IronStableCoin | unknown | polygon | n/a | [`0xdfda34...c21e91`](./contracts/polygon-137/0xdfda34cf96dd5daad963959450169d92a2c21e91/) | ⚠️ Unaudited |
| IronSwap | unknown | polygon | n/a | [`0x0455be...16a90f`](./contracts/polygon-137/0x0455be151bcc3e7138bcece248fe91b91416a90f/) | ⚠️ Unaudited |
| IronSwapLib | unknown | polygon | n/a | [`0x1ec6c0...7f6b45`](./contracts/polygon-137/0x1ec6c0bda42ffd865c708ea8bf22f173287f6b45/) | ⚠️ Unaudited |
| IronSwapRouter | unknown | polygon | n/a | [`0x07ff55...a983a8`](./contracts/polygon-137/0x07ff5545e69f6129413c17e9ddea2e58aca983a8/) | ⚠️ Unaudited |
| IronTreasuryProxy | unknown | polygon | n/a | [`0xb96d27...e01084`](./contracts/polygon-137/0xb96d276b2f5cb894d6927b75cd3c791e15e01084/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | polygon | n/a | [`0x020ad4...3ddbba`](./contracts/polygon-137/0x020ad4fcfd4a57ac25354451f5a4e4a4543ddbba/) | ⚠️ Unaudited |
| Lottery | unknown | polygon | n/a | [`0x12d053...c6d4c2`](./contracts/polygon-137/0x12d0532375f584467f22f364b4a16ffbcbc6d4c2/) | ⚠️ Unaudited |
| LPToken | unknown | polygon | n/a | [`0x49e78c...addf54`](./contracts/polygon-137/0x49e78cfe7cbf9178598d9cbe7d27254c3baddf54/) | ⚠️ Unaudited |
| MasterChef | unknown | polygon | n/a | [`0x08b524...37386e`](./contracts/polygon-137/0x08b5249f1fee6e4fcf8a7113943ed6796737386e/) | ⚠️ Unaudited |
| MasterChefFund | unknown | polygon | n/a | [`0xf622a4...a8666b`](./contracts/polygon-137/0xf622a4e83ecbcfb7d8cb3007a3c6b03bcda8666b/) | ⚠️ Unaudited |
| Maximillion | unknown | polygon | n/a | [`0x550252...de4240`](./contracts/polygon-137/0x550252a93a25a452b654ced7cca9b99511de4240/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | polygon | n/a | [`0x77eb90...ac0ae7`](./contracts/polygon-137/0x77eb900076cf04865f3491f47e18024c01ac0ae7/) | ⚠️ Unaudited |
| MockCollateral | unknown | polygon | n/a | [`0x4bea91...0f8286`](./contracts/polygon-137/0x4bea91e7c4a1da95e27c850d00ad010b420f8286/) | ⚠️ Unaudited |
| MockERC20 | unknown | polygon | n/a | [`0x669b4d...a57a1d`](./contracts/polygon-137/0x669b4d39d1540cbde54d5f3ee2ad2edcc6a57a1d/) | ⚠️ Unaudited |
| Multicall | unknown | polygon | n/a | [`0x2c738a...cb4d7e`](./contracts/polygon-137/0x2c738aabbd2fa2e7a789433965beeb7429cb4d7e/) | ⚠️ Unaudited |
| MultiPairOracle | unknown | polygon | n/a | [`0xe7f488...2e4b53`](./contracts/polygon-137/0xe7f488fdf6cc801cb6d668a40f91d297b02e4b53/) | ⚠️ Unaudited |
| PcsPairOracle | unknown | polygon | n/a | [`0x43d2b5...d083a8`](./contracts/polygon-137/0x43d2b573d7803bcc023eef38ddc07b12c2d083a8/) | ⚠️ Unaudited |
| Pool | unknown | polygon | n/a | [`0x2a440f...e46dd9`](./contracts/polygon-137/0x2a440f1ef9f08041de7ebef2da65672503e46dd9/) | ⚠️ Unaudited |
| PriceReporter | unknown | polygon | n/a | [`0x01f44b...be2eed`](./contracts/polygon-137/0x01f44ba5173a89a5368b944ab47dde9eafbe2eed/) | ⚠️ Unaudited |
| PrizeReservePool | unknown | polygon | n/a | [`0x18f9fe...9fda44`](./contracts/polygon-137/0x18f9fe4a1e312c4ae0234d6962e0297c5b9fda44/) | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | polygon | n/a | [`0x0dd560...73f2af`](./contracts/polygon-137/0x0dd560067d9f16acd0c09c8d9a6c68be3d73f2af/) | ⚠️ Unaudited |
| RErc20Delegate | unknown | polygon | n/a | [`0x186c41...543b61`](./contracts/polygon-137/0x186c4137136970739b472a8192d3d2afc5543b61/) | ⚠️ Unaudited |
| RErc20Delegator | unknown | polygon | n/a | [`0x19d467...cc7ad6`](./contracts/polygon-137/0x19d467baa1fecaa98b6e135d5b2800f43ecc7ad6/) | ⚠️ Unaudited |
| REther | unknown | polygon | n/a | [`0x4f8d28...512a73`](./contracts/polygon-137/0x4f8d28180a23a1cbd59ba1cd1ea2822c66512a73/) | ⚠️ Unaudited |
| REtherRepayDelegate | unknown | polygon | n/a | [`0xa0c222...fcfd6b`](./contracts/polygon-137/0xa0c22204dc8ce0235dac9740c56468bf30fcfd6b/) | ⚠️ Unaudited |
| RewardEstimator | unknown | polygon | n/a | [`0x416ecd...6d4148`](./contracts/polygon-137/0x416ecd9fdeb00666c464a6c07748bd60406d4148/) | ⚠️ Unaudited |
| RewardToken | unknown | polygon | n/a | [`0x4c9395...8ed29a`](./contracts/polygon-137/0x4c93950fe844c367f1c661b79b666be2b88ed29a/) | ⚠️ Unaudited |
| Router | unknown | polygon | n/a | [`0x70cfb5...6e51e5`](./contracts/polygon-137/0x70cfb5120eca3e4af977e20729d48a94a66e51e5/) | ⚠️ Unaudited |
| RouteRepository | unknown | polygon | n/a | [`0xe557f5...8b920f`](./contracts/polygon-137/0xe557f5a136c6e44f945fd88f89688479cc8b920f/) | ⚠️ Unaudited |
| RStable | unknown | polygon | n/a | [`0x0141f5...7232bd`](./contracts/polygon-137/0x0141f5906e09946944914bbca062dbc5d17232bd/) | ⚠️ Unaudited |
| RStableDelegate | unknown | polygon | n/a | [`0x09ca5d...788c17`](./contracts/polygon-137/0x09ca5d827712dd7b2570fd534305b663ae788c17/) | ⚠️ Unaudited |
| RStableDelegator | unknown | polygon | n/a | [`0x2a9d55...28e9ca`](./contracts/polygon-137/0x2a9d5506bd0fcbdf645262056a86f4c79028e9ca/) | ⚠️ Unaudited |
| Share | unknown | polygon | n/a | [`0x5c990c...676534`](./contracts/polygon-137/0x5c990c8af8a00f8b792db6b842418be0dd676534/) | ⚠️ Unaudited |
| ShareOracle | unknown | polygon | n/a | [`0x57e4d8...392bdf`](./contracts/polygon-137/0x57e4d84cdb0b16ac3e7ed10d818741341f392bdf/) | ⚠️ Unaudited |
| SimpleERC20 | unknown | polygon | n/a | [`0x6987b1...a8c385`](./contracts/polygon-137/0x6987b151d2b34503b758a42fb1c036dae4a8c385/) | ⚠️ Unaudited |
| SpotPriceGetter | unknown | polygon | n/a | [`0x5d9ea8...01ffba`](./contracts/polygon-137/0x5d9ea8a457e26470767afb2fa29113a2dd01ffba/) | ⚠️ Unaudited |
| SpotPriceLens | unknown | polygon | n/a | [`0x2712c5...7d7245`](./contracts/polygon-137/0x2712c5fdd2309ca4b597b4f941dc4f76ae7d7245/) | ⚠️ Unaudited |
| StableSwapLib | unknown | polygon | n/a | [`0x0958ef...470c0c`](./contracts/polygon-137/0x0958efd2c090456c2ee3c7591ee62c8d0c470c0c/) | ⚠️ Unaudited |
| StrategyIronV2Chef | unknown | polygon | n/a | [`0x39ff35...fa4ffe`](./contracts/polygon-137/0x39ff3528c15782342a8fb571568dc2ff8dfa4ffe/) | ⚠️ Unaudited |
| Swap | unknown | polygon | n/a | [`0x469fee...3cbb24`](./contracts/polygon-137/0x469fee5d89bc2d16ebbf87b1454edf00783cbb24/) | ⚠️ Unaudited |
| TaxService | unknown | polygon | n/a | [`0x46532d...211e29`](./contracts/polygon-137/0x46532df8ad630449a0971600acdb792c60211e29/) | ⚠️ Unaudited |
| Ticket | unknown | polygon | n/a | [`0x3dbd17...485e8c`](./contracts/polygon-137/0x3dbd178e280e35760dcefc8f283958c673485e8c/) | ⚠️ Unaudited |
| Timelock | unknown | polygon | n/a | [`0x18bf03...140cd0`](./contracts/polygon-137/0x18bf0306dde36b520a7aec43a5134d8b08140cd0/) | ⚠️ Unaudited |
| TitanVoteCount | unknown | polygon | n/a | [`0xd8fe1c...213b0d`](./contracts/polygon-137/0xd8fe1c2b940b385918a281a575fbcd44f4213b0d/) | ⚠️ Unaudited |
| TokenBurner | unknown | polygon | n/a | [`0x1d98b3...7ed212`](./contracts/polygon-137/0x1d98b30e89bf50dfb3aca629070658b0c87ed212/) | ⚠️ Unaudited |
| Treasury | unknown | polygon | n/a | [`0x376b9e...124825`](./contracts/polygon-137/0x376b9e0abbde0ca068defcd8919ca73369124825/) | ⚠️ Unaudited |
| TreasuryFund | unknown | polygon | n/a | [`0x11dd63...660948`](./contracts/polygon-137/0x11dd6388afbe84628766c39fef96eb5e73660948/) | ⚠️ Unaudited |
| TreasuryPolicy | unknown | polygon | n/a | [`0x2af231...354735`](./contracts/polygon-137/0x2af231677d44875ee5459ec13b9c1117cd354735/) | ⚠️ Unaudited |
| UniPriceFeed | unknown | polygon | n/a | [`0xdfb61c...98eb13`](./contracts/polygon-137/0xdfb61c43c9b09922a80abe2220612b27c298eb13/) | ⚠️ Unaudited |
| Unitroller | unknown | polygon | n/a | [`0x54c6d8...4f38d6`](./contracts/polygon-137/0x54c6d825b3a7c225b4ef9e49a4d33d4f084f38d6/) | ⚠️ Unaudited |
| VaultController | unknown | polygon | n/a | [`0xade32e...47fc1b`](./contracts/polygon-137/0xade32e79bdf422a83b091e39dd2a26bce547fc1b/) | ⚠️ Unaudited |
| VaultFactory | unknown | polygon | n/a | [`0x2567e9...16a477`](./contracts/polygon-137/0x2567e9f47cd94a1f75d90e9190f4468b6a16a477/) | ⚠️ Unaudited |
| VaultFactoryV2 | unknown | polygon | n/a | [`0x3d3d3c...88ef44`](./contracts/polygon-137/0x3d3d3cdce398ceaa21636d674cae3964e988ef44/) | ⚠️ Unaudited |
| VaultPolicy | unknown | polygon | n/a | [`0x06b025...db62ca`](./contracts/polygon-137/0x06b025daf1a53743de2fdd705b47344cb5db62ca/) | ⚠️ Unaudited |
| VotingEscrowToken | unknown | polygon | n/a | [`0xbf1b2b...049ff7`](./contracts/polygon-137/0xbf1b2b7e39746362f5f23570485997fb94049ff7/) | ⚠️ Unaudited |
| Zap | unknown | polygon | n/a | [`0x364475...ac1911`](./contracts/polygon-137/0x364475db0324b263e39693342906ba846cac1911/) | ⚠️ Unaudited |
| ZapPool | unknown | polygon | n/a | [`0x3e2662...65739a`](./contracts/polygon-137/0x3e26628583324623be043de9ab35b9011765739a/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 83 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
