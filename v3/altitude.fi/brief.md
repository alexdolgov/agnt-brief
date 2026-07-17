# Agentic Audit Brief: Altitude.Fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 58.5% over 90 days

## Project Overview

- Project: Altitude.Fi (`altitude.fi`)
- Website: [https://www.altitude.fi/](https://www.altitude.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 141 unique implementations (196 raw deployments)
- Coverage basis: 1/10 confirmed own live verified implementations (10.0%); conservative 10.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,082,102.69
- On-chain TVL (included contracts): $8,494,223.58
- TVL by chain: Ethereum $8,494,223.58

## Project Description

This brief describes the observed EVM deployment and audit surface for Altitude.Fi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across ethereum. Structural roles: 10 unclassified, 7 core, 2 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: unclassified (10), core (7), supporting (2)
- Contract kinds: contract (19)
- Detected standards: erc1967proxy (6), ownable (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x15c2fbc9d547c029893f5f706413a953076b94a6`, chain 1)
- UnnamedContract (`0x1f7d589e90e4e4fc1b15b3143a5c60f743c759b9`, chain 1)
- UnnamedContract (`0x4f8048241d148bbde1db3c3f1b311ef1e1692936`, chain 1)
- UnnamedContract (`0x602d7989e4a6ff52c194457569186200ca4eb15d`, chain 1)
- UnnamedContract (`0x84910bdfb667086eb082cc1ec045b68ef86eab58`, chain 1)
- UnnamedContract (`0x874566ffa8d837934ae85db2209839f5fb4e6b1d`, chain 1)
- UnnamedContract (`0xb4165b2d55fc28a6d259d15d60d07ecaf7b565f2`, chain 1)
- UnnamedContract (`0xd130a916ddbf1612c2f2faab6897210f056ab29b`, chain 1)
- FarmBufferDispatcher (`0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25`, chain 1)
- Ingress (`0xbde7b92812760f91464bd46793722454ffec7f95`, chain 1)
- Ingress (`0xc2e2f4cb58c4dccf21a8aa47529b09c39c029e14`, chain 1)
- ProxyInitializable (`0x2ddd6d576615e6afa823adedde8dc67198333169`, chain 1)
- ProxyInitializable (`0x550f8a1ffc921b9179267f9e7909fc68ce496a6b`, chain 1)
- ProxyInitializable (`0x5717f3f1b566cf2f7113979fcd78d9416f5b0056`, chain 1)
- ProxyInitializable (`0x5c58dffc753ba61e07a73a021f70366ab69c1f06`, chain 1)
- ProxyInitializable (`0xaf6062222d00ac63477ad084ebd22a7821e5ee8d`, chain 1)
- ProxyInitializable (`0xdf612bf20c2a68730cedc5056a1f1a90c6827e66`, chain 1)
- RebalanceIncentivesController (`0x5603578cad65ca5ccb9e3d1e8c2f346481ae768d`, chain 1)
- RebalanceIncentivesController (`0x8f18b32a89ddf6f89bf972d7f8203bacb8dc4d52`, chain 1)
- VaultERC20 (`0x5481d5627aa367aa677442a120fd1021ab0595d5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/10 (10.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 124 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 17 of 141 unique; 124 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/41
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 100
- Unique implementations: 141
- Raw deployments: 196
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $8,493,598.92
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $8,493,598.92 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Oxorio | Tier 2 | 1 | 2.4% | 2025-05 |
| Team Omega | Tier 2 | 1 | 2.4% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TokensFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378775 | `0x3c456b6fa3872e5c77eb77a84acc7cc39d7a11f9` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SupplyToken | token | project_anchor | own_supporting | 2 | ethereum | unit-378804 (2 proxies) | 3 deployments: ethereum `0x2ddd6d576615e6afa823adedde8dc67198333169`; ethereum `0x5c58dffc753ba61e07a73a021f70366ab69c1f06`; ethereum `0x5f12942adcf315e2933a2d2892715cc8c3a447d6` | ⚠️ Unaudited |
| DebtToken | token | project_anchor | own_supporting | 2 | ethereum | unit-378807 (2 proxies) | 3 deployments: ethereum `0x5717f3f1b566cf2f7113979fcd78d9416f5b0056`; ethereum `0xdf612bf20c2a68730cedc5056a1f1a90c6827e66`; ethereum `0xeb7a2cc8e04917c6363a685dad4af06709c7e198` | ⚠️ Unaudited |
| PoolInstance | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2` | ⚠️ Unaudited |
| VaultERC20 | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378802 (2 proxies) | 3 deployments: ethereum `0x5481d5627aa367aa677442a120fd1021ab0595d5`; ethereum `0x550f8a1ffc921b9179267f9e7909fc68ce496a6b`; ethereum `0xaf6062222d00ac63477ad084ebd22a7821e5ee8d` | ⚠️ Unaudited |
| BorrowVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x13a50bdf76349a5886ee1fbaf328110815cd0ee3`; ethereum `0x4f7aeb0c604a6b375ea00d7bde15bac035bc97f3`; ethereum `0xbdd8bd4ddf55c3ed3f7ba8298bbed7ddb0dae3cc`; ethereum `0xe5c0a4dcbebedc83770e4d415fe2d505811f01e7` | ⚠️ Unaudited |
| ChainlinkPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2dee6f571071801ef9b597e0b8c6b8d6f05b61b` | ⚠️ Unaudited |
| ConfigurableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00d4080f63b3c35ce7b74adfc938c8511ecba023`; ethereum `0xcb712ce2da56c2ed01c9eff6ede1a0bdc3059f68`; ethereum `0xff75e700356f8eac53d771ab5398d4c5309ee8d6` | ⚠️ Unaudited |
| CurveV2Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08011a5de77ac2a1a57d150b4a93d390f1936a5` | ⚠️ Unaudited |
| DebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6a0cc50419fc3d021b245d86d1baafb5af2eb355`; ethereum `0x8d280c136fddb2f8dba5f667bfcbdaa18766d06c` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | project_anchor | own_supporting | 2 | ethereum | unit-378800 (2 proxies) | 3 deployments: ethereum `0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25`; ethereum `0x45f08c3bf6ca6f84875225dbe0e6f4b6f6578932`; ethereum `0xd812bbc43386275478b3a24dec4324f5eb97a8fd` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x367b70ea04257165f6a0f512e876ee8c06d5b70b`; ethereum `0x5acc3a1fdacc6e424d5b6e65697ff5eeb605e3ea` | ⚠️ Unaudited |
| FarmBufferDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5b96e535525e931848a705cc0e14611437d418c0`; ethereum `0xdd489668f37a8fae106fd8a408781fa143a20777` | ⚠️ Unaudited |
| FlashloanHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8797a833405e8c1dcda552d8cf807dc47bbe02e8` | ⚠️ Unaudited |
| GroomableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x297f322d51db6e440a224c48d3fa8cf04bd328db`; ethereum `0x35bb442d73e82cf7542565a3f80fc6e88983be58`; ethereum `0xa9bdf5dccfd692cc6f14383d9235073b3717a646` | ⚠️ Unaudited |
| Ingress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9e0e3036315d8b6a98607760e8a4e5736e84a772`; ethereum `0xc39c58a5b6661d986e1c4e8c3d31b0bcb05a34aa` | ⚠️ Unaudited |
| Ingress | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378792 | `0xbde7b92812760f91464bd46793722454ffec7f95` | ⚠️ Unaudited |
| Ingress | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378794 | `0xc2e2f4cb58c4dccf21a8aa47529b09c39c029e14` | ⚠️ Unaudited |
| LiquidatableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3ddd3c646037eb15f9f90a9a239893cdcaf92f4a`; ethereum `0x70139002b9b5ee3f0631840b34ca03747614b1de`; ethereum `0xc06e0ab25d6099f5364f337316137834a65d0813` | ⚠️ Unaudited |
| LiquidationBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x925ab23bfd97fedbc2e41aed0e4057b2eaf26ee4` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MorphoFlashLoanStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2cf5261575d4f6f51d7575a154bf17412580b02` | ⚠️ Unaudited |
| MorphoVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0xb649d15333f5d267d6b385e2b2c9923f360cef44`; ethereum `0xb68d82e2efc18d8d20fb56735008ada693bb9005`; ethereum `0xb737373919b3275d8ac72cb918a3d4b8e998cb56`; ethereum `0xc1d41a81f93e3c5deac5a24f1aac7e31018393dc`; ethereum `0xc89cfaf444401673276d7fd772e85785f6925300`; ethereum `0xcd91fa5fc2eb2f2b0e2a55c39fbc8cdf68cb1068` | ⚠️ Unaudited |
| MorphoVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36d4739b5392481bcff4035db4c8462f1c1f48e` | ⚠️ Unaudited |
| RebalanceAutomation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3c732c02ff2fee1eb9714742e9770f9e415faaa` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x052f21dce83f8f9e5a0396a79500d875c05c6f16`; ethereum `0x299cd3ed77d886a3a0078ebf1cd9c59029006e62`; ethereum `0x4386611ed3a7a52082891be671843d8a7679119e`; ethereum `0x5e55dfe72567ab4f8cd4c5d0ae6d46a7e0fc5f04`; ethereum `0xbe79243bfd165fa679d030d754ae521bcb5e3d26`; ethereum `0xdfc7c843df69b269f140464837b4741c0bd5cd90` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378778 | `0x5603578cad65ca5ccb9e3d1e8c2f346481ae768d` | ⚠️ Unaudited |
| RebalanceIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-378788 | `0x8f18b32a89ddf6f89bf972d7f8203bacb8dc4d52` | ⚠️ Unaudited |
| SnapshotableManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x090056ffbe50ad88afa881e735bce9bd9c2e84d8`; ethereum `0xaf8aa59564095eba85ee0c14e7d03a8d50ee4ea4`; ethereum `0xd19ac9017adfe3da93ac80b7ca121052997d995d` | ⚠️ Unaudited |
| StrategyAaveV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbaeb17360ec019529934ff7be22567d069852bdc` | ⚠️ Unaudited |
| StrategyMorphoV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf2e05aa0a4f9ffd42ca1856ecd51b8f0314a35e` | ⚠️ Unaudited |
| StrategyPendlePT | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0xb4b9732dfa1b27bd1d689f864a3bcee7e88be9f8`; ethereum `0xbd1e64a20756fd520ec77d67366b7b75b144a407`; ethereum `0xf3a574f67c8091d868ef22b8b125be63df85a87b`; ethereum `0xf3d73ef5d895ee88bdae1a661073667a9192ec13`; ethereum `0xf4398693743826f28c03c12beb8f8822f9952e0d`; ethereum `0xf9de0ef14aa5dcb0e143b7344c16ac023d5dd606` | ⚠️ Unaudited |
| SupplyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe1a846c6d6f8e0c1cf9360a9f9e76e98ff1971b2`; ethereum `0xe30afe81b4620c7fccaa48ab93b2a6b24ce8152e` | ⚠️ Unaudited |
| TokensFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5c792d8e434b81c37fb8d871b4cae0001a885dc6`; ethereum `0xf10b3792009bee22e8c762ea2a79cb97bed0bcb0` | ⚠️ Unaudited |
| UniswapV3Strategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc392d681ec36640530d598effa62852202f4d611`; ethereum `0xfde703415c8b6f63d9db15f5e27018b41c476848` | ⚠️ Unaudited |
| UserLiquidationHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b856647cd3946db3fdfdaabb8770bdfe45249c2` | ⚠️ Unaudited |
| VaultCoreV1Initializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b875a0b50b2d8deeded44cb591c178f47b26231`; ethereum `0x5019234eec5da2180c8bda85c02bd6542ca4ac9c`; ethereum `0xdd2ad25bbb0f5c84d4b57cbff590948601d6c0e7` | ⚠️ Unaudited |
| VaultERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x50659b26343b59990eb501a45f1ad059077eec8c`; ethereum `0x57192ec32e649cf51380b8b314b26e73aaaf1536`; ethereum `0x994a41398defe4e01797d63e358cca51872f0f36`; ethereum `0xe59247d6932a300c1057c796134e4813e17d4cec` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x37f3108cc26d69833105463ba46e982e85b6e7b9`; ethereum `0x999543397dde79affb4a846ca19324d5807d5387` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3dbe2dbc03bbc3c1fa63b94af54f473303c9b9cd`; ethereum `0x62c80d6c99a42cd9dae81343a87291e21133ef64` | ⚠️ Unaudited |
| VaultRegistryV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378806 | 2 deployments: ethereum `0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba`; ethereum `0x8c66dfc114db9910d960f394ffb031893ef12ba8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (100)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x6317d0ebf4d37528c927019ab5b18329ff2542ce) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5bb85d31e215ea7278a044f0288e27e29be28750`; ethereum `0x6317d0ebf4d37528c927019ab5b18329ff2542ce` | ❓ Unverified |
| Proxy (impl: 0xe1af3b82e18b09ab13a49a085e26b68f336e7314) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdd39b83a997e4dfd2309c2ed0232ca701661f73e`; ethereum `0xe1af3b82e18b09ab13a49a085e26b68f336e7314` | ❓ Unverified |
| Proxy (impl: 0xf14a62a5b78e93760bc97fad34704024c6cf02b9) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb381dfccadcb75fc70adbc6c1dc038e29555b6d8`; ethereum `0xf14a62a5b78e93760bc97fad34704024c6cf02b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x048d58909849be2300bcc8c7230d03b5f7361b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0752751e39896d0bbaf34de8339d730d73777c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x07f61dba2520687d48fda08043d25fc664e7a24a`; ethereum `0x1c16274f2d9ac33dcd5a4da4cdde8e1652044268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08bd490b5dd7a02be0219311dc718652978e19ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a61911367cc8c534e25ef2107a429f87a03ec70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b708b74e4032c5e99fd25a99da43f4a575ef9d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c3d8f4a1d27592a64ab0f32bcde03ffca841e46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ebe43cd489a3e5d402a7143848fee0cbec45234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13ee63ef3f32a304491328535556a2b00b8c72c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1476f031dad2354a48a7c37a6128ad7b297a3997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1487e13db6dc092e4254179b0c1d01b613e51098` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378798 | 2 deployments: ethereum `0x15c2fbc9d547c029893f5f706413a953076b94a6`; ethereum `0x1f7d589e90e4e4fc1b15b3143a5c60f743c759b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bd6c9109cef734553fbca01a15c9d0b35d30770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da11e150c4557b7ba0211dcea88be311d1696b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1da520b405f0592638c2c0c9d0bc546d5200a82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27825e64228f2dd5e4ef99720cc390951b4d1fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7fa71722dc70ba3fa659f0da5dfc82c61c67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeba9f201051a771c859078934dc607161f4672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7d4e4a4422108b25ce2b10792b3914589342a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d29187262c2391ebad5ddd716dc750cbbd4888b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d35183b022bd8a0127e22ef0b7cd83e1ea7d459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebbe0b1c11db3331099eb5e8ccbb893991337fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39a993815d49dbd478e16aa71c26a4d68098c0af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b1f0ac253ce81a9dd5623c2db4fcd079503616c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c9e45612deccbbce8503734369c546e01093e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e5777e48ac6d5e7808aeaccb267c248d1fb3563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fc8cd699b27f50e1a0876462145e6a0d7dc68a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x432391a044f0eb602a1ef5d710703e20d97385da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43eb3e4c097225245d0c4d7d84c9c0fc3bb16bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45c9d99af37cbfe58fc77d93ca49c3da8f3f09e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b17b0536e07ff0b582e872733fe4029bb15380d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378776 | `0x4f8048241d148bbde1db3c3f1b311ef1e1692936` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff6e375f24c3b3ec43730aba2e3b57e3dfecf36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505b5c9e5f625fa96d8091bc502cf3c3d0335027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x505bc1e082515510750028186826677c5eb1a39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54b8168a54e4482d93129a1de276e74bb59db0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55d01081d5aa563bf8d81489f94d56d5fea54203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5715e68c7b92e5c3f9e9f6730297f64410cae155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9298d9d6aa7692dc193562338a48a6d231707b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b7ac0c4d8b3febb7b17060bd52af294139a706d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378780 | `0x602d7989e4a6ff52c194457569186200ca4eb15d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x687aef20c12eec256dd081fb3f0996abfaedcb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6abe6bf0ff587e6e4fe208572694ef3a1472521a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7111388c85991b341373398a639baf5850cded63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77582668978fb2ea2c9eb92268d0e5cb4b01dd5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78003d7718178eae7c78d0cea7c1d6a20d5b9fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7aaa94d30b11e8d4912fed68e7f3355eb966f040` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84044905f5d1fe897a34fb0d49a19a9ce1a0c928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847274f7c0bc10ac18b8e55def26b186eb360c2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378783 | `0x84910bdfb667086eb082cc1ec045b68ef86eab58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378785 | `0x874566ffa8d837934ae85db2209839f5fb4e6b1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88db8d5d0d244d32a3e069a2b51b8c776db6c081` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f8c91f0d7e1d6a2c06743d3f50495419fdbbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f3ea93d5ec6c49411c101654f16aafe53a9428f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x901f06266935f3c5a062e49a79cb1163c722492f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a35297782a8947aa6e25145d9ebcb18bbc01f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96dfad1b5feab1624597bc0744422d98526978f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98bf71c8be80ad08a1ff953381a94dd915cd120c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ec90caf2e18f51eba81b313d0c61c7c9ecfd9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f1339626c42fbe44a42a4759eb0b0ae75228020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1a717ad4bdda2f44b0f26f46c77ad19d185aac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327f3fb832225f5ff37cda70f694d51154929d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c8149a730b37096cca2d374e179199071abeda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa69dd04c0bd8727861ce5e0d43e46554d474b399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa75018325d82c106aabd668ea5a24f70766804f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab769b4fbba0f83ae649fbf741dd724268637061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1a3f612391ba9bb77989b23622062f3c701fdd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2ba12d633f945f423eb5a9bb9b2731665f700b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2c41d8933616ad6f0bd1826a8b20629f067364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378790 | `0xb4165b2d55fc28a6d259d15d60d07ecaf7b565f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb445dbaf3b202dc5211c46c0b3914219448c121e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb510cd52b6ab16f070abcba7252ff94bc4e15174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbed2c749938b92f1daca04a716d17093a0bfbd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea8472c08dd1bb5169d97af245c74750b78f1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0631eb4bcf841bbe65887c3fa9abcf138c90447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc29841682a5e96bada8a984bed0173de79bf9bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6c87c8bd830d5c9bcc601b95406683bed8368ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca9fec63aeddd7269398a3de053d01cbb0056f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc96c58e5e4fe1305dedae3277e33b7c4d7c0094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd731d705a26433a8c94a6ee1c47a191228ff9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1254a3883c0d9c14ba42634d7eacc3449192917` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378795 | `0xd130a916ddbf1612c2f2faab6897210f056ab29b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd168b6ca6548f13f4eaf63191a2df72633742fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd55f012fafdcba545deea711b1f4ca7e2011cce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd74e561432081c94b9b9553b54e44011046002b3`; ethereum `0xed74fd7c551e755cfe210fc180545f479cace296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8c515fdb35e25d284d0838aa75310cece2c045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda71b48b29931a9a9ef3646a1b3257142c6326bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd2e73928a7162df30f3904078ab9aaeebc35f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd8fdf4dffcf47ae64446bc147439439d3116ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf70a6f90973973a7c2e741d5ca32688d44bbf1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0dd037dc733dcc42abc0e7e2541e699da6da29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4752e2330149ffa10d10a7d031671bd4097d8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a19f5cca411583672ff863043d943fa0a4a45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60824c456f364ba1dcb9576295d74bef61618d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf73ac75a3e1f62dc52084e8999f3e0ec6342f2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd2f787d384cfcbe8e02d5d32581cfa355dd30d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe4b0967dd52bff9a5e7623ae0fd7eb0c17668d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [202505-Altitude.pdf](https://github.com/OmegaAudits/audits/blob/main/202505-Altitude.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [Altitude-v2-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-v2-Audit-Report.pdf) | Oxorio | Audit | 2025-05 | aging | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [202501-Altitude-parallel-farming.pdf](https://github.com/OmegaAudits/audits/blob/main/202501-Altitude-parallel-farming.pdf) | Team Omega | Audit | 2025-05 | aging | Direct | n/a | matched | 1 | 0 | 0 | 8 | n/a |
| [202408-Altitude-morpho-integration.pdf](https://github.com/OmegaAudits/audits/blob/main/202408-Altitude-morpho-integration.pdf) | Team Omega | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Altitude-Audit-Report.pdf](https://oxor-io.github.io/public_audits/Altitude/Altitude-Audit-Report.pdf) | Oxorio | Audit | 2024-08 | aging | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [202207-Altitude-v1.0.pdf](https://github.com/OmegaAudits/audits/blob/main/202207-Altitude-v1.0.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [202310-Altitude-v1.1.pdf](https://github.com/OmegaAudits/audits/blob/main/202310-Altitude-v1.1.pdf) | Team Omega | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1988] 202505-Altitude.pdf — no match: Extracted contract names from findings and scope description. The report covers changes since last audit, including new contracts (StrategyPendleBase, StrategyPendlePT, StrategyPendleLP, RebalanceIncentivesController) and existing contracts (Ingress, BorrowVerifier, VaultCore, VaultETH, VaultERC20, MorphoVault, StrategyMorphoV1, FarmStrategy).
- [1989] Altitude-v2-Audit-Report.pdf — matched: ambiguous_frozen_extraction_cache
- [1990] 202501-Altitude-parallel-farming.pdf — matched: No reason recorded
- [1991] 202408-Altitude-morpho-integration.pdf — no match: No reason recorded
- [1992] Altitude-Audit-Report.pdf — matched: ambiguous_frozen_extraction_cache
- [1993] 202207-Altitude-v1.0.pdf — no match: Extracted 24 contract names from the scope section and findings headers. The audit report date is September 6, 2023 (the final update date).
- [1994] 202310-Altitude-v1.1.pdf — no match: Extracted 14 contract names from the audit report's scope section and findings. The audit date is the final update date (March 21, 2024).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202505-Altitude.pdf | Ingress | ambiguous — not counted | Ingress (alternative) `0xbde7b92812760f91464bd46793722454ffec7f95` — deployed 2025-05-22 00:30:23+03 — liveness: live (current_address_book_code)<br>Ingress (alternative) `0xc2e2f4cb58c4dccf21a8aa47529b09c39c029e14` — deployed 2025-05-29 13:13:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202505-Altitude.pdf | BorrowVerifier | unmatched — not counted | — | Finding BV1: 'An attacker can DoS borrowOnBehalfOf' in BorrowVerifier contract | no |
| 202505-Altitude.pdf | StrategyPendleBase | unmatched — not counted | — | Findings SPB1, SPB2, SBP3 in StrategyPendleBase | no |
| 202505-Altitude.pdf | StrategyPendlePT | unmatched — not counted | — | Findings SPP1, SPP2 in StrategyPendlePT | no |
| 202505-Altitude.pdf | StrategyPendleLP | unmatched — not counted | — | Finding SPL1 in StrategyPendleLP | no |
| 202505-Altitude.pdf | RebalanceIncentivesController | ambiguous — not counted | RebalanceIncentivesController (alternative) `0x8f18b32a89ddf6f89bf972d7f8203bacb8dc4d52` — deployed 2025-09-26 18:29:23+03 — liveness: live (current_address_book_code)<br>RebalanceIncentivesController (alternative) `0x5603578cad65ca5ccb9e3d1e8c2f346481ae768d` — deployed 2025-09-26 18:28:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202505-Altitude.pdf | VaultCore | unmatched — not counted | — | Mentioned in BV1 resolution: 'include it in VaultCore' | no |
| 202505-Altitude.pdf | VaultETH | unmatched — not counted | — | Finding VV1: 'lock() modifier not applied consistently' in VaultETH | no |
| 202505-Altitude.pdf | VaultERC20 | ambiguous — not counted | ProxyInitializable (proxy) (alternative) `0x550f8a1ffc921b9179267f9e7909fc68ce496a6b` — deployed 2025-05-22 00:33:11+03 — liveness: live (code_present_context)<br>ProxyInitializable (proxy) (alternative) `0xaf6062222d00ac63477ad084ebd22a7821e5ee8d` — deployed 2025-05-29 13:45:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202505-Altitude.pdf | MorphoVault | unmatched — not counted | — | Finding G1 (skim) in MorphoVault | no |
| 202505-Altitude.pdf | StrategyMorphoV1 | unmatched — not counted | — | Finding G1 (skim) in StrategyMorphoV1 | no |
| 202505-Altitude.pdf | FarmStrategy | unmatched — not counted | — | Mentioned in SBP3 resolution: 'moved to the FarmStrategy base contract' | no |
| 202501-Altitude-parallel-farming.pdf | CurveV2Dispatcher | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | FarmDispatcher | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | FarmDropStrategy | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | FarmStrategy | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | HarvestableManager | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | InterestToken | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | StrategyMorphoV1 | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | SwapStrategy | unmatched — not counted | — | — | no |
| 202501-Altitude-parallel-farming.pdf | TokensFactory | own contract | TokensFactory (selected) `0x3c456b6fa3872e5c77eb77a84acc7cc39d7a11f9` — deployed 2025-05-22 00:21:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 202408-Altitude-morpho-integration.pdf | MorphoVault | unmatched — not counted | — | — | no |
| 202408-Altitude-morpho-integration.pdf | StrategyMorphoV1 | unmatched — not counted | — | — | no |
| 202207-Altitude-v1.0.pdf | RolesManageable | unmatched — not counted | — | listed in scope under common directory | no |
| 202207-Altitude-v1.0.pdf | MigrationDecisionMaker | unmatched — not counted | — | listed in scope under decision-makers directory | no |
| 202207-Altitude-v1.0.pdf | RebalanceDecisionMaker | unmatched — not counted | — | listed in scope under decision-makers directory | no |
| 202207-Altitude-v1.0.pdf | SafetyDecisionMaker | unmatched — not counted | — | listed in scope under decision-makers directory; also renamed to FarmModeDecisionMaker | no |
| 202207-Altitude-v1.0.pdf | FarmModeDecisionMaker | unmatched — not counted | — | renamed from SafetyDecisionMaker, mentioned in findings | no |
| 202207-Altitude-v1.0.pdf | HarvestHelper | unmatched — not counted | — | listed in scope under libraries directory | no |
| 202207-Altitude-v1.0.pdf | GroomableManager | unmatched — not counted | — | listed in scope under vaults/v1/extensions/groomable | no |
| 202207-Altitude-v1.0.pdf | HarvestableManager | unmatched — not counted | — | listed in scope under vaults/v1/extensions/harvestable | no |
| 202207-Altitude-v1.0.pdf | HarvestableVault | unmatched — not counted | — | listed in scope under vaults/v1/extensions/harvestable | no |
| 202207-Altitude-v1.0.pdf | InterestToken | unmatched — not counted | — | listed in scope under tokens directory | no |
| 202207-Altitude-v1.0.pdf | rToken | unmatched — not counted | — | listed in scope under tokens directory | no |
| 202207-Altitude-v1.0.pdf | LiquidatableManager | unmatched — not counted | — | listed in scope under vaults/v1/extensions/liquidatable | no |
| 202207-Altitude-v1.0.pdf | VaultConfiguration | unmatched — not counted | — | listed in scope under vaults/v1 | no |
| 202207-Altitude-v1.0.pdf | VaultCore | unmatched — not counted | — | listed in scope under vaults/v1 | no |
| 202207-Altitude-v1.0.pdf | VaultEth | unmatched — not counted | — | listed in scope under vaults/v1/ETH | no |
| 202207-Altitude-v1.0.pdf | VaultERC20 | ambiguous — not counted | ProxyInitializable (proxy) (alternative) `0x550f8a1ffc921b9179267f9e7909fc68ce496a6b` — deployed 2025-05-22 00:33:11+03 — liveness: live (code_present_context)<br>ProxyInitializable (proxy) (alternative) `0xaf6062222d00ac63477ad084ebd22a7821e5ee8d` — deployed 2025-05-29 13:45:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202207-Altitude-v1.0.pdf | VaultRegistry | unmatched — not counted | — | listed in scope under vaults/v1 | no |
| 202207-Altitude-v1.0.pdf | ChainlinkPrice | unmatched — not counted | — | listed in scope under oracles directory | no |
| 202207-Altitude-v1.0.pdf | UniswapV3Twap | unmatched — not counted | — | listed in scope under oracles directory | no |
| 202207-Altitude-v1.0.pdf | StrategyGenericPool | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | Aavev2FlashLoanStrategy | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | StrategyAave | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | StrategyCompoundBase | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202207-Altitude-v1.0.pdf | UniswapV3Strategy | unmatched — not counted | — | listed in scope under strategies directory | no |
| 202310-Altitude-v1.1.pdf | AccessControl | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | CommitMath | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | ChainlinkPrice | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | DebtToken | ambiguous — not counted | ProxyInitializable (proxy) (alternative) `0x5717f3f1b566cf2f7113979fcd78d9416f5b0056` — deployed 2025-05-29 13:45:47+03 — liveness: live (current_address_book_code)<br>ProxyInitializable (proxy) (alternative) `0xdf612bf20c2a68730cedc5056a1f1a90c6827e66` — deployed 2025-05-22 00:33:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 202310-Altitude-v1.1.pdf | HarvestableManager | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | HarvestTypes | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | LiquidationManager | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyCompoundBase | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyAaveV2 | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyCompoundV3 | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | StrategyGenericPool | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | UniswapV3Strategy | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | VaultCore | unmatched — not counted | — | listed in scope and findings | no |
| 202310-Altitude-v1.1.pdf | VaultRegistry | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2ddd6d576615e6afa823adedde8dc67198333169` | SupplyToken | token | $5,310,820.15 | Verified native implementation with $5,310,820.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5717f3f1b566cf2f7113979fcd78d9416f5b0056` | DebtToken | token | $3,182,778.76 | Verified native implementation with $3,182,778.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5481d5627aa367aa677442a120fd1021ab0595d5` | VaultERC20 | unknown | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17bd4cf21a21d2ce938fed2d54ca061f4f87fa25` | FarmBufferDispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbde7b92812760f91464bd46793722454ffec7f95` | Ingress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2e2f4cb58c4dccf21a8aa47529b09c39c029e14` | Ingress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5603578cad65ca5ccb9e3d1e8c2f346481ae768d` | RebalanceIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8f18b32a89ddf6f89bf972d7f8203bacb8dc4d52` | RebalanceIncentivesController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x89cfeeb9031f0dd7b3bb7eb9c1622cef1aaf17ba` | VaultRegistryV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 8 |
| standard_library | 0 |
| needs_review | 90 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 55 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=3

Zero-match audit list:

- [1988] 202505-Altitude.pdf
- [1991] 202408-Altitude-morpho-integration.pdf
- [1993] 202207-Altitude-v1.0.pdf
- [1994] 202310-Altitude-v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
