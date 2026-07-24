# Agentic Audit Brief: Circle

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Circle (`circle`)
- Website: [https://www.circle.com/en/](https://www.circle.com/en/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, bsc, celo, cronos, ethereum, hyperliquid, ink, linea, monad, optimism, pharos, polygon, polygon-amoy, sei, sepolia, sonic, unichain, zksync-era
- Contract surface: 476 unique implementations (495 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $3,215,639,101.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Circle in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 21 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1abaea1f7c830bd89acc67ec4af516284b1bc33c`, chain 1)
- UnnamedContract (`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`, chain 1)
- UnnamedContract (`0x0b2c639c533813f4aa9d7837caf62653d097ff85`, chain 10)
- UnnamedContract (`0x3d7f2c478aafdb65542bcb44bceec05849999d2d`, chain 25)
- UnnamedContract (`0xa6de01a2d62c6b5f3525d768f34d276652c554c8`, chain 25)
- UnnamedContract (`0x078d782b760474a361dda0af3839290b0ef57ad6`, chain 130)
- UnnamedContract (`0x3c499c542cef5e3811e1192ce70d8cc03d5c3359`, chain 137)
- UnnamedContract (`0x754704bc059f8c67012fed69bc8a327a5aafb603`, chain 143)
- UnnamedContract (`0x29219dd400f2bf60e5a23d13be72b486d4038894`, chain 146)
- UnnamedContract (`0x1d17cbcf0d6d143135ae902365d2e5e2a16538d4`, chain 324)
- UnnamedContract (`0xb88339cb7199b77e23db6e890353e22632ba630f`, chain 999)
- UnnamedContract (`0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392`, chain 1329)
- UnnamedContract (`0xc879c018db60520f4355c26ed1a6d572cdac1815`, chain 1672)
- UnnamedContract (`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`, chain 8453)
- UnnamedContract (`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`, chain 8453)
- UnnamedContract (`0xaf88d065e77c8cc2239327c5edb3a432268e5831`, chain 42161)
- UnnamedContract (`0xceba9300f2b948710d2653dd7b07f33a8b32118c`, chain 42220)
- UnnamedContract (`0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e`, chain 43114)
- UnnamedContract (`0xc891eb4cbdeff6e073e859e987815ed1505c2acd`, chain 43114)
- UnnamedContract (`0x2d270e6886d130d724215a266106e6832161eaed`, chain 57073)
- UnnamedContract (`0x176211869ca2b568f2a7d4ee941e073a821ee1ff`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 21 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 447 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 21 of 476 unique; 455 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 422
- Unique implementations: 476
- Raw deployments: 495
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 2 fresh, 5 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrossChainTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x231d51f23dad8a58b867c47884e88e6e122f3f12` | ⚠️ Unaudited |
| CrossChainToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2a6f3f4cd09106ad645a5d8b16fbe8d6bc57e18f`; ethereum `0x93a9f386226ca86f15084f0149f4fc5d7edd0230` | ⚠️ Unaudited |
| CrossMarginCashEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2103251c2f5edec640ef6e5a99d99e6bd53889` | ⚠️ Unaudited |
| CrossMarginCashLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c6c57528d8651c2fbc46aa67e64aaf9e9646b31` | ⚠️ Unaudited |
| CrossMarginCashMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cba4e2335c5e9e006dfbf47acb62294a1a39ed1` | ⚠️ Unaudited |
| CrossMarginPhysicalEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x181d053611a754df9a1ada64fed24a12b63a39f8` | ⚠️ Unaudited |
| CrossMarginPhysicalEngineProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x227c60ac0a0574801b340a7d408a4bfd64a713d2`; ethereum `0xaab8ed4c17ec6bc739035c66ba967810c235f3b9` | ⚠️ Unaudited |
| CrossMarginPhysicalLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6b762f45d412c13b975db10001d467d6caaa19` | ⚠️ Unaudited |
| CrossMarginPhysicalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11a166b96d3568443154e95a1b4b8802369c9ffe` | ⚠️ Unaudited |
| DoubleAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x121eeda447ac138c8f6f5d2423353c996c9bf0d7`; ethereum `0x2f718b9a8d72294aa9ff3f596a37ce47b1f295fe` | ⚠️ Unaudited |
| FeeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x132c1485120d36e882d80d01af7de2f454a7bdbb` | ⚠️ Unaudited |
| GenericAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a886fafe770a32812972c5d5632d0b4a6156fd0` | ⚠️ Unaudited |
| GenericNextPriceAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6deaa761bc131ac5f1d562ee71819e846ef11624` | ⚠️ Unaudited |
| GenericUpgradableAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc312141b2f7826d36a1d111c63d1a9ed824d07d5`; ethereum `0xd196f04822642f9ae8a6a2a862eff2372da3b4c9` | ⚠️ Unaudited |
| HashnoteVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0747c48be08773bcea26fdbe7347a388c7736c3c`; ethereum `0xe05c45635ec5610440c77e215ef122cdd7f2d314` | ⚠️ Unaudited |
| HashnoteVaultRegistrarProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x04f793a709ff868760cc9ba88a7b6dcbe0a4ee04`; ethereum `0xbc2ac01439f8719a4845006ddba888ef94606784` | ⚠️ Unaudited |
| HashnoteVaultShareProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x081bdb07aaaa64df8440b608a8259d89e3dc56d6`; ethereum `0xf32e50394a6503b157d2e639463f3c337e1a7137` | ⚠️ Unaudited |
| HNUSDMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc7175273dddd9fd0b5846a86229aec9ed4c7d20d`; ethereum `0xfb72418333871a8f44196c1bccc86f3b7fd27a8b` | ⚠️ Unaudited |
| LSETHAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8e384b57dcf4096baa3221086f1236fc616bc6` | ⚠️ Unaudited |
| MasterFundAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc0fa776fbf7b1dbdcd868e7a42aac0eb193afa06`; ethereum `0xf1a035a18b6f04564223ae5c9c4e282a2b60a1fa` | ⚠️ Unaudited |
| OptionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10022be24d6fbbf7ce321361e3371f0a05754ed0` | ⚠️ Unaudited |
| OptionTokenDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b7d54003f73be979cf92bf369432ac534853692` | ⚠️ Unaudited |
| PhysicalReturnProcessor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07c19d2af8cc00962e9e4e0744b7a191329b447d` | ⚠️ Unaudited |
| Pomace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8cadc832040bc66a0aeef9bf6b6d1bd7bcc5acdb`; ethereum `0x983e92833bc53573a6c5c5536e38179d5f42ab7e` | ⚠️ Unaudited |
| PositionPauser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cf8d5089d3cc289b369bff29646d4070459c66b` | ⚠️ Unaudited |
| PpraSdycVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c202d6a890bc8bb215ceae40d2ff12f5d323e12`; ethereum `0x42e937589ac436ddf3b66312b744ae8420e13ef1` | ⚠️ Unaudited |
| PriceReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x542647c43a126778c7a895300e476bcfd58bea86` | ⚠️ Unaudited |
| RolesAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x352f80e8f63871649cf23a68cd28907a5582b0ab` | ⚠️ Unaudited |
| Sanctions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfc60d34949a7dbdf91ba6d5613b26d6ff0ad504` | ⚠️ Unaudited |
| SDYCAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1051a9ebb992a76fd1ad3143da202bd0c3eaabe1`; ethereum `0xeb7759febb6d2ebf89ee4c0984b1694961a22701` | ⚠️ Unaudited |
| ShortDurationYieldCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0dc09046f22ec756e633eca91618e3c9a372699a` | ⚠️ Unaudited |
| SimpleSettlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17e9d98c3f3301e7869d2d6fbdd37dc6e605f245` | ⚠️ Unaudited |
| SimpleSettlementCash | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad250345078aba5d052c1a8040fd1c1595f4ea00` | ⚠️ Unaudited |
| SimpleSettlementPhysical | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x454018c4ccb5a1e4348e2227229a2e2fdde25d9c` | ⚠️ Unaudited |
| SingleOptionCashVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dada035f571bccd4c04fc73bbe01515af7c0bf` | ⚠️ Unaudited |
| StrategyVaultProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c3557be73357f802a0c1d4954fc9d8721bfe4f0`; ethereum `0x174644cd01a3338d417dcca1e454f34cf9ea235e` | ⚠️ Unaudited |
| StringToHexString | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x026a6955696af727d87cc45cce934aea56ef68e3` | ⚠️ Unaudited |
| StructureLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10cacb2319135da66b89ae8aa12e1bcaaaf54389` | ⚠️ Unaudited |
| T2Upgrade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a5be0fabda35e57838bf2aacfdfe58de8d59e9` | ⚠️ Unaudited |
| Teleport | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x362087f1cafdcf934928630b4b03d69854bc7eee` | ⚠️ Unaudited |
| TellerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xee35f963bfc71b51ec95147f26c030d674ea30e6` | ⚠️ Unaudited |
| USYCSatellite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x191fb6f3ba332f1b8789caf67abbaba56147445b` | ⚠️ Unaudited |
| VariableUnderlyingVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c8ec036c7f41f84bd1c15565070f2aa2d00eccd`; ethereum `0x6f4eed615a92fe5ed64fb74fad20ea1873bef36e` | ⚠️ Unaudited |
| VaultLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06de711c7dd7b0fff655b59c28dc2dfe41441506` | ⚠️ Unaudited |
| WhitelistManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1150384af15b603ff0cb1c9f61e11709c8153ce3` | ⚠️ Unaudited |
| WrappedETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55e3d6076ece40697ba5fdf226a1e10afbf22b06` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x17ff7c7b0ba791653f334b9866264bfb58b94aa3`; ethereum `0x3c3ceed5b57e97e1a1ecaa173130485aad2f1530` | ⚠️ Unaudited |
| WrappedTokenScaled | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05a0a07620348a90ab895d2c9e87adfa1a59bf51` | ⚠️ Unaudited |
| WrappedTokenStakedETHProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c9b6b2b9345841f6210f6045ee2508d68ee1ac6`; ethereum `0xac78ebe8b1770f1a5a0d9eaad88a33150b05846b` | ⚠️ Unaudited |
| WSTETHAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x058614c982e2dfb89d664978ad2dab5113950a17`; ethereum `0x1ca4aad731f38516318b3e41ff1fc13ed9d155be` | ⚠️ Unaudited |
| YieldCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x136471a34f6ef19fe571effc1ca711fdb8e49f2b`; ethereum `0xbf0f2f3aad6b99893d80c550fbacec915545eb92` | ⚠️ Unaudited |
| YieldTokenAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b7ad4835d817181592788a7e6d588d334e0426b` | ⚠️ Unaudited |
| YieldTokenTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ca5946749e328287ee73c6efb27e7fb7ef9d8cc` | ⚠️ Unaudited |
| YieldTokenTellerV2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x060087d12801e36f1fe2b1a8d8a90dc6348bd599`; ethereum `0xccfbfb13ff711c74da2ab1b2c83b690a013a08a3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (422)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00db02161ddf318afeae1ef5f9e395b20089f2ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08c0bfc0d8adfc48f2613b10ef469d987855710a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09603b16fb020ecf1b8c1d5cf26c3e552d81083d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a5ea26fdd38cf2acb06dc64198374c337879dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c2e56e8cf9ebc523fad6f26c66481b59fb89726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c82e9ccefe54f6f26bb4a7458fdb93e9809baca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6bf7cd039c85af1e5ea78351df41d50ea30dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e7ebeb2fecc204e8b93d41c92a74ddd9287486a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18488d190b7c7f43cf9a908032c3a050befa3665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a336d063475f673e639971f36d1d15ec23510c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232093 | `0x1abaea1f7c830bd89acc67ec4af516284b1bc33c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3f3cfbbfdc6366bbc67ccfd20cdd8ccf442c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c9ba70d333be4b1e40f7f5479d68ce70a2087f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2651d48abebbc8402313098b7a9aa70135c803e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be3531ad3b5c8c3e74c128258cd1e891d84ccda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31afdabb35c3f7d8633d60170837f617838d89fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3241e94b6de3170eeb220391210c17c7c0d51ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32b2a50a93ce946fb447ea5cff37e3571e2ab8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33722009708c52c9c3701a62245b306932554a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x341c281d11677795f1192bf1f7438666909841c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x395637e45dbcf306a97f98f8bbfa243c83a2d873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3af1730432f77437b3acb12c7fc35a7ff5fc4365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f836d30924edbfb75dd92ce4644874392f2f7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4203eb1e80410a4935eefe16e50dc787f54ea9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43542047a5df5c3e44a65a9f6543b55c4d4851e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x470f3b37b9b20e13b0a2a5965df6bd3f9640dfb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4777cb0702a4413deabc1427d53db6c6f0968e51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4780cf331451ec64ba64215bf0431cc7efe9ce08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c48bcb2160f8e0adbf9d4f3b034f1e36d1f8b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ed016e21f217147e61661e366ead1347494567a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52acd57016e8b35568639eff109150a944de0601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5389071eb4651bd1853f0ba78037ec8db28da216` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x554eb90e6b726a4bf378f4670ed108b6a6eae4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5575a88bec5b47ce8d270f6a4f2418865f16afd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55c97037adcd56717551c4478b55057c64f533b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564cf1c2210e6d8b235cec0001c5b4290d34ca45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57afa1235a841c66641fe8be6a0cf6f1980e54cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57c53c27bae797338b7e4e03f0beb6154afa0680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x582f2ae2e1b283129762a0163a91af4502be2e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b05357de563b870dd3710276727718deb6cea75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b430ae5edd94b2b90c490c2403d6ebd3a8dccb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c08ee2c486e6cb127eff5bb54d4a3919112c551` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c73e1cfdd85b7f1d608f7f7736fc8c653513b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c7eb50308c640ada1c010de10781df4d4283df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dbeccecebcdc2ce3258f6e638373d2923560c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f24e79bc9a83bf4d35d793cbddd0c00d9c4fab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62e2f30077907f2daa6d969f544908faf1fa2bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x635d7b3e87195d8f70d8898df20aa87a19a0a286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64b66505c6caf07f8dfb9a96eeacd263f8eaa08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d3f8fa8e598c827a29173cb38d17e08fb7f3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6601d3f885d1a91ffe63b4b4a834cf9e2490c2d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a0ed6753bb453f7f33153206e748d0829fe3470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b58f317fe6aa7279b4b736f9080d657e5bfd5fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70e43ad33c458876abe08ab0d684250b257c14e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x732a6aef505743ae47a1afb11138b7cc926773cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73f48add7c138145a568e0a2d5af06efe4d700d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74e72da890962721cf45cda3089e1fdcea78362c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74f2199aeb743f68f05943e5715a33eaf2b61f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75dcebb18f35bb9132d5801c9a8fcc24dedeadcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x778aa8c98ff7a208bf6eb2808a69a3fe42ba4015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7878ee729bc7cbbea18eaebc3d6a71183f9fab0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78b44a841bd15cd528274fcd2bf5b3016463a162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a74b5eae27a67348b54a9f8ae7e644f3f780447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba3b4473d314c17398969864ca13c4d0c3336b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7de7c7c50cfa3993e6b7d57aee7e0ba2860ccffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x806e66ac257f46a4df5901959c384d4beda65b6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x813a433c2103c970954f7fd03a612abea3764280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817154e2c718efdc0a83b5e5fcf492a1972372be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x845869240c6b8c1f2ac0070e2302886f3c3dd076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x877dfc58d9dedeaf61cf1160049b7486db20d5b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87f16fa707d61f1a9205cdcffa040553e08007f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8851e64417b98e8be4103d5855bde87a37d47d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88e6998cec706e80ca3f38d635e9ee503f50d83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c7782241a9fed2417b149568ffc98d0010c2f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c874963e95128c48151a53d1a39826ccc9835cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cc36923153c9b19b9e65bc4632ea26b97e59e0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d0fa28f221eb5735bc71d3a0da67ee5bc821311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dbbde7f64f25e6dee105b116f0ecdc8d7605e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fbac13b8ff40300637a6152b6cd949c2dde5d6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902d906b8d988092213be799b18bd2cbd64f808c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92a4af515101b9788512d2977622823e720bafcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93cc687407acfc75d8994d20a4ff70563bcc4b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97d829c13a3cf9fd0615ce687ce9a2939234d218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a45d263944a40b4fecd84ba947ea486352ec758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c187397fa23eb6092028cd43fcbbad28e2961be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c6f13b11895df29ad02297c8b987c1c4e5fb586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cadd64555e5eb74437bb54ec652b7cd85739e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e5cc019efb7845271a9c6087d1e57a0681cbae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e749e3de5a45fe65f9629eb5850db0f1f7c08c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fde717a21c5b272b8956d3aa0c3551e1ffd23d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa038ebc62f8a2f1a02b248b2e173192ed29fff5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232096 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cb751446a18c90dc8bde395e503614fae7dc9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa59f30d8c0d0771836b04227f5359e27a2f357d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa642b3a40278e835cf89a23554e7810f31ca5522` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f0e085f51b4d7680a3a419cb4ac69646035591` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa9d177fcbaa64332e95648a42969d5bec4b9530` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaaf405c48e8c73aeceda3e40fe34e5c0ff8f5de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf4b4c3ea99e31cb9745f25cbc52d55bc018b157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb019ee4000354e1429075d06f41377c0720ba705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb03ccdb52e0b57b4bc45056359c9c075ef11a5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb148c1e537a488e89ed7bfe68e8687e73ebfb19e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb28483e6086971d317dbccb06a7c0bc05740c580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2b996a2dd354674a656bcfe2580719f15ec607a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3f5ddf667d76259afe16c03f6277c9aa8bda8bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb59b15683710822c40df789a8e67ecfe30460c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb62fcf2381293aa3c995bb0483f2b749421c7fb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb94750c748d427fa31df7fcb3270b0621a620b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba66bf45ae8df864647d15c28c57b900dedc03fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbad11967371814054d505642a733ab6a83b7c2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb30724d3eaaf10f6c5b0c683952598db3d3e61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc446fa602ece8a4fd163cd356b598ef1c8aae4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7dfa8d0a320090a2f26775a9bf9988bab39535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebead08b7dd79bbbfedc8943eaf57536a8f29f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc04ec9649f9ad55e74d376ac2634982dc66310cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0778b47bd62b9edd2d1632c268a035c6ed79c65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc606bc5866e1d19a56a7dc379c1548230ff7bf45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc61745a871b86def8ff87d1a59663769a0388fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6dce1e90ebd7fc59a2c2802db7178249b035392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcccca6751ad6285b4cd006552a9ec21baeda35d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfbef61fa8263abe2ab8d72c23c9ba0c100b19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1f4470571af4dfe54742824d26d19f806980ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceafa0b4daeaf2b3cb8eeb133fa071421fbbaa39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf8d2afad84917847753f15292a583ca89c28a4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfc60d34949a7dbdf91ba6d5613b26d6ff0ad504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b94cbb0493a12d243d6df4cae6d0430cb23088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d30d0b4d63fc62b40948aba98ae43b30e290f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd382e6e6a48d0731d0f677b637c4be9ffa012f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e8561522f08c9995577f92fa0f2f8987b4f736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5240771f6a6f61c4ade7d7c63f3906164f0378b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6088940dd85f34631d5800fb131f10406ba422c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda0f14773d613f2ed50576febf549ee3ccb1c86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb149630e83f0b751e8a77b315c171f76be6add7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde2c9398abd4af00bffe7fc6f51e2af6edbf4a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde7b4e91695000a67f80d733b89e14c98bb47631` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde9a2c96a85aea36cfb34d146b72630c9c99e1da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf889e7f43e9296b1a3883fcfc3ae17c253b2868` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe05877f29ea674cdd9612c835cf4d63090f9229c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1411adcff539efde126db8866e6306f50516a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2c1e05dcef0256c6b962e97cb89c1f5629eb0e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2d10c1d9715a04e6ffd78cf4704af91aaea6482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3db03a6a579b259061830746a6f2ac16f37f9c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4d530fe06bb9c30a19b52b9c7611ae87a1cfc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe51655854c7b071c1c813db3be236d02c6781290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b0c4f8766abf8f77ad00c27fb00cef81ccc9af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6ca5e409a68e81eacf62789198dfc2c4ef999f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7587e41e356648a25e11d61e1b1c42853dab663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7ce7ace6d8c6a19e0db955b04f0a38ee9513aac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb98d3611583e3778fd35d374686cefee87c065f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedd435b7e3b3a1ea7d603ec77660377990b07b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee80a7b790ac9a4bfea7234cebaac17649445d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeee7af832440884d2b693b4193fa2ec26a48c7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeff65967227f0b84ea115bdb8be1d166c3f371d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf09a567de6d38f436c2b38fd1055c93aab1fad8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0cf259386c739bda665d7c07f32c9c5c9e29ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf27d387ac3885cd27db409ec274cd5fff2b685c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3be14bd78c18fde0fdf2de9d8b2fbc3e6e981dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4ae35984626907e212482d1331b4d5f0c66a125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8724d6b9e6ff55bc4496fddb3437dc691cd26eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf90fcad82fa83e72b9d4fb5036ab2aec98e41164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9539c6e9cdd31d2c5ef02052da2ddf9c1bee757` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9a6936c6aaee7558ee40190ca5613e2e432f464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e3430735de4b68ee41f652cc1394394ee6501b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaf2628144e8852c1fcfa582e329a0963324c363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5a155a8497981c579561bfc3cd9be6bdb8c2b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd756bab9f73376b9b46511ada5c7113a5dfc948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfda2bc1236f190345bd0481bf51e8ed089686966` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe83bd709a0f2c945997f8234e510edfafcc594d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe845ee093186c1ce2d246d2642ccaa233557499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef318f662b73b913291e6a5cda697383b1e9525` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff529948898be307ab7ca083592f89399a3efedb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff9681e29b585abb82d6db0d99c80ae3accbc67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x06b573c2bcd4dbd0c692727910f10d3912af330c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-232097 | `0x0b2c639c533813f4aa9d7837caf62653d097ff85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70429f78c2d7d1de6f89be421bce64ba876c325b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-232118 | `0x3d7f2c478aafdb65542bcb44bceec05849999d2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-232119 | `0xa6de01a2d62c6b5f3525d768f34d276652c554c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5af3aed6dc54535a0a299a4c00cbf24bec30a69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b7d54003f73be979cf92bf369432ac534853692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8cadc832040bc66a0aeef9bf6b6d1bd7bcc5acdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d0fa28f221eb5735bc71d3a0da67ee5bc821311` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeee7af832440884d2b693b4193fa2ec26a48c7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf38979e05650be7926ea07bb59c48fb9b1db3d08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-232104 | `0x078d782b760474a361dda0af3839290b0ef57ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd000dfe68362b9a9395af0df9788b1de05bb25d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0xd254915fc567865730f0516f8933bc0b96ec3527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x067b07ed153f2d4640638f7d2945fbe4ed1bf1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x366a30eeeb47d0dab030c9252fe11a5d0cd92008` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-232110 | `0x3c499c542cef5e3811e1192ce70d8cc03d5c3359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53eedc0c750c9ffd63782a1b215effcb704fd402` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e14ea29ea374d6f4ff669326c30d1fad9826026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xae66c0564a6bb320514cd133ddc8281de59d94d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf08ac519f7fca9e5434d12d050b3a382b37dccdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232113 | `0x754704bc059f8c67012fed69bc8a327a5aafb603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x01798076f71e0e48c37b670af7752d74d6e6bf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x053714a436ea716e14b3430f2ee8e2488c83f16a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ae71c8f93af79417c5e2fd796ec2a288626f17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1109f1a00fbe5c44555a543540bb2db2c15c81db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x12f407bfdbbe56ab19ecd389992f0f408810305a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18fad5b72113497e1c92570b6f517328d05505fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x20116919299625b1b3e474d5a594a5b4ed13e95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x229e64252e2901a424600e22c28a722404d92dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x23af4836dd12e9c40269965eb41a88aefd544c1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x26c060a219d77bc0bb0e3e7131f50a51cf7d4e81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232114 | `0x29219dd400f2bf60e5a23d13be72b486d4038894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31b57e9dadc3227400bf1742fc9692ebb3749a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31b68b75a817d74fad9a9cb04b63ab9b61ef0303` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x352866b5c559a3292144263ddd937cc3b8b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x35d51107aacd80ee8ad3751170d70cf4ce186535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x36535d7bbfc61e2336faae501f38d77ccdf9cd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3665a6a80604269633f19d1d78a321b069462a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x391071fe567d609e4af9d32de726d4c33679c7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3c05fae3805e4dbdec04e56adc5ee493194996ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x589cfd082b670998f4181cc6007931966f94bec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d03117ddd9ca5455913afe3b3b8a7c2b068f887` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d3850377c22dd8b154161d07102b60ef4d3cf2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x62a572120530a6cbbcafb7c6fb8c94fbdedcd70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63c379522f8e56e4af9683fbcf53ee1093f8c654` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6494ce4a3f9b3b765fbd07aa7ec2d3108e66d684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x65f2358801ece9e06d283d0d80f3e6ca7a7c3477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6697eefaff6e8cc532115c8d0a51164f92e0e324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6edf3f3a5ccb6a9c3535c1bd62b666b770b6d820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7657f03eef1b05996b02eeeb89a0683a5b61fe35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x767628f6e5d5bb6b4e47c805ae6ab7fee29a0801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7779f53fcbc0848353e238de2c975a4794313a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78d97679b6582eb0adfd2b1b52a7dced76d94c69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78f6a74a0074a0353349e070368e6d2d587bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7bc1cf3eee9c3aca357133c5ebc6d575f63ba48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x826c8465b6e6a0ca6454cc15703b60101f171d8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x838e5d1d78d634fc43430dbd5ebb9319cf5f8c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x858657908d257cff5f72aba48b857c9b848ce686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x88217164e88201227c76a888d18ba507cd1dcb47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x89c31261221961acbae55917256d59257511df5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x910afaa218ce5228f024252a1ea69780dcd3caa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9522bacee3e237cf81cd0a1823cf3dc751d887c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9943afde8779fc05334c1577812b29b36fb4e674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa13fc0eeed7c66855798ca8402960f11804da6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa432cfb45b61a19acde9e9b60f9d6b8f3420187a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa71610b94c6160f9d484d9921aae910f64955006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaa0944ea173d300945ee5f13ae49560643e02c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xad9ed0a257a5ddbc39f625f2619b4cb036570393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xad9f40b195d46203b17d2f3302976e7520e150b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaecac50ba44dc8fa2a4c8410e5215315ed3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xafcb4b8a55abc2b389a510cc53da415a2e2002d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb070ad54d66ee7efa2bdbfff9628ffafd247db87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb4a197efc9f11b460e11ea7a819eeb2c902dd7cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb90f6a672aee6f895e5ac50ad3a1a88868b502fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xba2b70309db7ec370e68240cf1f05580cdb0e563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe9f04237f6603d92fee25e36ab5dd4fd263b954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc1883ff64adac9014b40fab45d7dbd8e34992748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc57afd1d249839c16bf9c0bf9ffa4200b256e6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc787a98e3312c1f8ad7b04dc1fc1502a9a4f8be1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd899927a68bc0c355a3eb0e089a6db815b4de721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xde95b31cae2ae5a63b9ae23252686684f29e09b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe715cba7b5ccb33790cebff1436809d36cb17e57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe85df5c4e588fb0dd4af2436820429a3eb7ef797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf06a648cd013990c237318cb49a56bb54e2cd698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf771463d1e9524574d7117f90c5b1d66a1a3e079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb04979bda6546f114afcff2a78d35446d5a32e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb70405f550695feb9f6ccae17a210a612a993f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfe4a47e10ee3b270b43972629e9a93ee0ab31e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xffd7c82bbf7e44fb986c4ae34e376cd674b670f3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-232121 | `0x1d17cbcf0d6d143135ae902365d2e5e2a16538d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-232137 | `0xb88339cb7199b77e23db6e890353e22632ba630f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-232106 | `0xe15fc38f6d8c56af07bbcbe3baf5708a2bf42392` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-232115 | `0xc879c018db60520f4355c26ed1a6d572cdac1815` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232133 | `0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-232134 | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232122 | `0xaf88d065e77c8cc2239327c5edb3a432268e5831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4fc3dc25f10d5e9a9f907d7191b7f28c0a6e0c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x62ff36e05c9e6afa8a77c24bd00c97aff8499daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x87ee2fee9eb2ecd65cad57e1219c8198eb24442a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x9d2002c6a648baf94b183e92329c04f9eacae4bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb7f66db91c129c25516d1178f6a1ec7fbe453421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc1e4d7fd4391f80694219f8f62fd484b55dcc690` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-232125 | `0xceba9300f2b948710d2653dd7b07f33a8b32118c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xf46d0d1e464b04b951ae6854812cf82279876f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x01bff2068250a7d79e2fb0be7448c2f8ecb89582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x042e5fa152483bcd1f37dff64909351772507d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x06064ef8b77dafc93d1e175b25048047919f74b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x060e822091d5b2e224157945fdc9f51fea383195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0da70e527779b14013499260bc169d39dbc333aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1803a9426f9611e6eba1ad6c51c973f791078fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1fc4a3fb92e9c1e6813dc6ada29259706d2e39c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x289d52e8fb4eeeb273915828ca81191b1ab4ae0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2bc1aa3003805d8b279b5b6bb0a252efe7df6e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x322f7a210d2c1903a8e6c94b54f62df7236ae48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x35187fda957ccd442156b9589c4e7ff3277992d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4562e7a5091b065edb121ba6c52c42377399c2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x48a2cca231b4d195fd3b7f50b747bfc1dc898d79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x515174f40ea1d8f1b1f1198d47a2888ebae6d70c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-232126 | `0x5425890298aed601595a70ab815c96711a31bc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x57e5748b9ac2576c6fb66af106481b22b1533cea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5b2173b7d3d4592816d9ad520f309b3f443ccbe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5c8038126cbb40b49b53a5e8ea6e60c216e9adfd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-232127 | `0x5e44db7996c682e92a960b65ac713a54ad815c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x65855043f8f1b98c4677803feb18ee793636c6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x683f61957f3c59b1bca5d85d8e5a0ea0c2cad994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6dac0e170bcb5b242b5df5a235658398c91e2195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x770e0de82f9e74c5058dd636656c08e640b46bd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x79beb0a978443dbc125599170332b3f40d448f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7b103863b408fc88b97e8b7ac5a25b2f9d8b397d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x99887d7c649097bafec679746857b5c0d4eba2ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9dce1f799919f07f4ebab86efcff878f074156aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xaabccb71f8631f1b4610fd2fde486a61f6f7017b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xafe4557215aee8c4e84ac6e4b9027e331561f411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb5584f7d4c6c2024790f45ef03d39edc6a13d057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb79bbc2a74b14ac14cf5e6c60ed6bfb13271f98d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc5d6cb8cc74b61ba286e6e483922a3c5f391400a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc6473df76bcb6a8239a7a66b86674e557c24a419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc8c7d71e72191d933fa8cba33df0129b98500a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd4c528b90a8a2a8bc4cb52527efb14d257ac7f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd95b9e6f6b0362adc76aaa452d980332f601c66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdb28a0ab9d281b3d745efb0856c9bc317e733b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xec324aefbb258ba55a66d681f06bb652d51caf82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xedf60ba94bb7784c7e97e4146e452720ac180834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf535850147b843bebd158fca3a6f51b1e6c8f3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf7161d9786d44a81ec38d4a7f62b90848a8f2d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1fe74ca6c66a33b8b619d799af110741fb6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d3f8fe9cce16e1c2743d5ace99f027df866c6bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x48f0d284ba4dd0b3a9b72a10b13c94b43f0cadf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c90c8a368f7d1f4a57906139bac23c72f38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6610e292a2cd9a750f6a8331a597f78b9db100e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7f2239511051b875ccf84dab02d5a307adcd51c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3fa3d254bf6af295b5b22cc6730b04144314890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5dc6671e7cdaaa2386536295bf63a221b67311a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb7887fed5e2f9dc1a66fbb65f76ba3731d82341a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232128 | `0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-232129 | `0xc891eb4cbdeff6e073e859e987815ed1505c2acd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xecc6ad0608e1e3fc6b314df221cf10ea07ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-232130 | `0x2d270e6886d130d724215a266106e6832161eaed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-232131 | `0x176211869ca2b568f2a7d4ee941e073a821ee1ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x1cac7bf5e56f3103f830f371b42efe49618160a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x280f7fc6658dfd18210a92a19a23d2c668a67e9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-232132 | `0x41e94eb019c0762f9bfcf9fb1e58725bfb0e7582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x7221cc25b90a9e7c10b8c8bb1f27769466abc39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0x89e29668e4928bf3b085df39cc2ff2104f45c37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xc8a087ac4bab015261dfc3469201f1169b8a5e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-amoy | n/a | `0xdfbd907c0cc5e7fdac5c27c66826785f133030c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-232135 | `0x036cbd53842c5426634e7929541ec2318f3dcf7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x18b2bf98579267d4b108c5d82f816710a17efbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x5cdb3dc7df5d50ea3cc4f313af5ac26ea30a019e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-232136 | `0x808456652fdb597867f38412077a9182bf77359f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xba3b60c21e28c41df4babd90f228e1d368627da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xbb2f7ee202eecc846949ff0f006b0dc650f8b43d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc75d43b1171ff5b16c61aa0a58722ea3ef453338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xcee578131d0938c08389a22b92c218888b33e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd14ef0a6cb20cbbe0447e350521978c5d1750665` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd52081e444544c744b3ecbb0de7ff06e63ef4e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd5b1f0977b983109d5d5c0fd18178448914cadfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd74cc5d436923b8ba2c179b4bca2841d8a52c5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x0d1730547b70e79e106b85a06fb6e6b8fdccc1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x101e1c9757c99867a39ceb41117b44f2292cb253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x18b2bf98579267d4b108c5d82f816710a17efbb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x1aba9ac93b057de829a116efd056e6c30288bb57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x36c705bf4a737b4b699f517ad6636e631a9fde3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x3be6d4be89a7ab76c0e8fa7576b1cf211b274dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x3e71aafa5c61a275954292d3494dbdf5f8c2abac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4487b8a031a26f64366661f6450c27a33777f689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x4bb795dd2d2f15412405c7eef5ece6182d1c0dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x683bbad68fdb42775c34e8a845aa75f3b3260b3d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-232123 | `0x75faf114eafb1bdbe2f0316df893fd58ce46aa4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x76250920ba6ed1488041c6e4c406db4317fa0fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x873ca700482409072df082192b0952464cc43dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x89d2b3e8538fce12013aac17e530e0d6f728d71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x8e5b1d42125fdafe594ce611c121ea9f1c2fcaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x909e571e7abcce7aefeda3406f4b822823be2ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x91b62ca6b54f4ff2ad9cce81a814c853b5b11dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0x9e76101c1e9f8b9fdc3b144025a2b34924c7f48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xbebf13f3f6744aadd084796901c87e6e65617843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xc6efe9ac36c66cc3f28e5ad0e7aa077eb0f97dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xcee578131d0938c08389a22b92c218888b33e5d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xd52081e444544c744b3ecbb0de7ff06e63ef4e1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xd7ec64f45f270fdd493b7fcc6a90693f80220f5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xdb2574167500c698cf8e8d68ff9714728512682c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xec1ff82011679d935683f1618ab47094b71415dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xfbb8ee011af0f15ee171e79c0688d05a58f7f566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum-sepolia | n/a | `0xfc70510258c99d9cb6282cfa580070ce3c6a47dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-232098 | `0x08210f9170f89ab7658f0b5e3ff39b0e03c594d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11b8b179ecf830a36f0e243756d1109f0cab442b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x12f558ee6d288e2864b59cf21eebee1da95e8caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b0fa6d4ba8c624556dfe068ec0ff21811aa7a5a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-232099 | `0x1c7d4b196cb0c7b01d743fbc6116a902379c7238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x251d59bce054d285539764fd13154f6369b2126c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2e3467bbd995a32b85dca51c58bd23f5a96c2ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32ff2b0ac7fc89c6e7aa9fe540888da61f712f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34259cd1a4de947b8f0ec6011763771a56df10a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36939d5a1ca73901058f3fa2ba0b7546e7144d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a29155fcc1e2f158661a72658a53d056499f924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3eae658aa96cfee314dee9c3ff8830468da2aa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41e94eb019c0762f9bfcf9fb1e58725bfb0e7582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x488d2b9b8d73b88380c11aaea3b63a7916c9b8ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b22a317731c7b744b00038ab782f4c54d152ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c76cac50ba525223a7fbdb8701ea6da49f95342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7221cc25b90a9e7c10b8c8bb1f27769466abc39c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76a1b9e4712e45c4c3d0ac6e2c3028ee0ce4d3b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7d89c906ee97305dfecd3b144039ea98367934fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89e29668e4928bf3b085df39cc2ff2104f45c37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x985363b7832b7b9d0b391b1470276c63477bb629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa94e0fa58fb70264492d9b74eb446a2224773547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb56323f300c04c33f6502f3ea62bebe2e99ce5e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc22dae40f828e38a9527b604e7a68a89a3de9c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6153fdbe6941effd8cbdd150ba459175f1ea558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc8a087ac4bab015261dfc3469201f1169b8a5e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9db4844fad344e069524d67abae12fb94a7b02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd79576521869bd7c50b19a870bae9538bd75f4d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda317c1d3e835dd5f1be459006471acaa1289068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfbd907c0cc5e7fdac5c27c66826785f133030c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xed21c73f27fef2c08213a1b949da1e924fe482e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf31d233a94e168c85fce4b9ead99fc0d0900cb5b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 412
- Live contracts: 0
- Unknown liveness contracts: 412
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=412

Showing first 200 of 412 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00db02161ddf318afeae1ef5f9e395b20089f2ba` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x08c0bfc0d8adfc48f2613b10ef469d987855710a` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x09603b16fb020ecf1b8c1d5cf26c3e552d81083d` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x0a5ea26fdd38cf2acb06dc64198374c337879dab` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x0c2e56e8cf9ebc523fad6f26c66481b59fb89726` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x0c82e9ccefe54f6f26bb4a7458fdb93e9809baca` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x0d6bf7cd039c85af1e5ea78351df41d50ea30dd1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x0e7ebeb2fecc204e8b93d41c92a74ddd9287486a` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x174644cd01a3338d417dcca1e454f34cf9ea235e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x18488d190b7c7f43cf9a908032c3a050befa3665` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x1a336d063475f673e639971f36d1d15ec23510c2` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x1ca4aad731f38516318b3e41ff1fc13ed9d155be` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x1e3f3cfbbfdc6366bbc67ccfd20cdd8ccf442c19` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x20c9ba70d333be4b1e40f7f5479d68ce70a2087f` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x227c60ac0a0574801b340a7d408a4bfd64a713d2` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x2651d48abebbc8402313098b7a9aa70135c803e1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x2be3531ad3b5c8c3e74c128258cd1e891d84ccda` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x2f718b9a8d72294aa9ff3f596a37ce47b1f295fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x31afdabb35c3f7d8633d60170837f617838d89fb` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x3241e94b6de3170eeb220391210c17c7c0d51ef2` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x32b2a50a93ce946fb447ea5cff37e3571e2ab8e0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x33722009708c52c9c3701a62245b306932554a63` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x341c281d11677795f1192bf1f7438666909841c8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x395637e45dbcf306a97f98f8bbfa243c83a2d873` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x3af1730432f77437b3acb12c7fc35a7ff5fc4365` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x3c3ceed5b57e97e1a1ecaa173130485aad2f1530` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x3f836d30924edbfb75dd92ce4644874392f2f7a1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x4203eb1e80410a4935eefe16e50dc787f54ea9e1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x42e937589ac436ddf3b66312b744ae8420e13ef1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x43542047a5df5c3e44a65a9f6543b55c4d4851e4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x470f3b37b9b20e13b0a2a5965df6bd3f9640dfb4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x4777cb0702a4413deabc1427d53db6c6f0968e51` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x4780cf331451ec64ba64215bf0431cc7efe9ce08` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x4c48bcb2160f8e0adbf9d4f3b034f1e36d1f8b3e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x4ed016e21f217147e61661e366ead1347494567a` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x52acd57016e8b35568639eff109150a944de0601` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5389071eb4651bd1853f0ba78037ec8db28da216` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x554eb90e6b726a4bf378f4670ed108b6a6eae4da` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5575a88bec5b47ce8d270f6a4f2418865f16afd5` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x55c97037adcd56717551c4478b55057c64f533b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x564cf1c2210e6d8b235cec0001c5b4290d34ca45` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x57afa1235a841c66641fe8be6a0cf6f1980e54cd` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x57c53c27bae797338b7e4e03f0beb6154afa0680` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x582f2ae2e1b283129762a0163a91af4502be2e0e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5b05357de563b870dd3710276727718deb6cea75` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5b430ae5edd94b2b90c490c2403d6ebd3a8dccb5` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5c08ee2c486e6cb127eff5bb54d4a3919112c551` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5c73e1cfdd85b7f1d608f7f7736fc8c653513b7a` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5c7eb50308c640ada1c010de10781df4d4283df6` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x5dbeccecebcdc2ce3258f6e638373d2923560c7d` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x61f24e79bc9a83bf4d35d793cbddd0c00d9c4fab` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x62e2f30077907f2daa6d969f544908faf1fa2bc6` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x635d7b3e87195d8f70d8898df20aa87a19a0a286` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x64b66505c6caf07f8dfb9a96eeacd263f8eaa08e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x65d3f8fa8e598c827a29173cb38d17e08fb7f3e2` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x6601d3f885d1a91ffe63b4b4a834cf9e2490c2d8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x6a0ed6753bb453f7f33153206e748d0829fe3470` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x6b58f317fe6aa7279b4b736f9080d657e5bfd5fe` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x6f4eed615a92fe5ed64fb74fad20ea1873bef36e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x70e43ad33c458876abe08ab0d684250b257c14e6` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x732a6aef505743ae47a1afb11138b7cc926773cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x73f48add7c138145a568e0a2d5af06efe4d700d6` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x74e72da890962721cf45cda3089e1fdcea78362c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x74f2199aeb743f68f05943e5715a33eaf2b61f53` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x75dcebb18f35bb9132d5801c9a8fcc24dedeadcb` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x778aa8c98ff7a208bf6eb2808a69a3fe42ba4015` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x7878ee729bc7cbbea18eaebc3d6a71183f9fab0c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x78b44a841bd15cd528274fcd2bf5b3016463a162` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x7a74b5eae27a67348b54a9f8ae7e644f3f780447` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x7ba3b4473d314c17398969864ca13c4d0c3336b4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x7de7c7c50cfa3993e6b7d57aee7e0ba2860ccffb` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x806e66ac257f46a4df5901959c384d4beda65b6b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x813a433c2103c970954f7fd03a612abea3764280` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x817154e2c718efdc0a83b5e5fcf492a1972372be` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x845869240c6b8c1f2ac0070e2302886f3c3dd076` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x877dfc58d9dedeaf61cf1160049b7486db20d5b1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x87f16fa707d61f1a9205cdcffa040553e08007f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8851e64417b98e8be4103d5855bde87a37d47d63` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x88e6998cec706e80ca3f38d635e9ee503f50d83d` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8c7782241a9fed2417b149568ffc98d0010c2f08` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8c874963e95128c48151a53d1a39826ccc9835cc` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8cc36923153c9b19b9e65bc4632ea26b97e59e0d` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8d0fa28f221eb5735bc71d3a0da67ee5bc821311` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8dbbde7f64f25e6dee105b116f0ecdc8d7605e54` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8fbac13b8ff40300637a6152b6cd949c2dde5d6c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x902d906b8d988092213be799b18bd2cbd64f808c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x92a4af515101b9788512d2977622823e720bafcc` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x93a9f386226ca86f15084f0149f4fc5d7edd0230` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x93cc687407acfc75d8994d20a4ff70563bcc4b42` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x97d829c13a3cf9fd0615ce687ce9a2939234d218` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x983e92833bc53573a6c5c5536e38179d5f42ab7e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x9a45d263944a40b4fecd84ba947ea486352ec758` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x9c187397fa23eb6092028cd43fcbbad28e2961be` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x9c6f13b11895df29ad02297c8b987c1c4e5fb586` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x9cadd64555e5eb74437bb54ec652b7cd85739e12` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x9e5cc019efb7845271a9c6087d1e57a0681cbae5` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x9e749e3de5a45fe65f9629eb5850db0f1f7c08c2` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x9fde717a21c5b272b8956d3aa0c3551e1ffd23d7` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xa038ebc62f8a2f1a02b248b2e173192ed29fff5a` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xa0cb751446a18c90dc8bde395e503614fae7dc9b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xa59f30d8c0d0771836b04227f5359e27a2f357d2` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xa642b3a40278e835cf89a23554e7810f31ca5522` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xa8f0e085f51b4d7680a3a419cb4ac69646035591` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xaa9d177fcbaa64332e95648a42969d5bec4b9530` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xaaf405c48e8c73aeceda3e40fe34e5c0ff8f5de5` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xac78ebe8b1770f1a5a0d9eaad88a33150b05846b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xaf4b4c3ea99e31cb9745f25cbc52d55bc018b157` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb019ee4000354e1429075d06f41377c0720ba705` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb03ccdb52e0b57b4bc45056359c9c075ef11a5b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb148c1e537a488e89ed7bfe68e8687e73ebfb19e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb28483e6086971d317dbccb06a7c0bc05740c580` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb2b996a2dd354674a656bcfe2580719f15ec607a` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb3f5ddf667d76259afe16c03f6277c9aa8bda8bc` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb59b15683710822c40df789a8e67ecfe30460c76` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb62fcf2381293aa3c995bb0483f2b749421c7fb6` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xb94750c748d427fa31df7fcb3270b0621a620b65` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xba66bf45ae8df864647d15c28c57b900dedc03fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbad11967371814054d505642a733ab6a83b7c2db` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbb30724d3eaaf10f6c5b0c683952598db3d3e61d` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbc2ac01439f8719a4845006ddba888ef94606784` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbc446fa602ece8a4fd163cd356b598ef1c8aae4e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbc7dfa8d0a320090a2f26775a9bf9988bab39535` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbebead08b7dd79bbbfedc8943eaf57536a8f29f1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbf0f2f3aad6b99893d80c550fbacec915545eb92` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xc04ec9649f9ad55e74d376ac2634982dc66310cf` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xc0778b47bd62b9edd2d1632c268a035c6ed79c65` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xc606bc5866e1d19a56a7dc379c1548230ff7bf45` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xc61745a871b86def8ff87d1a59663769a0388fe8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xc6dce1e90ebd7fc59a2c2802db7178249b035392` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xcccca6751ad6285b4cd006552a9ec21baeda35d0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xccfbfb13ff711c74da2ab1b2c83b690a013a08a3` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xcdfbef61fa8263abe2ab8d72c23c9ba0c100b19f` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xce1f4470571af4dfe54742824d26d19f806980ea` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xceafa0b4daeaf2b3cb8eeb133fa071421fbbaa39` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xcf8d2afad84917847753f15292a583ca89c28a4e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xcfc60d34949a7dbdf91ba6d5613b26d6ff0ad504` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xd0b94cbb0493a12d243d6df4cae6d0430cb23088` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xd196f04822642f9ae8a6a2a862eff2372da3b4c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xd2d30d0b4d63fc62b40948aba98ae43b30e290f3` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xd382e6e6a48d0731d0f677b637c4be9ffa012f4f` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xd3e8561522f08c9995577f92fa0f2f8987b4f736` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xd5240771f6a6f61c4ade7d7c63f3906164f0378b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xd6088940dd85f34631d5800fb131f10406ba422c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xda0f14773d613f2ed50576febf549ee3ccb1c86d` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xdb149630e83f0b751e8a77b315c171f76be6add7` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xde2c9398abd4af00bffe7fc6f51e2af6edbf4a87` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xde7b4e91695000a67f80d733b89e14c98bb47631` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xde9a2c96a85aea36cfb34d146b72630c9c99e1da` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xdf889e7f43e9296b1a3883fcfc3ae17c253b2868` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe05877f29ea674cdd9612c835cf4d63090f9229c` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe05c45635ec5610440c77e215ef122cdd7f2d314` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe1411adcff539efde126db8866e6306f50516a50` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe2c1e05dcef0256c6b962e97cb89c1f5629eb0e1` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe2d10c1d9715a04e6ffd78cf4704af91aaea6482` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe3db03a6a579b259061830746a6f2ac16f37f9c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe4d530fe06bb9c30a19b52b9c7611ae87a1cfc3f` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe51655854c7b071c1c813db3be236d02c6781290` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe6b0c4f8766abf8f77ad00c27fb00cef81ccc9af` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe6ca5e409a68e81eacf62789198dfc2c4ef999f9` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe7587e41e356648a25e11d61e1b1c42853dab663` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xe7ce7ace6d8c6a19e0db955b04f0a38ee9513aac` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xeb7759febb6d2ebf89ee4c0984b1694961a22701` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xeb98d3611583e3778fd35d374686cefee87c065f` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xedd435b7e3b3a1ea7d603ec77660377990b07b02` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xee80a7b790ac9a4bfea7234cebaac17649445d97` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xeee7af832440884d2b693b4193fa2ec26a48c7d3` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xeff65967227f0b84ea115bdb8be1d166c3f371d0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf09a567de6d38f436c2b38fd1055c93aab1fad8a` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf0cf259386c739bda665d7c07f32c9c5c9e29ef8` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf1a035a18b6f04564223ae5c9c4e282a2b60a1fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf27d387ac3885cd27db409ec274cd5fff2b685c9` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf32e50394a6503b157d2e639463f3c337e1a7137` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf3be14bd78c18fde0fdf2de9d8b2fbc3e6e981dd` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf4ae35984626907e212482d1331b4d5f0c66a125` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf8724d6b9e6ff55bc4496fddb3437dc691cd26eb` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf90fcad82fa83e72b9d4fb5036ab2aec98e41164` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf9539c6e9cdd31d2c5ef02052da2ddf9c1bee757` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf9a6936c6aaee7558ee40190ca5613e2e432f464` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf9e3430735de4b68ee41f652cc1394394ee6501b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfaf2628144e8852c1fcfa582e329a0963324c363` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfb72418333871a8f44196c1bccc86f3b7fd27a8b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfc5a155a8497981c579561bfc3cd9be6bdb8c2b0` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfd756bab9f73376b9b46511ada5c7113a5dfc948` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfda2bc1236f190345bd0481bf51e8ed089686966` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfe83bd709a0f2c945997f8234e510edfafcc594d` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfe845ee093186c1ce2d246d2642ccaa233557499` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xfef318f662b73b913291e6a5cda697383b1e9525` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xff529948898be307ab7ca083592f89399a3efedb` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xff9681e29b585abb82d6db0d99c80ae3accbc67e` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x06b573c2bcd4dbd0c692727910f10d3912af330c` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| unverified unclassified | UnnamedContract<br>`0x70429f78c2d7d1de6f89be421bce64ba876c325b` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| unverified unclassified | UnnamedContract<br>`0xbd17deee53a58b48548117a11a2e7bbf2d0d6fa7` | non_address_book | unknown | unknown | unverified | n/a | `0x9bccd51ee5cf97791e39544827ef675cd81171b8` |
| unverified unclassified | UnnamedContract<br>`0x5af3aed6dc54535a0a299a4c00cbf24bec30a69b` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x6b7d54003f73be979cf92bf369432ac534853692` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8cadc832040bc66a0aeef9bf6b6d1bd7bcc5acdb` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0x8d0fa28f221eb5735bc71d3a0da67ee5bc821311` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xeee7af832440884d2b693b4193fa2ec26a48c7d3` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xf38979e05650be7926ea07bb59c48fb9b1db3d08` | non_address_book | unknown | unknown | unverified | n/a | `0xb2b98e8672d4aad438f6ffec581cfe6f745496ff` |
| unverified unclassified | UnnamedContract<br>`0xbe959c573dc03a18a57e31c9ace210ccf66f0f6e` | non_address_book | unknown | unknown | unverified | n/a | `0xd1de07e817f22104339711056911502d444f8424` |
| unverified unclassified | UnnamedContract<br>`0xd000dfe68362b9a9395af0df9788b1de05bb25d0` | non_address_book | unknown | unknown | unverified | n/a | `0xd1de07e817f22104339711056911502d444f8424` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Circle_CCTP_V2_audit (1).pdf](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/PDFs/ChainSecurity_Circle_CCTP_V2_audit%20(1).pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [public_evm_cctp_audit_final (2).pdf](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/PDFs/public_evm_cctp_audit_final%20(2).pdf) | OtterSec | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [[ChainSecurity (PDF)]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/CCTP/ChainSecurity_Circle_CCTP_audit_2025-07.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [* [ChainSecurity audit report]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/CCTP/%5BPublic%5D%20%5BChainSecurity%5D%20Circle_Gateway_audit.pdf) | ChainSecurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 25 | high |
| [* [OtterSec audit report]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/Circle%20Gateway%20Audit%20-%20OtterSec%20-%207-21-2025.pdf) | yAudit | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [* [OtterSec (PDF)]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/Public%20Security%20Audit%20Reports/%5BPUBLIC%5D%20%5BOTTERSEC%5D%20circle_xreserve_audit_final.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [* [ChainSecurity (PDF)]()](https://6778953.fs1.hubspotusercontent-na1.net/hubfs/6778953/Public%20Security%20Audit%20Reports/%5BPUBLIC%5D%20%5BCHAINSECURITY%5D%20ChainSecurity_Circle_CircleXReserve_Audit.pdf) | ChainSecurity | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29753] ChainSecurity_Circle_CCTP_V2_audit (1).pdf — no match: Extracted contract names from the scope table in section 2.1. Also included TypedMemView as it was explicitly mentioned as in scope for relevant functions. Audit date from cover page: March 24, 2025.
- [29754] public_evm_cctp_audit_final (2).pdf — no match: The report scope mentions 'cctp-v2' program but does not list individual contracts. However, the findings reference two specific contracts: MessageTransmitterV2 and TokenMessengerV2, which are clearly in scope.
- [29755] [ChainSecurity (PDF)]() — no match: Extracted 19 contract names from the scope section (page 5) and file paths. Audit date found on cover page: April 08, 2025.
- [29756] * [ChainSecurity audit report]() — no match: All contracts listed in the scope section of the audit report.
- [29757] * [OtterSec audit report]() — no match: Scope section describes the program but does not list individual contract files. Contract names extracted from findings: Denylist (with file path) and GatewayWallet (mentioned in context). No other contract names explicitly in scope.
- [29758] * [OtterSec (PDF)]() — no match: The scope section describes the program 'evm-xreserve' but does not list specific contract names or file paths. No individual contracts are named.
- [29759] * [ChainSecurity (PDF)]() — no match: Extracted all contracts from the scope section (page 5) and file paths. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Denylistable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | AttestableV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Attestable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Ownable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Ownable2Step | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Pausable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Rescuable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenController | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | AdminUpgradableProxy | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Initializable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | Create2Factory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | BaseTokenMessenger | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | BaseMessageTransmitter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | MessageTransmitterV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenMessengerV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenMinterV2 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | FinalityThresholds | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TokenMinter | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | CCTPHookWrapper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_Circle_CCTP_V2_audit (1).pdf | TypedMemView | unmatched — not counted | — | mentioned as in scope for relevant functions | no |
| public_evm_cctp_audit_final (2).pdf | MessageTransmitterV2 | unmatched — not counted | — | Mentioned in finding OS-ECP-SUG-00 with code snippet from src/v2/MessageTransmitterV2.sol | no |
| public_evm_cctp_audit_final (2).pdf | TokenMessengerV2 | unmatched — not counted | — | Mentioned in finding OS-ECP-SUG-00 with code snippet from src/v2/TokenMessengerV2.sol | no |
| [ChainSecurity (PDF)]() | Denylistable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | AttestableV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Attestable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Ownable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Ownable2Step | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Pausable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Rescuable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenController | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | AdminUpgradableProxy | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Initializable | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | Create2Factory | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | BaseTokenMessenger | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | BaseMessageTransmitter | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | MessageTransmitterV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenMessengerV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenMinterV2 | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | FinalityThresholds | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | TokenMinter | unmatched — not counted | — | listed in scope | no |
| [ChainSecurity (PDF)]() | CCTPHookWrapper | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | AddressLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | AttestationLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Attestations | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | BurnIntentLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | BurnIntents | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Cursor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | EIP712Domain | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TransferSpec | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TransferSpecLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Denylist | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Domain | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Pausing | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TokenSupport | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | TransferSpecHashes | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Mints | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Balances | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Burns | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Delegation | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Deposits | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | WithdrawalDelay | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | Withdrawals | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | GatewayCommon | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | GatewayMinter | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | GatewayWallet | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity audit report]() | UpgradeablePlaceholder | unmatched — not counted | — | listed in scope | no |
| * [OtterSec audit report]() | Denylist | unmatched — not counted | — | mentioned in finding OS-CGT-SUG-01 with code snippet showing file path | no |
| * [OtterSec audit report]() | GatewayWallet | unmatched — not counted | — | mentioned in finding OS-CGT-SUG-00 as a contract that users approve USDC for | no |
| * [ChainSecurity (PDF)]() | Constants | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Errors | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IERC7597 | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IERC7598 | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IGatewayMinter | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IGatewayWallet | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IRemoteDomainDepositor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | IRemoteDomainHookExecutor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | AddressLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositIntent | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositIntentLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositParams | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | NoValidationAttestationLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | WithdrawHookData | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | WithdrawHookDataLib | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Attestable | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DomainManageable | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Blocklistable | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | DepositToRemote | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Domain | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Immutables | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Pausing | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | RemoteDomainRegistration | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | TokenSupport | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | Withdrawal | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | RemoteDomainDepositor | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | xReserve | unmatched — not counted | — | listed in scope | no |
| * [ChainSecurity (PDF)]() | UpgradeablePlaceholder | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 423 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 96 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [29753] ChainSecurity_Circle_CCTP_V2_audit (1).pdf
- [29754] public_evm_cctp_audit_final (2).pdf
- [29755] [ChainSecurity (PDF)]()
- [29756] * [ChainSecurity audit report]()
- [29757] * [OtterSec audit report]()
- [29758] * [OtterSec (PDF)]()
- [29759] * [ChainSecurity (PDF)]()

Fork inheritance lineage and inherited audits are included when available.
