# Agentic Audit Brief: Mycelium

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Mycelium (`mycelium`)
- Website: [https://mycelium.xyz](https://mycelium.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 46 unique implementations (46 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $264,690.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Mycelium. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: none
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
- Address-book implementation classification: 0 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x669adb1b0d5d7a2e244ce7091c220c17a6429e44` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68200f38ec38215219b63ccc428eb14a1d4481f3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x1d3ac3f2de105f831b4ebea8987a5f58b26aba40` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3934ca8b69d05533769b0d96d1a11c44c1d2fa3b` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x57ff9294b05065b88cb3ec148beedfb50eda3127` | ⚠️ Unaudited |
| LentMycWithMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b9acfcaaa405b672ef3a0efce4cf179f3742150` | ⚠️ Unaudited |
| MerkleTokenSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc61d76cbd784bb3ede8c855f37deb465c5b43a9` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e18a8a985cf4422d9d1cf4a46d98dec3fd6ce14` | ⚠️ Unaudited |
| MLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x752b746426b6d0c3188bb530660374f92fd9cf7c` | ⚠️ Unaudited |
| MlpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2de28ab4827112cd3f89e5353ca5a8d80db7018f` | ⚠️ Unaudited |
| MycTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x971ec4ad4695e95faeb830b22d89f394540e5e91` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2eeef7852a306a580acf94f7c18c3ff124a59d4f` | ⚠️ Unaudited |
| PoolCommitterDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd211d5e01748f3585e25a506b92b39833d362767` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3feafee6b12c8d2e58c5b118e54c09f9273c6124` | ⚠️ Unaudited |
| PoolKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x051afd0b39acf4cc52c76a479ad802d0b82a8249` | ⚠️ Unaudited |
| PoolStateHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x714d243feafff5599105b59cd58bccacb5eecc21` | ⚠️ Unaudited |
| PoolSwapLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x542848e66d8f387a78717be7b39f7259b7782bae` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3892b8cf646b17709c91e653319ba5504a5feafe` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe510571cac76279dadf6c4b6eace5370f86e3dc2` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77ae0f7128c6ac9f0efdb8a6f0aabd5b979ea80e` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd316df040f8a76eb2b496b92b358d3b2efb9f5` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f5976e0380e9b743a90271acbd031b4cc4d9de8` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cf6803c2981d99e761fca936e57235e07272ec1` | ⚠️ Unaudited |
| RewardReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x676cf948e84560808eefb7af9d3a46e0d6a6f988` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd98d8e458f7ad22dd3c1d7a8b35c74005eb52b0b` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ca0147c21f9db9d4627e6a996342a11d25972c5` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd2f02b9e39ccc781d0c07fc0286f654e53a76d` | ⚠️ Unaudited |
| SMAOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2456d80579a5a6dfeda70f05d46a67096372ce2b` | ⚠️ Unaudited |
| StakedMlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f4bc1ef5319af843e587a3bfdb3b228009f035f` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04148587ecde89933fc582e4dc5ee38d8c978b36` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | arbitrum | unit-248447 | `0xc74fe4c715510ec2f8c61d70d397b32043f55abe` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25d390b53b06ae32dab3bdcb1c0d4fa44d2907d7` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f3bf48bd66a461a00d4d52291ba2118e26bf320` | ⚠️ Unaudited |
| TracerDevMultisig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f79e82ae88e1318b8cfc8b4a205fe2f982b928a` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe61a61b9ce1bd12e17a53aeeee1005ef6c1b2e80` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfba8ad57d2c62f61f0a60b2c508bcdeb182f855` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59bcc6f06477a80ac885d91bbff9cd04deaf729f` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdffe2f49234001380119d89e9c965bed4bf123f0` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x261f953172ed61155a3f18ff807139abe8234196` | ⚠️ Unaudited |
| VaultUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x875b5f3908e37367533b7d6c92535f9ab579b072` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67ff0614f6e4e04362b3b919adc7371884895ae8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x279c803e118609591e13e780269cd7f77dea0a72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x57a81f7b72d2703ae7c533f3fb1cdefa6b8f25f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbe5350ee7f130549b5eed3bceab1cd4451609015` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf9b003ee160da9677115ad3c5bd6bb6dadcb2f93` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://www.dropcatch.com/domain/tracer.finance) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24257] DL audit link — no match: The provided text is not an audit report; it appears to be a domain parking page with no contract information.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [24257] DL audit link

Fork inheritance lineage and inherited audits are included when available.
