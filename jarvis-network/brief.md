# Agentic Audit Brief: Jarvis Network

## Project Overview

- Project: Jarvis Network (`jarvis-network`)
- Website: [https://jarvis.money/](https://jarvis.money/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:25.095Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: arbitrum, avalanche, bsc, gnosis, optimism, polygon
- Contract surface: 60 unique implementations (60 raw deployments)
- DeFi Llama TVL: $266,458.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 59 project-authored contract(s) across 6 chain(s); 1 ERC4626 vault, 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (erc2771context, synthereumpoolmigrationto, synthereumpoolmigration). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 60 (59 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/59 (0.0%)
- Deployed-live implementations: 59 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AerariumSanctius | unknown | bsc | n/a | [`0x05bd55...f10eef`](./contracts/bsc-56/0x05bd55c34f9a95bddc6d9def1654616d74f10eef/) | ⚠️ Unaudited |
| AtomicSwap | unknown | polygon | n/a | [`0xb711f3...e318b8`](./contracts/polygon-137/0xb711f3a71c00d92ef862a4af2f584635dfe318b8/) | ⚠️ Unaudited |
| Aureus | unknown | polygon | n/a | [`0x6fb241...babf07`](./contracts/polygon-137/0x6fb2415463e949af08ce50f83e94b7e008babf07/) | ⚠️ Unaudited |
| CreditLine | unknown | arbitrum | n/a | [`0x873067...fe3424`](./contracts/arbitrum-42161/0x8730671642c5f0a75779b3aa7bb459f5ccfe3424/) | ⚠️ Unaudited |
| CreditLineController | unknown | arbitrum | n/a | [`0x689359...44cb11`](./contracts/arbitrum-42161/0x689359561355ef829bb6d30a9c5b0e98c544cb11/) | ⚠️ Unaudited |
| CreditLineFactory | unknown | optimism | n/a | [`0x40fed3...138706`](./contracts/optimism-10/0x40fed316f640fe2a1527d87718ea44aff1138706/) | ⚠️ Unaudited |
| CreditLineLib | unknown | polygon | n/a | [`0x58a989...179a47`](./contracts/polygon-137/0x58a98967edfb2a350c4669a4df0f6bb4ce179a47/) | ⚠️ Unaudited |
| Denarius | unknown | polygon | n/a | [`0x0e19a4...72ce9e`](./contracts/polygon-137/0x0e19a471cb537f88f9e4973c22b8b4dfda72ce9e/) | ⚠️ Unaudited |
| Disputer | unknown | polygon | n/a | [`0xf6b498...a05e4b`](./contracts/polygon-137/0xf6b498b4b93340bf912dbc7620f5a92fdea05e4b/) | ⚠️ Unaudited |
| DotDotVault | unknown | bsc | n/a | [`0x850f44...b0c7b9`](./contracts/bsc-56/0x850f4440ed50af8a46281f448d7a5a4e7eb0c7b9/) | ⚠️ Unaudited |
| ElysianFields | unknown | polygon | n/a | [`0x0ff93e...497405`](./contracts/polygon-137/0x0ff93e7ce954a7ac2adbbe8f635513cbdb497405/) | ⚠️ Unaudited |
| FeePayerPartyLib | unknown | polygon | n/a | [`0xd0b537...0ce89f`](./contracts/polygon-137/0xd0b5376b91e06fb1296f803ae8879b49740ce89f/) | ⚠️ Unaudited |
| FixedRateCurrency | unknown | polygon | n/a | [`0x00fae0...306356`](./contracts/polygon-137/0x00fae04063ea815bf371fb95af98c38bfa306356/) | ⚠️ Unaudited |
| FixedRateSwap | unknown | bsc | n/a | [`0xda0344...09ddcc`](./contracts/bsc-56/0xda03443cab512e55d672d725b7fa98275009ddcc/) | ⚠️ Unaudited |
| JarvisBrrrrr | unknown | polygon | n/a | [`0x119006...41b8be`](./contracts/polygon-137/0x1190064b16fce6e992420d1fda6416d41a41b8be/) | ⚠️ Unaudited |
| JarvisToWrapperConverter | unknown | optimism | n/a | [`0x689359...44cb11`](./contracts/optimism-10/0x689359561355ef829bb6d30a9c5b0e98c544cb11/) | ⚠️ Unaudited |
| JrtToJarvisConverter | unknown | optimism | n/a | [`0x8689d5...b4ff34`](./contracts/optimism-10/0x8689d5a117b199633a1ba5af4eb11ed0f5b4ff34/) | ⚠️ Unaudited |
| LendingManager | unknown | polygon | n/a | [`0x49a87a...31c3dc`](./contracts/polygon-137/0x49a87a3f93e883a221f6375335efc41db631c3dc/) | ⚠️ Unaudited |
| LendingStorageManager | unknown | polygon | n/a | [`0x04d620...c409e9`](./contracts/polygon-137/0x04d6206ccd424f2e82901ee1cd3982b0b9c409e9/) | ⚠️ Unaudited |
| MoneyMarketManager | unknown | bsc | n/a | [`0x2ee8db...1b0a8d`](./contracts/bsc-56/0x2ee8db7f1f64dd590a35ac3c64b3c18ac11b0a8d/) | ⚠️ Unaudited |
| OnChainLiquidityRouterV2 | unknown | polygon | n/a | [`0x0b620e...06b348`](./contracts/polygon-137/0x0b620ef38ae7d32fc62c283b10c33973ef06b348/) | ⚠️ Unaudited |
| PerpetualLiquidatablePoolPartyLib | unknown | polygon | n/a | [`0x34f7fd...a4c8ab`](./contracts/polygon-137/0x34f7fd5cd0ddd4b27073475cd494dc74a9a4c8ab/) | ⚠️ Unaudited |
| PerpetualPoolPartyLib | unknown | polygon | n/a | [`0xa513a1...822224`](./contracts/polygon-137/0xa513a13db767d4609ece1c705dbeefb0f5822224/) | ⚠️ Unaudited |
| PerpetualPositionManagerPoolPartyLib | unknown | polygon | n/a | [`0x03bc65...8864b3`](./contracts/polygon-137/0x03bc653285f8527e1c877b18df285e66898864b3/) | ⚠️ Unaudited |
| SelfMintingRegistry | unknown | polygon | n/a | [`0x1ea502...4cf61c`](./contracts/polygon-137/0x1ea5022a81bd0df1bb85085083cddd1e6a4cf61c/) | ⚠️ Unaudited |
| StakedJarvis | unknown | bsc | n/a | [`0x906b6f...f70f5b`](./contracts/bsc-56/0x906b6f2dee9f9decdf80020732dbf98f59f70f5b/) | ⚠️ Unaudited |
| StakedSyntheticTokenFactory | unknown | bsc | n/a | [`0xdc9374...b30df1`](./contracts/bsc-56/0xdc9374e34f10f33637718b63ea2bb618e8b30df1/) | ⚠️ Unaudited |
| SynthereumCCIPBridge | unknown | bsc | n/a | [`0x0818b4...f224fe`](./contracts/bsc-56/0x0818b48d171f90f8d97c6f6ebf18bc2de6f224fe/) | ⚠️ Unaudited |
| SynthereumCollateralWhitelist | unknown | avalanche | n/a | [`0x348e4b...67913d`](./contracts/avalanche-43114/0x348e4b25077c5133450edad060ea4d8db667913d/) | ⚠️ Unaudited |
| SynthereumDeployer | unknown | gnosis | n/a | [`0x02c72f...52b503`](./contracts/gnosis-100/0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503/) | ⚠️ Unaudited |
| SynthereumDerivativeFactory | unknown | polygon | n/a | [`0x2aa257...dc34c5`](./contracts/polygon-137/0x2aa25770e92de3d61544e1c5245e8c968ddc34c5/) | ⚠️ Unaudited |
| SynthereumFactoryVersioning | unknown | bsc | n/a | [`0x0374a0...b7e830`](./contracts/bsc-56/0x0374a0dc2f47ea75c900a63a244c3e6555b7e830/) | ⚠️ Unaudited |
| SynthereumFinder | unknown | avalanche | n/a | [`0x02c72f...52b503`](./contracts/avalanche-43114/0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503/) | ⚠️ Unaudited |
| SynthereumFixedRateFactory | unknown | bsc | n/a | [`0x0b247c...ae4501`](./contracts/bsc-56/0x0b247cf7d9a170acc7dd5b762c07cfc02cae4501/) | ⚠️ Unaudited |
| SynthereumFixedRateRegistry | unknown | polygon | n/a | [`0x1e522a...efcc26`](./contracts/polygon-137/0x1e522a57d089ebf7115a20d6f04dada8f8efcc26/) | ⚠️ Unaudited |
| SynthereumIdentifierWhitelist | unknown | bsc | n/a | [`0x03bc65...8864b3`](./contracts/bsc-56/0x03bc653285f8527e1c877b18df285e66898864b3/) | ⚠️ Unaudited |
| SynthereumLiquidityPoolFactory | unknown | gnosis | n/a | [`0x03bc65...8864b3`](./contracts/gnosis-100/0x03bc653285f8527e1c877b18df285e66898864b3/) | ⚠️ Unaudited |
| SynthereumLiquidityPoolLib | unknown | optimism | n/a | [`0x89b3a0...fdb21a`](./contracts/optimism-10/0x89b3a08d6f73bb44b1ff182bd7bf0590dbfdb21a/) | ⚠️ Unaudited |
| SynthereumManager | unknown | avalanche | n/a | [`0x141883...002e19`](./contracts/avalanche-43114/0x1418830ad554becaf76a4058eec6bee9ac002e19/) | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPool | unknown | optimism | n/a | [`0xaf9132...3c0928`](./contracts/optimism-10/0xaf9132b3afa36b36f6ddfff63fd40b9df43c0928/) | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolFactory | unknown | optimism | n/a | [`0x012035...e71805`](./contracts/optimism-10/0x0120358932e0ce5a7e3a3519d339289966e71805/) | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolMainLib | unknown | optimism | n/a | [`0x313f26...cc729b`](./contracts/optimism-10/0x313f266bcbd6465c10fc1f61acddbbdd60cc729b/) | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolMigrationLib | unknown | optimism | n/a | [`0x0224dc...dab50a`](./contracts/optimism-10/0x0224dca32967ebbffdeefab74526554280dab50a/) | ⚠️ Unaudited |
| SynthereumMultiLpLiquidityPoolWithRewards | unknown | optimism | n/a | [`0x2d0e00...70bdb1`](./contracts/optimism-10/0x2d0e006bb94409a4edfc3348a6703801e770bdb1/) | ⚠️ Unaudited |
| SynthereumPoolOnChainPriceFeedFactory | unknown | polygon | n/a | [`0x930a54...a8197f`](./contracts/polygon-137/0x930a54d8af945f6d1bed5aaf63b63fab50a8197f/) | ⚠️ Unaudited |
| SynthereumPoolOnChainPriceFeedLib | unknown | polygon | n/a | [`0x586cce...eac78f`](./contracts/polygon-137/0x586cce2d7ce78e9c9fd5c062ec6ee59880eac78f/) | ⚠️ Unaudited |
| SynthereumPoolRegistry | unknown | bsc | n/a | [`0x02c72f...52b503`](./contracts/bsc-56/0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503/) | ⚠️ Unaudited |
| SynthereumPriceFeed | unknown | optimism | n/a | [`0x17b600...219969`](./contracts/optimism-10/0x17b600b70b20b0a4bb2870bdfd8bf6d485219969/) | ⚠️ Unaudited |
| SynthereumPublicVaultRegistry | unknown | bsc | n/a | [`0x1c4d82...90faa0`](./contracts/bsc-56/0x1c4d8221c3696c0a333d3394d46a4efb9090faa0/) | ⚠️ Unaudited |
| SynthereumStakingLPVaultData | unknown | bsc | n/a | [`0xe5ed74...ac8054`](./contracts/bsc-56/0xe5ed747e19edb8eaece8c0b8a2e4264569ac8054/) | ⚠️ Unaudited |
| SynthereumStakingLPVaultRegistry | unknown | optimism | n/a | [`0x26541b...0dca4e`](./contracts/optimism-10/0x26541b2d4065fe21c9694a36e83e421e200dca4e/) | ⚠️ Unaudited |
| SynthereumSyntheticTokenFactory | unknown | polygon | n/a | [`0x141883...002e19`](./contracts/polygon-137/0x1418830ad554becaf76a4058eec6bee9ac002e19/) | ⚠️ Unaudited |
| SynthereumSyntheticTokenPermitFactory | unknown | bsc | n/a | [`0x2d0e00...70bdb1`](./contracts/bsc-56/0x2d0e006bb94409a4edfc3348a6703801e770bdb1/) | ⚠️ Unaudited |
| SynthereumTrustedForwarder | unknown | arbitrum | n/a | [`0x185bb0...99400c`](./contracts/arbitrum-42161/0x185bb0b7744a14cd336827fb94392f151e99400c/) | ⚠️ Unaudited |
| SynthereumVault | unknown | optimism | n/a | [`0x2884c2...f6a2e8`](./contracts/optimism-10/0x2884c238e0a97fdc7aceff81c9b34d679ff6a2e8/) | ⚠️ Unaudited |
| SynthereumVaultFactory | unknown | optimism | n/a | [`0x1f19e2...f82326`](./contracts/optimism-10/0x1f19e20542ef48010f99d030daf63c8216f82326/) | ⚠️ Unaudited |
| Test | unknown | polygon | n/a | [`0xb7f8ae...2d25e9`](./contracts/polygon-137/0xb7f8ae15ccb963a3a8cbc53b448d114f422d25e9/) | ⚠️ Unaudited |
| TransparentModule | unknown | bsc | n/a | [`0x6e7689...035fe5`](./contracts/bsc-56/0x6e768988ab07d736858a50c79cecc8060b035fe5/) | ⚠️ Unaudited |
| UniV2JRTSwapModule | unknown | polygon | n/a | [`0x81f1e3...651e52`](./contracts/polygon-137/0x81f1e35b3e05e9e8bb3eeb31d44d0ae399651e52/) | ⚠️ Unaudited |
| VelodromeV2Vault | unknown | optimism | n/a | [`0xd0d80f...783cc9`](./contracts/optimism-10/0xd0d80f4b1cada983496e032063390beeaf783cc9/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/1PdmrOKDV-udArVJu6E2rKUsCm9gPuN2p/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audits](https://learn.jarvis.network/risks-warning/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Forked UMA contracts](https://drive.google.com/file/d/10ejHtzLPcAfHlCklOasSZdbng13Cp8ZK/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Synthereum Liquidity Pools](https://drive.google.com/file/d/1PdmrOKDV-udArVJu6E2rKUsCm9gPuN2p/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* Ubik: [Synthereum Liquidity Pools]()](https://gitlab.com/jarvis-network/apps/exchange/mono-repo/-/blob/dev/docs/security-audits/ubik/01-synthereum-v3.pdf) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* Zellic: [Synthereum Liquidity Pools ]()](https://gitlab.com/jarvis-network/apps/exchange/mono-repo/-/blob/dev/docs/security-audits/zellic/%5BZellic%5DSynthereum%20Smart%20Contract%20Security%20Assessment.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x05bd55...f10eef`](./contracts/bsc-56/0x05bd55c34f9a95bddc6d9def1654616d74f10eef/) | AerariumSanctius | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb711f3...e318b8`](./contracts/polygon-137/0xb711f3a71c00d92ef862a4af2f584635dfe318b8/) | AtomicSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6fb241...babf07`](./contracts/polygon-137/0x6fb2415463e949af08ce50f83e94b7e008babf07/) | Aureus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x873067...fe3424`](./contracts/arbitrum-42161/0x8730671642c5f0a75779b3aa7bb459f5ccfe3424/) | CreditLine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x689359...44cb11`](./contracts/arbitrum-42161/0x689359561355ef829bb6d30a9c5b0e98c544cb11/) | CreditLineController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x40fed3...138706`](./contracts/optimism-10/0x40fed316f640fe2a1527d87718ea44aff1138706/) | CreditLineFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x58a989...179a47`](./contracts/polygon-137/0x58a98967edfb2a350c4669a4df0f6bb4ce179a47/) | CreditLineLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0e19a4...72ce9e`](./contracts/polygon-137/0x0e19a471cb537f88f9e4973c22b8b4dfda72ce9e/) | Denarius | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf6b498...a05e4b`](./contracts/polygon-137/0xf6b498b4b93340bf912dbc7620f5a92fdea05e4b/) | Disputer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x850f44...b0c7b9`](./contracts/bsc-56/0x850f4440ed50af8a46281f448d7a5a4e7eb0c7b9/) | DotDotVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0ff93e...497405`](./contracts/polygon-137/0x0ff93e7ce954a7ac2adbbe8f635513cbdb497405/) | ElysianFields | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xd0b537...0ce89f`](./contracts/polygon-137/0xd0b5376b91e06fb1296f803ae8879b49740ce89f/) | FeePayerPartyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00fae0...306356`](./contracts/polygon-137/0x00fae04063ea815bf371fb95af98c38bfa306356/) | FixedRateCurrency | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xda0344...09ddcc`](./contracts/bsc-56/0xda03443cab512e55d672d725b7fa98275009ddcc/) | FixedRateSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x119006...41b8be`](./contracts/polygon-137/0x1190064b16fce6e992420d1fda6416d41a41b8be/) | JarvisBrrrrr | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x689359...44cb11`](./contracts/optimism-10/0x689359561355ef829bb6d30a9c5b0e98c544cb11/) | JarvisToWrapperConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8689d5...b4ff34`](./contracts/optimism-10/0x8689d5a117b199633a1ba5af4eb11ed0f5b4ff34/) | JrtToJarvisConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x49a87a...31c3dc`](./contracts/polygon-137/0x49a87a3f93e883a221f6375335efc41db631c3dc/) | LendingManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04d620...c409e9`](./contracts/polygon-137/0x04d6206ccd424f2e82901ee1cd3982b0b9c409e9/) | LendingStorageManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2ee8db...1b0a8d`](./contracts/bsc-56/0x2ee8db7f1f64dd590a35ac3c64b3c18ac11b0a8d/) | MoneyMarketManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b620e...06b348`](./contracts/polygon-137/0x0b620ef38ae7d32fc62c283b10c33973ef06b348/) | OnChainLiquidityRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x34f7fd...a4c8ab`](./contracts/polygon-137/0x34f7fd5cd0ddd4b27073475cd494dc74a9a4c8ab/) | PerpetualLiquidatablePoolPartyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa513a1...822224`](./contracts/polygon-137/0xa513a13db767d4609ece1c705dbeefb0f5822224/) | PerpetualPoolPartyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x03bc65...8864b3`](./contracts/polygon-137/0x03bc653285f8527e1c877b18df285e66898864b3/) | PerpetualPositionManagerPoolPartyLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1ea502...4cf61c`](./contracts/polygon-137/0x1ea5022a81bd0df1bb85085083cddd1e6a4cf61c/) | SelfMintingRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x906b6f...f70f5b`](./contracts/bsc-56/0x906b6f2dee9f9decdf80020732dbf98f59f70f5b/) | StakedJarvis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdc9374...b30df1`](./contracts/bsc-56/0xdc9374e34f10f33637718b63ea2bb618e8b30df1/) | StakedSyntheticTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0818b4...f224fe`](./contracts/bsc-56/0x0818b48d171f90f8d97c6f6ebf18bc2de6f224fe/) | SynthereumCCIPBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x348e4b...67913d`](./contracts/avalanche-43114/0x348e4b25077c5133450edad060ea4d8db667913d/) | SynthereumCollateralWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x02c72f...52b503`](./contracts/gnosis-100/0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503/) | SynthereumDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2aa257...dc34c5`](./contracts/polygon-137/0x2aa25770e92de3d61544e1c5245e8c968ddc34c5/) | SynthereumDerivativeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0374a0...b7e830`](./contracts/bsc-56/0x0374a0dc2f47ea75c900a63a244c3e6555b7e830/) | SynthereumFactoryVersioning | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02c72f...52b503`](./contracts/avalanche-43114/0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503/) | SynthereumFinder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b247c...ae4501`](./contracts/bsc-56/0x0b247cf7d9a170acc7dd5b762c07cfc02cae4501/) | SynthereumFixedRateFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1e522a...efcc26`](./contracts/polygon-137/0x1e522a57d089ebf7115a20d6f04dada8f8efcc26/) | SynthereumFixedRateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03bc65...8864b3`](./contracts/bsc-56/0x03bc653285f8527e1c877b18df285e66898864b3/) | SynthereumIdentifierWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x03bc65...8864b3`](./contracts/gnosis-100/0x03bc653285f8527e1c877b18df285e66898864b3/) | SynthereumLiquidityPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x89b3a0...fdb21a`](./contracts/optimism-10/0x89b3a08d6f73bb44b1ff182bd7bf0590dbfdb21a/) | SynthereumLiquidityPoolLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x141883...002e19`](./contracts/avalanche-43114/0x1418830ad554becaf76a4058eec6bee9ac002e19/) | SynthereumManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xaf9132...3c0928`](./contracts/optimism-10/0xaf9132b3afa36b36f6ddfff63fd40b9df43c0928/) | SynthereumMultiLpLiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x012035...e71805`](./contracts/optimism-10/0x0120358932e0ce5a7e3a3519d339289966e71805/) | SynthereumMultiLpLiquidityPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x313f26...cc729b`](./contracts/optimism-10/0x313f266bcbd6465c10fc1f61acddbbdd60cc729b/) | SynthereumMultiLpLiquidityPoolMainLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0224dc...dab50a`](./contracts/optimism-10/0x0224dca32967ebbffdeefab74526554280dab50a/) | SynthereumMultiLpLiquidityPoolMigrationLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2d0e00...70bdb1`](./contracts/optimism-10/0x2d0e006bb94409a4edfc3348a6703801e770bdb1/) | SynthereumMultiLpLiquidityPoolWithRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x930a54...a8197f`](./contracts/polygon-137/0x930a54d8af945f6d1bed5aaf63b63fab50a8197f/) | SynthereumPoolOnChainPriceFeedFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x586cce...eac78f`](./contracts/polygon-137/0x586cce2d7ce78e9c9fd5c062ec6ee59880eac78f/) | SynthereumPoolOnChainPriceFeedLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x02c72f...52b503`](./contracts/bsc-56/0x02c72fc6c231ee0f0e313c966e2da5cb7a52b503/) | SynthereumPoolRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x17b600...219969`](./contracts/optimism-10/0x17b600b70b20b0a4bb2870bdfd8bf6d485219969/) | SynthereumPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c4d82...90faa0`](./contracts/bsc-56/0x1c4d8221c3696c0a333d3394d46a4efb9090faa0/) | SynthereumPublicVaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe5ed74...ac8054`](./contracts/bsc-56/0xe5ed747e19edb8eaece8c0b8a2e4264569ac8054/) | SynthereumStakingLPVaultData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x26541b...0dca4e`](./contracts/optimism-10/0x26541b2d4065fe21c9694a36e83e421e200dca4e/) | SynthereumStakingLPVaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x141883...002e19`](./contracts/polygon-137/0x1418830ad554becaf76a4058eec6bee9ac002e19/) | SynthereumSyntheticTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d0e00...70bdb1`](./contracts/bsc-56/0x2d0e006bb94409a4edfc3348a6703801e770bdb1/) | SynthereumSyntheticTokenPermitFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x185bb0...99400c`](./contracts/arbitrum-42161/0x185bb0b7744a14cd336827fb94392f151e99400c/) | SynthereumTrustedForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2884c2...f6a2e8`](./contracts/optimism-10/0x2884c238e0a97fdc7aceff81c9b34d679ff6a2e8/) | SynthereumVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1f19e2...f82326`](./contracts/optimism-10/0x1f19e20542ef48010f99d030daf63c8216f82326/) | SynthereumVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb7f8ae...2d25e9`](./contracts/polygon-137/0xb7f8ae15ccb963a3a8cbc53b448d114f422d25e9/) | Test | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6e7689...035fe5`](./contracts/bsc-56/0x6e768988ab07d736858a50c79cecc8060b035fe5/) | TransparentModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x81f1e3...651e52`](./contracts/polygon-137/0x81f1e35b3e05e9e8bb3eeb31d44d0ae399651e52/) | UniV2JRTSwapModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd0d80f...783cc9`](./contracts/optimism-10/0xd0d80f4b1cada983496e032063390beeaf783cc9/) | VelodromeV2Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [17463] DL audit link
- [17464] Audits
- [17465] Forked UMA contracts
- [17466] Synthereum Liquidity Pools
- [17467] * Ubik: [Synthereum Liquidity Pools]()
- [17468] * Zellic: [Synthereum Liquidity Pools ]()

Fork inheritance lineage and inherited audits are included when available.
