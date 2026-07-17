# Agentic Audit Brief: Mycelium

## Project Overview

- Project: Mycelium (`mycelium`)
- Website: [https://mycelium.xyz](https://mycelium.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:37.762Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum
- Contract surface: 41 unique implementations (41 raw deployments)
- DeFi Llama TVL: $264,690.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 40 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (governable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 41; live-surface contracts included: 41 (41 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/40 (0.0%)
- Deployed-live implementations: 41 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 41
- Raw deployments: 41
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

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchSender | unknown | arbitrum | n/a | [`0x669adb1b0d5d7a2e244ce7091c220c17a6429e44`](./contracts/arbitrum-42161/0x669adb1b0d5d7a2e244ce7091c220c17a6429e44/) | ⚠️ Unaudited |
| BonusDistributor | unknown | arbitrum | n/a | [`0x68200f38ec38215219b63ccc428eb14a1d4481f3`](./contracts/arbitrum-42161/0x68200f38ec38215219b63ccc428eb14a1d4481f3/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x1d3ac3f2de105f831b4ebea8987a5f58b26aba40`](./contracts/arbitrum-42161/0x1d3ac3f2de105f831b4ebea8987a5f58b26aba40/) | ⚠️ Unaudited |
| FastPriceEvents | unknown | arbitrum | n/a | [`0x3934ca8b69d05533769b0d96d1a11c44c1d2fa3b`](./contracts/arbitrum-42161/0x3934ca8b69d05533769b0d96d1a11c44c1d2fa3b/) | ⚠️ Unaudited |
| FastPriceFeed | unknown | arbitrum | n/a | [`0x57ff9294b05065b88cb3ec148beedfb50eda3127`](./contracts/arbitrum-42161/0x57ff9294b05065b88cb3ec148beedfb50eda3127/) | ⚠️ Unaudited |
| LentMycWithMigration | unknown | arbitrum | n/a | [`0x3b9acfcaaa405b672ef3a0efce4cf179f3742150`](./contracts/arbitrum-42161/0x3b9acfcaaa405b672ef3a0efce4cf179f3742150/) | ⚠️ Unaudited |
| MerkleTokenSale | unknown | arbitrum | n/a | [`0xbc61d76cbd784bb3ede8c855f37deb465c5b43a9`](./contracts/arbitrum-42161/0xbc61d76cbd784bb3ede8c855f37deb465c5b43a9/) | ⚠️ Unaudited |
| MintableBaseToken | unknown | arbitrum | n/a | [`0x2e18a8a985cf4422d9d1cf4a46d98dec3fd6ce14`](./contracts/arbitrum-42161/0x2e18a8a985cf4422d9d1cf4a46d98dec3fd6ce14/) | ⚠️ Unaudited |
| MLP | unknown | arbitrum | n/a | [`0x752b746426b6d0c3188bb530660374f92fd9cf7c`](./contracts/arbitrum-42161/0x752b746426b6d0c3188bb530660374f92fd9cf7c/) | ⚠️ Unaudited |
| MlpManager | unknown | arbitrum | n/a | [`0x2de28ab4827112cd3f89e5353ca5a8d80db7018f`](./contracts/arbitrum-42161/0x2de28ab4827112cd3f89e5353ca5a8d80db7018f/) | ⚠️ Unaudited |
| MycTimelock | unknown | arbitrum | n/a | [`0x971ec4ad4695e95faeb830b22d89f394540e5e91`](./contracts/arbitrum-42161/0x971ec4ad4695e95faeb830b22d89f394540e5e91/) | ⚠️ Unaudited |
| OrderBook | unknown | arbitrum | n/a | [`0x2eeef7852a306a580acf94f7c18c3ff124a59d4f`](./contracts/arbitrum-42161/0x2eeef7852a306a580acf94f7c18c3ff124a59d4f/) | ⚠️ Unaudited |
| PoolCommitterDeployer | unknown | arbitrum | n/a | [`0xd211d5e01748f3585e25a506b92b39833d362767`](./contracts/arbitrum-42161/0xd211d5e01748f3585e25a506b92b39833d362767/) | ⚠️ Unaudited |
| PoolFactory | unknown | arbitrum | n/a | [`0x3feafee6b12c8d2e58c5b118e54c09f9273c6124`](./contracts/arbitrum-42161/0x3feafee6b12c8d2e58c5b118e54c09f9273c6124/) | ⚠️ Unaudited |
| PoolKeeper | unknown | arbitrum | n/a | [`0x051afd0b39acf4cc52c76a479ad802d0b82a8249`](./contracts/arbitrum-42161/0x051afd0b39acf4cc52c76a479ad802d0b82a8249/) | ⚠️ Unaudited |
| PoolStateHelper | unknown | arbitrum | n/a | [`0x714d243feafff5599105b59cd58bccacb5eecc21`](./contracts/arbitrum-42161/0x714d243feafff5599105b59cd58bccacb5eecc21/) | ⚠️ Unaudited |
| PoolSwapLibrary | unknown | arbitrum | n/a | [`0x542848e66d8f387a78717be7b39f7259b7782bae`](./contracts/arbitrum-42161/0x542848e66d8f387a78717be7b39f7259b7782bae/) | ⚠️ Unaudited |
| PositionManager | unknown | arbitrum | n/a | [`0x3892b8cf646b17709c91e653319ba5504a5feafe`](./contracts/arbitrum-42161/0x3892b8cf646b17709c91e653319ba5504a5feafe/) | ⚠️ Unaudited |
| PositionRouter | unknown | arbitrum | n/a | [`0xe510571cac76279dadf6c4b6eace5370f86e3dc2`](./contracts/arbitrum-42161/0xe510571cac76279dadf6c4b6eace5370f86e3dc2/) | ⚠️ Unaudited |
| Reader | unknown | arbitrum | n/a | [`0x77ae0f7128c6ac9f0efdb8a6f0aabd5b979ea80e`](./contracts/arbitrum-42161/0x77ae0f7128c6ac9f0efdb8a6f0aabd5b979ea80e/) | ⚠️ Unaudited |
| ReferralStorage | unknown | arbitrum | n/a | [`0x3cd316df040f8a76eb2b496b92b358d3b2efb9f5`](./contracts/arbitrum-42161/0x3cd316df040f8a76eb2b496b92b358d3b2efb9f5/) | ⚠️ Unaudited |
| RewardDistributor | unknown | arbitrum | n/a | [`0x0f5976e0380e9b743a90271acbd031b4cc4d9de8`](./contracts/arbitrum-42161/0x0f5976e0380e9b743a90271acbd031b4cc4d9de8/) | ⚠️ Unaudited |
| RewardManager | unknown | arbitrum | n/a | [`0x2cf6803c2981d99e761fca936e57235e07272ec1`](./contracts/arbitrum-42161/0x2cf6803c2981d99e761fca936e57235e07272ec1/) | ⚠️ Unaudited |
| RewardReader | unknown | arbitrum | n/a | [`0x676cf948e84560808eefb7af9d3a46e0d6a6f988`](./contracts/arbitrum-42161/0x676cf948e84560808eefb7af9d3a46e0d6a6f988/) | ⚠️ Unaudited |
| RewardRouterV2 | unknown | arbitrum | n/a | [`0xd98d8e458f7ad22dd3c1d7a8b35c74005eb52b0b`](./contracts/arbitrum-42161/0xd98d8e458f7ad22dd3c1d7a8b35c74005eb52b0b/) | ⚠️ Unaudited |
| RewardTracker | unknown | arbitrum | n/a | [`0x0ca0147c21f9db9d4627e6a996342a11d25972c5`](./contracts/arbitrum-42161/0x0ca0147c21f9db9d4627e6a996342a11d25972c5/) | ⚠️ Unaudited |
| Router | unknown | arbitrum | n/a | [`0x3cd2f02b9e39ccc781d0c07fc0286f654e53a76d`](./contracts/arbitrum-42161/0x3cd2f02b9e39ccc781d0c07fc0286f654e53a76d/) | ⚠️ Unaudited |
| SMAOracle | unknown | arbitrum | n/a | [`0x2456d80579a5a6dfeda70f05d46a67096372ce2b`](./contracts/arbitrum-42161/0x2456d80579a5a6dfeda70f05d46a67096372ce2b/) | ⚠️ Unaudited |
| StakedMlp | unknown | arbitrum | n/a | [`0x9f4bc1ef5319af843e587a3bfdb3b228009f035f`](./contracts/arbitrum-42161/0x9f4bc1ef5319af843e587a3bfdb3b228009f035f/) | ⚠️ Unaudited |
| StakingRewards | unknown | arbitrum | n/a | [`0x04148587ecde89933fc582e4dc5ee38d8c978b36`](./contracts/arbitrum-42161/0x04148587ecde89933fc582e4dc5ee38d8c978b36/) | ⚠️ Unaudited |
| StandardArbERC20 | unknown | arbitrum | n/a | [`0xc74fe4c715510ec2f8c61d70d397b32043f55abe`](./contracts/arbitrum-42161/0xc74fe4c715510ec2f8c61d70d397b32043f55abe/) | ⚠️ Unaudited |
| Timelock | unknown | arbitrum | n/a | [`0x25d390b53b06ae32dab3bdcb1c0d4fa44d2907d7`](./contracts/arbitrum-42161/0x25d390b53b06ae32dab3bdcb1c0d4fa44d2907d7/) | ⚠️ Unaudited |
| TokenManager | unknown | arbitrum | n/a | [`0x3f3bf48bd66a461a00d4d52291ba2118e26bf320`](./contracts/arbitrum-42161/0x3f3bf48bd66a461a00d4d52291ba2118e26bf320/) | ⚠️ Unaudited |
| TracerDevMultisig | unknown | arbitrum | n/a | [`0x0f79e82ae88e1318b8cfc8b4a205fe2f982b928a`](./contracts/arbitrum-42161/0x0f79e82ae88e1318b8cfc8b4a205fe2f982b928a/) | ⚠️ Unaudited |
| USDG | unknown | arbitrum | n/a | [`0xe61a61b9ce1bd12e17a53aeeee1005ef6c1b2e80`](./contracts/arbitrum-42161/0xe61a61b9ce1bd12e17a53aeeee1005ef6c1b2e80/) | ⚠️ Unaudited |
| Vault | unknown | arbitrum | n/a | [`0xdfba8ad57d2c62f61f0a60b2c508bcdeb182f855`](./contracts/arbitrum-42161/0xdfba8ad57d2c62f61f0a60b2c508bcdeb182f855/) | ⚠️ Unaudited |
| VaultErrorController | unknown | arbitrum | n/a | [`0x59bcc6f06477a80ac885d91bbff9cd04deaf729f`](./contracts/arbitrum-42161/0x59bcc6f06477a80ac885d91bbff9cd04deaf729f/) | ⚠️ Unaudited |
| VaultPriceFeed | unknown | arbitrum | n/a | [`0xdffe2f49234001380119d89e9c965bed4bf123f0`](./contracts/arbitrum-42161/0xdffe2f49234001380119d89e9c965bed4bf123f0/) | ⚠️ Unaudited |
| VaultReader | unknown | arbitrum | n/a | [`0x261f953172ed61155a3f18ff807139abe8234196`](./contracts/arbitrum-42161/0x261f953172ed61155a3f18ff807139abe8234196/) | ⚠️ Unaudited |
| VaultUtils | unknown | arbitrum | n/a | [`0x875b5f3908e37367533b7d6c92535f9ab579b072`](./contracts/arbitrum-42161/0x875b5f3908e37367533b7d6c92535f9ab579b072/) | ⚠️ Unaudited |
| Vester | unknown | arbitrum | n/a | [`0x67ff0614f6e4e04362b3b919adc7371884895ae8`](./contracts/arbitrum-42161/0x67ff0614f6e4e04362b3b919adc7371884895ae8/) | ⚠️ Unaudited |

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
| [DL audit link](https://www.dropcatch.com/domain/tracer.finance) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x669adb1b0d5d7a2e244ce7091c220c17a6429e44`](./contracts/arbitrum-42161/0x669adb1b0d5d7a2e244ce7091c220c17a6429e44/) | BatchSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x68200f38ec38215219b63ccc428eb14a1d4481f3`](./contracts/arbitrum-42161/0x68200f38ec38215219b63ccc428eb14a1d4481f3/) | BonusDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3934ca8b69d05533769b0d96d1a11c44c1d2fa3b`](./contracts/arbitrum-42161/0x3934ca8b69d05533769b0d96d1a11c44c1d2fa3b/) | FastPriceEvents | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57ff9294b05065b88cb3ec148beedfb50eda3127`](./contracts/arbitrum-42161/0x57ff9294b05065b88cb3ec148beedfb50eda3127/) | FastPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3b9acfcaaa405b672ef3a0efce4cf179f3742150`](./contracts/arbitrum-42161/0x3b9acfcaaa405b672ef3a0efce4cf179f3742150/) | LentMycWithMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbc61d76cbd784bb3ede8c855f37deb465c5b43a9`](./contracts/arbitrum-42161/0xbc61d76cbd784bb3ede8c855f37deb465c5b43a9/) | MerkleTokenSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e18a8a985cf4422d9d1cf4a46d98dec3fd6ce14`](./contracts/arbitrum-42161/0x2e18a8a985cf4422d9d1cf4a46d98dec3fd6ce14/) | MintableBaseToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x752b746426b6d0c3188bb530660374f92fd9cf7c`](./contracts/arbitrum-42161/0x752b746426b6d0c3188bb530660374f92fd9cf7c/) | MLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2de28ab4827112cd3f89e5353ca5a8d80db7018f`](./contracts/arbitrum-42161/0x2de28ab4827112cd3f89e5353ca5a8d80db7018f/) | MlpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x971ec4ad4695e95faeb830b22d89f394540e5e91`](./contracts/arbitrum-42161/0x971ec4ad4695e95faeb830b22d89f394540e5e91/) | MycTimelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2eeef7852a306a580acf94f7c18c3ff124a59d4f`](./contracts/arbitrum-42161/0x2eeef7852a306a580acf94f7c18c3ff124a59d4f/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd211d5e01748f3585e25a506b92b39833d362767`](./contracts/arbitrum-42161/0xd211d5e01748f3585e25a506b92b39833d362767/) | PoolCommitterDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3feafee6b12c8d2e58c5b118e54c09f9273c6124`](./contracts/arbitrum-42161/0x3feafee6b12c8d2e58c5b118e54c09f9273c6124/) | PoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x051afd0b39acf4cc52c76a479ad802d0b82a8249`](./contracts/arbitrum-42161/0x051afd0b39acf4cc52c76a479ad802d0b82a8249/) | PoolKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x714d243feafff5599105b59cd58bccacb5eecc21`](./contracts/arbitrum-42161/0x714d243feafff5599105b59cd58bccacb5eecc21/) | PoolStateHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x542848e66d8f387a78717be7b39f7259b7782bae`](./contracts/arbitrum-42161/0x542848e66d8f387a78717be7b39f7259b7782bae/) | PoolSwapLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3892b8cf646b17709c91e653319ba5504a5feafe`](./contracts/arbitrum-42161/0x3892b8cf646b17709c91e653319ba5504a5feafe/) | PositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe510571cac76279dadf6c4b6eace5370f86e3dc2`](./contracts/arbitrum-42161/0xe510571cac76279dadf6c4b6eace5370f86e3dc2/) | PositionRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x77ae0f7128c6ac9f0efdb8a6f0aabd5b979ea80e`](./contracts/arbitrum-42161/0x77ae0f7128c6ac9f0efdb8a6f0aabd5b979ea80e/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3cd316df040f8a76eb2b496b92b358d3b2efb9f5`](./contracts/arbitrum-42161/0x3cd316df040f8a76eb2b496b92b358d3b2efb9f5/) | ReferralStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f5976e0380e9b743a90271acbd031b4cc4d9de8`](./contracts/arbitrum-42161/0x0f5976e0380e9b743a90271acbd031b4cc4d9de8/) | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2cf6803c2981d99e761fca936e57235e07272ec1`](./contracts/arbitrum-42161/0x2cf6803c2981d99e761fca936e57235e07272ec1/) | RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x676cf948e84560808eefb7af9d3a46e0d6a6f988`](./contracts/arbitrum-42161/0x676cf948e84560808eefb7af9d3a46e0d6a6f988/) | RewardReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd98d8e458f7ad22dd3c1d7a8b35c74005eb52b0b`](./contracts/arbitrum-42161/0xd98d8e458f7ad22dd3c1d7a8b35c74005eb52b0b/) | RewardRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0ca0147c21f9db9d4627e6a996342a11d25972c5`](./contracts/arbitrum-42161/0x0ca0147c21f9db9d4627e6a996342a11d25972c5/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3cd2f02b9e39ccc781d0c07fc0286f654e53a76d`](./contracts/arbitrum-42161/0x3cd2f02b9e39ccc781d0c07fc0286f654e53a76d/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2456d80579a5a6dfeda70f05d46a67096372ce2b`](./contracts/arbitrum-42161/0x2456d80579a5a6dfeda70f05d46a67096372ce2b/) | SMAOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9f4bc1ef5319af843e587a3bfdb3b228009f035f`](./contracts/arbitrum-42161/0x9f4bc1ef5319af843e587a3bfdb3b228009f035f/) | StakedMlp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04148587ecde89933fc582e4dc5ee38d8c978b36`](./contracts/arbitrum-42161/0x04148587ecde89933fc582e4dc5ee38d8c978b36/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc74fe4c715510ec2f8c61d70d397b32043f55abe`](./contracts/arbitrum-42161/0xc74fe4c715510ec2f8c61d70d397b32043f55abe/) | StandardArbERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x25d390b53b06ae32dab3bdcb1c0d4fa44d2907d7`](./contracts/arbitrum-42161/0x25d390b53b06ae32dab3bdcb1c0d4fa44d2907d7/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3f3bf48bd66a461a00d4d52291ba2118e26bf320`](./contracts/arbitrum-42161/0x3f3bf48bd66a461a00d4d52291ba2118e26bf320/) | TokenManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0f79e82ae88e1318b8cfc8b4a205fe2f982b928a`](./contracts/arbitrum-42161/0x0f79e82ae88e1318b8cfc8b4a205fe2f982b928a/) | TracerDevMultisig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe61a61b9ce1bd12e17a53aeeee1005ef6c1b2e80`](./contracts/arbitrum-42161/0xe61a61b9ce1bd12e17a53aeeee1005ef6c1b2e80/) | USDG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdfba8ad57d2c62f61f0a60b2c508bcdeb182f855`](./contracts/arbitrum-42161/0xdfba8ad57d2c62f61f0a60b2c508bcdeb182f855/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x59bcc6f06477a80ac885d91bbff9cd04deaf729f`](./contracts/arbitrum-42161/0x59bcc6f06477a80ac885d91bbff9cd04deaf729f/) | VaultErrorController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdffe2f49234001380119d89e9c965bed4bf123f0`](./contracts/arbitrum-42161/0xdffe2f49234001380119d89e9c965bed4bf123f0/) | VaultPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x261f953172ed61155a3f18ff807139abe8234196`](./contracts/arbitrum-42161/0x261f953172ed61155a3f18ff807139abe8234196/) | VaultReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x875b5f3908e37367533b7d6c92535f9ab579b072`](./contracts/arbitrum-42161/0x875b5f3908e37367533b7d6c92535f9ab579b072/) | VaultUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x67ff0614f6e4e04362b3b919adc7371884895ae8`](./contracts/arbitrum-42161/0x67ff0614f6e4e04362b3b919adc7371884895ae8/) | Vester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24257] DL audit link

Fork inheritance lineage and inherited audits are included when available.
