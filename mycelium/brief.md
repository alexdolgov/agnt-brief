# Agentic Audit Brief: Mycelium

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Mycelium (`mycelium`)
- Website: [https://mycelium.xyz](https://mycelium.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 220 unique implementations (221 raw deployments)
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
- Outside the address book: 214 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 179
- Unique implementations: 220
- Raw deployments: 221
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
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1d3ac3f2de105f831b4ebea8987a5f58b26aba40`; arbitrum `0xb5becf27f6a01afa99decdefec407c5b8ed0b8fb` | ⚠️ Unaudited |
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

### ❓ Unverified (179)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e8704f80875240bd1877f69a3ccc33014ff07f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x279c803e118609591e13e780269cd7f77dea0a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b79e11984514ece5b2db561f49c0466cc7659ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b13006980acb09645131b91d259eaa111eaf5ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x515f2815c950c8385c1c3c30b63adf3207aa259a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x57a81f7b72d2703ae7c533f3fb1cdefa6b8f25f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dcaaf1f0b32244131fed00de9c4598ae526dab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f0a098ef408ee7c3a87cdec970b970d7227711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x707b6be09028e78d2a667db7596b2803c112f9b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72baaa523a4662856f413b0fc0a9e3068f39fe76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83181d41b3203651216065f5f5601295e8e45da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90d93f5a390bfdbc401f92e916197ee17470a447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9c4a4204b79dd291d6b6571c5be8bbcd0622f050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa84918f3280d488eb3369cb713ec53ce386b6cba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbe5350ee7f130549b5eed3bceab1cd4451609015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x010641702a9e4cdde6ad774c09449f05ddea0ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0450959a393c3d6e6e37b65a6e836f59c47e24d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x046b21659c445f43f2c621c874f79868dc6fa159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04c9cfdaf9de4d06611dd7987f6bd240ecf70f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04ff29f8f379b2aa7d79ba66ce76649334d83e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06f0a46ba44de4f5aa327237b0b3a1610f125d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07cccdc913bcbab246fc6e38e81b0c53aab3de9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0896fd59b574f536751c82b8dd9fd9466af009ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cc54e19ca1c8cf1bf3d42c67f97454ab6d41301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dc23d133cab52be60c905c24f21925de6e67aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10260cf26c68df40017d5e488dc633f1642f2a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1044345924277fd2e9bdf14edad8c1d1a67a4b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x111278bf2cc2fd862183cf34896c60dbbea0706f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11a2b5acac927fea4be8dd48166cedddfc8e5e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1392a5eec4ef364319e44cb1b155dd743894ccfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14f7e8e31b794aa9674f2f861ef45d9081ab827e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16c457fc0f5d5981574ed2baed81c625bd91b633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18fb99925603f68ccc49c3542ee3296b1b2efc07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1908d6f83df6e5cbc2da9caef2b88df78ea22833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19b08bce18417150faec2b4951dad924f8d131a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e9c64b7a04b3895c70be77120ee8b7a64b321a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21c361144a9dd212368f206ee1d772db697857a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x224949832f3dbf9a365d9ba3ec504727a103e96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23e21bd7e0faa2e5792dfb9a2c60c865a4cd158f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2839d3e1f30fc8dbf50a73772e25144f5e76fb0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2bc8e28f5d41a4b112bc62eb7db1b757c85f37ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cba704478d6b2104067be827ff2c9b724047325` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d5888df6eed01e1fb26b47e25bcc4265c68221e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e7584fcd6f909bfa7a21aeb1a4894674c16e4cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f09d08167ad714d48de65fa8c75fe19388f87c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3004cc46432522b0aea30d16af769b1727aa0c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x307ca2a840ba96d3a0d8ac3398bff695491dce0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x310117f5f6ac3bc04c115b8590a5ca8301bc4efc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3169b5719b8a7b40580965e8557379fe15209aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33582761879e0edacc25d156585c6ccc0d20f85a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38b90a6268b1a20f7a7319d533bc9d31678cd7d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38f8f98f20f81f4e74c2d66a5310e10dbbf293ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39723f758701e82d5fbe8b3bfd1a646d73f99793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bc14c530be9a46719606f7d1908061ed4c60ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44b42e7ef481f6d1ff8d0fd7bff6b3c8bd25a581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x489da242a948d1978673fef8836740c11732ec0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4aa0bceb79a44d31d105a7826cdfcdedd930b44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4be1e8fddb0b0cb48716b2c129a397772d67ea73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50041fe576cec7502ea97ce33627856299011eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x574375868f76f49a9eeeb6a5720b984298c216be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x576c9ab07bb66c4928db3195ad171356cff19564` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x576d64b38fc48284e683d53a5d26fc231ba78ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58639957c0e526ff4e4bb1cbfbdfefdeb16af237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58e24579ad1bd49e63ed7267cfade1724e778181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b62c1ab1d6efba3f6706d93c8d595516c5c9d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bc1e7d49a1c5433358317426b7e526367d60cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fd3fa0204ae9fd974f19430d8ea6bbbc7deb3d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x615ae0452587d6030bc68fb3a9e205e430c0cf8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63980b755bfe929a66605ad527f5968a357efc0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64bb77266ee000f441920ba41561cd82f69b4c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6645d987ef4ce1cb06a6aaf710d0d53e36763774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x667e4c71ebc1086f852e47c99687e7b3266f2fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66c7ef099bf61cd7aedfcb9fb9e86798222ae94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x681e1b823292743f0a3dc1ce1e572c16225a1c23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69c33a5dde20c8489c8f6f547fe9c886471fde94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b277ceb7bc188f8be95eeb82766212672de3e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c3f130ee5db48312846c7f47a02001b012833fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d52d4c087dd8a167eca0008fb4c69d99169dce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e34e8bedbdc9700612d75826976a22858ffe09e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71505bc95053d57f9e699bc38a3621b0f564b042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71dbda135d5a9f64306fd22e00e59a5fedfb86f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x759e817f0c40b11c775d1071d466b5ff5c6ce28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x799b73bc2ae5333d90b2a1075295998da24c58a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ab8083f6eaac244a5248d5a23f348f60e3cd57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b3084b918a57564448263e7c6bdc6c3794c9d1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cec785fba5ee648b48fbffc378d74c8671bb3cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7dd04b13c7fb8f1252e645176871b17ae55505dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81a302aee2635511258164e4ecd50ba5ff7258c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x849d5a3ee254124cac5a6069f1d24c7e7284f724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8624590899d71da156264cd7da2923dfd73432a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x880e722a5996e7abab4b8bbc77b9537205bda1de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c21c72d07ce3b8047762e8578b4db7f3c0ebef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cb86b49bcdde9cfec5ebd45a64bb4b73b168234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d56b35a3f50d42ae39e953448b0138fcdf0894e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8da386b8e9e3c27411ec5972c5d91399ad0b9d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x906c81a761d60acacae85165d67031e9f7e3cea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x928d5a6668bc9b801229c176c0beb3b34afba5d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93116d661dacaa8ff65cb5420ef61425322aea7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9769f208239c740cc40e9cb3427c34513213b83f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97c3d137b3158443cac3006fcdaded23dd9a36da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97c9f5f75863b8887fef9ccbbdc05b31d2a34d07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98c58c1ceb01e198f8356763d5cba8eb7b11e4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9aa0d42b39a0380a0d94552230c4f1f54bc50756` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bf1126a8ae8628bb4ce33a7c6e901c3bbb8d4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c2e161d00abf3e7fdfd50197b778c681117c45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa18413dc5506a91138e0604c283e36b021b8849b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa29ff864fe81ab9ff2c4737904ebb2f5e9fa9d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2baccd1aa980f80b37bc950ce3ee2d5816d7ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa541a762270bc825f25cddc0c0a76d8feb7a2be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7a0fd0754b8f945b3f14903e13189ea838b017d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9234de71cb19b3217457fc2a3df14bca4837fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9808afc50e06877575d2ff7ccc21bc55552bcd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9e9ce12c289a3c7a8005a952de7ce6d74d3552a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaac9f23d2d4ab7d1e28cd8c9e37c8e1cb4ba9d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac0ad456922f45232aff5682d40350ccb5a1c8ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf9f0ecd11a9e86d5d9698275a3721ccd596f3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb000f7df69d74a1f3b3cdb8ddeb3317a0823af2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0e1a6144fad8ee4ff3fb6c5cc0c30f9313e68e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb1d75a1024770ca975c30412970c0fbd829c13c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb220724b6b68a84392ec22e841ede5519863a21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb22e2234d1fd6f9cd5800039710668eb602300d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3db56c96e20746d67684cc27ccc6e45f6e2b790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4d3147bcd1a6ebd83947f52e172dd1c6eed4be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb51e18061c396933ce1c68a62f3935cc3e2abf88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb77b477ce0172dbc87323c2667e06e388f607f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8c53d92dc74db7fe9a1b7c256af3ff91ad67862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8d52de47a6c3a3a5679a72f2f7c05b30a9b5309` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb91f4bc04f680f9ccfc11b8dec76b7dd4382ce3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb97f91bd8f7fb6ac761fb84cb953e4f52f049486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba82f9581db796366f31f8d19a9d1716989a73ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca90fe2c8cc273bb4ba1147fada3097f9316f9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf3e2dbbf663b09edce8b774334fc408559846d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf86a15fa2604dba2ad7e843c589faaad78bf318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc21159bf0252a37b0c281df2d9b723120caa86c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4e695a2ae9fd060e24cdb87874b684db7447a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc50712733c8ace3012ab11f56bf232f8bffae7f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc54ff7679c917fff9994299c33c29af034f4d000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc644e1ba225e2ab0be407926a177ddc89101a77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb6ac1eacf498118f4609462c0979ffb3ebd1821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd8c0662cf72512857e98646b5c8363782c137a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcddc26674b9a0dc3b0bfac56bc777ff0480b736e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcea0cb831742919da0c71528aeec367a28fcdc8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd04ddcaeca6bf283a430cb9e847ceed5da419fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd18200db16ed83d5254e35ea3b3fe0a9c9808892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2701998bc649adbc34a4039d2d15987e9814568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2af20f0bd1d73ae6e220dfc20aa859ddba7f653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3162ac5fde4b2cfc327b7287d7810cb0273d736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5c7bba9073a8d3e21cf69f5a1fa01b870ac72c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5d78af3eecab1705240b59643d74813b41cc4ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7506d3f22ee87a1422173798cbcb8906b4398ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9134484fd46595e26d50472ca5e614f74f02366` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda673a1aec64fae14eb8a5b4ceadf93600c9b742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdabffa47e509659fede5dec5e22cffb9cb9040b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb042c4f6baa8ef8a1a38038a7533b32be722b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb8cc5be809ebe47d2a96da599647209162c51e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbea4b2f086d0e7259ff84d2a088896e8adb79cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde067d6c410f0683e270a7bca627edb53e63a0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdee48ee9e2affd569aaa47fdbd49f7fec71d7fea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeff54801282b45161912cb774b0e5f52ef43ab6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe01b6ba1e64ace0298f2e55152c7153b015b3d1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1c9c69a26bd5c6e4b39e6870a4a2b01b4e033bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe211c6a34a6b04df2d5fbcf3e66fd57b9ed76e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe72d2194046aeb0bd60307e99fe5bc224be5683b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea4ff5ed11f93aa0ce7744b1d40093f52ea1cda8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb05e160d3c1990719aa25d74294783fe4e3d3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec49d9c1a45e135999f88a1b3a6631414dc26720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeeb8d1b7f31be725417f88ed3115169eaa1213f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0bfb95087e611897096982c33b6934c8abfa083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1226775099a2f240c93fc3f4a0feb3295394d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf17b4f778f4314b34fa2e9ae96971a79dc8c963c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf33043cd2a490d578d6c1cd6d114ab54635fce2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf42bb5605277ffc81fbdb938580bda86ab7cbbde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7824fce8c155e74e87e9575c7084d0380b55baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7bd2ed13bef9c27a2188f541dc5ed85c5325306` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8ffbe626db009343ecc69fbcef0b095007bef31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xf9b003ee160da9677115ad3c5bd6bb6dadcb2f93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe7d097f8f752c83d6c9a0414d611e1c958780cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfecd33ee1c46cf5fffe6881a27d58f92e077a0f9` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 175
- Live contracts: 0
- Unknown liveness contracts: 175
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=175

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x010641702a9e4cdde6ad774c09449f05ddea0ff6` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04ff29f8f379b2aa7d79ba66ce76649334d83e48` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0896fd59b574f536751c82b8dd9fd9466af009ac` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0dc23d133cab52be60c905c24f21925de6e67aa2` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10260cf26c68df40017d5e488dc633f1642f2a38` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1044345924277fd2e9bdf14edad8c1d1a67a4b8e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x111278bf2cc2fd862183cf34896c60dbbea0706f` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1392a5eec4ef364319e44cb1b155dd743894ccfd` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x14f7e8e31b794aa9674f2f861ef45d9081ab827e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x16c457fc0f5d5981574ed2baed81c625bd91b633` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x19b08bce18417150faec2b4951dad924f8d131a1` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2bc8e28f5d41a4b112bc62eb7db1b757c85f37ff` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d5888df6eed01e1fb26b47e25bcc4265c68221e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2f09d08167ad714d48de65fa8c75fe19388f87c9` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3004cc46432522b0aea30d16af769b1727aa0c26` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3169b5719b8a7b40580965e8557379fe15209aad` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33582761879e0edacc25d156585c6ccc0d20f85a` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x38b90a6268b1a20f7a7319d533bc9d31678cd7d8` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x38f8f98f20f81f4e74c2d66a5310e10dbbf293ce` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x489da242a948d1978673fef8836740c11732ec0b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4aa0bceb79a44d31d105a7826cdfcdedd930b44f` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x574375868f76f49a9eeeb6a5720b984298c216be` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x576d64b38fc48284e683d53a5d26fc231ba78ded` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58639957c0e526ff4e4bb1cbfbdfefdeb16af237` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b62c1ab1d6efba3f6706d93c8d595516c5c9d74` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fd3fa0204ae9fd974f19430d8ea6bbbc7deb3d6` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x63980b755bfe929a66605ad527f5968a357efc0f` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x667e4c71ebc1086f852e47c99687e7b3266f2fd3` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x681e1b823292743f0a3dc1ce1e572c16225a1c23` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6d52d4c087dd8a167eca0008fb4c69d99169dce8` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ab8083f6eaac244a5248d5a23f348f60e3cd57e` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7cec785fba5ee648b48fbffc378d74c8671bb3cb` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8cb86b49bcdde9cfec5ebd45a64bb4b73b168234` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8da386b8e9e3c27411ec5972c5d91399ad0b9d02` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x906c81a761d60acacae85165d67031e9f7e3cea9` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93116d661dacaa8ff65cb5420ef61425322aea7f` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9bf1126a8ae8628bb4ce33a7c6e901c3bbb8d4a0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c2e161d00abf3e7fdfd50197b778c681117c45d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7a0fd0754b8f945b3f14903e13189ea838b017d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9234de71cb19b3217457fc2a3df14bca4837fa8` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb000f7df69d74a1f3b3cdb8ddeb3317a0823af2b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb1d75a1024770ca975c30412970c0fbd829c13c1` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb220724b6b68a84392ec22e841ede5519863a21f` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb22e2234d1fd6f9cd5800039710668eb602300d4` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb3db56c96e20746d67684cc27ccc6e45f6e2b790` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb4d3147bcd1a6ebd83947f52e172dd1c6eed4be5` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb5becf27f6a01afa99decdefec407c5b8ed0b8fb` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb91f4bc04f680f9ccfc11b8dec76b7dd4382ce3c` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb97f91bd8f7fb6ac761fb84cb953e4f52f049486` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba82f9581db796366f31f8d19a9d1716989a73ab` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbf86a15fa2604dba2ad7e843c589faaad78bf318` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc4e695a2ae9fd060e24cdb87874b684db7447a18` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc644e1ba225e2ab0be407926a177ddc89101a77d` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcb6ac1eacf498118f4609462c0979ffb3ebd1821` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd2af20f0bd1d73ae6e220dfc20aa859ddba7f653` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd5c7bba9073a8d3e21cf69f5a1fa01b870ac72c0` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd7506d3f22ee87a1422173798cbcb8906b4398ac` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd9134484fd46595e26d50472ca5e614f74f02366` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb8cc5be809ebe47d2a96da599647209162c51e4` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xde067d6c410f0683e270a7bca627edb53e63a0e4` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe01b6ba1e64ace0298f2e55152c7153b015b3d1c` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe72d2194046aeb0bd60307e99fe5bc224be5683b` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeeb8d1b7f31be725417f88ed3115169eaa1213f7` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0bfb95087e611897096982c33b6934c8abfa083` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf1226775099a2f240c93fc3f4a0feb3295394d0f` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf7bd2ed13bef9c27a2188f541dc5ed85c5325306` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfe7d097f8f752c83d6c9a0414d611e1c958780cb` | non_address_book | unknown | unknown | unverified | n/a | `0xcc97eb5651e05d5a0ae8bcd2813b9dfdad6f92a5` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0450959a393c3d6e6e37b65a6e836f59c47e24d0` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x046b21659c445f43f2c621c874f79868dc6fa159` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04c9cfdaf9de4d06611dd7987f6bd240ecf70f54` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06f0a46ba44de4f5aa327237b0b3a1610f125d8f` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07cccdc913bcbab246fc6e38e81b0c53aab3de9b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0cc54e19ca1c8cf1bf3d42c67f97454ab6d41301` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x11a2b5acac927fea4be8dd48166cedddfc8e5e15` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18fb99925603f68ccc49c3542ee3296b1b2efc07` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1908d6f83df6e5cbc2da9caef2b88df78ea22833` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e9c64b7a04b3895c70be77120ee8b7a64b321a3` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21c361144a9dd212368f206ee1d772db697857a4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x224949832f3dbf9a365d9ba3ec504727a103e96e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23e21bd7e0faa2e5792dfb9a2c60c865a4cd158f` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2839d3e1f30fc8dbf50a73772e25144f5e76fb0d` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2cba704478d6b2104067be827ff2c9b724047325` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2e7584fcd6f909bfa7a21aeb1a4894674c16e4cd` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x307ca2a840ba96d3a0d8ac3398bff695491dce0b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x310117f5f6ac3bc04c115b8590a5ca8301bc4efc` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x39723f758701e82d5fbe8b3bfd1a646d73f99793` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3bc14c530be9a46719606f7d1908061ed4c60ede` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44b42e7ef481f6d1ff8d0fd7bff6b3c8bd25a581` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4be1e8fddb0b0cb48716b2c129a397772d67ea73` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50041fe576cec7502ea97ce33627856299011eb1` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x576c9ab07bb66c4928db3195ad171356cff19564` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58e24579ad1bd49e63ed7267cfade1724e778181` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5bc1e7d49a1c5433358317426b7e526367d60cd8` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x615ae0452587d6030bc68fb3a9e205e430c0cf8f` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x64bb77266ee000f441920ba41561cd82f69b4c27` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6645d987ef4ce1cb06a6aaf710d0d53e36763774` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x66c7ef099bf61cd7aedfcb9fb9e86798222ae94b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69c33a5dde20c8489c8f6f547fe9c886471fde94` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b277ceb7bc188f8be95eeb82766212672de3e06` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c3f130ee5db48312846c7f47a02001b012833fb` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e34e8bedbdc9700612d75826976a22858ffe09e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x71505bc95053d57f9e699bc38a3621b0f564b042` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x71dbda135d5a9f64306fd22e00e59a5fedfb86f9` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x759e817f0c40b11c775d1071d466b5ff5c6ce28e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x799b73bc2ae5333d90b2a1075295998da24c58a4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7b3084b918a57564448263e7c6bdc6c3794c9d1f` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7dd04b13c7fb8f1252e645176871b17ae55505dd` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81a302aee2635511258164e4ecd50ba5ff7258c1` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x849d5a3ee254124cac5a6069f1d24c7e7284f724` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8624590899d71da156264cd7da2923dfd73432a0` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x880e722a5996e7abab4b8bbc77b9537205bda1de` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c21c72d07ce3b8047762e8578b4db7f3c0ebef2` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8d56b35a3f50d42ae39e953448b0138fcdf0894e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x928d5a6668bc9b801229c176c0beb3b34afba5d8` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9769f208239c740cc40e9cb3427c34513213b83f` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97c3d137b3158443cac3006fcdaded23dd9a36da` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x97c9f5f75863b8887fef9ccbbdc05b31d2a34d07` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x98c58c1ceb01e198f8356763d5cba8eb7b11e4e2` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9aa0d42b39a0380a0d94552230c4f1f54bc50756` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa18413dc5506a91138e0604c283e36b021b8849b` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa29ff864fe81ab9ff2c4737904ebb2f5e9fa9d71` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2baccd1aa980f80b37bc950ce3ee2d5816d7ec0` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa541a762270bc825f25cddc0c0a76d8feb7a2be4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9808afc50e06877575d2ff7ccc21bc55552bcd1` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9e9ce12c289a3c7a8005a952de7ce6d74d3552a` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaac9f23d2d4ab7d1e28cd8c9e37c8e1cb4ba9d96` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xac0ad456922f45232aff5682d40350ccb5a1c8ea` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf9f0ecd11a9e86d5d9698275a3721ccd596f3f5` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb0e1a6144fad8ee4ff3fb6c5cc0c30f9313e68e2` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb51e18061c396933ce1c68a62f3935cc3e2abf88` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb77b477ce0172dbc87323c2667e06e388f607f49` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb8c53d92dc74db7fe9a1b7c256af3ff91ad67862` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb8d52de47a6c3a3a5679a72f2f7c05b30a9b5309` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbca90fe2c8cc273bb4ba1147fada3097f9316f9c` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbf3e2dbbf663b09edce8b774334fc408559846d0` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc21159bf0252a37b0c281df2d9b723120caa86c7` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc50712733c8ace3012ab11f56bf232f8bffae7f2` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc54ff7679c917fff9994299c33c29af034f4d000` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcd8c0662cf72512857e98646b5c8363782c137a7` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcddc26674b9a0dc3b0bfac56bc777ff0480b736e` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcea0cb831742919da0c71528aeec367a28fcdc8c` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd04ddcaeca6bf283a430cb9e847ceed5da419fa0` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd18200db16ed83d5254e35ea3b3fe0a9c9808892` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd2701998bc649adbc34a4039d2d15987e9814568` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd3162ac5fde4b2cfc327b7287d7810cb0273d736` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd5d78af3eecab1705240b59643d74813b41cc4ff` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xda673a1aec64fae14eb8a5b4ceadf93600c9b742` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdabffa47e509659fede5dec5e22cffb9cb9040b4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdb042c4f6baa8ef8a1a38038a7533b32be722b6d` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdbea4b2f086d0e7259ff84d2a088896e8adb79cf` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdee48ee9e2affd569aaa47fdbd49f7fec71d7fea` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdeff54801282b45161912cb774b0e5f52ef43ab6` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe1c9c69a26bd5c6e4b39e6870a4a2b01b4e033bc` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe211c6a34a6b04df2d5fbcf3e66fd57b9ed76e0d` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xea4ff5ed11f93aa0ce7744b1d40093f52ea1cda8` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xeb05e160d3c1990719aa25d74294783fe4e3d3ef` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xec49d9c1a45e135999f88a1b3a6631414dc26720` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf17b4f778f4314b34fa2e9ae96971a79dc8c963c` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf33043cd2a490d578d6c1cd6d114ab54635fce2c` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf42bb5605277ffc81fbdb938580bda86ab7cbbde` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf7824fce8c155e74e87e9575c7084d0380b55baf` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf8ffbe626db009343ecc69fbcef0b095007bef31` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfecd33ee1c46cf5fffe6881a27d58f92e077a0f9` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b13006980acb09645131b91d259eaa111eaf5ba` | non_address_book | unknown | unknown | unverified | n/a | `0x0ecf023ca0f37a5816039465c305fdb6feb63204` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72baaa523a4662856f413b0fc0a9e3068f39fe76` | non_address_book | unknown | unknown | unverified | n/a | `0x0ecf023ca0f37a5816039465c305fdb6feb63204` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17e8704f80875240bd1877f69a3ccc33014ff07f` | non_address_book | unknown | unknown | unverified | n/a | `0xedb06bc6945e4ac8f43688b066a23c1db260c266` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ad3cf980eb7cd382ebaf12c7c8d995bfea17a11` | non_address_book | unknown | unknown | unverified | n/a | `0xedb06bc6945e4ac8f43688b066a23c1db260c266` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b79e11984514ece5b2db561f49c0466cc7659ea` | non_address_book | unknown | unknown | unverified | n/a | `0xedb06bc6945e4ac8f43688b066a23c1db260c266` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x515f2815c950c8385c1c3c30b63adf3207aa259a` | non_address_book | unknown | unknown | unverified | n/a | `0xedb06bc6945e4ac8f43688b066a23c1db260c266` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65f0a098ef408ee7c3a87cdec970b970d7227711` | non_address_book | unknown | unknown | unverified | n/a | `0xedb06bc6945e4ac8f43688b066a23c1db260c266` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa84918f3280d488eb3369cb713ec53ce386b6cba` | non_address_book | unknown | unknown | unverified | n/a | `0xedb06bc6945e4ac8f43688b066a23c1db260c266` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x707b6be09028e78d2a667db7596b2803c112f9b2` | non_address_book | unknown | unknown | unverified | n/a | `0xf807219e03320a02022010ab142fb4453f9317b6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90d93f5a390bfdbc401f92e916197ee17470a447` | non_address_book | unknown | unknown | unverified | n/a | `0xf807219e03320a02022010ab142fb4453f9317b6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5dcaaf1f0b32244131fed00de9c4598ae526dab2` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83181d41b3203651216065f5f5601295e8e45da4` | non_address_book | unknown | unknown | unverified | n/a | `0xfb59b91646cd0890f3e5343384feb746989b66c7` |

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
| needs_review | 179 |

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
