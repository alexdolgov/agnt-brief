# Agentic Audit Brief: Kinza Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Kinza Finance (`kinza-finance`)
- Website: [https://app.kinza.finance](https://app.kinza.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, mantle, opbnb
- Contract surface: 156 unique implementations (246 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,547,336.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kinza Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, mantle, opbnb. Structural roles: 2 supporting, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), unclassified (1)
- Contract kinds: contract (3)
- Detected standards: none
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d4af5fa2e6351b94c837ef462884b3b678381b8`, chain 5000)
- UnnamedContract (`0x18cc2c55b429ee08748951bbd33ff2e68c95ec38`, chain 5000)
- UnnamedContract (`0x22e585f1f336a80a7b627d674dc7dee0ac9589c9`, chain 5000)
- UnnamedContract (`0x28a3f4e09bea824ece94633062c11aac2f3f873c`, chain 5000)
- UnnamedContract (`0x5757b15f60331ef3edb11b16ab0ae72ae678ed51`, chain 5000)
- UnnamedContract (`0xd624345620293a0dbe12812fb3db93e6907a9438`, chain 5000)
- GnosisSafeProxy (`0xb00083e6c3c57c2443ad5d7b98314d98ea12ee28`, chain 5000)
- UUPSProxy (`0x9356f6d95b8e109f4b7ce3e49d672967d3b48383`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 144 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 8 of 156 unique; 148 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 104
- Unique implementations: 156
- Raw deployments: 246
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39abeda13579fbb4effb31b5f38bdc91ae754a39` | ⚠️ Unaudited |
| ACLManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x9074fca9c7a77c7078b5bbfec33f74191d095fdb`; bsc `0x625edab184b3b517654097875f1d8c9820163e31` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x26c8c9d74eae6182316b30de9ac60e2adc9f4a04`; bsc `0xe48967b3ea41484cf70f171627948084cb796f5c`; bsc `0xf5e0adda6fb191a332a787deedfd2cffc72dba0c` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xcdeaad1bc5ba9000059fd2e76b28101fea2f2ce0`; bsc `0xc7da75e3c5d15eb2002af72ce958cddc49a67e8a` | ⚠️ Unaudited |
| BorrowableDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2864aa9e7cbe4b114306be82aa23ffe2036d33ee`; ethereum `0x85c81344af6a564e276a9e224e40e7613a619b4a`; bsc `0xcf46f77cd75a17900d59676fbe4b88aadcba9533`; bsc `0xd6a287daf9b35ed8e59742c0e8b00aebb065c5f2` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xb2a2c005b57ba13d2f6730abc05fb1086de75c94`; bsc `0x6376602e080c2bbb02d26aff6d209a4fdb12a528`; bsc `0x70d7900591c768e94d310e6a7da7b491822fbea1`; bsc `0xa6265a8ce6f89610d3f97851abcf7f8203b006fb`; bsc `0xee2585c8f2a1debad9f43ee764e3d0766e2a4273` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0xd0209f725637631153f1fcb3a2d869aca9afdf88`; bsc `0x2994413c2b20555f7eeed0b7a9455cecbb8dd02b`; bsc `0x342019c99ea2869e1233bb461420078c149a00f1`; bsc `0xe3aad8bd71e9be91a60770159242325e06af86b4` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xd74d4495936b066218eb9bf20995bff93574bc8d`; bsc `0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x0c2d7e456b0d0ab80dca148e60d23cf6304fe543`; bsc `0x165e61d807378a3832f463af3a79824d5674b170`; bsc `0x1f84bf932e1c60ee94bf04d1ab1c08dff9f0db11`; bsc `0x2c1c96ec1a855d98cafdd07d857581352d25d4f7`; bsc `0x3402cebf0a798ef53d838231439406e23e9d2add`; bsc `0x41822c45348358d612f8d4e3e1bc1aa2be92a85e`; bsc `0x5466e3cdeae05f4baca5212c1d7633b1ed47d9c0`; bsc `0x5ceb0eb4233e0949460ae03577d6433b0a546673`; bsc `0x71e9537844a63452f397ef43ddce472ced635ba1`; bsc `0x72958b63c81883383662d1cd9493b5649b1a932a`; bsc `0x8c48616825387a284c93298438ac2a3200952ed8`; bsc `0x920d4b81a978d14eab9cb96b3c754f3df8bb190f`; bsc `0x98c5fb82719419ee6b9d55945993bae70f2ddd1e`; bsc `0xc62cd18829b049b1dc5b98adb95c690225ad0aa1`; bsc `0xcc7e5528b4a30d6156985a4b3393901be6036b7d`; bsc `0xd67ff7722f29c83bf828c35b0b2e807dbeeff410`; bsc `0xe3e610d05ea18c09278c42f208402c2b366e35cb` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xfcc7501a4001eb8ebec44ebda16367bd7d130195`; bsc `0xe85d5d7f0b627a545e29248cb1a6807b28ca2d51` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e68bcd17c6e47cd7c80d66770f80161296c4273`; bsc `0xc8cb15bc73b7f5f95af33aece738bc9b62cb28d9` | ⚠️ Unaudited |
| EthAtomicReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f2845e6ce191237d1727b7b889d16f426a5e6c6` | ⚠️ Unaudited |
| ezETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb30a57f7e04e0e3adf99effdc6860e2450d201db` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x9f3de000b98a7227348869d40e6cf739989b8b4d`; bsc `0x486d682781a960ffb2a1feedbd3455c6fae608ea`; bsc `0x48a8afe6db28278236f6ae08b0b57a3dd5922f4d`; bsc `0x5e086a7eeecbdab2b3f6fe6c7b1dfb71eb89d329`; bsc `0x7954f3efe905d4f2690a05a594886706f424327f` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x8c99b0141849d8097309c8ea78f86b7bb65baa58`; ethereum `0xa3ec77d52696d249440c2d2466b917c5e3edfd16` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x55033063c7801eacfda99e97429f92523e9b1ed3` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244220 | `0x3cc8dc73aee77f787f3322e3ce61e14e58561d68` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-244223 | `0xb00083e6c3c57c2443ad5d7b98314d98ea12ee28` | ⚠️ Unaudited |
| HAYBinanceOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d29c3b0b0267ec6fb3e417c64a7835b748d4c38` | ⚠️ Unaudited |
| HAYTWAPAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8e9cb8e17d7801fa2145be6f2aa973cb20cc7d8` | ⚠️ Unaudited |
| kBTC | unknown | project_anchor | own_supporting | 1 | bsc | unit-244226 | `0x9356f6d95b8e109f4b7ce3e49d672967d3b48383` | ⚠️ Unaudited |
| LiquidationAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 17 deployments: bsc `0x0df5a3c7f28514873ab3b2c11a76d30073d95eb5`; bsc `0x1561f7f8bd911f60b798f9fa7582ba34841f5f9e`; bsc `0x1c40cea7870e2a561455d4aa8f30995ed7806836`; bsc `0x2baa974739a2f311f74d2e383e997238d7672b25`; bsc `0x32264d29e4b00377da13d2d12690e56e84e767fd`; bsc `0x3b029a06bd83512347cc69978fc6ef1b663eadd5`; bsc `0x3c6fa8e7bb152970958b6d4ce8b0476605fb7d5c`; bsc `0x534a55ade31e7387b15b0a92b44b19806440b49e`; bsc `0x6820922ae154a3dfed1af1e341c000bd1b9a89cf`; bsc `0x79b80f4c55213457f4389a956fb6bfdeda08501c`; bsc `0x993e9a7e2dec99b86f982deb0f37ade278949fa4`; bsc `0x9c580ccf9cf07f66f5c51c1535f62e2b5d781585`; bsc `0xaf8665ac61a54bc7d4af9c4f8862030c16c0404a`; bsc `0xbb5f2d30c0fc9b0f71f7b19daf19e7cf3d23eb5e`; bsc `0xde47360530a8b251a5265f98aedac6c32d113e7e`; bsc `0xe8fcad9bc9b0d2740e027ebc79ecbd79355ceb4d`; bsc `0xec95829b445112b07d7cb37bd4bf77480f9b9851` | ⚠️ Unaudited |
| LiquidationAdaptorAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b8479dcf0c6cad7f6d8fa2e782d15f3a9203c71` | ⚠️ Unaudited |
| LiquidationAdaptorPancakeV3FallBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fa0108775dd5af2d8c53c51279e4111d9b751cd` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0xe6f87565576785693ab8ed298dfabb99efbca163`; bsc `0x107a0d2b34fc76f19ad64e9a9d27340a049b4ac2`; bsc `0x54c33c8669d52bb0cd6682db419483a1e86d8e67`; bsc `0xc01ef1ca67153c0b6fdf3e9ee0ed7c1e3e6bc041` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x7b9ef905da91f6aecaf1f36ffaf1c9ddfc78e95c`; bsc `0x0b4115d1fa43e4bc57513899c1cfb2acfd614e4c` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xcb0620b181140e57d1c0d8b724cde623ca963c8c` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0218890dd636c3a1cf0f98557ee2d3612c6bd953`; bsc `0xca20a50ea454bd9f37a895182ff3309f251fd7ce` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x37c9e6eeabe799878ff9d32984a3a0b91243cbc6`; bsc `0x37d7eb561e189895e5c8601cd03eeab67c269189`; bsc `0xb62afd0f911af3ae28fb69a3eee3292b67fa8345` | ⚠️ Unaudited |
| PoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x824a5b69e35ccee5d399461bf922fab5b11eabbd`; bsc `0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x5d9991711ebc3e8f69b1e2cf99b8cade98792c2b`; bsc `0x30777a478886ecfca0dc8b023e4fd19b133d616f` | ⚠️ Unaudited |
| ProtectedNativeTokenGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88e6ee8bae18ebbc9a49f9627a0ea4ff94239337` | ⚠️ Unaudited |
| pufETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0339e70aadaacda0102a471c4c07cc6383a557c8` | ⚠️ Unaudited |
| pumpBTCPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b32790c5cd5fc7b916ed9fcdbe9c31ed2530ea` | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794`; bsc `0x2a81080e4fdba4e8cb28688a3162f3bc9e3b22b8`; bsc `0xd9c5bdf9c17934d480dfa47c3c1276458f788f57` | ⚠️ Unaudited |
| rETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2e2b783b7e8c1e72d114af009ef5de6260d2db57`; ethereum `0x55c31b8ba65a00ce225711d59cc5a2cdb9e52066`; ethereum `0x818a8dc7b1ac212aa0649b2c1dfa2c924ad92f85` | ⚠️ Unaudited |
| RewardsController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7f60edd6aabd5c7e9c2870284262ac36bdbacf35`; bsc `0xfe2506302c4863a7ad56fc3ece502acede6f8099` | ⚠️ Unaudited |
| rsETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8db6395d0499e9b469d1c4ae4842cb53f8e92e` | ⚠️ Unaudited |
| SNBNBBinanceOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd73d7f28ef7ba655f3095bf6b0e2029efc203e7f` | ⚠️ Unaudited |
| SNBNBBinanceOracleCustomAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x85621eab77dd243822d5ba9bbe6c67d3df0eecfc`; bsc `0xd41a4094e2665ceff58709967e335396abcac2cf` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xf8a60ad22873c6019b9f964505778bcf32db53fd`; bsc `0xc3752d2ce05cd638523cccaa090ef5e25a2b87b4` | ⚠️ Unaudited |
| StargateBorrowV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4579eff1b5b7b6245c6c7ff86530338b194f4289` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0xc981354bdca1829ac6d40ade968898703b2e0cb1`; bsc `0x15e0e9810d2eda58f63336c397acdf745d775091`; bsc `0x1ab9b6edec490a7f3545284fd383b8ed98c21176`; bsc `0x3e2e10a463900a0f282fa901bf473248712bdd9c`; bsc `0x6253996626073f9e25d5b49feae792a45a9b9451`; bsc `0x6a68770921d2928f42a511f872703ad60c87a17b`; bsc `0x763b2a4eba91c3667a74ba87a7142be3282fc1c2` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x92139dd5d45eed7e16af48ccc0cf57b00a2a8276`; bsc `0x004a9eac7ceaf27b4a1a7746d677bfa704d9cba6`; bsc `0x7a085a60ce5ed569c1dad219a41e375c40283d6a`; bsc `0xdf2bafa0372eaf3629ae00b9c947650c8a2977aa` | ⚠️ Unaudited |
| TVLReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dfaf0e89a51d4713f8aedde4a62190987f804e5` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0xd320771c447855bb9b3ef0a4793c9264f893c36f`; bsc `0x00170fbbc27793837f1b7fb073f91f5ed8dbaee8` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0x5c7afebba742a0d4ee204bd3a079bea31918efb8`; bsc `0x11dc2a7d1d7405010cd1e863de2b6b7c3e13db62`; bsc `0x1ec9f9a460214eea7d11d2fbee17626763b902e8`; bsc `0x3828f7a1e42d1507136cc5121db1bed3470d4cae`; bsc `0xa8fe77c5a6f67278b3288011be155723ae160c1a`; bsc `0xc53d4728a1d03f7e25e3b2224bf21fa69839d7df`; bsc `0xf711ae1761b6512a25d6ce241b341f4d7f12d805` | ⚠️ Unaudited |
| WBETHBinanceOracleAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41f19b0edc78d32a65dc3eef3864b26f5a9693f4` | ⚠️ Unaudited |
| WbETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x6ea1e03cacb8e0a7e8aca311ee37a474cb2f06a2`; bsc `0x8c6dcfdca3de0ca017e2f1e35eefa08ec1a11862` | ⚠️ Unaudited |
| weETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x036780ca4a3ec315e15371f5cccfa160d0e5f832`; ethereum `0x51221550f9ce9435ef252f7f863403600804ae9c` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa4cd4b5004ab42758bcb8893a10c5b3532781087`; bsc `0xcc650b486f723c924370656b509a82bd69526739` | ⚠️ Unaudited |
| wstETHPriceAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1031a3093cb7d58015e78ea2bfcaf9ab37537a0a`; ethereum `0xe7fd996de92746a22a18ba59b0730156c4634437` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (104)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd27b00d278c9c03b45c379ae9ac50364db3f83f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x209f07ce8e62c2709d2a63a6a39f315763d4d475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x433958a0dd8b9040a10fc0f8a0e2d9cbcaa26027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x439e1327c014fbd3b57b446ff9f2640883adfcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe26b3e738740cc099077fb183c0fdc0dce9cbb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf01f3240145485edf267713df6dcc08ad36b98cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x004a9eac7ceaf27b4a1a7746d677bfa704d9cba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x077893c85114aee560155af4eed61f717e8abc6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x0c2d7e456b0d0ab80dca148e60d23cf6304fe543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x0df5a3c7f28514873ab3b2c11a76d30073d95eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1c40cea7870e2a561455d4aa8f30995ed7806836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1e1a67d035113376cebcb11477bcf36aa229dffe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1f84bf932e1c60ee94bf04d1ab1c08dff9f0db11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x209f07ce8e62c2709d2a63a6a39f315763d4d475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x260a7f2ba4c52e341852cdb43b20c9bf0eeb0068` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x2a81080e4fdba4e8cb28688a3162f3bc9e3b22b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x30777a478886ecfca0dc8b023e4fd19b133d616f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x342019c99ea2869e1233bb461420078c149a00f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x35d8d765fb0a15d8f7e75df0830d91e34df97c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x36be6c1ba1981238e4d2ebc281feb6370b15b9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x37d7eb561e189895e5c8601cd03eeab67c269189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3f8860ee386c04406dc958e91c8ed3d380cab067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3fb65bc0cfcf1a72627788b5eda4a7c0b0031710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x41822c45348358d612f8d4e3e1bc1aa2be92a85e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x4bacc3809c8a61420e89230cb8b6a34c5171c9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x52cf67173ada7d78be97a319f61fd3e39d7bc7ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x54c33c8669d52bb0cd6682db419483a1e86d8e67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x54c547d42b16eb2b6ab84be94c2dec2bd810df4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x565ef2e769a63e9a61a19e9d4fec53885fc1a7bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x5ceb0eb4233e0949460ae03577d6433b0a546673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x6e5b5c70e768f3b0c7df0338fe00b6e8d3f59046` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x722f6ef467f192d4c9006cc1ef02b114de59e1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x75257e84a4fbc8c6b78a407db9b0314ea9f04bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x763b2a4eba91c3667a74ba87a7142be3282fc1c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7954f3efe905d4f2690a05a594886706f424327f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x7ad8c5ac471b1cbb6b370904aa40aba90e1006b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x88e984b6b107691f1edfaf6eb360447b685fe4de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x8a845179d4b670f514b35368fc31e70ff58a1278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x8c9c9544ff70dbf8a7303f4c6396b80935779013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x947ad31106fcca664650dc5a69596964751f3669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x993e9a7e2dec99b86f982deb0f37ade278949fa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x9c580ccf9cf07f66f5c51c1535f62e2b5d781585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xa6265a8ce6f89610d3f97851abcf7f8203b006fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xab98aea0af87c733259deb7a771a819f496f18c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xb62afd0f911af3ae28fb69a3eee3292b67fa8345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xbb5f2d30c0fc9b0f71f7b19daf19e7cf3d23eb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xbc4318a1b2af6970dd1c0ff20f78c3ec13357a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc086e15c3c2557aaac1f7301e99b9386d090241a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc62cd18829b049b1dc5b98adb95c690225ad0aa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc7da75e3c5d15eb2002af72ce958cddc49a67e8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xc8cb15bc73b7f5f95af33aece738bc9b62cb28d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xca0edab0a260fae8b636d0125f0cc148081dd0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xca20a50ea454bd9f37a895182ff3309f251fd7ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xcf46f77cd75a17900d59676fbe4b88aadcba9533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xd67ff7722f29c83bf828c35b0b2e807dbeeff410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xd9c5bdf9c17934d480dfa47c3c1276458f788f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xdc68acff77e56194ae9ca90e907ed3af81065d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xde451b696c99b7ce77b944e12abdcb34e3b69802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xe8fcad9bc9b0d2740e027ebc79ecbd79355ceb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xec95829b445112b07d7cb37bd4bf77480f9b9851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xef31e788d4b2c3eae1c11e3b14886dadae24905d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x002618abf58a823369bf28733917c41dd22315b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0536e70b23dae92e7cc258c69d03f341fd0051ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244215 | `0x0d4af5fa2e6351b94c837ef462884b3b678381b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244216 | `0x18cc2c55b429ee08748951bbd33ff2e68c95ec38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1c3a496aabcf25f4503c4f5b1e375020eb6b001a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244217 | `0x22e585f1f336a80a7b627d674dc7dee0ac9589c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x26b1646b78ec77a8694ada40cb61822ef97e87dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244218 | `0x28a3f4e09bea824ece94633062c11aac2f3f873c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2f31ac4e888ee9b23e1492be712e1cad80c2e608` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244219 | `0x34edc3ee8eab1233a6172c60a495a6480b972891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3ab164b1f68c3717467002ec47e31246c76596dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244221 | `0x51ff3652ae7a9bff32b368cf442c897bc9373d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x532ece6556c68685fd7f309c25b62efdb1757d72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244222 | `0x5757b15f60331ef3edb11b16ab0ae72ae678ed51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x58067dfe11546ed2b7962e2d7889e8bed9bc6d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x69424f1bd33571b91546e22360e2398a50f1ced7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6cf78ea908de00f29320166099f43334db9d5fc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6f230ed5c4c5ab5b177dd7c41233718a732bf7e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x70fce74a7a0829a3fc48c8f4931936c8dd82e5ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7287d93f5a25968674445db354cfc24f54617f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x758fb1e27510c0ce0e88fafa23705081a6f61f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7ba63aac1f7f06687fc8614524ee496787aef8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d345829eda07f25e61feefbed7a29306cf3bf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9be413a744461323f3e62d90e59adb1d7a612eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9cd978871423c7032006d71c89e402d810b01f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa4f75b62a40aae8bec6e1605cfb60e36b133bd4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xad48812a9d81acf8de5bfc93c7d6d7165920abc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbb0a4949090c3a468fcd0b2034d240951ac40153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbdf463ce9156024a49edaab15e84b02aa20f4b09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-244224 | `0xbf26028aee28d026e7d5e8c37430a729a87e51b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc16ba9181ae4a88287b7aeab248df432280e6962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd5e6a1d0eaec7f6020b705a7e86043393bc0b303` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244225 | `0xd624345620293a0dbe12812fb3db93e6907a9438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd7933c586406d5dde9d76c8c7df1ea86a9920d7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe03379f5d19c055d5c2fe97e1490cdb172fd9bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe2fee99cc5274dd085859ccd66de285bf50583c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe5ca433307c8e32e1358030785d9349dad283ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe5f5462b544f09425b4cc37de3fbc068b6661095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xebf6871f682f7adf67d562bd7789afa3e7e05606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xec63c5b01a7953bffe40e356a49fc0827a5e2c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf29d81decbde520258ff68662e0cbd05aa7a11ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf4f615a4c7470de8797343463c369b655be7df96` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 225
- Live contracts: 4
- Unknown liveness contracts: 221
- Source-verified contracts: 128
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=10, contamination review=9, exact address book overlap=7, source verified unclassified=109, unverified unclassified=90

Showing first 200 of 225 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | candidate review | ConfiguratorLogic<br>`0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | candidate review | PoolAddressesProvider<br>`0xca20a50ea454bd9f37a895182ff3309f251fd7ce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | candidate review | PoolConfigurator<br>`0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | candidate review | ProtectedNativeTokenGateway<br>`0x88e6ee8bae18ebbc9a49f9627a0ea4ff94239337` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | candidate review | ReservesSetupHelper<br>`0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | candidate review | ReservesSetupHelper<br>`0x2a81080e4fdba4e8cb28688a3162f3bc9e3b22b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | candidate review | ReservesSetupHelper<br>`0xd9c5bdf9c17934d480dfa47c3c1276458f788f57` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | contamination review | DefaultReserveInterestRateStrategy<br>`0x0c2d7e456b0d0ab80dca148e60d23cf6304fe543` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | contamination review | HAYTWAPAggregator<br>`0xd8e9cb8e17d7801fa2145be6f2aa973cb20cc7d8` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | contamination review | LiquidationAdaptor<br>`0x0df5a3c7f28514873ab3b2c11a76d30073d95eb5` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | contamination review | Pool<br>`0x0b4115d1fa43e4bc57513899c1cfb2acfd614e4c` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | contamination review | TVLReader<br>`0x5dfaf0e89a51d4713f8aedde4a62190987f804e5` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | contamination review | WalletBalanceProvider<br>`0x11dc2a7d1d7405010cd1e863de2b6b7c3e13db62` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | contamination review | WbETHPriceAdaptor<br>`0x6ea1e03cacb8e0a7e8aca311ee37a474cb2f06a2` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | ACLManager<br>`0x625edab184b3b517654097875f1d8c9820163e31` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | AToken<br>`0xc7da75e3c5d15eb2002af72ce958cddc49a67e8a` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BorrowableDataProvider<br>`0xcf46f77cd75a17900d59676fbe4b88aadcba9533` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BorrowableDataProvider<br>`0xd6a287daf9b35ed8e59742c0e8b00aebb065c5f2` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BorrowLogic<br>`0x6376602e080c2bbb02d26aff6d209a4fdb12a528` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BorrowLogic<br>`0x70d7900591c768e94d310e6a7da7b491822fbea1` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BorrowLogic<br>`0xa6265a8ce6f89610d3f97851abcf7f8203b006fb` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BorrowLogic<br>`0xee2585c8f2a1debad9f43ee764e3d0766e2a4273` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BridgeLogic<br>`0x2994413c2b20555f7eeed0b7a9455cecbb8dd02b` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BridgeLogic<br>`0x342019c99ea2869e1233bb461420078c149a00f1` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | BridgeLogic<br>`0xe3aad8bd71e9be91a60770159242325e06af86b4` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x165e61d807378a3832f463af3a79824d5674b170` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x1f84bf932e1c60ee94bf04d1ab1c08dff9f0db11` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x2c1c96ec1a855d98cafdd07d857581352d25d4f7` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x3402cebf0a798ef53d838231439406e23e9d2add` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x41822c45348358d612f8d4e3e1bc1aa2be92a85e` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x5466e3cdeae05f4baca5212c1d7633b1ed47d9c0` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x5ceb0eb4233e0949460ae03577d6433b0a546673` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x71e9537844a63452f397ef43ddce472ced635ba1` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x72958b63c81883383662d1cd9493b5649b1a932a` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x8c48616825387a284c93298438ac2a3200952ed8` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x920d4b81a978d14eab9cb96b3c754f3df8bb190f` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0x98c5fb82719419ee6b9d55945993bae70f2ddd1e` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xc62cd18829b049b1dc5b98adb95c690225ad0aa1` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xcc7e5528b4a30d6156985a4b3393901be6036b7d` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xd67ff7722f29c83bf828c35b0b2e807dbeeff410` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | DefaultReserveInterestRateStrategy<br>`0xe3e610d05ea18c09278c42f208402c2b366e35cb` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | EmissionManager<br>`0xe85d5d7f0b627a545e29248cb1a6807b28ca2d51` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | EModeLogic<br>`0xc8cb15bc73b7f5f95af33aece738bc9b62cb28d9` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | FlashLoanLogic<br>`0x486d682781a960ffb2a1feedbd3455c6fae608ea` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | FlashLoanLogic<br>`0x48a8afe6db28278236f6ae08b0b57a3dd5922f4d` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | FlashLoanLogic<br>`0x5e086a7eeecbdab2b3f6fe6c7b1dfb71eb89d329` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | FlashLoanLogic<br>`0x7954f3efe905d4f2690a05a594886706f424327f` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | HAYBinanceOracleAggregator<br>`0x3d29c3b0b0267ec6fb3e417c64a7835b748d4c38` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x1561f7f8bd911f60b798f9fa7582ba34841f5f9e` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x1c40cea7870e2a561455d4aa8f30995ed7806836` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x2baa974739a2f311f74d2e383e997238d7672b25` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x32264d29e4b00377da13d2d12690e56e84e767fd` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x3b029a06bd83512347cc69978fc6ef1b663eadd5` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x3c6fa8e7bb152970958b6d4ce8b0476605fb7d5c` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x534a55ade31e7387b15b0a92b44b19806440b49e` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x6820922ae154a3dfed1af1e341c000bd1b9a89cf` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x79b80f4c55213457f4389a956fb6bfdeda08501c` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x993e9a7e2dec99b86f982deb0f37ade278949fa4` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0x9c580ccf9cf07f66f5c51c1535f62e2b5d781585` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0xaf8665ac61a54bc7d4af9c4f8862030c16c0404a` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0xbb5f2d30c0fc9b0f71f7b19daf19e7cf3d23eb5e` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0xde47360530a8b251a5265f98aedac6c32d113e7e` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0xe8fcad9bc9b0d2740e027ebc79ecbd79355ceb4d` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptor<br>`0xec95829b445112b07d7cb37bd4bf77480f9b9851` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptorAccessControl<br>`0x8b8479dcf0c6cad7f6d8fa2e782d15f3a9203c71` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationAdaptorPancakeV3FallBack<br>`0x5fa0108775dd5af2d8c53c51279e4111d9b751cd` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationLogic<br>`0x107a0d2b34fc76f19ad64e9a9d27340a049b4ac2` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationLogic<br>`0x54c33c8669d52bb0cd6682db419483a1e86d8e67` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | LiquidationLogic<br>`0xc01ef1ca67153c0b6fdf3e9ee0ed7c1e3e6bc041` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | PoolAddressesProviderRegistry<br>`0x37d7eb561e189895e5c8601cd03eeab67c269189` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | PoolAddressesProviderRegistry<br>`0xb62afd0f911af3ae28fb69a3eee3292b67fa8345` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | PoolLogic<br>`0x30777a478886ecfca0dc8b023e4fd19b133d616f` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | RewardsController<br>`0xfe2506302c4863a7ad56fc3ece502acede6f8099` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SNBNBBinanceOracleAggregator<br>`0xd73d7f28ef7ba655f3095bf6b0e2029efc203e7f` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SNBNBBinanceOracleCustomAggregator<br>`0x85621eab77dd243822d5ba9bbe6c67d3df0eecfc` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SNBNBBinanceOracleCustomAggregator<br>`0xd41a4094e2665ceff58709967e335396abcac2cf` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | StableDebtToken<br>`0xc3752d2ce05cd638523cccaa090ef5e25a2b87b4` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SupplyLogic<br>`0x15e0e9810d2eda58f63336c397acdf745d775091` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SupplyLogic<br>`0x1ab9b6edec490a7f3545284fd383b8ed98c21176` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SupplyLogic<br>`0x3e2e10a463900a0f282fa901bf473248712bdd9c` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SupplyLogic<br>`0x6253996626073f9e25d5b49feae792a45a9b9451` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SupplyLogic<br>`0x6a68770921d2928f42a511f872703ad60c87a17b` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | SupplyLogic<br>`0x763b2a4eba91c3667a74ba87a7142be3282fc1c2` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | TimelockController<br>`0x004a9eac7ceaf27b4a1a7746d677bfa704d9cba6` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | TimelockController<br>`0x7a085a60ce5ed569c1dad219a41e375c40283d6a` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | TimelockController<br>`0xdf2bafa0372eaf3629ae00b9c947650c8a2977aa` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | VariableDebtToken<br>`0x00170fbbc27793837f1b7fb073f91f5ed8dbaee8` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | WalletBalanceProvider<br>`0x1ec9f9a460214eea7d11d2fbee17626763b902e8` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | WalletBalanceProvider<br>`0x3828f7a1e42d1507136cc5121db1bed3470d4cae` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | WalletBalanceProvider<br>`0xa8fe77c5a6f67278b3288011be155723ae160c1a` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | WalletBalanceProvider<br>`0xc53d4728a1d03f7e25e3b2224bf21fa69839d7df` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | WalletBalanceProvider<br>`0xf711ae1761b6512a25d6ce241b341f4d7f12d805` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | WBETHBinanceOracleAggregator<br>`0x41f19b0edc78d32a65dc3eef3864b26f5a9693f4` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | source verified unclassified | WbETHPriceAdaptor<br>`0x8c6dcfdca3de0ca017e2f1e35eefa08ec1a11862` | non_address_book | unknown | unknown | verified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | unverified unclassified | UnnamedContract<br>`0x209f07ce8e62c2709d2a63a6a39f315763d4d475` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | unverified unclassified | UnnamedContract<br>`0x433958a0dd8b9040a10fc0f8a0e2d9cbcaa26027` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | unverified unclassified | UnnamedContract<br>`0x439e1327c014fbd3b57b446ff9f2640883adfcad` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf01f3240145485edf267713df6dcc08ad36b98cf` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| ethereum | candidate review | ConfiguratorLogic<br>`0xd74d4495936b066218eb9bf20995bff93574bc8d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | candidate review | PoolAddressesProvider<br>`0x0218890dd636c3a1cf0f98557ee2d3612c6bd953` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | candidate review | PoolConfigurator<br>`0x824a5b69e35ccee5d399461bf922fab5b11eabbd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | contamination review | BorrowableDataProvider<br>`0x2864aa9e7cbe4b114306be82aa23ffe2036d33ee` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | contamination review | RewardsController<br>`0x7f60edd6aabd5c7e9c2870284262ac36bdbacf35` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | AToken<br>`0xcdeaad1bc5ba9000059fd2e76b28101fea2f2ce0` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | BorrowableDataProvider<br>`0x85c81344af6a564e276a9e224e40e7613a619b4a` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | BorrowLogic<br>`0xb2a2c005b57ba13d2f6730abc05fb1086de75c94` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | BridgeLogic<br>`0xd0209f725637631153f1fcb3a2d869aca9afdf88` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | EmissionManager<br>`0xfcc7501a4001eb8ebec44ebda16367bd7d130195` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | EModeLogic<br>`0x4e68bcd17c6e47cd7c80d66770f80161296c4273` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | EthAtomicReservesSetupHelper<br>`0x3f2845e6ce191237d1727b7b889d16f426a5e6c6` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | ezETHPriceAdaptor<br>`0xb30a57f7e04e0e3adf99effdc6860e2450d201db` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | FlashLoanLogic<br>`0x9f3de000b98a7227348869d40e6cf739989b8b4d` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | LiquidationLogic<br>`0xe6f87565576785693ab8ed298dfabb99efbca163` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | Pool<br>`0x7b9ef905da91f6aecaf1f36ffaf1c9ddfc78e95c` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | PoolAddressesProviderRegistry<br>`0x37c9e6eeabe799878ff9d32984a3a0b91243cbc6` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | PoolLogic<br>`0x5d9991711ebc3e8f69b1e2cf99b8cade98792c2b` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | pufETHPriceAdaptor<br>`0x0339e70aadaacda0102a471c4c07cc6383a557c8` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | pumpBTCPriceAdaptor<br>`0x01b32790c5cd5fc7b916ed9fcdbe9c31ed2530ea` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | rETHPriceAdaptor<br>`0x2e2b783b7e8c1e72d114af009ef5de6260d2db57` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | rETHPriceAdaptor<br>`0x55c31b8ba65a00ce225711d59cc5a2cdb9e52066` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | rETHPriceAdaptor<br>`0x818a8dc7b1ac212aa0649b2c1dfa2c924ad92f85` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | rsETHPriceAdaptor<br>`0x0e8db6395d0499e9b469d1c4ae4842cb53f8e92e` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | StableDebtToken<br>`0xf8a60ad22873c6019b9f964505778bcf32db53fd` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | SupplyLogic<br>`0xc981354bdca1829ac6d40ade968898703b2e0cb1` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | TimelockController<br>`0x92139dd5d45eed7e16af48ccc0cf57b00a2a8276` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | TransparentUpgradeableProxy<br>`0x4579eff1b5b7b6245c6c7ff86530338b194f4289` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | VariableDebtToken<br>`0xd320771c447855bb9b3ef0a4793c9264f893c36f` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | WalletBalanceProvider<br>`0x5c7afebba742a0d4ee204bd3a079bea31918efb8` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | weETHPriceAdaptor<br>`0x036780ca4a3ec315e15371f5cccfa160d0e5f832` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | weETHPriceAdaptor<br>`0x51221550f9ce9435ef252f7f863403600804ae9c` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | wstETHPriceAdaptor<br>`0x1031a3093cb7d58015e78ea2bfcaf9ab37537a0a` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | source verified unclassified | wstETHPriceAdaptor<br>`0xe7fd996de92746a22a18ba59b0730156c4634437` | non_address_book | unknown | unknown | verified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd27b00d278c9c03b45c379ae9ac50364db3f83f1` | non_address_book | unknown | unknown | unverified | n/a | `0xde6a2451a4aceb6d540bd216578c84503639ebf1` |
| mantle | exact address book overlap | UnnamedContract<br>`0x0d4af5fa2e6351b94c837ef462884b3b678381b8` | project_anchor | unknown | live | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | exact address book overlap | UnnamedContract<br>`0x18cc2c55b429ee08748951bbd33ff2e68c95ec38` | project_anchor | unknown | live | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | exact address book overlap | UnnamedContract<br>`0x28a3f4e09bea824ece94633062c11aac2f3f873c` | project_anchor | unknown | live | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | exact address book overlap | UnnamedContract<br>`0x34edc3ee8eab1233a6172c60a495a6480b972891` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | exact address book overlap | UnnamedContract<br>`0x51ff3652ae7a9bff32b368cf442c897bc9373d64` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | exact address book overlap | UnnamedContract<br>`0xbf26028aee28d026e7d5e8c37430a729a87e51b6` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | exact address book overlap | UnnamedContract<br>`0xd624345620293a0dbe12812fb3db93e6907a9438` | project_anchor | unknown | live | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x002618abf58a823369bf28733917c41dd22315b2` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x0536e70b23dae92e7cc258c69d03f341fd0051ea` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x1c3a496aabcf25f4503c4f5b1e375020eb6b001a` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x26b1646b78ec77a8694ada40cb61822ef97e87dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x2f31ac4e888ee9b23e1492be712e1cad80c2e608` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x3ab164b1f68c3717467002ec47e31246c76596dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x532ece6556c68685fd7f309c25b62efdb1757d72` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x58067dfe11546ed2b7962e2d7889e8bed9bc6d90` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x69424f1bd33571b91546e22360e2398a50f1ced7` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x6cf78ea908de00f29320166099f43334db9d5fc0` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x6f230ed5c4c5ab5b177dd7c41233718a732bf7e8` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x70fce74a7a0829a3fc48c8f4931936c8dd82e5ce` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x7287d93f5a25968674445db354cfc24f54617f7f` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x758fb1e27510c0ce0e88fafa23705081a6f61f13` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x7ba63aac1f7f06687fc8614524ee496787aef8c5` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x7d345829eda07f25e61feefbed7a29306cf3bf9b` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x9be413a744461323f3e62d90e59adb1d7a612eb0` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0x9cd978871423c7032006d71c89e402d810b01f71` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xad48812a9d81acf8de5bfc93c7d6d7165920abc2` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xbb0a4949090c3a468fcd0b2034d240951ac40153` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xbdf463ce9156024a49edaab15e84b02aa20f4b09` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xc16ba9181ae4a88287b7aeab248df432280e6962` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xd5e6a1d0eaec7f6020b705a7e86043393bc0b303` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xd7933c586406d5dde9d76c8c7df1ea86a9920d7a` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe03379f5d19c055d5c2fe97e1490cdb172fd9bdb` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe2fee99cc5274dd085859ccd66de285bf50583c0` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe5ca433307c8e32e1358030785d9349dad283ffc` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xe5f5462b544f09425b4cc37de3fbc068b6661095` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xebf6871f682f7adf67d562bd7789afa3e7e05606` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xec63c5b01a7953bffe40e356a49fc0827a5e2c18` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xf29d81decbde520258ff68662e0cbd05aa7a11ae` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| mantle | unverified unclassified | UnnamedContract<br>`0xf4f615a4c7470de8797343463c369b655be7df96` | non_address_book | unknown | unknown | unverified | n/a | `0xb35de5b70f575edf4e32f9f89668ada27d3f3658` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x004a9eac7ceaf27b4a1a7746d677bfa704d9cba6` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x077893c85114aee560155af4eed61f717e8abc6f` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x0c2d7e456b0d0ab80dca148e60d23cf6304fe543` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x0df5a3c7f28514873ab3b2c11a76d30073d95eb5` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x1c40cea7870e2a561455d4aa8f30995ed7806836` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x1e1a67d035113376cebcb11477bcf36aa229dffe` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x1f84bf932e1c60ee94bf04d1ab1c08dff9f0db11` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x209f07ce8e62c2709d2a63a6a39f315763d4d475` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x260a7f2ba4c52e341852cdb43b20c9bf0eeb0068` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x2a81080e4fdba4e8cb28688a3162f3bc9e3b22b8` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x30777a478886ecfca0dc8b023e4fd19b133d616f` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x342019c99ea2869e1233bb461420078c149a00f1` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x35d8d765fb0a15d8f7e75df0830d91e34df97c8a` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x36be6c1ba1981238e4d2ebc281feb6370b15b9dc` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x37d7eb561e189895e5c8601cd03eeab67c269189` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x3f8860ee386c04406dc958e91c8ed3d380cab067` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x3fb65bc0cfcf1a72627788b5eda4a7c0b0031710` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x41822c45348358d612f8d4e3e1bc1aa2be92a85e` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x4bacc3809c8a61420e89230cb8b6a34c5171c9d5` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x52cf67173ada7d78be97a319f61fd3e39d7bc7ee` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x54c33c8669d52bb0cd6682db419483a1e86d8e67` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x565ef2e769a63e9a61a19e9d4fec53885fc1a7bf` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x5ceb0eb4233e0949460ae03577d6433b0a546673` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x6e5b5c70e768f3b0c7df0338fe00b6e8d3f59046` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x722f6ef467f192d4c9006cc1ef02b114de59e1b5` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x75257e84a4fbc8c6b78a407db9b0314ea9f04bbc` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x763b2a4eba91c3667a74ba87a7142be3282fc1c2` | non_address_book | unknown | unknown | unverified | n/a | `0xccb8f7cb8c49ab596e6f0eddced3d3a6b1912c92` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513](https://omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513) | Omniscia | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Salus-Kinza-1.0.pdf](https://github.com/Kinza-Finance/KZA-1.0/blob/main/audits/Salus-Kinza-1.0.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2142] omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 — no match: Three contracts explicitly listed in scope table.
- [10238] Salus-Kinza-1.0.pdf — no match: All contracts listed in Appendix 1 - Files in Scope. Audit date from 'Date June 9 2023' in Project Dashboard.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedERC20 | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedERC20Gateway | unmatched — not counted | — | listed in scope | no |
| omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513 | ProtectedNativeTokenGateway | unmatched — not counted | — | listed in scope | no |
| Salus-Kinza-1.0.pdf | RewardsVault | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | ReserveFeeDistributor | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | LockTransferStrategy | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | TransferStrategyBase | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | VoteLogic | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | KZADistributor | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | VestingEscrow | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | Voter | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | BribeAssetRegistry | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | Minter | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | KZA | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | XKZA | unmatched — not counted | — | listed in Appendix 1 | no |
| Salus-Kinza-1.0.pdf | AggregateBribe | unmatched — not counted | — | listed in Appendix 1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x9356f6d95b8e109f4b7ce3e49d672967d3b48383` | kBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 104 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: n/a

Zero-match audit list:

- [2142] omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513
- [10238] Salus-Kinza-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
