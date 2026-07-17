# Agentic Audit Brief: Segment Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Segment Finance (`segment-finance`)
- Website: [https://segment.finance](https://segment.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, opbnb
- Contract surface: 95 unique implementations (153 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $510,615.23
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Segment Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 48 contract row(s) across bsc, ethereum, opbnb. Structural roles: 23 core, 13 unclassified, 12 supporting. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 48
- Structural roles: core (23), unclassified (13), supporting (12)
- Contract kinds: contract (42), abstract (6)
- Detected standards: erc20 (16), ownable (6), erc1967proxy (5), erc165 (3), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (23), openzeppelin-upgradeable (5), foundry (1)
- Upgradeable-pattern rows: 8

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 48; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 35 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 60 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/87
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 95
- Raw deployments: 153
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0x593b643ba410b30584be69add9785050f491d1f6`; opbnb `0x2e81af8bdb43eaacf96d79145b36abc2407cc80a` | ⚠️ Unaudited |
| BEP20BandProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad6caeb32cd2c308980a548bd0bc5aa4306c6c18` | ⚠️ Unaudited |
| BEP20BitcoinCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ff795a6f4d97e7887c79bea79aba5cc76444adf` | ⚠️ Unaudited |
| BEP20EOS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56b6fb708fc5732dec1afc8d8556423a2edccbd6` | ⚠️ Unaudited |
| BEP20Ethereum | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254585 | `0x2170ed0880ac9a755fd29b2688956bd959f933f8` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ⚠️ Unaudited |
| BEP20Ontology | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd7b3a77848f1c2d67e05e54d78d174a0c850335` | ⚠️ Unaudited |
| BEP20Polkadot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7083609fce4d1d8dc0c979aab8c869ea2c873402` | ⚠️ Unaudited |
| BEP20Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254611 | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 11 | bsc | n/a | 11 deployments: bsc `0x1fa4a73a3f0133f0025378af00236f3abdee5d63`; bsc `0x3d6545b08693dae087e957cb1180ee38b9e3c25e`; bsc `0x7950865a9140cb519342433146ed5b40c6f210f7`; bsc `0x947950bcc74888a40ffa2593c5798f11fc9124c4`; bsc `0x9a2f5556e9a637e8fbce886d8e3cf8b316a1d8a2`; bsc `0xa2b726b1145a4773f68593cf171187d8ebe4d495`; bsc `0xb7f8cd00c5a06c0537e2abff0b58033d02e5e094`; bsc `0xbf7c81fff98bbe61b40ed186e4afd6ddd01337fe`; bsc `0xd475c9c934dcd6d5f1cac530585aa5ba14185b92`; bsc `0xdd3c817354e3855ef2b52d15ad2244793c50385a`; bsc `0xfb6115445bff7b52feb98650c87f44907e58f802` | ⚠️ Unaudited |
| BEP20TokenImplementation | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254667 | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ⚠️ Unaudited |
| BEP20TokenImplementationV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x250632378e573c6be1ac2f97fcdf00515d0aa91b` | ⚠️ Unaudited |
| BEP20USDT | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254601 | `0x55d398326f99059ff775485246999027b3197955` | ⚠️ Unaudited |
| BEP20YFII | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f70642d88cf1c4a3a7abb072b53b929b653eda5` | ⚠️ Unaudited |
| BinanceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71b5cd8e8ea2dc81fdd49ede79ea7c65a2f79cf2` | ⚠️ Unaudited |
| BinanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | opbnb | n/a | 2 deployments: opbnb `0x15cb42a8bc953ba604cf17dcbaa7d78b235979bf`; opbnb `0x8769277379fbb80e28666238e98f67ebbdb4fff7` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x52cbc84d272abe5c2cf0d62a9b486114953f7d74` | ⚠️ Unaudited |
| BoundValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | opbnb | n/a | 2 deployments: opbnb `0x76e6ee5a0dade9a47b60f3320b1b05dd0b86ecb2`; opbnb `0x7b6c69200fcee97aa65c6fa992af2e38a24121be` | ⚠️ Unaudited |
| ChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdaaf3c2454340e5fa6c1754b8e88b1586a30aeb0` | ⚠️ Unaudited |
| ComptrollerLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0x69c577f76bdebcaaaae12bcc0c25b692ba33af77`; opbnb `0x3c6f2c03676ef169714d7fa74ad8eaad8d5ee1d5` | ⚠️ Unaudited |
| Diamond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254671 | 2 deployments: bsc `0x57e09c96daee58b77dc771b017de015c38060173`; bsc `0xdeb81884f0405aaa777744a57e8f1097e0c92fa5` | ⚠️ Unaudited |
| Diamond | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254655 | 2 deployments: opbnb `0x71ac0e9a7113130280040d0189d0556f45a8cbb5`; opbnb `0xae2a97297ea09f82229076c9caff7c00a6140817` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254660 | `0xd76d8ca186690ca2b6e0f6e3c5282da70fb1df3c` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1f41cfbbf95bac4f5a220700f78dbaa1e34b97d1` | ⚠️ Unaudited |
| HypFiatToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254659 | 2 deployments: bsc `0x1b993debdfa1ff322a91ca0963cea42735ca68c6`; bsc `0xf0a54a488e0324e7d9d595cb648b1576b6ee3862` | ⚠️ Unaudited |
| HypFiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x69a6b3b96b26a15a588081df17f46d61f625741c`; bsc `0x7d6549aa8bfd0d3068a2690010fec0fa6edebbc1` | ⚠️ Unaudited |
| JumpRateModel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254607 | `0x62bb16e419fe71d9e42b1c77c806102ac1b86d0a` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 12 deployments: bsc `0x373d3d015583fd0a8aa6120211b24dbeb9e18850`; bsc `0x46bdb802a3758b38236d832a074126655db3a6a5`; bsc `0x4da4a8fadc2906ea08a369c21013551c64252b0f`; bsc `0x6a4e7e205801f8999a2a5f39f9ad83f616d35ecd`; bsc `0x8c248e305c2ca62f942f3f2f2c4acab46f295f75`; bsc `0xac4abaa93740d6b6d7e91aeb92c53da76b337aef`; bsc `0xe500c58b4e7667532ca39b3b770dd02fd4e9b47e`; bsc `0xec430a0c8d2c11f0df864a9d7879b9a8ad0ca8dc`; opbnb `0x0db993d4917581444395ee54566a632831ec2087`; opbnb `0x29797f6c9bdb375818fcb16c5565c31becba8d3f`; opbnb `0x8b5abbf3c0d9914442a6b95f7ac5f96b5eaec17c`; opbnb `0xb161fc2e23843ba47e1b479d42ec6eff8c0511d8` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254571 | `0x882cc1dcf920ca591004706b0b71db0afbe181f8` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x04ee3f93c686082be14fb1bd7f02a167b51c678a`; bsc `0x099f50ad9507556c5a15131e35fa10c409bfdb20` | ⚠️ Unaudited |
| LiquidityGenerator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254649 | `0xf1c743cc02eb58bdba48cea7137570f18b05fc12` | ⚠️ Unaudited |
| MarketFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xeebe1abc85014b114d691ec1f0d72c38001b3d3d`; opbnb `0xc708fa2dcc61e0f8c9f3cb3c1328a1226c8731cc` | ⚠️ Unaudited |
| Multicall3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xcefe1d8291de82fcd7e8225affed20276202bc7d`; opbnb `0xa3852e58d75fb6bf9315ab1bb78e808a0b5276bd` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x50c5725949a6f0c72e6c4a641f24049a917db0cb` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254569 | `0x7c6b91d9be155a6db01f749217d76ff02a7227f2` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254572 | `0x9e5aac1ba1a2e6aed6b32689dfcf62a509ca96f3` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254576 | `0xe7798f023fc62146e8aa1b36da45fb70855a77ea` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254595 | `0x48758b4aee6f6752830fa86dedc7ce919ea97155` | ⚠️ Unaudited |
| OwnedDistributor | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254640 | `0xd5f76751784e8e96966cbf8cff026a1b7caf0626` | ⚠️ Unaudited |
| PolicyFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x07b9b9bdc4dc65f177f7b45320338ec05f47f45e`; opbnb `0x5fa783032181ca993bc9aa8684240114344d92b7` | ⚠️ Unaudited |
| PoolLens | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254615 | `0x759dd15bb7d910269a3b2b5d4bbc6953c91c4cbe` | ⚠️ Unaudited |
| PoolLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254568 | `0x7a72b36e69d95e9bbd60ae5f5f55a80c767435fb` | ⚠️ Unaudited |
| PoolRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254658 | 2 deployments: bsc `0x0c6690df4ade82435e1dcc41d010b368103b27d5`; bsc `0xb5983ac361c827add2aeeff800034174f9f54cf4` | ⚠️ Unaudited |
| PoolRegistry | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254654 | 2 deployments: opbnb `0x5c9bf9c77c66fb59590acd2a7eac21601ee933be`; opbnb `0xe890d810332bf468c56dcb3ceee1e3c5299ecb83` | ⚠️ Unaudited |
| Proxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x36c12bec21bc4bfa9860139b95fd765c41f8480e`; bsc `0x4cafd82ba11f41f97374292064354bb72b88b72c`; bsc `0xcf00bde51a23b97286d3104802d8ad9c2de11881` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc99f23af49fe9ccf65bf61f1e7bbc54f14bea92` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254669 | 2 deployments: bsc `0x763217cfefac3b26191b1dcae1926f65157b9a05`; bsc `0xba86bce76e4b940371b3093118d0074278e578eb` | ⚠️ Unaudited |
| ResilientOracle | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254657 | 2 deployments: opbnb `0xaacf634dd705d37e94c38ea68384e669d2b4d491`; opbnb `0xe9ad4be42b717b0cd3b38be5d05729b51d0ad469` | ⚠️ Unaudited |
| RewardFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x674b1c283ff5ca1fd7c9cd4caa0a55311dd8cd61`; opbnb `0x6e5530b55bcf49dcac8f1244411622a7b4e1ed2f` | ⚠️ Unaudited |
| S1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d731723cb5f7055c80c28e77062a80fb24e4ef5` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 4 | bsc | unit-254664 (4 proxies) | 5 deployments: bsc `0x12cd46b96fe0d86e396248a623b81fd84dd0f61d`; bsc `0x3821175e59cd0acda6c5fd3ebb618b204e5d7eed`; bsc `0x44b1e0f4533fd155b9859a9db292c90e5b300119`; bsc `0x8969b89d5f38359fbe95bbe392f5ad82dd93e226`; bsc `0x9c1f9b823b5aa5352831f050178fdd9b3503677f` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x24a8117bf6f4a5be6759918f7c111f279a999ef3` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | opbnb | unit-254656 | 2 deployments: opbnb `0x7add376cf7b33b7d09b0f0f4ef0a741c3cb95102`; opbnb `0xbe7c6bed5c0b79c3be45b1013f12a98c533c4798` | ⚠️ Unaudited |
| SeBep20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | opbnb | n/a | `0xfe62ba7400d902a9773da9f7469da457cf54a565` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x07b4fbc9b123ac8eed171372969dd55410946d75`; bsc `0xf8adf750633b8f95aa00bdbe2ed2924b6c386004` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254566 | `0x567558167f102bb45c0437f1fd5a527c5c534c3c` | ⚠️ Unaudited |
| SeBep20Delegator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254570 | `0x81b98b2896f1f262714f12be36264aa8e02a08d2` | ⚠️ Unaudited |
| SeBNB | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254605 | `0x5fcea94b96858048433359bb5278a402363328c3` | ⚠️ Unaudited |
| SeBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7e844423510a5081de839e600f7960c7ce84eb82` | ⚠️ Unaudited |
| SEF | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254603 | `0x5de40c1152c990492eaeaeecc4ecaab788bbc4fd` | ⚠️ Unaudited |
| SEFStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d7e06cfc08348f4114dad2d1665474a55ab446d` | ⚠️ Unaudited |
| SEFTeamVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ee114cf4a5b7873cc183c8d85bda0026caae48a` | ⚠️ Unaudited |
| SEFVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | bsc | unit-254662 | 2 deployments: bsc `0x409db442b65e3f034a6a9d938d512bcecb13b160`; bsc `0xc6bcbe182b0f85dbff6b49dc81cecee02a16fe57` | ⚠️ Unaudited |
| SEFVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4372c35a70d299678e12a7529bd0c3b15efd8e18`; bsc `0xf58defeb311f10343b1af216b2f35a0a365d59d2` | ⚠️ Unaudited |
| SEFVaultDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x11844e2f0f9904a24290f784809ff4ff20d43521`; bsc `0xd1449974b4302107977b77b382865053de53e5a0` | ⚠️ Unaudited |
| SEFVaultDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x81c2be2b48cdc0f57fd3e11357c29cf3f35b5b14`; bsc `0xeddaa1c5d0aaeb05f3e2415026af5df2b03d2000` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x0b9c8c4612bd93fd1c351c960b6eaec66472fc7e`; bsc `0x5d7c4fa3ff3c3b020095c96b37797bca292c9b86` | ⚠️ Unaudited |
| SEFVaultDistributorBacker | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x8404f19cb0490b424f9848ae568a28cfd5af6090`; bsc `0xa609d4f86ba67904d8da16f485e920037b431c1b`; bsc `0xe020895566e2cdf0d3ad67bc9770d8af43619e50` | ⚠️ Unaudited |
| SEFVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x855826b8492b137b84b3a4a445ef573a7c2c4ac6` | ⚠️ Unaudited |
| SEFVestingProxy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05357a9bda81ca7184e7ac15e5f885b67e4d94bd` | ⚠️ Unaudited |
| SegmentLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254590 | `0x31e98e70470d06955fb2634f3080ea663646856b` | ⚠️ Unaudited |
| SegmentLens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254578 | `0xf9fd960104998b981b0ecda4becda8f601a817e6` | ⚠️ Unaudited |
| SequenceUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xb40d2ba22217c24cee52e28755bb4a2275a8e1e1`; opbnb `0x9182c733d52f1662c278ba089d2e9f7e6aca7646` | ⚠️ Unaudited |
| SetterFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadbfba66c5634825a720c2f23be36ae42367c0bf` | ⚠️ Unaudited |
| SetterFacet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254561 | `0x1d6c4696a2c047807f5d938b046ec38e70bba289` | ⚠️ Unaudited |
| STreasury | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254593 | `0x3a833e6e977e0442e3cbe911507f8d9178f134b9` | ⚠️ Unaudited |
| STreasury | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | opbnb | unit-254562 | `0x2f67784d367bab5fd7b8dc607504e0c8de0ad696` | ⚠️ Unaudited |
| STreasuryThena | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbab56fe68fff46a0ab1f03728abad41b2588a983` | ⚠️ Unaudited |
| TeamBacker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x3c888533efbba81b64f6eb30708a539f997384fd`; bsc `0x849a60e159981f88d9794dba8de7a0487e251d90` | ⚠️ Unaudited |
| THENADistributionFix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5edbe01a401aee1844b0e45c720b2a2ed2f2e4d5` | ⚠️ Unaudited |
| ThenaTwapOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x01275690da9dca1f1d032897c9f3ea4d91db7c9f`; bsc `0xdbdbc23aeca0068026280a59aeb26c97925da93b` | ⚠️ Unaudited |
| Timelock | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-254637 | `0xc835e17ca0b709527f94c345d4d7aa3b3069a4ec` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x26322ea932ad0be842901a881cdb5bdf81e5d3a1` | ⚠️ Unaudited |
| V1PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | 2 deployments: bsc `0xf88af457ffa385ee115d794558dd0530fbf3b590`; opbnb `0x3de14cf61bf658fc327486b8c03d8085ac88e944` | ⚠️ Unaudited |
| VestedAirdrops | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x590dde1729919205e76dbc295fad8d9437f2d3dd` | ⚠️ Unaudited |
| VesterSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x5713e7e4632c5592ceb520d020dd0cc0f745d0aa`; bsc `0xc83b96ecc30c6449f2627c44367d95a1a18ac564` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x301f88d95f78f07ed87598df113212ed93603e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4852c2e1ac64cc4a35e0382fe32110640fb89591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5272e4b3defff1ac5499b5a19ccb458df380114b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x687fba511dd72f1b47a6e1e9c968fb5d5e879a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc415ebe6c87567b7c5a9a140ace8c65044e25c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3f1512db6579c68ae4235b68051a7f70b08c041e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xba3835ed56a8b705a202642a83595cddc5b7b729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xec53a905a4fd8aed02464d7f7975f1f4c4f87d26` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf](https://1437394138-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcYvodOcCalriGDOIk0m4%2Fuploads%2F2aV2FDinQ3TxtFSRRnqN%2FSegment_Finance_-_Public_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Segment%20Finance%20Pool%20Register%20-%20v1.0.pdf) | Verichains | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13823] spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf — no match: Audit scope explicitly lists two files: PoolRegistry.sol and PoolRegistryInterface.sol. Audit date is Nov 21, 2023 from cover page and executive summary.
- [13824] Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf — no match: Scope explicitly lists PoolRegistry.sol and PoolRegistryInterface.sol. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf | PoolRegistry | unmatched — not counted | — | listed in scope section: 'Our audit scope encompasses only two files: PoolRegistry.sol and PoolRegistryInterface.sol' | no |
| spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf | PoolRegistryInterface | unmatched — not counted | — | listed in scope section: 'Our audit scope encompasses only two files: PoolRegistry.sol and PoolRegistryInterface.sol' | no |
| Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf | PoolRegistry | unmatched — not counted | — | listed in scope section | no |
| Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf | PoolRegistryInterface | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 1 |
| standard_library | 5 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [13823] spaces/cYvodOcCalriGDOIk0m4/uploads/2aV2FDinQ3TxtFSRRnqN/Segment_Finance_-_Public_Report.pdf
- [13824] Verichains Public Audit Report - Segment Finance Pool Register - v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
