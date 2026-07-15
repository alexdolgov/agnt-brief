# Agentic Audit Brief: Alien Base

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 39.5% over 90 days

## Project Overview

- Project: Alien Base (`alien-base`)
- Website: [https://alienbase.xyz/](https://alienbase.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 67 unique implementations (115 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,336,181.00
- On-chain TVL (included contracts): $2,020,491.49
- TVL by chain: Base $2,020,491.49

## Project Description

This brief describes the observed EVM deployment and audit surface for Alien Base. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base. Structural roles: 7 supporting, 6 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: supporting (7), core (6), unclassified (1)
- Contract kinds: contract (14)
- Detected standards: erc20 (4), multicall (4), ownable (4), erc20permit (3), erc165 (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (10), uniswap-v3 (5), uniswap-v2 (3), boringcrypto (2), solmate (2), uniswap (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2d5dd5...6de51e`, chain 8453)
- UnnamedContract (`0x3e84d9...c0fde7`, chain 8453)
- AlienBaseToken (`0x1dd2d6...0050c4`, chain 8453)
- BasedDistributorV2 (`0x52eaec...d86590`, chain 8453)
- BunniHub (`0xdc5348...ccac6f`, chain 8453)
- BunniToken (`0x053d11...3d27a4`, chain 8453)
- BunniToken (`0x176ca1...a208f0`, chain 8453)
- BunniZap (`0x6947da...16d75d`, chain 8453)
- EsProxyMaster (`0xd3968a...61ec88`, chain 8453)
- EsToken (`0xe1afc6...2a4587`, chain 8453)
- NonfungiblePositionManager (`0xb7996d...4534e5`, chain 8453)
- SmartRouter (`0xb20c41...ea9411`, chain 8453)
- UniswapV2Router02 (`0x3485f8...bb79e7`, chain 8453)
- UniswapV2Router02 (`0x8c1a3c...6b37c7`, chain 8453)
- UniswapV3Factory (`0x0fd835...74558c`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 16 of 67 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 67
- Raw deployments: 115
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,874,177.28
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,874,177.28 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlienBaseToken | token | project_anchor | own_supporting | 0 | base | unit-226187 | `0x1dd2d6...0050c4` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbcd27a...1b6fcb` | ⚠️ Unaudited |
| AlienbaseLottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4384dc...5248ff` | ⚠️ Unaudited |
| AlienbaseZapV1 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0808b...811054` | ⚠️ Unaudited |
| BasedDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | base | unit-226191 | `0x52eaec...d86590` | ⚠️ Unaudited |
| BunniHub | unknown | project_anchor | own_supporting | 0 | base | unit-226195 | `0xdc5348...ccac6f` | ⚠️ Unaudited |
| BunniHubA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1fac4...e92bb9` | ⚠️ Unaudited |
| BunniHubController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4bcc58...fa0f38` | ⚠️ Unaudited |
| BunniLensV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x1733c3...339c44`; base `0x3ceb26...bec9dc`; base `0x519989...6a3014`; base `0x8fcd06...5031c2`; base `0xe8b5b2...4d7e87`; base `0xf71e5e...05b621` | ⚠️ Unaudited |
| BunniToken | token | project_anchor | own_supporting | 0 | base | unit-226183 | `0x053d11...3d27a4` | ⚠️ Unaudited |
| BunniToken | token | project_anchor | own_supporting | 0 | base | unit-226186 | `0x176ca1...a208f0` | ⚠️ Unaudited |
| BunniZap | adapter | project_anchor | own_supporting | 1 | base | unit-226197 | `0x6947da...16d75d` | ⚠️ Unaudited |
| BunniZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77c18d...0ab7f0` | ⚠️ Unaudited |
| BurnableTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf5a7a6...692c79` | ⚠️ Unaudited |
| CarbonController | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0d6e29...b215d0`; base `0xe37638...97716e` | ⚠️ Unaudited |
| CarbonController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xec5c5c...b5a561` | ⚠️ Unaudited |
| ComplexRewarderPerSecV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 17 deployments: base `0x016874...108e26`; base `0x052916...d19d10`; base `0x19f3d2...9ea64e`; base `0x2c629a...1f6766`; base `0x3d4444...987919`; base `0x41ad2d...2b35aa`; base `0x4eb157...a97024`; base `0x970079...70be51`; base `0xb28b0a...b19080`; base `0xb32951...23c74f`; base `0xb772cb...8386a0`; base `0xbdd085...4d5ef1`; base `0xbe9e35...bc1577`; base `0xc0bf69...be382a`; base `0xd46949...8dff6d`; base `0xe27159...fb910c`; base `0xfb7022...d8dfa8` | ⚠️ Unaudited |
| DistributorController | operational_periphery | project_anchor | own_supporting | 0 | base | unit-226185 | `0x16f1f8...23e4fb` | ⚠️ Unaudited |
| DistributorController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x68e143...e1c68c`; base `0xb71cc2...77b60e` | ⚠️ Unaudited |
| EsComplexRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x392382...5c43a6`; base `0x3aa57f...30b211`; base `0x3f42d7...252811`; base `0xa720c1...395117`; base `0xbbd0cb...11210e` | ⚠️ Unaudited |
| EsProxyMaster | unknown | project_anchor | own_supporting | 0 | base | unit-226194 | 2 deployments: base `0xd3968a...61ec88`; base `0xfea31d...de63d9` | ⚠️ Unaudited |
| EsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: base `0x1a18d2...3c5af2`; base `0x365c6d...a54113`; base `0x3d3a5a...6d8ea0`; base `0x4a023e...a36978`; base `0x5c9054...8c5e66`; base `0x93d590...8f529b`; base `0xccb488...c0a124`; base `0xe2204e...213ac8` | ⚠️ Unaudited |
| EsToken | token | project_anchor | own_supporting | 0 | base | unit-226196 | `0xe1afc6...2a4587` | ⚠️ Unaudited |
| EsTokenController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x154d41...a1ea99`; base `0x2de715...7f60dc`; base `0x95ff65...2d2819`; base `0x9e27f3...82ac6e`; base `0xf4eb75...da644a`; base `0xf6c0db...ecdb94` | ⚠️ Unaudited |
| EsVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3f8d11...2dddc1`; base `0xd3cfcb...df2e7b` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4ab907...2171e5` | ⚠️ Unaudited |
| LPToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf1355...c2633a` | ⚠️ Unaudited |
| MintableTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a9668...cc8369` | ⚠️ Unaudited |
| MintBurnTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x872521...9aaf51` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa54844...c4fde6` | ⚠️ Unaudited |
| NFTDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bbb7...bdedbd` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | base | unit-226199 | `0xb7996d...4534e5` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25225c...b8d9d6` | ⚠️ Unaudited |
| PredictionETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfbe87e...2863e8` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xe23f65...4528c1`; base `0xe49273...e704b4` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x353b1b...93b23a` | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0bc1a7...2a1a16` | ⚠️ Unaudited |
| SimpleERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fc786...62d1af` | ⚠️ Unaudited |
| SimpleTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b0145...10d176` | ⚠️ Unaudited |
| SmartRouter | adapter | project_anchor | own_supporting | 1 | base | unit-226198 | `0xb20c41...ea9411` | ⚠️ Unaudited |
| StableSwapViewer | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3db0bc...c28d29` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27223e...bd1ef6` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x410d28...4f6a2d`; base `0x927860...bfbb27` | ⚠️ Unaudited |
| TaxTokenFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x13de15...e96373`; base `0x1b2468...ddb484`; base `0x9f3643...922c9f`; base `0xcbac77...068436` | ⚠️ Unaudited |
| TickLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe3b6a5...5fbd8e` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1c7e42...c81e21` | ⚠️ Unaudited |
| TokenGenerator | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbce754...2ad08d` | ⚠️ Unaudited |
| TokenLock | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x329efd...bf8b0c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | base | unit-226189 | `0x3485f8...bb79e7` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | base | unit-226193 | `0x8c1a3c...6b37c7` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | base | unit-226184 | `0x0fd835...74558c` | ⚠️ Unaudited |
| UniversalDistributorController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62d58b...c8fba9` | ⚠️ Unaudited |
| VestingFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x77ec03...faed84`; base `0xf61cc1...c9453d` | ⚠️ Unaudited |
| Voucher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2f3b0d...a72dc9`; base `0x837724...ce534c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x293be4...1b5220` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226188 | `0x2d5dd5...6de51e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226190 | `0x3e84d9...c0fde7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c0b9f...444cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x783898...3843ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7920fb...fea013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ca63e...6dae7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e1c24...5b846a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa5263...7c2c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb93189...2884f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd97c8...b84ce2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd54a92...aeb5bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf78ac4...c20ff5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x1dd2d6...0050c4` | AlienBaseToken | token | $1,874,177.28 | Verified native implementation with $1,874,177.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52eaec...d86590` | BasedDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdc5348...ccac6f` | BunniHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x053d11...3d27a4` | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x176ca1...a208f0` | BunniToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x16f1f8...23e4fb` | DistributorController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd3968a...61ec88` | EsProxyMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe1afc6...2a4587` | EsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb20c41...ea9411` | SmartRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 10 |
| standard_library | 5 |
| needs_review | 10 |

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
