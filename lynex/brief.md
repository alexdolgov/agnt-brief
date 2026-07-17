# Agentic Audit Brief: Lynex

## Project Overview

- Project: Lynex (`lynex`)
- Website: [https://app.lynex.fi](https://app.lynex.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.247Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: linea
- Contract surface: 53 unique implementations (96 raw deployments)
- DeFi Llama TVL: $769,065.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 60 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 12 common project-authored base contract(s) (accesscontrols, adminaccess, boringbatchable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Snuggle** (`snuggle`) in the BatchAuction, Crowdsale, DutchAuction subsystem.
3 audits inherited from `snuggle`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 138; live-surface contracts included: 72 (66 live, 6 unknown).
- Excluded by liveness: 66 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/46 (6.5%)
- Deployed-live implementations: 47 of 53 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/47
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 53
- Raw deployments: 96
- Audits discovered: 3 (0 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 2 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 6.4% | 2026-02 |
| yAudit | Tier 2 | 3 | 6.4% | n/a |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchAuction | unknown | linea | n/a | [`0x5b8865829b2063ffbe453f9a7d8efbc14c1566dd`](./contracts/linea-59144/0x5b8865829b2063ffbe453f9a7d8efbc14c1566dd/) | ✅ Audited |
| Crowdsale | unknown | linea | n/a | 3 deployments: linea [`0x08283a22b62cc0c6e85e3bea176a843fa2a92140`](./contracts/linea-59144/0x08283a22b62cc0c6e85e3bea176a843fa2a92140/); linea `0x3223aaa6b6b08397018ce9dde9ac6584449f0ccb`; linea `0xa5cd27744af878ea21611b5c6d172203fbbf985f` | ✅ Audited |
| DutchAuction | unknown | linea | n/a | [`0x6c13a305f58eea8696b7c9ab39e598da1f3d6632`](./contracts/linea-59144/0x6c13a305f58eea8696b7c9ab39e598da1f3d6632/) | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraFactory | registry | linea | n/a | [`0x622b2c98123d303ae067db4925cd6282b3a08d0f`](./contracts/linea-59144/0x622b2c98123d303ae067db4925cd6282b3a08d0f/) | ⚠️ Unaudited |
| AlgebraPool | core_logic | linea | n/a | 3 deployments: linea [`0x3cb104f044db23d6513f2a6100a1997fa5e3f587`](./contracts/linea-59144/0x3cb104f044db23d6513f2a6100a1997fa5e3f587/); linea `0x8e80016b025c89a6a270b399f5ebfb734be58ada`; linea `0xe24b4a292ba102a9b7b7f9de20718d7ba45ddb29` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | linea | n/a | [`0x9a89490f1056a7bc607ec53f93b921fe666a2c48`](./contracts/linea-59144/0x9a89490f1056a7bc607ec53f93b921fe666a2c48/) | ⚠️ Unaudited |
| BribeFactoryV4 | unknown | linea | n/a | [`0xca79b73d967c948864058642eb736de541b325b0`](./contracts/linea-59144/0xca79b73d967c948864058642eb736de541b325b0/) | ⚠️ Unaudited |
| BribeOptionToken | operational_periphery | linea | n/a | [`0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b`](./contracts/linea-59144/0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b/) | ⚠️ Unaudited |
| DistributeFees | unknown | linea | n/a | 2 deployments: linea [`0xf7fff84426ba183e0a18becddecc31339f8454ad`](./contracts/linea-59144/0xf7fff84426ba183e0a18becddecc31339f8454ad/); linea `0xfa638ee72312adf564195c2ae415ec943945c469` | ⚠️ Unaudited |
| EpochController | unknown | linea | n/a | 2 deployments: linea [`0x3445307caed9a144901872380fd5772f71042d80`](./contracts/linea-59144/0x3445307caed9a144901872380fd5772f71042d80/); linea `0xf1e2e55ec87e99fee0a86a662bfa6a662693136c` | ⚠️ Unaudited |
| EpochController | unknown | linea | n/a | 2 deployments: linea [`0x39871f695bf0e60ac4c43dbc1aff10c58371871d`](./contracts/linea-59144/0x39871f695bf0e60ac4c43dbc1aff10c58371871d/); linea `0xb2306f03f3be863c0379b0fcd8698391882e0f89` | ⚠️ Unaudited |
| EpochController | unknown | linea | n/a | 2 deployments: linea [`0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822`](./contracts/linea-59144/0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822/); linea `0xd8a57006f464d1aaeeb450754489c66f29f8a9b9` | ⚠️ Unaudited |
| EpochController | unknown | linea | n/a | 2 deployments: linea [`0x9dfa7d13da0b734028f066de388fa0e14dbd8df5`](./contracts/linea-59144/0x9dfa7d13da0b734028f066de388fa0e14dbd8df5/); linea `0xc2eaf62961f99d59dfbf819f88b5587990495933` | ⚠️ Unaudited |
| EpochController | unknown | linea | n/a | 2 deployments: linea [`0xd2a6b3e6709512f016eb220905f508e7fb1f2773`](./contracts/linea-59144/0xd2a6b3e6709512f016eb220905f508e7fb1f2773/); linea `0xd405a345bb0f2b620a81e0fe77962b3d9ed84d3a` | ⚠️ Unaudited |
| GaugeFactoryV2 | unknown | linea | n/a | 2 deployments: linea [`0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6`](./contracts/linea-59144/0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6/); linea `0xb94404c0fdebda8d14fc147f8787a35feb41948e` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | unknown | linea | n/a | 2 deployments: linea [`0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e`](./contracts/linea-59144/0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e/); linea `0xc04d35a1f8881b061bbdae148c91cfa78a2783ee` | ⚠️ Unaudited |
| Lynex | unknown | linea | n/a | [`0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af`](./contracts/linea-59144/0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af/) | ⚠️ Unaudited |
| LynxClaimToken | token | linea | n/a | [`0xf86381c8c4bbf3d398571e3d904ec04f12ac645a`](./contracts/linea-59144/0xf86381c8c4bbf3d398571e3d904ec04f12ac645a/) | ⚠️ Unaudited |
| MinterUpgradeableV2 | unknown | linea | n/a | 2 deployments: linea [`0x9030ae4d0997658de58d274f79d3074b1beb19d4`](./contracts/linea-59144/0x9030ae4d0997658de58d274f79d3074b1beb19d4/); linea `0xa996de4c5c59be045cd272faed1d284494903826` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0x5d3d9e20ad27dd61182505230d1bd075bd249e4b`](./contracts/linea-59144/0x5d3d9e20ad27dd61182505230d1bd075bd249e4b/) | ⚠️ Unaudited |
| OptionFeeDistributor | unknown | linea | n/a | 2 deployments: linea [`0x9190f0508263d645a6510988d5d566f353d475e4`](./contracts/linea-59144/0x9190f0508263d645a6510988d5d566f353d475e4/); linea `0x9cf90ff10c6716627a5560364e8fecda78828b38` | ⚠️ Unaudited |
| OptionTokenV3 | unknown | linea | n/a | [`0x63349ba5e1f71252ecd56e8f950d1a518b400b60`](./contracts/linea-59144/0x63349ba5e1f71252ecd56e8f950d1a518b400b60/) | ⚠️ Unaudited |
| PairAPI | unknown | linea | n/a | [`0x0e23d55555778e796de58933a1b54f326feeb762`](./contracts/linea-59144/0x0e23d55555778e796de58933a1b54f326feeb762/) | ⚠️ Unaudited |
| PairAPI | unknown | linea | n/a | 2 deployments: linea [`0x17f3b0c913a0a0436c44054a95ba3c32a71efa9d`](./contracts/linea-59144/0x17f3b0c913a0a0436c44054a95ba3c32a71efa9d/); linea `0x77576555b2c409ca21da20fce790501b8cbbc0b8` | ⚠️ Unaudited |
| PairAPI | unknown | linea | n/a | 2 deployments: linea [`0x6c84329cc8c37376eb32db50a17f3bfc917c3665`](./contracts/linea-59144/0x6c84329cc8c37376eb32db50a17f3bfc917c3665/); linea `0xef599b792ce116ab652279c825e660258316f2cc` | ⚠️ Unaudited |
| PairAPI | unknown | linea | n/a | 2 deployments: linea [`0x8a8bb20e7ab43dd6c862c38d0c528eaeb3e6eea6`](./contracts/linea-59144/0x8a8bb20e7ab43dd6c862c38d0c528eaeb3e6eea6/); linea `0xeb7eab5847ededc0cb9eb176b059c4b4c02fa017` | ⚠️ Unaudited |
| PairAPISimple | unknown | linea | n/a | 2 deployments: linea [`0x85965d1e0127ee5af8813aabd9a8515cedc1a541`](./contracts/linea-59144/0x85965d1e0127ee5af8813aabd9a8515cedc1a541/); linea `0xa5df3ba1e6ceacd92700af088c565d4f85591342` | ⚠️ Unaudited |
| PairAPISimple | unknown | linea | n/a | 2 deployments: linea [`0xb27a0dc1254b85ad21696a6140c9b1bce74cfe78`](./contracts/linea-59144/0xb27a0dc1254b85ad21696a6140c9b1bce74cfe78/); linea `0xef5f19fdc1d649a3150bb1f2d23c7f61c57f264d` | ⚠️ Unaudited |
| PairAPISimple | unknown | linea | n/a | [`0xba5d01fbf1df1c86240c54220ea31c9cd3138743`](./contracts/linea-59144/0xba5d01fbf1df1c86240c54220ea31c9cd3138743/) | ⚠️ Unaudited |
| PairFactory | registry | linea | n/a | 2 deployments: linea [`0x6ed7b91c8133e85921f8028b51a8248488b3336c`](./contracts/linea-59144/0x6ed7b91c8133e85921f8028b51a8248488b3336c/); linea `0xbc7695fd00e3b32d08124b7a4287493aee99f9ee` | ⚠️ Unaudited |
| PreMining | unknown | linea | n/a | 2 deployments: linea [`0x0b3a25ae91de4825b52d51ca54dfc8867367c72a`](./contracts/linea-59144/0x0b3a25ae91de4825b52d51ca54dfc8867367c72a/); linea `0xbf05db69176e47bf89a6b19f7492d50751d20452` | ⚠️ Unaudited |
| ProxyAdmin | governance | linea | n/a | 14 deployments: linea [`0x04cbfc369a40ceb4a91cec53c3afe2922b34a3fc`](./contracts/linea-59144/0x04cbfc369a40ceb4a91cec53c3afe2922b34a3fc/); linea `0x1d73559503235795b43a9ca508ce437ff076c5b9`; linea `0x37d28b96dcba4503966119e02a0ef17d1362ac57`; linea `0x464481e3d7f7580254459c5067dcf37ed80fe816`; linea `0x4b6f631a69ac271e315b97fdd7393f68db4b5645`; linea `0x59ce7d7aa5c234e116c8ef6d2d6004263f925c79`; linea `0x6e067349bc2c4a367243e4367fdd7f354664251f`; linea `0x7a7d96985beb255d1c238f26979e4af475be363d`; linea `0x7ebd704d2755b2b57e4e326e9e70c1d669f6bf0f`; linea `0xa82e62cf217684d9960915550a4fbb00bdd68685`; linea `0xb15242e8e4b76f3075c1eb6465bf269617407889`; linea `0xb3f6ed5896594c20551cdbddc3571110476f1de2`; linea `0xc9453ef29cf77e553483a44a8900b37d470e8c13`; linea `0xf3f5beac27691c6f6d4a79710b0ca1b408523c27` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x1f43bd7cc8a20b2086f62eed6d8bfa0c948965e4`](./contracts/linea-59144/0x1f43bd7cc8a20b2086f62eed6d8bfa0c948965e4/); linea `0x5be4bde1c334af7ec5c691fd673bec163f231edf` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x4362448d5bff5f6c3b411fd59f2869b4c105c743`](./contracts/linea-59144/0x4362448d5bff5f6c3b411fd59f2869b4c105c743/); linea `0xa8dcc97e6b1bd345fcef66fcd258c54e3e6cb274` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x51487f191591d3a5569ed288aa3477fd2130acc3`](./contracts/linea-59144/0x51487f191591d3a5569ed288aa3477fd2130acc3/); linea `0x968a4b7c9105d37dabc7e9e2797a122bb5679d97` | ⚠️ Unaudited |
| RewardAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x6dc1dff60096195c9d4c2b89c4bd64c3644f8b41`](./contracts/linea-59144/0x6dc1dff60096195c9d4c2b89c4bd64c3644f8b41/); linea `0xcd9df6f9b8c698ede3b9fdfc99363866f3f6408d` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | linea | n/a | [`0x2222c569387b2a98fe1a9350f2cacde918910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | ⚠️ Unaudited |
| RouterV2 | adapter | linea | n/a | [`0x610d2f07b7edc67565160f587f37636194c34e74`](./contracts/linea-59144/0x610d2f07b7edc67565160f587f37636194c34e74/) | ⚠️ Unaudited |
| SwapRouter | adapter | linea | n/a | [`0x3921e8cb45b17fc029a0a6de958330ca4e583390`](./contracts/linea-59144/0x3921e8cb45b17fc029a0a6de958330ca4e583390/) | ⚠️ Unaudited |
| TradeHelper | unknown | linea | n/a | [`0x0c0bfbb5ab2a1293e9d430e956fd630e43ed1095`](./contracts/linea-59144/0x0c0bfbb5ab2a1293e9d430e956fd630e43ed1095/) | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | linea | n/a | 2 deployments: linea [`0xaf1b70f4cf9a20603c9ca2fcca7cae0d1e1324ee`](./contracts/linea-59144/0xaf1b70f4cf9a20603c9ca2fcca7cae0d1e1324ee/); linea `0xb224f312d40c3d3c9e7a5b8a2655a4020af37c1d` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x15020d2d7eab8d893517778e7143021dfe105f1b`](./contracts/linea-59144/0x15020d2d7eab8d893517778e7143021dfe105f1b/); linea `0x18e526fa124b85ce77811e4b8887465da041ee93` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x255e81a6c81e8314a45a53d25edb63dd7aa1892f`](./contracts/linea-59144/0x255e81a6c81e8314a45a53d25edb63dd7aa1892f/); linea `0x29468b8ce42556599d7530be413d14cc82da79a8` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x32777d35545ee0d8995eff602c699abfcb327236`](./contracts/linea-59144/0x32777d35545ee0d8995eff602c699abfcb327236/); linea `0x86453cfae03b9a151a78e4829a8c2e1c7eb86e59` | ⚠️ Unaudited |
| veNFTAPIV2 | unknown | linea | n/a | 2 deployments: linea [`0x8297f18d1e55013620f46fda07ff59f393796672`](./contracts/linea-59144/0x8297f18d1e55013620f46fda07ff59f393796672/); linea `0x8a63c362e49e07ee8b6bbbe219618921e8fb582c` | ⚠️ Unaudited |
| VoterV5 | unknown | linea | n/a | [`0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5`](./contracts/linea-59144/0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5/) | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | linea | n/a | [`0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c`](./contracts/linea-59144/0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PairAPIV1 | unknown | linea | n/a | `0x8398feaac940398a0e33a682a045d4dac2a702c8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x23406481b28cb7c1914c460b8b96ce4b2580bcb9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x98e5cd63ab2e0a26e87dac103674a840fc5ca474` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd57c804a3d2eb2e4945f91da9989c9272451646d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xeb21183588426d41ea9729a1935850a7e3c43acc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xebd5d7d2e831691f5c3b294837fe52f50a17c58c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.snuggle.fi/security](https://www.snuggle.fi/security) | unknown | Audit | 2026-02 | fresh | Inherited from Snuggle — forked code, scoped to BatchAuction, Crowdsale, DutchAuction | inherited | 5 | n/a |
| [Abyss.pdf](https://d3cny4im7ppv5.cloudfront.net/Abyss.pdf) | unknown | Audit | 2025-11 | fresh | Inherited from Snuggle — forked code, scoped to BatchAuction, Crowdsale, DutchAuction | inherited | 5 | n/a |
| [valvessecurity.com](https://valvessecurity.com/) | yAudit | Audit | n/a | unknown | Inherited from Snuggle — forked code, scoped to BatchAuction, Crowdsale, DutchAuction | inherited | 5 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0x622b2c98123d303ae067db4925cd6282b3a08d0f`](./contracts/linea-59144/0x622b2c98123d303ae067db4925cd6282b3a08d0f/) | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3cb104f044db23d6513f2a6100a1997fa5e3f587`](./contracts/linea-59144/0x3cb104f044db23d6513f2a6100a1997fa5e3f587/) | AlgebraPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9a89490f1056a7bc607ec53f93b921fe666a2c48`](./contracts/linea-59144/0x9a89490f1056a7bc607ec53f93b921fe666a2c48/) | AlgebraPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xca79b73d967c948864058642eb736de541b325b0`](./contracts/linea-59144/0xca79b73d967c948864058642eb736de541b325b0/) | BribeFactoryV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b`](./contracts/linea-59144/0xe8a4c9b6a2b79fd844c9e3adbc8dc841eece557b/) | BribeOptionToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf7fff84426ba183e0a18becddecc31339f8454ad`](./contracts/linea-59144/0xf7fff84426ba183e0a18becddecc31339f8454ad/) | DistributeFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3445307caed9a144901872380fd5772f71042d80`](./contracts/linea-59144/0x3445307caed9a144901872380fd5772f71042d80/) | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x39871f695bf0e60ac4c43dbc1aff10c58371871d`](./contracts/linea-59144/0x39871f695bf0e60ac4c43dbc1aff10c58371871d/) | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822`](./contracts/linea-59144/0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822/) | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9dfa7d13da0b734028f066de388fa0e14dbd8df5`](./contracts/linea-59144/0x9dfa7d13da0b734028f066de388fa0e14dbd8df5/) | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd2a6b3e6709512f016eb220905f508e7fb1f2773`](./contracts/linea-59144/0xd2a6b3e6709512f016eb220905f508e7fb1f2773/) | EpochController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6`](./contracts/linea-59144/0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6/) | GaugeFactoryV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e`](./contracts/linea-59144/0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e/) | GaugeFactoryV2_CL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af`](./contracts/linea-59144/0x1a51b19ce03dbe0cb44c1528e34a7edd7771e9af/) | Lynex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xf86381c8c4bbf3d398571e3d904ec04f12ac645a`](./contracts/linea-59144/0xf86381c8c4bbf3d398571e3d904ec04f12ac645a/) | LynxClaimToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9030ae4d0997658de58d274f79d3074b1beb19d4`](./contracts/linea-59144/0x9030ae4d0997658de58d274f79d3074b1beb19d4/) | MinterUpgradeableV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5d3d9e20ad27dd61182505230d1bd075bd249e4b`](./contracts/linea-59144/0x5d3d9e20ad27dd61182505230d1bd075bd249e4b/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x9190f0508263d645a6510988d5d566f353d475e4`](./contracts/linea-59144/0x9190f0508263d645a6510988d5d566f353d475e4/) | OptionFeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x63349ba5e1f71252ecd56e8f950d1a518b400b60`](./contracts/linea-59144/0x63349ba5e1f71252ecd56e8f950d1a518b400b60/) | OptionTokenV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0e23d55555778e796de58933a1b54f326feeb762`](./contracts/linea-59144/0x0e23d55555778e796de58933a1b54f326feeb762/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x17f3b0c913a0a0436c44054a95ba3c32a71efa9d`](./contracts/linea-59144/0x17f3b0c913a0a0436c44054a95ba3c32a71efa9d/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6c84329cc8c37376eb32db50a17f3bfc917c3665`](./contracts/linea-59144/0x6c84329cc8c37376eb32db50a17f3bfc917c3665/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8a8bb20e7ab43dd6c862c38d0c528eaeb3e6eea6`](./contracts/linea-59144/0x8a8bb20e7ab43dd6c862c38d0c528eaeb3e6eea6/) | PairAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x85965d1e0127ee5af8813aabd9a8515cedc1a541`](./contracts/linea-59144/0x85965d1e0127ee5af8813aabd9a8515cedc1a541/) | PairAPISimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb27a0dc1254b85ad21696a6140c9b1bce74cfe78`](./contracts/linea-59144/0xb27a0dc1254b85ad21696a6140c9b1bce74cfe78/) | PairAPISimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xba5d01fbf1df1c86240c54220ea31c9cd3138743`](./contracts/linea-59144/0xba5d01fbf1df1c86240c54220ea31c9cd3138743/) | PairAPISimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6ed7b91c8133e85921f8028b51a8248488b3336c`](./contracts/linea-59144/0x6ed7b91c8133e85921f8028b51a8248488b3336c/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b3a25ae91de4825b52d51ca54dfc8867367c72a`](./contracts/linea-59144/0x0b3a25ae91de4825b52d51ca54dfc8867367c72a/) | PreMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1f43bd7cc8a20b2086f62eed6d8bfa0c948965e4`](./contracts/linea-59144/0x1f43bd7cc8a20b2086f62eed6d8bfa0c948965e4/) | RewardAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4362448d5bff5f6c3b411fd59f2869b4c105c743`](./contracts/linea-59144/0x4362448d5bff5f6c3b411fd59f2869b4c105c743/) | RewardAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x51487f191591d3a5569ed288aa3477fd2130acc3`](./contracts/linea-59144/0x51487f191591d3a5569ed288aa3477fd2130acc3/) | RewardAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6dc1dff60096195c9d4c2b89c4bd64c3644f8b41`](./contracts/linea-59144/0x6dc1dff60096195c9d4c2b89c4bd64c3644f8b41/) | RewardAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2222c569387b2a98fe1a9350f2cacde918910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x610d2f07b7edc67565160f587f37636194c34e74`](./contracts/linea-59144/0x610d2f07b7edc67565160f587f37636194c34e74/) | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3921e8cb45b17fc029a0a6de958330ca4e583390`](./contracts/linea-59144/0x3921e8cb45b17fc029a0a6de958330ca4e583390/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0c0bfbb5ab2a1293e9d430e956fd630e43ed1095`](./contracts/linea-59144/0x0c0bfbb5ab2a1293e9d430e956fd630e43ed1095/) | TradeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xaf1b70f4cf9a20603c9ca2fcca7cae0d1e1324ee`](./contracts/linea-59144/0xaf1b70f4cf9a20603c9ca2fcca7cae0d1e1324ee/) | VeArtProxyUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x15020d2d7eab8d893517778e7143021dfe105f1b`](./contracts/linea-59144/0x15020d2d7eab8d893517778e7143021dfe105f1b/) | veNFTAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x255e81a6c81e8314a45a53d25edb63dd7aa1892f`](./contracts/linea-59144/0x255e81a6c81e8314a45a53d25edb63dd7aa1892f/) | veNFTAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x32777d35545ee0d8995eff602c699abfcb327236`](./contracts/linea-59144/0x32777d35545ee0d8995eff602c699abfcb327236/) | veNFTAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8297f18d1e55013620f46fda07ff59f393796672`](./contracts/linea-59144/0x8297f18d1e55013620f46fda07ff59f393796672/) | veNFTAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5`](./contracts/linea-59144/0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5/) | VoterV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c`](./contracts/linea-59144/0x8d95f56b0bac46e8ac1d3a3f12fb1e5bc39b4c0c/) | VotingEscrowV2Upgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=15

Fork inheritance lineage and inherited audits are included when available.
