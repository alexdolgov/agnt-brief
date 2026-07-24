# Agentic Audit Brief: Clearpool

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Clearpool (`clearpool`)
- Website: [https://clearpool.finance](https://clearpool.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, ethereum, mantle, optimism, polygon, polygon-zkevm
- Contract surface: 172 unique implementations (217 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $44,431,289.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Clearpool. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across avalanche, base, ethereum, mantle, optimism, polygon, polygon-zkevm. Structural roles: 3 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (3), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc20 (3), ownable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 4; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 158 discovered implementations shown in the inventory but excluded from coverage (4 third-party/infra; 5 standard proxy/library)
- Proxy deployments represented within implementation groups: 31
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 125
- Unique implementations: 172
- Raw deployments: 217
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AMPT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f17cfad23c2014c5a32722557df87dff46819da` | ⚠️ Unaudited |
| Auction | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-232006 | `0x5f04bc575a407dba3129ea45180b1e6573a4f91a` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x3b194bb8c432a465b88d5b0005470ac733798d00`; polygon `0xdad6e9a6ef6d20518df7a81585be51ef6dc66453` | ⚠️ Unaudited |
| Auction | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-232019 | `0xf55ec6e723d58cd9e84b9542e8335ebe4896f150` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 4 deployments: polygon `0x7e503482a173eb47ac8f0abbab3886b0b5d9251c`; mantle `0x661bf079980696f40570dca9d64ef525458519df`; mantle `0xa3693729f943ab715f22242f6ff728157d1786f7`; base `0xb939a6dc9c604ecf5580c9fb49e2984bad10d052` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x7554fa6f01e8dc237818aaed54204799544479ae`; mantle `0xfe0c81550c84d75e06e8c61ccc18be20c5e74103` | ⚠️ Unaudited |
| Auction | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x0762a9399d03430451f39045b0c4d3eb5fdd2447` | ⚠️ Unaudited |
| BondNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x022741f3047a5d040d52f7a57dc6a2b1b456729d` | ⚠️ Unaudited |
| ClearpoolLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: polygon `0xe57bb7f8370ae23ed61ff9d6d0195e95afd17148`; mantle `0x6278bcb4ada5f9bd83b0e0745db6246274b9e79b` | ⚠️ Unaudited |
| CosineInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: optimism `0xb98c680443f28ccdeb525da31419a4aea6edb66c`; optimism `0xf041a2838794266d19f79709f416a2977f896a9b`; polygon `0x43cb897f476acd90eb75ce82ca8cd828a3e5afe5`; mantle `0x244ef5a8013e4b35396e081741047dd13e33903d`; mantle `0x56713f6322958c5dffc09bf2315472c4731db71b`; mantle `0xd4f764b72257af93e82066d32697ef89351c6ef2` | ⚠️ Unaudited |
| CPOOL | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-232007 | `0x66761fa41377003622aee3c7675fc7b5c1c2fac5` | ⚠️ Unaudited |
| CPOOLOFT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x379c8d144db8465646b4abef6bbf3af1d9faacd9`; base `0x29157e2b6a34ae1787cddd05ad54dd4aa9783a5c` | ⚠️ Unaudited |
| CPOOLOFT20 | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon | unit-232017 | `0xb08b3603c5f2629ef83510e6049edeefdc3a2d91` | ⚠️ Unaudited |
| CPOOLOFT20 | core_logic | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mantle | unit-232020 | `0x0c8927de225bb1ed9db05aa7d641e434b95279d8` | ⚠️ Unaudited |
| MembershipStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x4a7e8e3c4498f9df2d588aaf6d55fa90f23b7c2a`; polygon `0x67a24ca29ea17860179b9783428fbdd660ac9b67` | ⚠️ Unaudited |
| MembershipStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x1f64d0d771ca7bdc06dd8faa99a4be8a07433db3`; mantle `0xe5860c7ce8d6158524f00e6142a91eb6686a798a` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34aeed1248b4585ea79354c03bf96374a908d9de` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x281af75c2919a1f579b507f4ab8ce77fcacd4197` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: optimism `0xbdf5575ec1cc0a14bd3e94648a2453fdc7b56943`; mantle `0x1de6ba3ec39f9e68ee3bdff0f00746c21cfc6a4c`; base `0x8e557363ac9e5cbf09a2616a302ca3c8f6ab2b7a` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb98c680443f28ccdeb525da31419a4aea6edb66c` | ⚠️ Unaudited |
| PoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-232010 | `0xde204e5a060ba5d3b63c7a4099712959114c2d48` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x01af79c842e2089b16e2013d2ac02fc1c731f26d`; optimism `0xe3e26d4187f3a8e100223576a37d30f2a89eb755` | ⚠️ Unaudited |
| PoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-232012 | `0x99c10a7abd93b2db6d1a2271e69f268a2c356b80` | ⚠️ Unaudited |
| PoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-232021 | `0x215cca938df02c9814be2d39a285b941fbda79ba` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | mantle | n/a | 3 deployments: mantle `0xa7209ca2d4a6a9b9f14e67b8013f2b72fb42d729`; mantle `0xb217d93a8f6a4b7861bb2c865a8c22105fbcde41`; mantle `0xd51f0402ff8d26ee343c3a9dc579fc798e61e5ce` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: polygon `0x16497fcd12f12cf4353c2f6b40a70e7f280c2508`; polygon `0x7de081085f870da367142b4d30fc174d6eccee87`; mantle `0x063d68028426fa68b05648a3438fc2c6113850a7`; mantle `0x8e40e7a809d068d7a0fd58ad6c70198008f25172`; base `0x01af79c842e2089b16e2013d2ac02fc1c731f26d` | ⚠️ Unaudited |
| PoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x199a016ffbe14781365bcaed9cc52598b205dfad` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x721dbbb1a34ea22076620b7a8dfa66bf6e5cc5cd`; base `0xbdf5575ec1cc0a14bd3e94648a2453fdc7b56943` | ⚠️ Unaudited |
| PoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x45e766e2ef6d8282a533e39c3c1690bfd4dc1fe0` | ⚠️ Unaudited |
| PoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: optimism `0x616b66f2a357959af6d98652dd9bbb5db69db213`; polygon `0x331781c145aebfe6e97f9a60e7ed809c89c850ff`; polygon `0x9827d94f5484326806fa43ee8cee3c7711280cfd`; mantle `0xc15871665db950b2db44e497eaa7f348c341fe72`; mantle `0xe168607a376ada1d51006929a0a0f84aa9f8c7c7`; base `0x0fc1a124af80535747c5439c3e0667146a0a2ff3`; base `0x207ac3fda4f6d6fc70cb009854b3f87950575a47`; base `0xca7aaaf1c3f42d46a1c4b7b621c0dc4610738314` | ⚠️ Unaudited |
| PoolMaster | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa83b8f1756fd077c825c9ad308dc0fada078d27a` | ⚠️ Unaudited |
| Prime | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x5a9c1b19038f88b235be0eab23333472b01e2be5`; optimism `0xc31761d26c856f6d2f31d0acafbb1327f5ec16de` | ⚠️ Unaudited |
| Prime | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb8a7e3ac3010ef846e9cac18895aa82d35b50865`; base `0xf041a2838794266d19f79709f416a2977f896a9b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: optimism `0x78539503451048575ee5d003f1caae66d1cd9552`; polygon `0xee3eac99bde3185c48efe61b3badd760644aa19e`; mantle `0x8eff316a36f1a0fcb1b217b571a43558e59bd1cc`; base `0x616b66f2a357959af6d98652dd9bbb5db69db213`; base `0xe3e26d4187f3a8e100223576a37d30f2a89eb755`; avalanche `0x8bc02ef387f837c221545335e21368e5f418b2b3`; avalanche `0xb8a7e3ac3010ef846e9cac18895aa82d35b50865` | ⚠️ Unaudited |
| TermPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-232009 | `0x91a4a196aa25058e523b077a22df420d6aa2e60e` | ⚠️ Unaudited |
| TermPoolFactory | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | polygon | unit-232018 | `0xc3d7f86cf3a9716ea17972390ff22452d54d35a7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x7593e8fc59cb7fb3839a2b4815576c68b3df23ff`; avalanche `0x7a05280940a23749106d8fb2ca4b10b9d1c89067` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x79740bcd9aae3a15a36736e896cd77368ac58690`; avalanche `0xb4546c6e2c69bbf5f29eaeab3de3768d5bb009df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x8e557363ac9e5cbf09a2616a302ca3c8f6ab2b7a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xc31761d26c856f6d2f31d0acafbb1327f5ec16de` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0xe3e26d4187f3a8e100223576a37d30f2a89eb755` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x0e07ce3e7ad3c61fcb7f7e5542a8c61e18002e7d`; base `0x379c8d144db8465646b4abef6bbf3af1d9faacd9`; avalanche `0x78539503451048575ee5d003f1caae66d1cd9552` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x428d561f82bbb9322e5a634490722f26714d4dca` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | avalanche | n/a | `0x721dbbb1a34ea22076620b7a8dfa66bf6e5cc5cd` | ⚠️ Unaudited |
| ViaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x2a4a3494e1f8d8fd3eef2b53c6105f2bb0c07322`; polygon `0x47a96072d4d565a6de6864f44e79136ec2505a3b` | ⚠️ Unaudited |
| WhitelistControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: mantle `0xb4f37f4b0338aff00b4d185d175a749c6d3cdd51`; base `0x72429e13c1c35361bad123b60a97061143d2fe0f` | ⚠️ Unaudited |
| WhitelistControl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8ef02f52adc50f750e2752d9d68e84347989b280` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (125)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03fe982544befb24478bce33278bef073725741f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x046667c768da32ef1e81a5cbbcd49103a207e72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cdf8bf7d007d2cff002f8e6dd2a5eee2704074c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f37f0a064a642240f92b86abf8d41ffd358e06b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ef08023d264a3a75203951c975b84a89787ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5c169fbcbfb00b2c20c6746681aa774d8a613a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d881611e48c806606d59c1591795514805016e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x229f0fb3445ecd573024368a41af68c7225be470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2854084bd9aac5cc9f7bcf4356858fd19973f117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c8fbc541bff60878fd3a8a0a18bc6db9300e518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec008f03fc5789f285625db0038891aebbb9a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x327ae984627fd148d531ccdf67fa56632645f637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x350154600e704093cf904bfeb238ab81e23273b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ebd21edcaf2fce296043772d50b2f64d3e84f4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e997a443548ce7a368e6ed00fd3d9e7ccef15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454ee951da04afce32df8dd3400a1f159f4d2e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4aed21ec0e3a301cae55c51bf363d1ecd4251e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512a816d43aa3801d04b3f687895d62d9366c15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ed4e497aec4d29c4db62e48fd0a6f1de63920b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64d1c7369330db75a67e48f866d1a4ec5d4bc5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aa480981273ed923d4988380dd5da0b85eca78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cc5f67d138dbbea9b03c50e7ddf0c43a793acc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x702997fd3448346d21cede91bf40beb804764ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82d438607914d7b3f15cd3c4e7bab918e0a868d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83d5c08ecfe3f711e1ff34618c0dcc5fefbe1791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5ffd1ec348b4e26ae082fff98d953075ba5836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93ee3596c5e11ec1d81b0f3477eeee266b08ed37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x969d7ddbe3b6f8b51e26d8473aaac1a9f4a6b47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97b6a74bcc7bfc03e9ce97de7fb82a4a03b110bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99c10a7abd93b2db6d1a2271e69f268a2c356b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2f7826edf31815164fae7f49615ba5f0d85dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9eb1c079f0d9b14a5a73c1c3c2b671106ebaa5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0251473732e31a72373764f654c69a0dadbf635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa158cb5ebb9a9622c7025a3b7a495b38d9f076ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b464d7d5d6d459418ea9b5fb915bcba27f84bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3badd653426d61f88396d6d96e1b7aafb16d74e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa61d496cb9b41364cb773659632a11a07aaa688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeb362cc0a50cf6dd36a120c26c21c94382cdbbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1be92db5315ba61080e3c27a8964fc26b4d8f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb615476dc9303eda8a5e4e6babcbd589b36ceb57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb90c0dd210756fdd51f25c0cb333dcad8aba1bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7c4b859fd49b4058530e4519985956b347ff95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe45e616c7b110ddfe8cfb6a0f3855ea9cc633f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc03dd66281c85aa074abd40acdf62118093fa348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3630b805f10e91c2de084ac26c66bcd91f3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5d1d387fa6f316849f628793f0bcc455466877c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8da0bdd2403dede59199874356b8295cc1c2fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc95f379600a220cf96b9fef5ad3ce9d7268c65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce3fec90a05992df1357651fef6d143feec7ca16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd12ec3cb26073dbb76bdb641cd8ba66a11a2035e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd19c3b0ea546887f0151840bb32358338c1c0885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd70ec4c933b57d090ac29e7733118c91252b8f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0fbc0c758d41d96a682038ca064614a2c8120db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5c99573627a24501dd2530c14c3bba8a5c3a884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe746cd792677f894ba1b8ecebb84bf006ba6a2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1f6626bc305331261b755225ecdfc993500fe31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf20f5f5d69fa539e53557de6b71388d2e6c446c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3322ccf762ae1b38443bb403fdaca3e0d3f4e8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38a4e15a9e84172d4a8989135e9af47e66b1187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf55ec6e723d58cd9e84b9542e8335ebe4896f150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd96b2a4af219747340cf0b6927d57aef798166b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b0bbd7e5877d64ad5886dde14ca5ceecc29d55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5cda11bb36743fa3f2215828e744967854255900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ed4e497aec4d29c4db62e48fd0a6f1de63920b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5f04bc575a407dba3129ea45180b1e6573a4f91a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb90c0dd210756fdd51f25c0cb333dcad8aba1bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3630b805f10e91c2de084ac26c66bcd91f3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3d7f86cf3a9716ea17972390ff22452d54d35a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5d1d387fa6f316849f628793f0bcc455466877c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb8da0bdd2403dede59199874356b8295cc1c2fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xce3fec90a05992df1357651fef6d143feec7ca16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe746cd792677f894ba1b8ecebb84bf006ba6a2d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf1f6626bc305331261b755225ecdfc993500fe31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf55ec6e723d58cd9e84b9542e8335ebe4896f150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c91b3841c41b0536e88552f85256727be114aa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d881611e48c806606d59c1591795514805016e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x229f0fb3445ecd573024368a41af68c7225be470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ec008f03fc5789f285625db0038891aebbb9a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x36d3d0ce7daf544bbbce05a3aee8aab3bbcb4436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3786a1046c0b7581b64e28331997dc2d279324e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b0bbd7e5877d64ad5886dde14ca5ceecc29d55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x422199a9d2a56bf120d9191ea82b6084ef002494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x544c9160505712d6b5e12888b5eb9bcb708885af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c328d87e0680b5039c318699062d5607250642f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cda11bb36743fa3f2215828e744967854255900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ed4e497aec4d29c4db62e48fd0a6f1de63920b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f04bc575a407dba3129ea45180b1e6573a4f91a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x612b6259a10da91af93968f55805495acd9f3e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x625e7fedce0ef3343080154180004cf12dc7471c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cc5f67d138dbbea9b03c50e7ddf0c43a793acc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x703a4988266c87167c68459d560895251a7e1fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7aada5270a2c075e5edf3385079396e5cd618af7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82d5333b856454e0ac869f30a2cc60e717e8c956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83d5c08ecfe3f711e1ff34618c0dcc5fefbe1791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9590e7f3befb3632aaaa5e382e4b8fa380ba31f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97b6a74bcc7bfc03e9ce97de7fb82a4a03b110bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3badd653426d61f88396d6d96e1b7aafb16d74e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa919d35747fa83f88670b79fe5804127ad9584e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa61d496cb9b41364cb773659632a11a07aaa688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad254cc867873e863a3fbb717fd4f21f0b7f9d41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb90c0dd210756fdd51f25c0cb333dcad8aba1bac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3630b805f10e91c2de084ac26c66bcd91f3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4b4d0d7f88d3443ae6651b91962781018c057fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc510d10e38da40456e8b55db327e956bddad25bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc5d1d387fa6f316849f628793f0bcc455466877c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd12ec3cb26073dbb76bdb641cd8ba66a11a2035e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea25566b794c9d701aa8b495a99239954fdc1ff1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed70675910a30ed75042a4b4fb1c32ca1bd6bcf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1f6626bc305331261b755225ecdfc993500fe31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf20f5f5d69fa539e53557de6b71388d2e6c446c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa1152e75d5ce85309cf0f1fa898a76f70044464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd61cda6a6f1d32a531239ecb0d7bb3e3c173776` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-232013 | `0x04df6f15a8c2fe4bf2e7c5cc4e4d7c7dfdcd4445` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-232014 | `0x5cda11bb36743fa3f2215828e744967854255900` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | polygon-zkevm | unit-232015 | `0xc3630b805f10e91c2de084ac26c66bcd91f3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon-zkevm | unit-232016 | `0xce3fec90a05992df1357651fef6d143feec7ca16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8996e0410530777b23444a9c3c57ea323764200e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x919e8392759f4c48b92d7e00605d20b71da262c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01af79c842e2089b16e2013d2ac02fc1c731f26d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x246df152bdc6ba317be8799f3f531fb3f4ef50e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x281af75c2919a1f579b507f4ab8ce77fcacd4197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a9c1b19038f88b235be0eab23333472b01e2be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb98c680443f28ccdeb525da31419a4aea6edb66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdf5575ec1cc0a14bd3e94648a2453fdc7b56943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf041a2838794266d19f79709f416a2977f896a9b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 200
- Live contracts: 0
- Unknown liveness contracts: 200
- Source-verified contracts: 77
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=57, contamination review=3, source verified unclassified=17, unverified unclassified=123

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| avalanche | candidate review | ProxyAdmin<br>`0x8bc02ef387f837c221545335e21368e5f418b2b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | ProxyAdmin<br>`0xb8a7e3ac3010ef846e9cac18895aa82d35b50865` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0x7a05280940a23749106d8fb2ca4b10b9d1c89067` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xb4546c6e2c69bbf5f29eaeab3de3768d5bb009df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xc31761d26c856f6d2f31d0acafbb1327f5ec16de` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | TransparentUpgradeableProxy<br>`0xe3e26d4187f3a8e100223576a37d30f2a89eb755` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | UpgradeableBeacon<br>`0x428d561f82bbb9322e5a634490722f26714d4dca` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | UpgradeableBeacon<br>`0x721dbbb1a34ea22076620b7a8dfa66bf6e5cc5cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | candidate review | UpgradeableBeacon<br>`0x78539503451048575ee5d003f1caae66d1cd9552` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x01af79c842e2089b16e2013d2ac02fc1c731f26d` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x246df152bdc6ba317be8799f3f531fb3f4ef50e0` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x281af75c2919a1f579b507f4ab8ce77fcacd4197` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x5a9c1b19038f88b235be0eab23333472b01e2be5` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x7593e8fc59cb7fb3839a2b4815576c68b3df23ff` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x79740bcd9aae3a15a36736e896cd77368ac58690` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb98c680443f28ccdeb525da31419a4aea6edb66c` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbdf5575ec1cc0a14bd3e94648a2453fdc7b56943` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf041a2838794266d19f79709f416a2977f896a9b` | non_address_book | unknown | unknown | unverified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | Auction<br>`0xb939a6dc9c604ecf5580c9fb49e2984bad10d052` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | PoolFactory<br>`0x01af79c842e2089b16e2013d2ac02fc1c731f26d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | PoolFactory<br>`0x721dbbb1a34ea22076620b7a8dfa66bf6e5cc5cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | PoolMaster<br>`0x0fc1a124af80535747c5439c3e0667146a0a2ff3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | PoolMaster<br>`0x207ac3fda4f6d6fc70cb009854b3f87950575a47` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | PoolMaster<br>`0xca7aaaf1c3f42d46a1c4b7b621c0dc4610738314` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | ProxyAdmin<br>`0x616b66f2a357959af6d98652dd9bbb5db69db213` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | ProxyAdmin<br>`0xe3e26d4187f3a8e100223576a37d30f2a89eb755` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x0762a9399d03430451f39045b0c4d3eb5fdd2447` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | TransparentUpgradeableProxy<br>`0x8ef02f52adc50f750e2752d9d68e84347989b280` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xb8a7e3ac3010ef846e9cac18895aa82d35b50865` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | TransparentUpgradeableProxy<br>`0xbdf5575ec1cc0a14bd3e94648a2453fdc7b56943` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | UpgradeableBeacon<br>`0x379c8d144db8465646b4abef6bbf3af1d9faacd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | UpgradeableBeacon<br>`0xa83b8f1756fd077c825c9ad308dc0fada078d27a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | candidate review | UpgradeableBeacon<br>`0xb98c680443f28ccdeb525da31419a4aea6edb66c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | contamination review | WhitelistControl<br>`0x72429e13c1c35361bad123b60a97061143d2fe0f` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | source verified unclassified | BondNFT<br>`0x022741f3047a5d040d52f7a57dc6a2b1b456729d` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | source verified unclassified | NFTDescriptor<br>`0x34aeed1248b4585ea79354c03bf96374a908d9de` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | source verified unclassified | Pool<br>`0x8e557363ac9e5cbf09a2616a302ca3c8f6ab2b7a` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| base | source verified unclassified | Prime<br>`0xf041a2838794266d19f79709f416a2977f896a9b` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x03fe982544befb24478bce33278bef073725741f` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x046667c768da32ef1e81a5cbbcd49103a207e72c` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0cdf8bf7d007d2cff002f8e6dd2a5eee2704074c` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f37f0a064a642240f92b86abf8d41ffd358e06b` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15ef08023d264a3a75203951c975b84a89787ad6` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2854084bd9aac5cc9f7bcf4356858fd19973f117` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c8fbc541bff60878fd3a8a0a18bc6db9300e518` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x327ae984627fd148d531ccdf67fa56632645f637` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40e997a443548ce7a368e6ed00fd3d9e7ccef15f` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x454ee951da04afce32df8dd3400a1f159f4d2e1b` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4aed21ec0e3a301cae55c51bf363d1ecd4251e51` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x512a816d43aa3801d04b3f687895d62d9366c15b` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x64d1c7369330db75a67e48f866d1a4ec5d4bc5bf` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69aa480981273ed923d4988380dd5da0b85eca78` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x702997fd3448346d21cede91bf40beb804764ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x82d438607914d7b3f15cd3c4e7bab918e0a868d6` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e5ffd1ec348b4e26ae082fff98d953075ba5836` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x93ee3596c5e11ec1d81b0f3477eeee266b08ed37` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x969d7ddbe3b6f8b51e26d8473aaac1a9f4a6b47b` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b2f7826edf31815164fae7f49615ba5f0d85dbc` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9eb1c079f0d9b14a5a73c1c3c2b671106ebaa5e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0251473732e31a72373764f654c69a0dadbf635` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa158cb5ebb9a9622c7025a3b7a495b38d9f076ba` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa2b464d7d5d6d459418ea9b5fb915bcba27f84bd` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaeb362cc0a50cf6dd36a120c26c21c94382cdbbc` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1be92db5315ba61080e3c27a8964fc26b4d8f9d` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb615476dc9303eda8a5e4e6babcbd589b36ceb57` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc7c4b859fd49b4058530e4519985956b347ff95` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe45e616c7b110ddfe8cfb6a0f3855ea9cc633f5` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc03dd66281c85aa074abd40acdf62118093fa348` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc95f379600a220cf96b9fef5ad3ce9d7268c65a` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd19c3b0ea546887f0151840bb32358338c1c0885` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd70ec4c933b57d090ac29e7733118c91252b8f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5c99573627a24501dd2530c14c3bba8a5c3a884` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf3322ccf762ae1b38443bb403fdaca3e0d3f4e8d` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf38a4e15a9e84172d4a8989135e9af47e66b1187` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd96b2a4af219747340cf0b6927d57aef798166b` | non_address_book | unknown | unknown | unverified | n/a | `0x1bb8bb8291a2afb1bf81bf51be2c2f093513311f` |
| ethereum | source verified unclassified | AMPT<br>`0x3f17cfad23c2014c5a32722557df87dff46819da` | non_address_book | unknown | unknown | verified | n/a | `0xc40e9cf1b42bc06120267165810ae5b0d4966946` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a5c169fbcbfb00b2c20c6746681aa774d8a613a` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d881611e48c806606d59c1591795514805016e2` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x229f0fb3445ecd573024368a41af68c7225be470` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ec008f03fc5789f285625db0038891aebbb9a25` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x350154600e704093cf904bfeb238ab81e23273b0` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ebd21edcaf2fce296043772d50b2f64d3e84f4a` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ed4e497aec4d29c4db62e48fd0a6f1de63920b1` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6cc5f67d138dbbea9b03c50e7ddf0c43a793acc5` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83d5c08ecfe3f711e1ff34618c0dcc5fefbe1791` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x97b6a74bcc7bfc03e9ce97de7fb82a4a03b110bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x99c10a7abd93b2db6d1a2271e69f268a2c356b80` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3badd653426d61f88396d6d96e1b7aafb16d74e` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa61d496cb9b41364cb773659632a11a07aaa688` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb90c0dd210756fdd51f25c0cb333dcad8aba1bac` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3630b805f10e91c2de084ac26c66bcd91f3d3fe` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc5d1d387fa6f316849f628793f0bcc455466877c` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb8da0bdd2403dede59199874356b8295cc1c2fb` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce3fec90a05992df1357651fef6d143feec7ca16` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd12ec3cb26073dbb76bdb641cd8ba66a11a2035e` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0fbc0c758d41d96a682038ca064614a2c8120db` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe746cd792677f894ba1b8ecebb84bf006ba6a2d7` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1f6626bc305331261b755225ecdfc993500fe31` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf20f5f5d69fa539e53557de6b71388d2e6c446c8` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf55ec6e723d58cd9e84b9542e8335ebe4896f150` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| mantle | candidate review | Auction<br>`0x661bf079980696f40570dca9d64ef525458519df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | Auction<br>`0xa3693729f943ab715f22242f6ff728157d1786f7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | Auction<br>`0xfe0c81550c84d75e06e8c61ccc18be20c5e74103` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | MembershipStaking<br>`0x1f64d0d771ca7bdc06dd8faa99a4be8a07433db3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | PoolFactory<br>`0x063d68028426fa68b05648a3438fc2c6113850a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | PoolFactory<br>`0x8e40e7a809d068d7a0fd58ad6c70198008f25172` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | PoolFactory<br>`0xd51f0402ff8d26ee343c3a9dc579fc798e61e5ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | PoolMaster<br>`0xc15871665db950b2db44e497eaa7f348c341fe72` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | PoolMaster<br>`0xe168607a376ada1d51006929a0a0f84aa9f8c7c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | ProxyAdmin<br>`0x8eff316a36f1a0fcb1b217b571a43558e59bd1cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0x7554fa6f01e8dc237818aaed54204799544479ae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0xa7209ca2d4a6a9b9f14e67b8013f2b72fb42d729` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0xb217d93a8f6a4b7861bb2c865a8c22105fbcde41` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | TransparentUpgradeableProxy<br>`0xe5860c7ce8d6158524f00e6142a91eb6686a798a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | candidate review | UpgradeableBeacon<br>`0x0e07ce3e7ad3c61fcb7f7e5542a8c61e18002e7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | contamination review | ClearpoolLens<br>`0x6278bcb4ada5f9bd83b0e0745db6246274b9e79b` | non_address_book | unknown | unknown | verified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | contamination review | Pool<br>`0x1de6ba3ec39f9e68ee3bdff0f00746c21cfc6a4c` | non_address_book | unknown | unknown | verified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | source verified unclassified | CosineInterestRateModel<br>`0x244ef5a8013e4b35396e081741047dd13e33903d` | non_address_book | unknown | unknown | verified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | source verified unclassified | CosineInterestRateModel<br>`0x56713f6322958c5dffc09bf2315472c4731db71b` | non_address_book | unknown | unknown | verified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | source verified unclassified | CosineInterestRateModel<br>`0xd4f764b72257af93e82066d32697ef89351c6ef2` | non_address_book | unknown | unknown | verified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | source verified unclassified | WhitelistControl<br>`0xb4f37f4b0338aff00b4d185d175a749c6d3cdd51` | non_address_book | unknown | unknown | verified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | unverified unclassified | UnnamedContract<br>`0x8996e0410530777b23444a9c3c57ea323764200e` | non_address_book | unknown | unknown | unverified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| mantle | unverified unclassified | UnnamedContract<br>`0x919e8392759f4c48b92d7e00605d20b71da262c8` | non_address_book | unknown | unknown | unverified | n/a | `0xe63bc74801ea94ea5258b5ef88935dceba3df3a5` |
| optimism | candidate review | PoolFactory<br>`0x01af79c842e2089b16e2013d2ac02fc1c731f26d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | candidate review | PoolMaster<br>`0x616b66f2a357959af6d98652dd9bbb5db69db213` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | candidate review | ProxyAdmin<br>`0x78539503451048575ee5d003f1caae66d1cd9552` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | candidate review | TransparentUpgradeableProxy<br>`0xc31761d26c856f6d2f31d0acafbb1327f5ec16de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | candidate review | TransparentUpgradeableProxy<br>`0xe3e26d4187f3a8e100223576a37d30f2a89eb755` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | candidate review | UpgradeableBeacon<br>`0x281af75c2919a1f579b507f4ab8ce77fcacd4197` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | source verified unclassified | CosineInterestRateModel<br>`0xb98c680443f28ccdeb525da31419a4aea6edb66c` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | source verified unclassified | CosineInterestRateModel<br>`0xf041a2838794266d19f79709f416a2977f896a9b` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | source verified unclassified | Pool<br>`0xbdf5575ec1cc0a14bd3e94648a2453fdc7b56943` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | source verified unclassified | Prime<br>`0x5a9c1b19038f88b235be0eab23333472b01e2be5` | non_address_book | unknown | unknown | verified | n/a | `0xa333e18249d0e31ae6a57c9be6e4cdf5ce0837ec` |
| optimism | unverified unclassified | UnnamedContract<br>`0x3b0bbd7e5877d64ad5886dde14ca5ceecc29d55b` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5cda11bb36743fa3f2215828e744967854255900` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5ed4e497aec4d29c4db62e48fd0a6f1de63920b1` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5f04bc575a407dba3129ea45180b1e6573a4f91a` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xb90c0dd210756fdd51f25c0cb333dcad8aba1bac` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xc3630b805f10e91c2de084ac26c66bcd91f3d3fe` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xc3d7f86cf3a9716ea17972390ff22452d54d35a7` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xc5d1d387fa6f316849f628793f0bcc455466877c` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xcb8da0bdd2403dede59199874356b8295cc1c2fb` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xce3fec90a05992df1357651fef6d143feec7ca16` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xe746cd792677f894ba1b8ecebb84bf006ba6a2d7` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf1f6626bc305331261b755225ecdfc993500fe31` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf55ec6e723d58cd9e84b9542e8335ebe4896f150` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | candidate review | Auction<br>`0x7e503482a173eb47ac8f0abbab3886b0b5d9251c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | Auction<br>`0xdad6e9a6ef6d20518df7a81585be51ef6dc66453` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | MembershipStaking<br>`0x67a24ca29ea17860179b9783428fbdd660ac9b67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | PoolFactory<br>`0x16497fcd12f12cf4353c2f6b40a70e7f280c2508` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | PoolFactory<br>`0x7de081085f870da367142b4d30fc174d6eccee87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | PoolMaster<br>`0x331781c145aebfe6e97f9a60e7ed809c89c850ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | PoolMaster<br>`0x9827d94f5484326806fa43ee8cee3c7711280cfd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | ProxyAdmin<br>`0xee3eac99bde3185c48efe61b3badd760644aa19e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x215cca938df02c9814be2d39a285b941fbda79ba` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x3b194bb8c432a465b88d5b0005470ac733798d00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | TransparentUpgradeableProxy<br>`0x4a7e8e3c4498f9df2d588aaf6d55fa90f23b7c2a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | candidate review | UpgradeableBeacon<br>`0x45e766e2ef6d8282a533e39c3c1690bfd4dc1fe0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | source verified unclassified | ClearpoolLens<br>`0xe57bb7f8370ae23ed61ff9d6d0195e95afd17148` | non_address_book | unknown | unknown | verified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | source verified unclassified | CosineInterestRateModel<br>`0x43cb897f476acd90eb75ce82ca8cd828a3e5afe5` | non_address_book | unknown | unknown | verified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | source verified unclassified | ViaRouter<br>`0x2a4a3494e1f8d8fd3eef2b53c6105f2bb0c07322` | non_address_book | unknown | unknown | verified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | source verified unclassified | ViaRouter<br>`0x47a96072d4d565a6de6864f44e79136ec2505a3b` | non_address_book | unknown | unknown | verified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1c91b3841c41b0536e88552f85256727be114aa9` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3786a1046c0b7581b64e28331997dc2d279324e2` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x544c9160505712d6b5e12888b5eb9bcb708885af` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5c328d87e0680b5039c318699062d5607250642f` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x612b6259a10da91af93968f55805495acd9f3e37` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x703a4988266c87167c68459d560895251a7e1fb0` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7aada5270a2c075e5edf3385079396e5cd618af7` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0xad254cc867873e863a3fbb717fd4f21f0b7f9d41` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc4b4d0d7f88d3443ae6651b91962781018c057fe` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0xea25566b794c9d701aa8b495a99239954fdc1ff1` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0xed70675910a30ed75042a4b4fb1c32ca1bd6bcf3` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfa1152e75d5ce85309cf0f1fa898a76f70044464` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfd61cda6a6f1d32a531239ecb0d7bb3e3c173776` | non_address_book | unknown | unknown | unverified | n/a | `0x90a4a90e6faf88c4d709f666d26793f9e2b47183` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1d881611e48c806606d59c1591795514805016e2` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x229f0fb3445ecd573024368a41af68c7225be470` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2ec008f03fc5789f285625db0038891aebbb9a25` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x36d3d0ce7daf544bbbce05a3aee8aab3bbcb4436` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3b0bbd7e5877d64ad5886dde14ca5ceecc29d55b` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x422199a9d2a56bf120d9191ea82b6084ef002494` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5cda11bb36743fa3f2215828e744967854255900` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5ed4e497aec4d29c4db62e48fd0a6f1de63920b1` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5f04bc575a407dba3129ea45180b1e6573a4f91a` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x625e7fedce0ef3343080154180004cf12dc7471c` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x6cc5f67d138dbbea9b03c50e7ddf0c43a793acc5` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x82d5333b856454e0ac869f30a2cc60e717e8c956` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x83d5c08ecfe3f711e1ff34618c0dcc5fefbe1791` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9590e7f3befb3632aaaa5e382e4b8fa380ba31f8` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0x97b6a74bcc7bfc03e9ce97de7fb82a4a03b110bf` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa3badd653426d61f88396d6d96e1b7aafb16d74e` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa919d35747fa83f88670b79fe5804127ad9584e3` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xaa61d496cb9b41364cb773659632a11a07aaa688` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xb90c0dd210756fdd51f25c0cb333dcad8aba1bac` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc3630b805f10e91c2de084ac26c66bcd91f3d3fe` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc510d10e38da40456e8b55db327e956bddad25bd` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc5d1d387fa6f316849f628793f0bcc455466877c` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd12ec3cb26073dbb76bdb641cd8ba66a11a2035e` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf1f6626bc305331261b755225ecdfc993500fe31` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf20f5f5d69fa539e53557de6b71388d2e6c446c8` | non_address_book | unknown | unknown | unverified | n/a | `0xe56bac3eef30073152934cc18c2f9dbca35069a0` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-boring-vault.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [pashov-hyperlane.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [skynet.certik.com/projects/clearpool](https://skynet.certik.com/projects/clearpool) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf](https://3929482601-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FhkiSI8bK3ThlypJ3jdEC%2Fuploads%2FOFonx1OQS6ni5lUsyiPx%2FClearpool%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5805] 0xmacro-boring-vault-arctic-0.pdf — no match: All contracts listed in the 'Source Code' section of the audit report are included. The audit date is the end date of the audit period (April 1-5, 2024).
- [5806] 0xmacro-boring-vault-arctic-1.pdf — no match: All contracts listed in the 'Source Code' section with SHA256 hashes are in scope. The audit date is from the cover page.
- [5807] pashov-boring-vault.pdf — no match: Extracted 10 contract names from the scope section on page 4. Audit date is July 13th 2024 (end date of the review period).
- [5808] pashov-hyperlane.pdf — no match: Scope section lists 5 contracts. Audit date from header: December 14th - December 16th, using end date.
- [5809] spearbit-boring-vault-arctic-0.pdf — no match: The report does not have a dedicated scope section, but the contracts are explicitly mentioned in findings and context. The audit date is from the cover page: April 19, 2024.
- [12320] skynet.certik.com/projects/clearpool — no match: Extracted from 'Audited Files/SHA256' section listing Auction.sol and InterestRateModel.sol. Audit date from 'Last Audit was delivered on 3/18/2022'.
- [12321] spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf — no match: No explicit scope section; contracts extracted from findings and project description.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 0xmacro-boring-vault-arctic-0.pdf | AtomicQueue | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IAtomicSolver | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BaseDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoLiquidDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AaveV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AuraDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ERC4626DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | LidoDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | NativeWrapperDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | OneInchDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PendleRouterDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BoringVaultV0Lens | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BalancerVault | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | BeforeTransferHook | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DecoderCustomTypes | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | EtherFiLiquid1 | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IRateProvider | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | IUniswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | PriceRouter | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | RawDataDecoderAndSanitizerInterfaces | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-0.pdf | CellarMigrationAdaptor | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBPositionDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | AaveDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | BoringDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ITBContractDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | Ownable2StepDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | WithdrawableDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | ConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveAndConvexDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | CurveNoConfigDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| 0xmacro-boring-vault-arctic-1.pdf | GearboxDecoderAndSanitizer | unmatched — not counted | — | listed in scope table | no |
| pashov-boring-vault.pdf | CrossChainLayerZeroTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuth | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthCore | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthReceiver | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | OAppAuthSender | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultCrossChainDepositor | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultL2OFT | unmatched — not counted | — | listed in scope | no |
| pashov-boring-vault.pdf | BoringVaultOFTAdapter | unmatched — not counted | — | listed in scope | no |
| pashov-hyperlane.pdf | MultiChainHyperlaneTellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | CrossChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | MultiChainTellerBase | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope section | no |
| pashov-hyperlane.pdf | AtomicQueueUCP | unmatched — not counted | — | listed in scope section | no |
| spearbit-boring-vault-arctic-0.pdf | UniswapV3DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | DexAggregatorUManager | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | DexSwapperUManager | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | BoringVault | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | AccountantWithRateProviders | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | CurveDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | MorphoBlueDecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| spearbit-boring-vault-arctic-0.pdf | BalancerV2DecoderAndSanitizer | unmatched — not counted | — | Listed in findings context and scope | no |
| skynet.certik.com/projects/clearpool | Auction | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/clearpool | InterestRateModel | unmatched — not counted | — | listed in audited files | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolMaster | unmatched — not counted | — | mentioned in findings C01, L03, L05 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolFactory | unmatched — not counted | — | mentioned in findings M01, M02, L03, N03 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | MembershipStaking | unmatched — not counted | — | mentioned in findings M01, M02, L01, L03 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | Auction | unmatched — not counted | — | mentioned in findings M01, L03 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | FlashGovernor | unmatched — not counted | — | mentioned in findings M01, L08 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolBase | unmatched — not counted | — | mentioned in findings M03, M04, M05, L09 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | CPOOL | unmatched — not counted | — | mentioned in findings L02, L06, L07 | no |
| spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf | PoolRewards | unmatched — not counted | — | mentioned in finding L10 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 133 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 83 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: n/a

Zero-match audit list:

- [5805] 0xmacro-boring-vault-arctic-0.pdf
- [5806] 0xmacro-boring-vault-arctic-1.pdf
- [5807] pashov-boring-vault.pdf
- [5808] pashov-hyperlane.pdf
- [5809] spearbit-boring-vault-arctic-0.pdf
- [12320] skynet.certik.com/projects/clearpool
- [12321] spaces/hkiSI8bK3ThlypJ3jdEC/uploads/OFonx1OQS6ni5lUsyiPx/Clearpool Security Analysis by Pessimistic.pdf

Fork inheritance lineage and inherited audits are included when available.
