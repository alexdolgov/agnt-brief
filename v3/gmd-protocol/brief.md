# Agentic Audit Brief: GMD Protocol

## Project Overview

- Project: GMD Protocol (`gmd-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.183Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum
- Contract surface: 48 unique implementations (48 raw deployments)
- DeFi Llama TVL: $839,701.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 48 project-authored contract(s) across 1 chain(s); 16 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 48 (48 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/48 (0.0%)
- Deployed-live implementations: 48 of 48 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 48
- Raw deployments: 48
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| arbitrumGMDbridge | unknown | arbitrum | n/a | [`0x60d8da...296cda`](./contracts/arbitrum-42161/0x60d8da49b91a1a26fb5a8f207ce5e32e6a296cda/) | ⚠️ Unaudited |
| btcvaultv2 | unknown | arbitrum | n/a | [`0xb0f3e3...ec11b2`](./contracts/arbitrum-42161/0xb0f3e3f5c52ece66fe44ac7ecedbd06b7aec11b2/) | ⚠️ Unaudited |
| BuyBack | unknown | arbitrum | n/a | [`0x5f0fee...26b5f9`](./contracts/arbitrum-42161/0x5f0feef4dafea7fb4d6ca89c047767885226b5f9/) | ⚠️ Unaudited |
| CashbackLock | unknown | arbitrum | n/a | [`0x357c3a...5194dd`](./contracts/arbitrum-42161/0x357c3a9b984ee7b0c88adcc678138552275194dd/) | ⚠️ Unaudited |
| CrossChainPrice | unknown | arbitrum | n/a | [`0x3c2c66...5b1ded`](./contracts/arbitrum-42161/0x3c2c662041e541637ca9550067ed456b925b1ded/) | ⚠️ Unaudited |
| data | unknown | arbitrum | n/a | [`0x3b2af9...c9e915`](./contracts/arbitrum-42161/0x3b2af911cb0702eb9691189aee5ae83405c9e915/) | ⚠️ Unaudited |
| DataRetrievalContract | unknown | arbitrum | n/a | [`0x3c6fd1...4fd72f`](./contracts/arbitrum-42161/0x3c6fd1ad1d7274ed60878cfa5528ae67044fd72f/) | ⚠️ Unaudited |
| esGBOT | unknown | arbitrum | n/a | [`0x0e9fa4...f21c10`](./contracts/arbitrum-42161/0x0e9fa491b5327500e2cb4f21dd6852c0edf21c10/) | ⚠️ Unaudited |
| esGMD | unknown | arbitrum | n/a | [`0x49e050...9b787a`](./contracts/arbitrum-42161/0x49e050df648e9477c7545fe1779b940f879b787a/) | ⚠️ Unaudited |
| EthPriceFeed | unknown | arbitrum | n/a | [`0x999e0e...447291`](./contracts/arbitrum-42161/0x999e0e091014eed2683aca527805394be2447291/) | ⚠️ Unaudited |
| GBOT | unknown | arbitrum | n/a | [`0x32e4d9...b03986`](./contracts/arbitrum-42161/0x32e4d98d3010ac12d75019c484caa78665b03986/) | ⚠️ Unaudited |
| gETH | unknown | arbitrum | n/a | [`0x0f1711...96d7d1`](./contracts/arbitrum-42161/0x0f1711c7b25437c1a29c6e2bad0e2bc18496d7d1/) | ⚠️ Unaudited |
| gethstaking | unknown | arbitrum | n/a | [`0x1b3fe9...3f3865`](./contracts/arbitrum-42161/0x1b3fe9d5df6d0973c58c031703b150ab023f3865/) | ⚠️ Unaudited |
| GLPPrice | unknown | arbitrum | n/a | [`0x4c52cb...00a22d`](./contracts/arbitrum-42161/0x4c52cb1d46c46a506c3b660bc9c4c437b500a22d/) | ⚠️ Unaudited |
| GMD | unknown | arbitrum | n/a | [`0x494597...e28a8b`](./contracts/arbitrum-42161/0x4945970efeec98d393b4b979b9be265a3ae28a8b/) | ⚠️ Unaudited |
| GMDBFRvault | unknown | arbitrum | n/a | [`0x56009e...8775f8`](./contracts/arbitrum-42161/0x56009e94418ddfe8604331eceff38db0738775f8/) | ⚠️ Unaudited |
| gmdBTC | unknown | arbitrum | n/a | [`0x147ff1...9bb619`](./contracts/arbitrum-42161/0x147ff11d9b9ae284c271b2faae7068f4ca9bb619/) | ⚠️ Unaudited |
| gmdETH | unknown | arbitrum | n/a | [`0x1e95a3...71beb3`](./contracts/arbitrum-42161/0x1e95a37be8a17328fbf4b25b9ce3ce81e271beb3/) | ⚠️ Unaudited |
| GMDstaking | unknown | arbitrum | n/a | [`0x1d2da8...f0aca4`](./contracts/arbitrum-42161/0x1d2da8454488ff4bf21999c59913d4c337f0aca4/) | ⚠️ Unaudited |
| gmdUSDC | unknown | arbitrum | n/a | [`0x3db4b7...4b2c22`](./contracts/arbitrum-42161/0x3db4b7da67dd5af61cb9b3c70501b1bdb24b2c22/) | ⚠️ Unaudited |
| gmdUSDT | unknown | arbitrum | n/a | [`0x34101f...32a049`](./contracts/arbitrum-42161/0x34101fe647ba02238256b5c5a58aeaa2e532a049/) | ⚠️ Unaudited |
| GMDvault | unknown | arbitrum | n/a | [`0x8080b5...fbbb08`](./contracts/arbitrum-42161/0x8080b5ce6dfb49a6b86370d6982b3e2a86fbbb08/) | ⚠️ Unaudited |
| gmUSD | unknown | arbitrum | n/a | [`0x10c25c...c80005`](./contracts/arbitrum-42161/0x10c25c205118c0201fd1acc5bc03bbf935c80005/) | ⚠️ Unaudited |
| gmUSDArb | unknown | arbitrum | n/a | [`0xe38759...68b674`](./contracts/arbitrum-42161/0xe3875996fc7a9315cb0d633b2a1af5b91d68b674/) | ⚠️ Unaudited |
| GMvaultMigration | unknown | arbitrum | n/a | [`0xe6e3fe...b83a18`](./contracts/arbitrum-42161/0xe6e3febf24ead0e60b157b77e72618df06b83a18/) | ⚠️ Unaudited |
| GND | unknown | arbitrum | n/a | [`0xade997...f4c6c7`](./contracts/arbitrum-42161/0xade997d8488fa56dde91b1e8a9473a2ea9f4c6c7/) | ⚠️ Unaudited |
| gndPresale | unknown | arbitrum | n/a | [`0x51b08e...c3eac5`](./contracts/arbitrum-42161/0x51b08eab7c2f50ff539377dc953d6ab712c3eac5/) | ⚠️ Unaudited |
| LiquidityAmounts | unknown | arbitrum | n/a | [`0x8af42f...576067`](./contracts/arbitrum-42161/0x8af42f8da6f7d195ce0ab7789c5523ddcc576067/) | ⚠️ Unaudited |
| LPstaking | unknown | arbitrum | n/a | [`0x0e5419...71b858`](./contracts/arbitrum-42161/0x0e5419bf7eaacd07790d27bd4957ccee9971b858/) | ⚠️ Unaudited |
| LPToken | unknown | arbitrum | n/a | [`0x037204...711eb4`](./contracts/arbitrum-42161/0x0372046e44ee37fb71711590b734fbd5b7711eb4/) | ⚠️ Unaudited |
| LPTokenFactory | unknown | arbitrum | n/a | [`0xb887e9...f3a0c3`](./contracts/arbitrum-42161/0xb887e91ec65ed4a7c943d1ebb87ad8770af3a0c3/) | ⚠️ Unaudited |
| Migration | unknown | arbitrum | n/a | [`0x01c4a9...a3d027`](./contracts/arbitrum-42161/0x01c4a967f8577ccd7812468a3239c5ecd4a3d027/) | ⚠️ Unaudited |
| OtcSwap | unknown | arbitrum | n/a | [`0x29cf62...6c12ae`](./contracts/arbitrum-42161/0x29cf62536c1019a8adac35a61a7f12b82a6c12ae/) | ⚠️ Unaudited |
| PriceFeed | unknown | arbitrum | n/a | [`0x8660f2...20a718`](./contracts/arbitrum-42161/0x8660f28220f280dfab99d1dc81237a262620a718/) | ⚠️ Unaudited |
| PriceFeed2 | unknown | arbitrum | n/a | [`0x7aa2b3...c30857`](./contracts/arbitrum-42161/0x7aa2b33a56e72e50429355b3ebd2572240c30857/) | ⚠️ Unaudited |
| SalaryDistribution | unknown | arbitrum | n/a | [`0xc438a1...6e2a93`](./contracts/arbitrum-42161/0xc438a1ad32ed8ff16e73bdcf56cab1e6ba6e2a93/) | ⚠️ Unaudited |
| SalaryMod | unknown | arbitrum | n/a | [`0xaa3536...46ef1d`](./contracts/arbitrum-42161/0xaa35361b162415655ff2e70c655c29bab346ef1d/) | ⚠️ Unaudited |
| sGETHToken | unknown | arbitrum | n/a | [`0x212220...f1057b`](./contracts/arbitrum-42161/0x21222082e66ded1733faa1a04576a620dcf1057b/) | ⚠️ Unaudited |
| TknPresale | unknown | arbitrum | n/a | [`0x39027f...5132f7`](./contracts/arbitrum-42161/0x39027f95172808b6ef385ceb0414be39b85132f7/) | ⚠️ Unaudited |
| TokenSwap | unknown | arbitrum | n/a | [`0x017c6f...8f12f8`](./contracts/arbitrum-42161/0x017c6fc5e2b2d36a0ed829b15863609ca28f12f8/) | ⚠️ Unaudited |
| univ3swap | unknown | arbitrum | n/a | [`0x512a1d...4541ae`](./contracts/arbitrum-42161/0x512a1d8b24cb0fd5cb2d446efbfabaca5b4541ae/) | ⚠️ Unaudited |
| vault | unknown | arbitrum | n/a | [`0x38dfce...b0ea08`](./contracts/arbitrum-42161/0x38dfcebfc79ae62ea50297a6cff16c6f61b0ea08/) | ⚠️ Unaudited |
| vaultv2 | unknown | arbitrum | n/a | [`0x0dc663...aab445`](./contracts/arbitrum-42161/0x0dc6634fc00236186fafd8c9e2878712e0aab445/) | ⚠️ Unaudited |
| xGND | unknown | arbitrum | n/a | [`0x40ea7f...55768e`](./contracts/arbitrum-42161/0x40ea7f6d6964413d4a26a0a268542dae9f55768e/) | ⚠️ Unaudited |
| xGNDstaking | unknown | arbitrum | n/a | [`0x2ca217...e09620`](./contracts/arbitrum-42161/0x2ca217854cdc40171644f276a7edb3fdc6e09620/) | ⚠️ Unaudited |
| YFX | unknown | arbitrum | n/a | [`0x5517c5...efb38c`](./contracts/arbitrum-42161/0x5517c5f22177bcf7b320a2a5daf2334344efb38c/) | ⚠️ Unaudited |
| zGND | unknown | arbitrum | n/a | [`0x40b96d...9de37c`](./contracts/arbitrum-42161/0x40b96dac9386e252e86eacf330c138561b9de37c/) | ⚠️ Unaudited |
| zGNDstaking | unknown | arbitrum | n/a | [`0xf373f0...b600db`](./contracts/arbitrum-42161/0xf373f08c99aa93e845585f6fdfe2c45dbdb600db/) | ⚠️ Unaudited |

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
| [DL audit link](https://sourcehat.com/audits/GMDAOVault) | SourceHat | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [- [Audits]()](https://gmd-protocol.gitbook.io/gmd-protocol/protocol-links/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20440] DL audit link
- [20441] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
