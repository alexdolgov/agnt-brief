# Agentic Audit Brief: TEN Finance

## Project Overview

- Project: TEN Finance (`ten-finance`)
- Website: [https://ten.finance](https://ten.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.848Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc
- Contract surface: 30 unique implementations (30 raw deployments)
- DeFi Llama TVL: $356,464.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 30 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 6 common project-authored base contract(s) (ttokeninterface, ttokenstorage, exponential). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 30 (30 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/29 (24.1%)
- Deployed-live implementations: 30 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/30
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 7 | 23.3% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Airdrop | unknown | bsc | n/a | [`0x48ef82f69cf285db6a930729876e7a93f255cd4d`](./contracts/bsc-56/0x48ef82f69cf285db6a930729876e7a93f255cd4d/) | ✅ Audited |
| MultiFeeDistribution | unknown | bsc | n/a | [`0x2e86f3de23f17e33e1a26961f68248425c1e70f3`](./contracts/bsc-56/0x2e86f3de23f17e33e1a26961f68248425c1e70f3/) | ✅ Audited |
| TBNB | unknown | bsc | n/a | [`0x265893818e436655886965e3c8f4e6fc4395e1c7`](./contracts/bsc-56/0x265893818e436655886965e3c8f4e6fc4395e1c7/) | ✅ Audited |
| TENTroller | unknown | bsc | n/a | [`0x383121c8ee39698e4095b7cea7a944073c3b4f13`](./contracts/bsc-56/0x383121c8ee39698e4095b7cea7a944073c3b4f13/) | ✅ Audited |
| TErc20 | unknown | bsc | n/a | [`0x54b92aafae3b34e647d292fccb2305679bc193b0`](./contracts/bsc-56/0x54b92aafae3b34e647d292fccb2305679bc193b0/) | ✅ Audited |
| TErc20Delegate | unknown | bsc | n/a | [`0x140efe74fb35342948d28fe6fe9d0221d49e3e0e`](./contracts/bsc-56/0x140efe74fb35342948d28fe6fe9d0221d49e3e0e/) | ✅ Audited |
| Unitroller | unknown | bsc | n/a | [`0x12427e5031c72264054ae8455764b623c77b5743`](./contracts/bsc-56/0x12427e5031c72264054ae8455764b623c77b5743/) | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Depositor | unknown | bsc | n/a | [`0xcbbe6cc37925168f225197df720928c2e876afff`](./contracts/bsc-56/0xcbbe6cc37925168f225197df720928c2e876afff/) | ⚠️ Unaudited |
| DummyToken | unknown | bsc | n/a | [`0x09c19ea24fd71b0523c4eb7d324d6eb85c785c02`](./contracts/bsc-56/0x09c19ea24fd71b0523c4eb7d324d6eb85c785c02/) | ⚠️ Unaudited |
| FryingDutchManSailing | unknown | bsc | n/a | [`0xf2c5a5db32a6d9715405d1c4fdf160f08c20b59a`](./contracts/bsc-56/0xf2c5a5db32a6d9715405d1c4fdf160f08c20b59a/) | ⚠️ Unaudited |
| ICO | unknown | bsc | n/a | [`0x932d6321deb56e97b34b3d43af5bc07b785d881b`](./contracts/bsc-56/0x932d6321deb56e97b34b3d43af5bc07b785d881b/) | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | bsc | n/a | [`0x2bc629c04f54f0070f5c361a213b5f5ecdfdec25`](./contracts/bsc-56/0x2bc629c04f54f0070f5c361a213b5f5ecdfdec25/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x93bf557d6a41bb1d2d25f0645f02c92193f4d7e0`](./contracts/bsc-56/0x93bf557d6a41bb1d2d25f0645f02c92193f4d7e0/) | ⚠️ Unaudited |
| StratX2_BELT | unknown | bsc | n/a | [`0xc7bbd4992fc6fd734d0502207ac66806582de8b2`](./contracts/bsc-56/0xc7bbd4992fc6fd734d0502207ac66806582de8b2/) | ⚠️ Unaudited |
| TEN_Finance_V2 | unknown | bsc | n/a | [`0x3b1e8d853733a744baede9b6755065e05cef4404`](./contracts/bsc-56/0x3b1e8d853733a744baede9b6755065e05cef4404/) | ⚠️ Unaudited |
| TENFIExchange | unknown | bsc | n/a | [`0xc6b20fa2b5c5e0565bae9d648ab2afa37074be5e`](./contracts/bsc-56/0xc6b20fa2b5c5e0565bae9d648ab2afa37074be5e/) | ⚠️ Unaudited |
| TENFIFarm | unknown | bsc | n/a | [`0x0f9ebf3e497454b07d1f4650ac8c9092f5a30483`](./contracts/bsc-56/0x0f9ebf3e497454b07d1f4650ac8c9092f5a30483/) | ⚠️ Unaudited |
| TENFIStrategy_4BELT | unknown | bsc | n/a | [`0x08eff8bb5fb5fbecb295f2d2de004c378e4bb711`](./contracts/bsc-56/0x08eff8bb5fb5fbecb295f2d2de004c378e4bb711/) | ⚠️ Unaudited |
| TENFIStrategy_PCS | unknown | bsc | n/a | [`0x00c5ec1690cff296ff44b910d7da1a8c4703cc81`](./contracts/bsc-56/0x00c5ec1690cff296ff44b910d7da1a8c4703cc81/) | ⚠️ Unaudited |
| TENFIStrategy_Single_BELT | unknown | bsc | n/a | [`0x09c87cb74762e042a2d010d091d30553b7e5fbcc`](./contracts/bsc-56/0x09c87cb74762e042a2d010d091d30553b7e5fbcc/) | ⚠️ Unaudited |
| TENFIStrategy_TENFI | unknown | bsc | n/a | [`0x325a6dbc08f93cb57b23e0be6cd765c107813da0`](./contracts/bsc-56/0x325a6dbc08f93cb57b23e0be6cd765c107813da0/) | ⚠️ Unaudited |
| TenIndex | unknown | bsc | n/a | [`0x00ac67242512a2423023ad2ec6c814914a25399e`](./contracts/bsc-56/0x00ac67242512a2423023ad2ec6c814914a25399e/) | ⚠️ Unaudited |
| TENLock | unknown | bsc | n/a | [`0x5a50b8eda11de347f5ed9925dae59eacc4504d68`](./contracts/bsc-56/0x5a50b8eda11de347f5ed9925dae59eacc4504d68/) | ⚠️ Unaudited |
| TenLots | unknown | bsc | n/a | [`0x03414f0652f8b066575b667621b5d803fa43efa4`](./contracts/bsc-56/0x03414f0652f8b066575b667621b5d803fa43efa4/) | ⚠️ Unaudited |
| TENSTRATEGY_ALPACA | unknown | bsc | n/a | [`0x126bbf371d28cb82181a33b9e02f75a5c7e4d7e6`](./contracts/bsc-56/0x126bbf371d28cb82181a33b9e02f75a5c7e4d7e6/) | ⚠️ Unaudited |
| TenZap | unknown | bsc | n/a | [`0x27c97209bb7b29c30e792729b8c03ca2e6765a8d`](./contracts/bsc-56/0x27c97209bb7b29c30e792729b8c03ca2e6765a8d/) | ⚠️ Unaudited |
| TErc20Delegator | unknown | bsc | n/a | [`0xa2f2177c7923aea14fda17e175f41bd499adf998`](./contracts/bsc-56/0xa2f2177c7923aea14fda17e175f41bd499adf998/) | ⚠️ Unaudited |
| TestLENDt | unknown | bsc | n/a | [`0xfc2ac181cd9af8b3ff62b8aadd353ae86c5d042a`](./contracts/bsc-56/0xfc2ac181cd9af8b3ff62b8aadd353ae86c5d042a/) | ⚠️ Unaudited |
| TransferReward | unknown | bsc | n/a | [`0x18179317cbdf2bfff661124ed6f383a2e8269959`](./contracts/bsc-56/0x18179317cbdf2bfff661124ed6f383a2e8269959/) | ⚠️ Unaudited |
| Yieldex | unknown | bsc | n/a | [`0x05f4e9b89947146c6098cfced589eb607a45fa6b`](./contracts/bsc-56/0x05f4e9b89947146c6098cfced589eb607a45fa6b/) | ⚠️ Unaudited |

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
| [{% embed url="<>" %}](https://skynet.certik.com/projects/tenfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Audits](https://tenfinance.gitbook.io/ten/documentation-1/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-TenLend-v1.0.pdf](https://3931236349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MTg9bsJ23imtGvbcYvG%2Fuploads%2Fa4RWF03WuDG7oB33JzOD%2FPeckShield-Audit-Report-TenLend-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xcbbe6cc37925168f225197df720928c2e876afff`](./contracts/bsc-56/0xcbbe6cc37925168f225197df720928c2e876afff/) | Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09c19ea24fd71b0523c4eb7d324d6eb85c785c02`](./contracts/bsc-56/0x09c19ea24fd71b0523c4eb7d324d6eb85c785c02/) | DummyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf2c5a5db32a6d9715405d1c4fdf160f08c20b59a`](./contracts/bsc-56/0xf2c5a5db32a6d9715405d1c4fdf160f08c20b59a/) | FryingDutchManSailing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x932d6321deb56e97b34b3d43af5bc07b785d881b`](./contracts/bsc-56/0x932d6321deb56e97b34b3d43af5bc07b785d881b/) | ICO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2bc629c04f54f0070f5c361a213b5f5ecdfdec25`](./contracts/bsc-56/0x2bc629c04f54f0070f5c361a213b5f5ecdfdec25/) | JumpRateModelV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc7bbd4992fc6fd734d0502207ac66806582de8b2`](./contracts/bsc-56/0xc7bbd4992fc6fd734d0502207ac66806582de8b2/) | StratX2_BELT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b1e8d853733a744baede9b6755065e05cef4404`](./contracts/bsc-56/0x3b1e8d853733a744baede9b6755065e05cef4404/) | TEN_Finance_V2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc6b20fa2b5c5e0565bae9d648ab2afa37074be5e`](./contracts/bsc-56/0xc6b20fa2b5c5e0565bae9d648ab2afa37074be5e/) | TENFIExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f9ebf3e497454b07d1f4650ac8c9092f5a30483`](./contracts/bsc-56/0x0f9ebf3e497454b07d1f4650ac8c9092f5a30483/) | TENFIFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x08eff8bb5fb5fbecb295f2d2de004c378e4bb711`](./contracts/bsc-56/0x08eff8bb5fb5fbecb295f2d2de004c378e4bb711/) | TENFIStrategy_4BELT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00c5ec1690cff296ff44b910d7da1a8c4703cc81`](./contracts/bsc-56/0x00c5ec1690cff296ff44b910d7da1a8c4703cc81/) | TENFIStrategy_PCS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09c87cb74762e042a2d010d091d30553b7e5fbcc`](./contracts/bsc-56/0x09c87cb74762e042a2d010d091d30553b7e5fbcc/) | TENFIStrategy_Single_BELT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x325a6dbc08f93cb57b23e0be6cd765c107813da0`](./contracts/bsc-56/0x325a6dbc08f93cb57b23e0be6cd765c107813da0/) | TENFIStrategy_TENFI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00ac67242512a2423023ad2ec6c814914a25399e`](./contracts/bsc-56/0x00ac67242512a2423023ad2ec6c814914a25399e/) | TenIndex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5a50b8eda11de347f5ed9925dae59eacc4504d68`](./contracts/bsc-56/0x5a50b8eda11de347f5ed9925dae59eacc4504d68/) | TENLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03414f0652f8b066575b667621b5d803fa43efa4`](./contracts/bsc-56/0x03414f0652f8b066575b667621b5d803fa43efa4/) | TenLots | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x126bbf371d28cb82181a33b9e02f75a5c7e4d7e6`](./contracts/bsc-56/0x126bbf371d28cb82181a33b9e02f75a5c7e4d7e6/) | TENSTRATEGY_ALPACA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27c97209bb7b29c30e792729b8c03ca2e6765a8d`](./contracts/bsc-56/0x27c97209bb7b29c30e792729b8c03ca2e6765a8d/) | TenZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa2f2177c7923aea14fda17e175f41bd499adf998`](./contracts/bsc-56/0xa2f2177c7923aea14fda17e175f41bd499adf998/) | TErc20Delegator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfc2ac181cd9af8b3ff62b8aadd353ae86c5d042a`](./contracts/bsc-56/0xfc2ac181cd9af8b3ff62b8aadd353ae86c5d042a/) | TestLENDt | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18179317cbdf2bfff661124ed6f383a2e8269959`](./contracts/bsc-56/0x18179317cbdf2bfff661124ed6f383a2e8269959/) | TransferReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05f4e9b89947146c6098cfced589eb607a45fa6b`](./contracts/bsc-56/0x05f4e9b89947146c6098cfced589eb607a45fa6b/) | Yieldex | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=7

Zero-match audit list:

- [18366] {% embed url="<>" %}
- [18367] Audits

Fork inheritance lineage and inherited audits are included when available.
