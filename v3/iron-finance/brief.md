# Agentic Audit Brief: Iron Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Iron Finance (`iron-finance`)
- Website: [https://iron.finance/](https://iron.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, fantom, polygon
- Contract surface: 83 unique implementations (83 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $448,975.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Iron Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, polygon. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/83
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlueIce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1bf26c7b43d2485fa07694583d2f17df0dde010` | ⚠️ Unaudited |
| BlueIceStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcffc0c2a7456de0145def3aab731b36375def7d2` | ⚠️ Unaudited |
| BlueIceStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d88a7052310880eda1f7826c7c8a2c6842399d5` | ⚠️ Unaudited |
| BlueIceVotingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeeb88963647d4306ae03bf8ab18aa2ed9f855024` | ⚠️ Unaudited |
| CollateralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x785808779131b0947f42b4b54537a4682ebeab86` | ⚠️ Unaudited |
| CollateralRatioPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26700497c9302478bb0636a653c3d2ea64dc15e9` | ⚠️ Unaudited |
| CollateralRatioPolicyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25d4a26714d418b7d3e98dd9cff6c7682059b47f` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ec0bf4f783fd851dd3e0d7d0c7ecb31674b8db2` | ⚠️ Unaudited |
| ConsolidatedFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f743919dd5ea3d90f985a1d5c7b1719e8d2f59d` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2c095c1987e7a0a6c4aac4e51a3ae1d411a183a` | ⚠️ Unaudited |
| DollarOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2321394d45a58807f56439be0bd9071b255a133f` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e55d522af8ee5b3ae5528b2ba2b4cd6f92c4f66` | ⚠️ Unaudited |
| EmptyTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7784ed425c8d0eea1b09ece80f08d46787862c8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0xf0e515dac20f68b841d1ae1df8ab24818870c1ba` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08bb70d9ecf2bde15e1ec8a57ee1cb6e7d018510` | ⚠️ Unaudited |
| FixedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c73c94f559c0202e71769b1b64d999cb13cf5ff` | ⚠️ Unaudited |
| FixedShareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x483dfda87bfef85fe6ab0462310a00dc8e344140` | ⚠️ Unaudited |
| FixedTitanOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f8095f94c91e60f577fc37a6a36519888f44348` | ⚠️ Unaudited |
| FundDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb627dc38bcbc9d2b71564ec2db93ff8cc267420e` | ⚠️ Unaudited |
| Ice | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-243165 | `0x4a81f8796e0c6ad4877a51c86693b0de8093f2ef` | ⚠️ Unaudited |
| IronChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x073667be2bc3efc8c03caf6c35632eb8ad6dfc47` | ⚠️ Unaudited |
| IronController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bc3d131723454748669275a0132959dba6b4ce7` | ⚠️ Unaudited |
| IronInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa88631425208fffd31a4d2c6e4efd76cf8659a50` | ⚠️ Unaudited |
| IronLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bd51b08f8328bf165194c2830e690ca93d1e90d` | ⚠️ Unaudited |
| IronPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27371de574ef0d678a6bf0d9cf885afcbe50f701` | ⚠️ Unaudited |
| IronPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ab1e832701352c3fdafa1dca28f330a613b9121` | ⚠️ Unaudited |
| IronStableCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfda34cf96dd5daad963959450169d92a2c21e91` | ⚠️ Unaudited |
| IronSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0455be151bcc3e7138bcece248fe91b91416a90f` | ⚠️ Unaudited |
| IronSwapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ec6c0bda42ffd865c708ea8bf22f173287f6b45` | ⚠️ Unaudited |
| IronSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07ff5545e69f6129413c17e9ddea2e58aca983a8` | ⚠️ Unaudited |
| IronTreasuryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb96d276b2f5cb894d6927b75cd3c791e15e01084` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x020ad4fcfd4a57ac25354451f5a4e4a4543ddbba` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12d0532375f584467f22f364b4a16ffbcbc6d4c2` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49e78cfe7cbf9178598d9cbe7d27254c3baddf54` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08b5249f1fee6e4fcf8a7113943ed6796737386e` | ⚠️ Unaudited |
| MasterChefFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf622a4e83ecbcfb7d8cb3007a3c6b03bcda8666b` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x550252a93a25a452b654ced7cca9b99511de4240` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77eb900076cf04865f3491f47e18024c01ac0ae7` | ⚠️ Unaudited |
| MockCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bea91e7c4a1da95e27c850d00ad010b420f8286` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x669b4d39d1540cbde54d5f3ee2ad2edcc6a57a1d` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c738aabbd2fa2e7a789433965beeb7429cb4d7e` | ⚠️ Unaudited |
| MultiPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7f488fdf6cc801cb6d668a40f91d297b02e4b53` | ⚠️ Unaudited |
| PcsPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43d2b573d7803bcc023eef38ddc07b12c2d083a8` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a440f1ef9f08041de7ebef2da65672503e46dd9` | ⚠️ Unaudited |
| PriceReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01f44ba5173a89a5368b944ab47dde9eafbe2eed` | ⚠️ Unaudited |
| PrizeReservePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18f9fe4a1e312c4ae0234d6962e0297c5b9fda44` | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dd560067d9f16acd0c09c8d9a6c68be3d73f2af` | ⚠️ Unaudited |
| RErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x186c4137136970739b472a8192d3d2afc5543b61` | ⚠️ Unaudited |
| RErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19d467baa1fecaa98b6e135d5b2800f43ecc7ad6` | ⚠️ Unaudited |
| REther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f8d28180a23a1cbd59ba1cd1ea2822c66512a73` | ⚠️ Unaudited |
| REtherRepayDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c22204dc8ce0235dac9740c56468bf30fcfd6b` | ⚠️ Unaudited |
| RewardEstimator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x416ecd9fdeb00666c464a6c07748bd60406d4148` | ⚠️ Unaudited |
| RewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c93950fe844c367f1c661b79b666be2b88ed29a` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70cfb5120eca3e4af977e20729d48a94a66e51e5` | ⚠️ Unaudited |
| RouteRepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe557f5a136c6e44f945fd88f89688479cc8b920f` | ⚠️ Unaudited |
| RStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0141f5906e09946944914bbca062dbc5d17232bd` | ⚠️ Unaudited |
| RStableDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x09ca5d827712dd7b2570fd534305b663ae788c17` | ⚠️ Unaudited |
| RStableDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2a9d5506bd0fcbdf645262056a86f4c79028e9ca` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c990c8af8a00f8b792db6b842418be0dd676534` | ⚠️ Unaudited |
| ShareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57e4d84cdb0b16ac3e7ed10d818741341f392bdf` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6987b151d2b34503b758a42fb1c036dae4a8c385` | ⚠️ Unaudited |
| SpotPriceGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d9ea8a457e26470767afb2fa29113a2dd01ffba` | ⚠️ Unaudited |
| SpotPriceLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2712c5fdd2309ca4b597b4f941dc4f76ae7d7245` | ⚠️ Unaudited |
| StableSwapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0958efd2c090456c2ee3c7591ee62c8d0c470c0c` | ⚠️ Unaudited |
| StrategyIronV2Chef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39ff3528c15782342a8fb571568dc2ff8dfa4ffe` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x469fee5d89bc2d16ebbf87b1454edf00783cbb24` | ⚠️ Unaudited |
| TaxService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46532df8ad630449a0971600acdb792c60211e29` | ⚠️ Unaudited |
| Ticket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3dbd178e280e35760dcefc8f283958c673485e8c` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18bf0306dde36b520a7aec43a5134d8b08140cd0` | ⚠️ Unaudited |
| TitanVoteCount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8fe1c2b940b385918a281a575fbcd44f4213b0d` | ⚠️ Unaudited |
| TokenBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d98b30e89bf50dfb3aca629070658b0c87ed212` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x376b9e0abbde0ca068defcd8919ca73369124825` | ⚠️ Unaudited |
| TreasuryFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11dd6388afbe84628766c39fef96eb5e73660948` | ⚠️ Unaudited |
| TreasuryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2af231677d44875ee5459ec13b9c1117cd354735` | ⚠️ Unaudited |
| UniPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfb61c43c9b09922a80abe2220612b27c298eb13` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x54c6d825b3a7c225b4ef9e49a4d33d4f084f38d6` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xade32e79bdf422a83b091e39dd2a26bce547fc1b` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2567e9f47cd94a1f75d90e9190f4468b6a16a477` | ⚠️ Unaudited |
| VaultFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d3d3cdce398ceaa21636d674cae3964e988ef44` | ⚠️ Unaudited |
| VaultPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06b025daf1a53743de2fdd705b47344cb5db62ca` | ⚠️ Unaudited |
| VotingEscrowToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf1b2b7e39746362f5f23570485997fb94049ff7` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x364475db0324b263e39693342906ba846cac1911` | ⚠️ Unaudited |
| ZapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e26628583324623be043de9ab35b9011765739a` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

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
