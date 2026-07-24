# Agentic Audit Brief: Myriad Markets

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Myriad Markets (`myriad-markets`)
- Website: [https://myriad.markets/markets](https://myriad.markets/markets)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, linea
- Contract surface: 63 unique implementations (63 raw deployments)
- Coverage basis: 1/5 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $466,580.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Myriad Markets. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across bsc, celo, linea. Structural roles: 6 core, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (6), abstract (2)
- Detected standards: erc1967proxy (3), erc165 (2), erc20 (2), erc1155 (1), ownable (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x39e66ee6b2ddaf4defded3038e0162180dbef340`, chain 59144)
- UnnamedContract (`0x503c9f98398dc3433aba819bf3ec0b97e02b8d04`, chain 59144)
- BEP20USDT (`0x55d398326f99059ff775485246999027b3197955`, chain 56)
- FiatTokenProxy (`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`, chain 59144)
- PredictionMarketV3_4 (`0x39e66ee6b2ddaf4defded3038e0162180dbef340`, chain 56)
- PredictionMarketV3Querier (`0xdefb36c47754d2e37d44b8b8c647d4d643e03bad`, chain 56)
- StablecoinV2 (`0x8d0d000ee44948fc98c9b98a4fa4921476f08b0d`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (5 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 50 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 7 of 63 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/39
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 63
- Raw deployments: 63
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 20.0% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 1 | 2.6% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PredictionMarketV3_4 | unknown | project_anchor | own_supporting | 1 | bsc | unit-248491 | `0x39e66ee6b2ddaf4defded3038e0162180dbef340` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaadcdf80a88e0024642fe9cbeff4011b7a4f653` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e84390dcc5195414ec91a8c56a5c91021b95704` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd` | ⚠️ Unaudited |
| BEP20USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-248477 | `0x55d398326f99059ff775485246999027b3197955` | ⚠️ Unaudited |
| ConditionalTokens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248478 | `0x6413734f92248d4b29ae35883290bd93212654dc` | ⚠️ Unaudited |
| CryptoCREOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6a00f56955ac5aa9901b2a98e504a6d6811f2e5` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b669b28c339991d8676fa73cf122a121267` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db974b1f2bd3b5916d503036208064d18295` | ⚠️ Unaudited |
| ExecutorsGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdffc9616d7939523ed07abe8d76e8afa0e85189` | ⚠️ Unaudited |
| FeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x423abc7b68dd11c3756f59fb2c155d27f003a7e7` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-248493 | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0e57c8d26671e267c3c971824b93343bb75c2dc8` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d43713b7e333d2d54be65ce3b5f3698ab960fd` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1998108fa7993ea67a8b1a99d392a3288c5a5521` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a15257c4983a6fe9073d8c91763433124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b826b3c1e8918843baf7abd2e51399cfc13` | ⚠️ Unaudited |
| MyriadCTFExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f5c62b07a38bce116fb5fcc61cbc262b43a3364` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca02f98d590819141aa85c891e2af713c223` | ⚠️ Unaudited |
| NegRiskAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248484 | `0xd96f26703ddbf7d1cb6858640eca34cf1893d53a` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f` | ⚠️ Unaudited |
| PredictionMarketV3Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdefb36c47754d2e37d44b8b8c647d4d643e03bad` | ⚠️ Unaudited |
| PredictionMarketV3ManagerCLOB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ab1213d360bea3eda75d88d81d7fbfc9fd37f2b` | ⚠️ Unaudited |
| PredictionMarketV3Querier | unknown | project_anchor | own_supporting | 0 | bsc | unit-248485 | `0xdefb36c47754d2e37d44b8b8c647d4d643e03bad` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e1f6f22f97b4a7522d8b62e983953639239774e` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5aed9f27837074612288610fb98ccc1733126` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff6e65f680844fd2465393ff6f0d742b67d5` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795ead640e261868eb200ed2850eb9c151e7d` | ⚠️ Unaudited |
| SportsCREOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5d08a4797c0bd67e1b6b0acb4730c12be7a1065` | ⚠️ Unaudited |
| Stablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3398385c205c060ef54744ee817c1487e28a6616` | ⚠️ Unaudited |
| StablecoinV2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-248492 | `0x8d0d000ee44948fc98c9b98a4fa4921476f08b0d` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d0117121f6a7476221e2afc57faf9866e4c` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0ece76334fb560f2b1a49a60e38cf726b02203f0` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974fb3f8c1e02796048bdcded79e9d53a6965` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe798695d2e78f7caeb5bbf3385433959324c02c0` | ⚠️ Unaudited |
| WrappedCollateral | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248479 | `0x9f124ce59d8de0274574949400640a2677067acc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x051bd36b9d45a9047148916aaa956be338c4d5ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x307893b1d9f2f6af097310ef6e49b90bc5a2ee3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b64914ac13c37cea46513da12ebaffe5bb178cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48ae491c075ea48ba1275f967503dcadf5dc1f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x537dc41fbb4f9faa4b9d6f8e6c2eb9071274f72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61ccdd59b133497121dfe05eabe0943574544f2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76574337863e425278e523006b0a6bd4e01c868f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa032fe6c496732bdfc0d235066f55f171fa4aece` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248480 | `0xa0b6f8ef8edb64f395018d1933f2273ce9f0f16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaac2a7f99f3f42e99612a1a684384e9c759f8fda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248481 | `0xab5591e280ff9bf368db60c3b775b5c7ba5ea3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3593f042d81c3127c5903be18a8581d70a662ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc39fa757886e8a56422abc460b1fffc70bbaec6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248483 | `0xc1bb36bb0ba236603b95544e809f2ab1893bbc0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1192f125c3a269834a3b59775ceb37889c9dcc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x307893b1d9f2f6af097310ef6e49b90bc5a2ee3d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-248486 | `0x39e66ee6b2ddaf4defded3038e0162180dbef340` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-248487 | `0x503c9f98398dc3433aba819bf3ec0b97e02b8d04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x537dc41fbb4f9faa4b9d6f8e6c2eb9071274f72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x605ff8a2feedd124bf334d0411b088041ca6c6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x60d7956805ec5a698173def4d0e1ecdefb06cc57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x756cc76895b4b87ae6cfd3cb66f51b97d13131b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x83d3f4769a19f1b43337888b0290f5473cf508b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdcbe79f74c98368141798ea0b7b979b9ba54b026` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 19
- Live contracts: 0
- Unknown liveness contracts: 19
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=19

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x051bd36b9d45a9047148916aaa956be338c4d5ea` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x307893b1d9f2f6af097310ef6e49b90bc5a2ee3d` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x3b64914ac13c37cea46513da12ebaffe5bb178cb` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x48ae491c075ea48ba1275f967503dcadf5dc1f58` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x537dc41fbb4f9faa4b9d6f8e6c2eb9071274f72b` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x61ccdd59b133497121dfe05eabe0943574544f2f` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x76574337863e425278e523006b0a6bd4e01c868f` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0xa032fe6c496732bdfc0d235066f55f171fa4aece` | non_address_book | unknown | unknown | unverified | n/a | `0x29e37a9338618d9a8c3e82f529364575568726bb` |
| unverified unclassified | UnnamedContract<br>`0xaac2a7f99f3f42e99612a1a684384e9c759f8fda` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0xb3593f042d81c3127c5903be18a8581d70a662ef` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0xbc39fa757886e8a56422abc460b1fffc70bbaec6` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x1192f125c3a269834a3b59775ceb37889c9dcc4d` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x307893b1d9f2f6af097310ef6e49b90bc5a2ee3d` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x537dc41fbb4f9faa4b9d6f8e6c2eb9071274f72b` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x605ff8a2feedd124bf334d0411b088041ca6c6a5` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x60d7956805ec5a698173def4d0e1ecdefb06cc57` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x756cc76895b4b87ae6cfd3cb66f51b97d13131b5` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0x83d3f4769a19f1b43337888b0290f5473cf508b2` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |
| unverified unclassified | UnnamedContract<br>`0xdcbe79f74c98368141798ea0b7b979b9ba54b026` | non_address_book | unknown | unknown | unverified | n/a | `0x7c0f97fb24e8712e97285c7ba7527ed6d0eb6995` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view](https://drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2026-03-13-cyfrin-myriad-clob-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-03-13-cyfrin-myriad-clob-v2.0.pdf) | Cyfrin | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2026-04-07-cyfrin-myriad-pr145-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-04-07-cyfrin-myriad-pr145-v2.0.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-07-25-cyfrin-myriad-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-07-25-cyfrin-myriad-v2.0.pdf) | Cyfrin | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29972] drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view — no match: Extracted 8 contracts from scope sections and file paths. Audit date from cover page.
- [29973] 2026-03-13-cyfrin-myriad-clob-v2.0.pdf — no match: All contracts listed in the Audit Scope section (page 4) are included. The audit date is from the cover page: March 13, 2026.
- [29974] 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf — no match: Scope section explicitly lists two contracts: RealitioOracle.sol and MyriadCTFExchange.sol. Audit date is April 8, 2026 from the cover page.
- [29975] 2026-04-07-cyfrin-myriad-pr145-v2.0.pdf — no match: Only one contract explicitly in scope: MyriadCTFExchange.sol. The audit scope section describes changes to _settleMintMatch and _settleMergeMatch within that contract. No other contracts are listed.
- [29976] 2025-07-25-cyfrin-myriad-v2.0.pdf — matched: Scope section explicitly lists three contracts. FantasyERC20 is a key component but not in scope listing; included as it is part of the protocol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | AdminRegistry | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | ConditionalTokens | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | FeeModule | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | MyriadCTFExchange | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | NegRiskAdapter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | PredictionMarketV3ManagerCLOB | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | WrappedCollateral | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | RealitioOracle | unmatched — not counted | — | listed in scope | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | AdminRegistry | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | ConditionalTokens | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | FeeModule | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | MyriadCTFExchange | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | NegRiskAdapter | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | PredictionMarketV3ManagerCLOB | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | WrappedCollateral | unmatched — not counted | — | listed in scope section | no |
| 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf | RealitioOracle | unmatched — not counted | — | listed in scope section: // new contracts contracts/oracles/RealitioOracle.sol | no |
| 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf | MyriadCTFExchange | unmatched — not counted | — | listed in scope section: // added matchMultipleOrdersWithFees contracts/MyriadCTFExchange.sol | no |
| 2026-04-07-cyfrin-myriad-pr145-v2.0.pdf | MyriadCTFExchange | unmatched — not counted | — | Protocol Summary mentions MyriadCTFExchange.sol as the contract containing _settleMintMatch and _settleMergeMatch; Audit Scope mentions these functions are in scope. | no |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | PredictionMarketV3_4 | own proxy deployment | PredictionMarketV3_4 (proxy) (selected) `0x39e66ee6b2ddaf4defded3038e0162180dbef340` — deployed 2025-10-21 03:36:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | LandFactory | unmatched — not counted | — | listed in scope section | no |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | PredictionMarketV3Manager | unmatched — not counted | — | listed in scope section | no |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | FantasyERC20 | unmatched — not counted | — | mentioned as key component in protocol summary | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x55d398326f99059ff775485246999027b3197955` | BEP20USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdefb36c47754d2e37d44b8b8c647d4d643e03bad` | PredictionMarketV3Querier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8d0d000ee44948fc98c9b98a4fa4921476f08b0d` | StablecoinV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=1

Zero-match audit list:

- [29972] drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view
- [29973] 2026-03-13-cyfrin-myriad-clob-v2.0.pdf
- [29974] 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf
- [29975] 2026-04-07-cyfrin-myriad-pr145-v2.0.pdf

Fork inheritance lineage and inherited audits are included when available.
