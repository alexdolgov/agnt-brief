# Agentic Audit Brief: TAU Labs

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TAU Labs (`tau-labs`)
- Website: [https://www.628labs.xyz/](https://www.628labs.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum, plasma
- Contract surface: 221 unique implementations (581 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,531,012.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for TAU Labs. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum, plasma. Structural roles: 5 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: erc20 (5), erc4626 (4), erc20permit (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 5

## Fork Analysis

1 of 3 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

**PlasmaVault** (`0xc50b2d51fd1e2ac67a9c09eaf63c24ea2465c64b`, chain 1)
Origin: turtle-club (`0xae4362a98cd22f711f9b9f9f3edb9bb1379a573c`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x63103375659d0aa94e9f35df15be01a3dd1ae9c0`, chain 1)
- UnnamedContract (`0xb0f56bb0bf13ee05fef8cd2d8df5ffdfcac7a74f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (4 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 217 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 59
- Confirmed-live implementations: 4 of 221 unique; 217 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/221
- Verified + Unaudited implementations: 221
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 221
- Raw deployments: 581
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (221)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5a3958b24767b30f0f5d3f47a25cfb4c08c1053` | ⚠️ Unaudited |
| AaveV3BorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe3abae104b259c523f022a880ad4a73ea8de4c5e`; ethereum `0xf020b954e02d8b8419cf5625d4371f16a678d884` | ⚠️ Unaudited |
| AaveV3CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc06f56b865f45d4a80707e7d1403767177c44b22` | ⚠️ Unaudited |
| AaveV3WithPriceOracleMiddlewareBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9eeee3ae20e9c5db213a57ef102e4063fa12612` | ⚠️ Unaudited |
| AccessManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0d60285f0c37d977260d22e23df7984a0800a740`; ethereum `0xced97f75533e3639c45ccbb6116cb4621789305e`; ethereum `0xf902afcd3708aa715d826ff33166739a368ea3c1` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x066cbd24d8285e25cb38222ea669735bdebbaac2`; ethereum `0x17bf30c41606404dc4fbe0a1dbd8c6fdb994095d`; ethereum `0x8d99d6a89c906fe89eb977fc0b9b979716132aa0`; ethereum `0xff69f703de234883ad2553f1a0e37559f332aaf8` | ⚠️ Unaudited |
| AmmCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6650de6837839dfcb05d188c50b927b008825ee3`; ethereum `0x7dc23a56c2e611b569e96ba788048c895a10ecb5` | ⚠️ Unaudited |
| AmmCloseSwapServiceDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x072467b69354fd3274123c908adbc75f9f1dd183`; ethereum `0x735b3fbc2ea7fce1b4e17d9e50eceafe4e6fc3d9`; ethereum `0xe14a723792379482dc36fa273a075f3fbda849e4` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x578ba09c35532e878764c54e879308dbf82973c2`; ethereum `0xe26126e541e029a80bf63169e4bb075c25eb6524` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa07f30cb9797b537f7bc4739477ab3a650292734` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x128cedfe2134d15ec69cc885d22ad0e5f0aa747f`; ethereum `0x623750823f8cf4fa1b804723be024d56e1673d95`; ethereum `0x9a9f60349e2da59250433276b3ef474f1f69f8e8` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x11a02a63e9142ed929b9fd95357762fc7bab56f9`; ethereum `0x6d00456b0e14d99a5c3a2e139c3e8ea5b7d94237`; ethereum `0x8fe90f739ea8e25cf9655c8f8a5ad4f50f743ed2` | ⚠️ Unaudited |
| AmmGovernanceService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4f7ef28c5416b536a7baefb14fdd3dda37bda46d`; ethereum `0x8ab4d16beb4e06b576b3e1828c7e69f7e66e2023`; ethereum `0x8ec9aef0241a19ffb278b3963d0eaae7de52158d`; ethereum `0xbd740765cd53171c9d9a5391c50e50588b95264d`; ethereum `0xbf0a6e96bd2c7d4db0d19b7479c2b107ed03f4bc` | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64f71300626499d3d9f8e87bfa34f50c75f0470` | ⚠️ Unaudited |
| AmmOpenSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4ef45eccc64e4bb36b9c46b9ad353855a48016d1`; ethereum `0x78034b17f80c6209400b26ab7b217c31f87ae119` | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x042ec3f075c48cd644797e0af12ba6257c59cd2c`; ethereum `0x0ccccdc5b809c71ce5cd298907aad117513ab361` | ⚠️ Unaudited |
| AmmPoolsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f44c5ada019cbb0729e277775877ccdb940e04a`; ethereum `0xb653ed2bbd28df9dde734fbe85f9312151940d01` | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce96800a16791d68ee96706915ead714d67db70d` | ⚠️ Unaudited |
| AmmPoolsLensEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bea65298c3e1a6cbb961a44b720d0216028be1e` | ⚠️ Unaudited |
| AmmPoolsLensStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0a4855134f63bf81f3dc6da38de8894fb24904a` | ⚠️ Unaudited |
| AmmPoolsLensUsdm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326293feb79193e97d63e1ec3d6bcd774beac8eb` | ⚠️ Unaudited |
| AmmPoolsLensWeEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0d64c0375201911e09b0f8c4d38c5a286e165a6` | ⚠️ Unaudited |
| AmmPoolsService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x912ae5d95bd86f4ae6e580a0fa14a124c998f337`; ethereum `0x9bcde34f504a1a9bc3496ba9f1aea4c5fc400517` | ⚠️ Unaudited |
| AmmPoolsServiceEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa30845738443aa2dd6bd0783a47b0af8c01a9bed` | ⚠️ Unaudited |
| AmmPoolsServiceStEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x406812ac6f106f7d53b4181d42342e2565428be1`; ethereum `0xcd96ba8995e6e0146df363b80e6f1f2b93fbebbc` | ⚠️ Unaudited |
| AmmPoolsServiceUsdm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5765d00dee4cb808b266a46411059a518795294c` | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6966defb920d4d0aa8886feddc7f84e1b1c5a318`; ethereum `0x7b071c5a3b43b2d6624df1a649fe78ead2e475ac` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x229e0b9443b1f31d5cd0df69d50b9171667411fe`; ethereum `0x98123c13af94bf49b5338d780551c45295de36da`; ethereum `0xec6f77b79e910ee2f65edcc987d1947314d283e6` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x364f116352eb95033d73822ba81257b8c1f5b1ce`; ethereum `0x622827f76a106aa9f4399d8e2f5ff9822a593f2e` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4508ce1ab61fccac39ba28ff0e7acd5823e8c0f0`; ethereum `0xb99f2a02c0851efdd417bd6935d2efcd23c56e61` | ⚠️ Unaudited |
| AmmStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x91c35e8edc103468692d2394b48b0b3d228f6ab1`; ethereum `0xb3d1c1ab4d30800162da40eb18b3024154924ba5` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x08a8ec037df2e54194b397cd7c761631440197c6`; ethereum `0x95257efe3ab9d36969d0014553eafcdca594a281` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b027700173745e6239c928009c5161472f114d0`; ethereum `0x9c9846495ba219d5cb941d78020ab5c6b0701017` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4f4f1613e9bb13e874d1d066dfeb2aacfe84ef8c`; ethereum `0x77fe3a8e8d1d73df54ca07674bf1bd6c5841e3b5` | ⚠️ Unaudited |
| AmmSwapsLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x41e34756a7772a4ca1115afbe2e2afbd1b0172cf`; ethereum `0x476c44e60a377c1d23877e9dd2955c384b2dcd8c`; ethereum `0x5a1cf5e3cee2463de40206d9b62125218b4c50c2` | ⚠️ Unaudited |
| AmmSwapsLensLibBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1decfd7e774ea8da143e90c14602fe4646c7032c` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x137000352b4ed784e8fa8815d225c713ab2e7dc9`; ethereum `0x866d6c951c4b29120e5a545440280ad8d4a0eb49` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28bc58e600ef718b9e97d294098abecb8c96b687`; ethereum `0xabcb3ad4f5ec4f662c4e253916d952244049a82b` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6f4506e47277ed3a816422a17b7f7d697edc5944`; ethereum `0x9162022c32b5fe50dd46b3b245749ea87fd3aa48`; ethereum `0xeb011b34b0089eb8e22eb40a6edcadc66ff88a0c` | ⚠️ Unaudited |
| AmmTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe9facd55280b1df7bf6a1a9ea8a7c2b040b74dc1`; ethereum `0xed7d74aa7eb1f12f83da36dfac1de2257b4e7523` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x060bf70ae6ec15121c819a081e56456d5f40556a`; ethereum `0xa19b16a40be04744c20bcdab0aad4e330b1bfaad` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x390e7ed143bf42ba327dae48a44a48d84168aabd`; ethereum `0x9a449edc45550fea15ad1bcfd1448b8a2c37123b` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30ae182cc30d312dd4f2824c635b8dc5f805153c`; ethereum `0x63395edaf74a80aa1155db7cd9bba976a88dee4e` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb1c0ccb170f0af6ec8ad6a8622d0136fb744f0c0`; ethereum `0xcc2ff2d38666723ea56c122097f6215b90d74196` | ⚠️ Unaudited |
| AmmTreasuryEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7193cac850f0cfaa50c64bb69950cc3bd50dc22` | ⚠️ Unaudited |
| AssetManagementDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x160daea1e07e50c184e6d6778e943212dfcdace3`; ethereum `0xa6ac8b6af789319a1db994e25760eb86f796e2b0` | ⚠️ Unaudited |
| AssetManagementLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d4c4c07e34a6b43f104204d243aae084d5f6e09`; ethereum `0xb8dbdecbaf552e765619b2677f724a8415192389` | ⚠️ Unaudited |
| AssetManagementUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7aa7b0b738c2570c2f9f892cb7ca5bb89b9bf260`; ethereum `0xd9f0c6ff3f1fef05f483ee0255640c4f200d2a7b` | ⚠️ Unaudited |
| AssetManagementUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6416e385f08421f524e2c7335444e56e897f7ddd`; ethereum `0x8e679c1d67af0cd4b314896856f09ece9e64d6b5` | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37fb994757856ec994203d01b54adb7ae092bf6f` | ⚠️ Unaudited |
| AsyncActionFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04bd1e6caf008ed831f888ced406cd616c671870` | ⚠️ Unaudited |
| BalanceFusesReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870e1fb75bedbc2efb92857dc2b2cf171a0aec1f` | ⚠️ Unaudited |
| BurnRequestFeeFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79e8b115bd41baee318c1940f42f1a2d94d29ab4` | ⚠️ Unaudited |
| CalculateWeightedLpTokenBalanceEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3843f9b977c5731b0459bb44de6bf8fd3cc18915`; ethereum `0x6df58fda55e181d3bed7aa795245d918b0ca5971`; ethereum `0x77bf38d1963cab600d6673c3e5396a8ce8ff549c` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b219fd68a7bf5c505503d0cb528148a06d98602` | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b05841aa46db37510e65ea6e61a569e9c20e393` | ⚠️ Unaudited |
| CockpitDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x124bc6be021d3f9e5fbd6194b2839f6df30e97dc`; ethereum `0x720e64a1c8912ba48ddf7ca7076ef016fab144ee`; ethereum `0xacbb7efa64ab9e01c4d397e3b7a6c8e289cc09f5` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0ed13eec003ea0f51214c4a641a3d0a0718bb5a7` | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd58f0ef796618f09f7fc6e63c25fae25ceb33799` | ⚠️ Unaudited |
| ContextManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x0f2e1ce94519a0b0056a243d055352d3119592b7`; ethereum `0x0fe8d799dd76e11b27e769ad3d2916d63062a702`; ethereum `0x1822a8c3c807f1ec415ee82752dae0ec74664d4f`; ethereum `0x226b2cd64a8b8656423e4426f6b77e1b52a6d167`; ethereum `0x3782bc6f6e7ced22fe8d1306060a6626a03c9fd8`; ethereum `0x3db87a14412c488f5ca11b0a214b0e7d2aa910c1`; ethereum `0x446f855e5cbed2be262b00954f0fdfefab700153`; ethereum `0x4f1f516654cdf103c2be26210943d380ebaa3dd2`; ethereum `0x5038734aeed0a287ea4368fb338315a501b3ab72`; ethereum `0x58f50b191048f29d2af12cd0ece48eea79f4cb9b`; ethereum `0x695d748aba7c7946bcf3a4cdda607ecad268de3a`; ethereum `0x75c99182a70ed72623748e041746b11f70b7bf5b`; ethereum `0x9627ed4dc359504a551a9c772e289706fd236014`; ethereum `0xabc0fdd71077e415e81cca77a088f6664967df0e`; ethereum `0xba68398feecb2fe95c1d0d66106ae1d432270317`; ethereum `0xc223ea44d522d4f07646fa00261d7ba6868cc210`; ethereum `0xe5b4ff91e2842e228d93ee8c6cbcb2959449f8af`; ethereum `0xe62a0348e37565da2ce10952abd0e0c808fcab36`; ethereum `0xecb36d7100da9c717671b72e6eb083b07190243a`; ethereum `0xeda1e6aace00793905fd588c21e889e8db78c0a4`; ethereum `0xeeddc566f94fa9508a134955d3502081d0fe7d10`; ethereum `0xfdb898d9bbd3f8bd0fbc80e2dbdd1c2de2f1b526`; ethereum `0xfdd67ad159bd07cd7e701f40f1717318a68e731f` | ⚠️ Unaudited |
| ContextManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1a8404fb75e221ac472119aebfec61e1212decc4`; ethereum `0x9a5b39a667e3f80a3661271173b68340c59a9850`; ethereum `0xea0b119ef6b6a9648e08b7922c72747d81607815` | ⚠️ Unaudited |
| CurveStableswapNGSingleSideSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcb0b631e82f80af729aade3ca3a58374a18293a` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78f46f2c4aaa83a4c26dc5ac05d272f8f55a4357`; ethereum `0x8b94c156ebc20a3a385e898bb7a7973d46d0b303` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf82a5730adce3e30c41d057928e1edf4606c67f9` | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8` | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451` | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3a7f15034d664fa295b472732bffc6953eefb33` | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1aba4764dde4ae6d29c97ae3a20a95267a37069e`; ethereum `0x586a819aad974f6ef49e2bd425a7526f3f2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3babe2e9a1fda1350b76eb77c40dd394c836102` | ⚠️ Unaudited |
| Erc4626BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x10e2c21205c180654b8eea5b75c3a51014cdb336`; ethereum `0x1469e4f7c78805c48b550fc4f49e4e2995512ee8`; ethereum `0x19e332aba9cd9387e9310c9645b0a4b03a6e7906`; ethereum `0x2c10c36028c430f445a4ba9f7dd096a5dcc75d5e`; ethereum `0x2e3266358674c8a54ead81610c3c41033279e7dd`; ethereum `0x318dc5d24bcc71ba0127a45e009b64bdba0c2edf`; ethereum `0x32971e61678b0a77a07425f617f83c6d5aecf8e7`; ethereum `0x560c836581476a95b5adf65b1986fba3cf7772f0`; ethereum `0x5d4474a85b445671bd0d33da944036d9522b9a9a`; ethereum `0x806b55f731b0bf5d32d9d14785743589ea23fb94`; ethereum `0x8c8f2a5250d440bdf6ac21b097be04b07cce78af`; ethereum `0x933bff1078ff1a0ca3b53dad00d7b1850af8749b`; ethereum `0xa0777a5b44d36ee425dc0ca828549f06e40e0cee`; ethereum `0xa72f8391d7c9f1991769b76858b8ac54ccee92cf`; ethereum `0xcb6bb5ab51cdc6efb3b81c84f252cfe6bfba6566`; ethereum `0xe1fd88a76e95dd735c6dda45b2aba9e5ffa9a7f3`; ethereum `0xf3d20ca7e35687b159c2ea4c3876c89afa27bf11`; ethereum `0xf9a1f7147d04d569af9f9e1b6b713935ca1308fe` | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c3f08a0ce5dc1608d7e11167c60244e16922d93`; ethereum `0xdbffc30f3b95b8ca5bab3e6c139076fea47f89b3` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe08aff4910fb61acc2eacb03b0a6132b01d1aa61`; ethereum `0xf58fcce9370aba552032d3ea47baa486f70c0fdc` | ⚠️ Unaudited |
| Erc4626SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x01d4fa645f3b98fc9d870dd687de3665f0d45cdf`; ethereum `0x06b53af012499d6429741b9d53e868fd89a5d3b2`; ethereum `0x12fd0ee183c85940caedd4877f5d3fc637515870`; ethereum `0x361baf77c94f4504691d9f3c463f9950591c9434`; ethereum `0x53ecc250d70c9f8b88edb817a9097c6caac81a6b`; ethereum `0x59e58d1a800426df9fddddbd248da0acc4d38f89`; ethereum `0x5e58d1f3c9155c74fc43dbbd0157ef49bafa6a88`; ethereum `0x62679b25956d525703c810a6c13e2324312649e8`; ethereum `0x6b9489369015233e049f548ce6c0dedcf17bfb90`; ethereum `0x83be46881aaeba80b3d647e08a47301db2e4e754`; ethereum `0x87e3b7c430368eb4684ef622bae0d4c8c0cd590b`; ethereum `0x95acdf1c8f4447e655a097aea3f92fb15035485d`; ethereum `0x970b4f5522685d4826eceb0377b3ddbf12836dfd`; ethereum `0xbd8a194d188bc27a050f271a923459cab847ca9f`; ethereum `0xd6fa88b765846615ce14d9a444e0cb350043b783`; ethereum `0xe49207496bb2cf8c3d4fdadcad8e5f72e780b4ae`; ethereum `0xf16119e669c1fb8264dffd92ecb1ab592f73d8e3`; ethereum `0xf492e277d6d6e051f9871e66badfd089fb7bf5e7` | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9af838b8bb05269dac4f30a127f171d3cf76dac3` | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677251190c0cccc6e7e71c385b3ea660dfd89c00` | ⚠️ Unaudited |
| EthPlusPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd529f458bc879be231e36ec62968416c07580199` | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa607855ec4881b5f25711d1404e0cddeadeeacdc`; ethereum `0xae9a37dd9229687662834e6696e396e7837baabd` | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f` | ⚠️ Unaudited |
| EulerV2BorrowFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x20c782c94800d709541660e322035785c89e32c2`; ethereum `0x6b339a926328b9a5a5705fd051aa5028d9f7f2f6` | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07d80997d57ad9489a4c48f6134df91822e36514`; ethereum `0xf58d96142a6abbee5cb2f2ede750aa7429672618` | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4bfea07593844155c0bd5ee656ce54e864ca9b55`; ethereum `0x4dca6fd6f153ee18602ac77b4396070476ec6c25` | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x225d3e01d3ba0ddf904e1fbb46256f7d3a7e7bf0`; ethereum `0x9425cc51e61f04942008b7caff129c2c6e57f217`; ethereum `0xdd33b4b6b9a7aa6fcc5f1d1c8ebb649a796fd5b5` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef23ea0ec8cb31aa78e8d4f59771f24b84706199` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391`; ethereum `0x6951d77882aa279f02763cd66b61e174171baa20`; ethereum `0xbde68fa3310bd8914a09a9d2a35e2edb3c4e2255` | ⚠️ Unaudited |
| FeeManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x061d41f63d37231a3c7a4ed74c7b222e6ac88985`; ethereum `0x587a7ae8220f61fc72966aa0e0edc69135b76aef`; ethereum `0xe8c0f9e87881c1b98de73290290d9df3813c1bc7` | ⚠️ Unaudited |
| FixedAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a94e4d777f81de7e390d5f93b40269cdf7c4539` | ⚠️ Unaudited |
| FlowsService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3486d81d52b52125b9fb1ae9d674645ece665ac` | ⚠️ Unaudited |
| FluidInstadappClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59da0ce05cfcf0da3257a96446e5b98edb788c25` | ⚠️ Unaudited |
| FluidInstadappStakingBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d0e294a0524962c43eedfa935f1e8112a16aba` | ⚠️ Unaudited |
| FluidInstadappStakingSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa613249ef6d0c3df83d0593abb63e0638d1d590f` | ⚠️ Unaudited |
| FluidProofClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30ade01153cb697bb751cacb6392f49c22558fe0` | ⚠️ Unaudited |
| FusionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x034947614513e69d4bd8d31e464276d1bfcf88a8`; ethereum `0x08732ec4a818c774928fac48c75a8ca9d421d497`; ethereum `0x9304345dda22aaaec97d0410bdf0b8a444d41367`; ethereum `0xba84b0f6657685369215dab773ce50bc55aabe08`; ethereum `0xd48d9528581b6bbc5e259f1e3720619bb55d5e0d` | ⚠️ Unaudited |
| FusionFactory | registry | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcd05909c4a1f8e501e4ed554cef4ed5e48d9b852` | ⚠️ Unaudited |
| GearboxV3FarmBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88982097ecdf1dcfc4d500e3392ee0eb70b45f2` | ⚠️ Unaudited |
| GearboxV3FarmDTokenClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf710b1daab1623feeb78d32bf34e288c3ee67072` | ⚠️ Unaudited |
| GearboxV3FarmSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6016a183745c86dd584488c9e75c00bbd61c34e` | ⚠️ Unaudited |
| HarvestDoHardWorkFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda45fe8099358bba400554c9b640170246b43e50` | ⚠️ Unaudited |
| IporFusionAccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 30 deployments: ethereum `0x1dc356117aa5dcf8ce836aee851dafd04479ae8a`; ethereum `0x3df9d7be4017e3d72ea39b96ed4c7070c19eabae`; ethereum `0x428691bf4313981a8c008f4c5c93fbb677c6d585`; ethereum `0x49cceda0d17d533edc103ceef57ba057c4527c06`; ethereum `0x4f9a5893cedf67cd01904da919b191826a2e256e`; ethereum `0x56e76720dcf764a32766c5c0c7f3827ba8b4af56`; ethereum `0x57d771f5b266f57775e0247dc8b7b9d427ba6508`; ethereum `0x6857b21d872141e960d2eac6f92480c2c666e0c7`; ethereum `0x69c121cd7f5e962c2698ae9352db1a0d751d5532`; ethereum `0x7c20c94ac1e818bb768d34c015b7dca5fc28cc6c`; ethereum `0x818912488f1023419426d1410d351d7daa7df7aa`; ethereum `0x82d3d0ad22411fdf11d6b87be7ca15160b52196c`; ethereum `0x85fd7686ff4c4a3fbe3815eb90be46d17172325e`; ethereum `0x8bff06434c52306358749b0cc58db7d9aa1c654d`; ethereum `0x922350d9ff1217b2f2ce63a890be0d377deb1d42`; ethereum `0x956d09551251493f165eca171bd377c247ba8f4b`; ethereum `0x96266192b8216a509026112e6515a33aa020256d`; ethereum `0xae92a01a3c320b4f62d535d337bbffceee2ac544`; ethereum `0xb2d9f718f8e9e11dafa13d9878a742253ddf8a05`; ethereum `0xb46dca81395659e505833cba7057df9065c1f434`; ethereum `0xb7394c28d4ff1753123e823642ac7acf6475be04`; ethereum `0xc025ec32cb1d5788cabfb874a1a69b3411d545df`; ethereum `0xcee55bd8ce0361a67f9a48888a2b519c9d207a97`; ethereum `0xd1813be33dee8709e4734a0e8c612e91b22033a6`; ethereum `0xd887ea16804424dbe9e0a37533fcf1ec98eac106`; ethereum `0xdcf1ec5bfca5c16d7b656b3af2481b4234dd2e46`; ethereum `0xdd15eba9d2cd4deb479f640d08fc63f627d192a9`; ethereum `0xe593cfaba9e0ddd0b0b47f270cd0e045fc0050ba`; ethereum `0xfb15065b1e0e9482a295324c592894ef35ccce9a`; ethereum `0xfe2242d476d03f72423311629450078a4cea07b5` | ⚠️ Unaudited |
| IporOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x20a5d253d6e79972516f5061e2ae5d49a1b2cdd7`; ethereum `0x7ff633bcb94a89f64aa3efd85b5e7857b7b1091c`; ethereum `0x9c2a4edaed59a5b9de11c1c0eafd8b7da751d64c`; ethereum `0xbed8a5c8aedcbc5d9c1a2b0b65da4388a56d8562`; ethereum `0xcea315a0aa63ba8993b01bde598b3590efc58f54`; ethereum `0xe76a436f1d8ca2396902475fb4dfd57919069906` | ⚠️ Unaudited |
| IporOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x421c69eaa54646294db30026aee80d01988a6876`; ethereum `0xcf7124e93ad63d25b26b67ba79b0bdb53cd71221` | ⚠️ Unaudited |
| IporOracleFacadeDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x161c5f5cc8f1e06aa6c65b9b3473cfb4fec11df0`; ethereum `0x7ebc0974a4b9e5d20077de1c7a0840db52f1b1b6` | ⚠️ Unaudited |
| IporProtocolRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x114f331f424ed559a0a7c73c041198f2a3130132`; ethereum `0x1c26abf07c13600819be93fa4499ab796037a28d`; ethereum `0x38a40966ab05af4c8c9996253b36b4ac0adaaee2`; ethereum `0x47f13dad7e81489c053c15c9f34963b2414635d9`; ethereum `0x695264d984a5e45c2d89f261c8668d6c1f7d214c`; ethereum `0xc1754849f48b0143359a95b9a2e24e90ec82b838`; ethereum `0xf4d0028ae2d3fd215f8077755df898b4591cffbd`; ethereum `0xf9f58002c6659399dea4c2f42018028f03eec3de` | ⚠️ Unaudited |
| IporProtocolRouterEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x16d104009964e694761c0bf09d7be49b7e3c26fd`; ethereum `0xcc735caf5354415308dbd826e9734a70b69461d6` | ⚠️ Unaudited |
| IporRiskManagementOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa5f814872cc000b0b71d1fca822cf07acb736af7`; ethereum `0xfb22c148f60527e1386905940d1ba51b871d11b8` | ⚠️ Unaudited |
| IporToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e4746dc744503b53b4a082cb3607b169a289090` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x229253cf61e706da502558047a48572d54518fbc`; ethereum `0x32d8d5b8b46b15d102c7f2440759d4aaec65ff49`; ethereum `0x53b4c5efcd68001f64fa3ee4f602e283efb288d9`; ethereum `0xb00c99e483cee10d838988c07e0dae02159efe34`; ethereum `0xba610f3e1cedd17e5fa5baf5d7cbfaceeaedcc7a`; ethereum `0xed21f01ffa00b297252c6cab4205dd668444a81d` | ⚠️ Unaudited |
| IporWeighted | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8712a255e120221d68d8086aca753086955669bb`; ethereum `0x9d4bd8cb9da419a9ca1343a5340ed4ce07e85140` | ⚠️ Unaudited |
| IpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9ac5092e027f0d9f24b4a1065c70973f3afda4cb`; ethereum `0xac5b04988bc71bee96f8d93040777db3ef166125`; ethereum `0xc40431b6c510aeb45fbb5e21e40d49f12b0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8537b194bff354c4738e9f3c81d67e3371dadaf8` | ⚠️ Unaudited |
| IpTokenUsdt | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7c0e72f431fd69560d951e4c04a4de3657621a88`; ethereum `0x9bd2177027edee300dc9f1fb88f24db6e5e1edc6` | ⚠️ Unaudited |
| IvTokenDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93e0edc76f3147c63f53e7ed245330b96009b26` | ⚠️ Unaudited |
| IvTokenUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xe176f879ee386b4a4bf31b5704b500854952a95c`; ethereum `0xe966d1cae4770cefe9410e9d14d9486ffee19048` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x086d4daab14741b195dee65aff050ba184b65045`; ethereum `0x7cd10fe8a9b5c8f5792d155e05da640410be5d04` | ⚠️ Unaudited |
| JosephDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6f18b9f56bdee7f3b930804004629670f300787d`; ethereum `0x9cb5e8dfa46da44248ce4ce6ac71d74aa4d3cfd8` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x33c5a44fd6e76fc2b50a9187cfeac336a74324ac`; ethereum `0x8ae47cc57fab1bfd6d582256446cad4fde1c319b` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x470c3a35daf7e64748f8f2187937f69105baa37f`; ethereum `0xc52569b5a349a7055e9192dbdd271f1bd8133277` | ⚠️ Unaudited |
| JosephUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd29f9b9c7b0bf6137906405769979d50b89fc1b0` | ⚠️ Unaudited |
| LiquidityMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x22363bb570ed9eb039b2f153a1f0e50aceb9466d`; ethereum `0x32ab947e9de950ccc9eb8bf147f94feca7abeae3`; ethereum `0x758e7d537fc3233ccb77a634a9419eabcf621a7e`; ethereum `0xac0dcbe1296ae5ae69351a05e6b5803c3eab644e`; ethereum `0xe00834062d1b705a83400a7ef1db3288c00efc02`; ethereum `0xfa556d43049bb9b5b1c8c9a464ce624821f51b1c` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0a06ec4004c02fd514ee02c455d20062f7c45edc`; ethereum `0xcc3fc4c9ba7f8b8aa433bc586d390a70560ff366` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0984f735ffb8c959f1a015b70d4550bb55ff846` | ⚠️ Unaudited |
| LiquidityMiningLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x769d54d25dd9da2159fa690e67b27484eeb39e98` | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf713395a26400c2ecd4af9faf0f6ad7c569daa97` | ⚠️ Unaudited |
| MerklClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47aca48086036d213f2a5faa6764a62777b4bbcc` | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1bfb9e4b7d849c641e7ff896849a4d446322e050`; ethereum `0x8193caea6e5aa7006aeb25d55afc10615ec96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b66a7dd521ae6ee23c280af3277e54bdd209a3c`; ethereum `0x45209c7f307894fd19fb0560827107b7c4bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x99bc0136ba3cc8d1a920e68eadff4fd899bec386`; ethereum `0x9aa21e5101279229a02326e411dafcbd48ba6db1` | ⚠️ Unaudited |
| Migrations | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x85b23b710c74685484f7dda47746eb7d272cbe74`; ethereum `0xb56e997d3edaa4f7f5b111c04018ca0e1c253c2c` | ⚠️ Unaudited |
| MiltonDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x16d2369a3206d084ce2c3e4a7843adf19c4dd42e`; ethereum `0x1fbd08857ceebd7012a058df93ea642bdc0ff864`; ethereum `0x22d87b298fd83cdfc38616f722d0c47169e9a4d6`; ethereum `0x7a9990e754f2224dcb441f7f690da1851b00073a`; ethereum `0x9def0a21ac8e2a402a58da00034014d0861143c7`; ethereum `0xb1cee7ba9997b505f3e01e7021f67521618fea67`; ethereum `0xb6a547833ea2a28c871386acea626a6119ac11f2`; ethereum `0xbf71dde9db7557b25ef12ab758e95ed7b0ce79d5`; ethereum `0xcd7e5edb7b7da6f8cc4ad07c2b68eca060bc03be`; ethereum `0xf5f62c527a2d6685dce359b8a337cc53b303b5ce` | ⚠️ Unaudited |
| MiltonFacadeDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7520c967cad6d872c8b0fa1444ed3ed26025015b`; ethereum `0xd5ef0d094f176fbf0925959c1ba0fb9f1b5b236c` | ⚠️ Unaudited |
| MiltonSpreadModelDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9cf78e518507b8922634a3ac02e8d8136768c5d9`; ethereum `0xfb2ee9b9490d999d1f50a27f66410699c7e95318` | ⚠️ Unaudited |
| MiltonSpreadModelUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a8998bfbecfd39136572def74c6df6f9e5600ac`; ethereum `0x6bcb297e56709ecb5a5f546309da4fce6d245467` | ⚠️ Unaudited |
| MiltonSpreadModelUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3eea8a8967c3c56967f46597613ccc633b5eca9e`; ethereum `0x49f2825fbcd6cb2b0d13ebdf44457e15b0a3a8b0`; ethereum `0xd49b2038b1705bce126370ff7aead5d8464efdc8`; ethereum `0xedaaf139ee3fedd59a9a8feab31a46ee5bbeac3d` | ⚠️ Unaudited |
| MiltonStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f4829b14a27e73dcbd1c9238d8c4fc9a594c1d2`; ethereum `0x644149b80028622d02a25d4825188c7e1e831069` | ⚠️ Unaudited |
| MiltonUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x371f6eb514eb8de60f29e4c246bfba1108159d29`; ethereum `0x6a259c315c7c7c0a00c57768c3beb99502e7eb48`; ethereum `0xdb75be5ae2c9d2f75322d0731fc7b18574974579` | ⚠️ Unaudited |
| MiltonUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0d55221929cf67c8ca060f799a6bb1d0d9dc59b2`; ethereum `0x473285a1ead29ee13ba33c67f937ffea39a197b0`; ethereum `0x72f8561b41fade563be5ca245545e9bacb906283`; ethereum `0x80def4b6c7097904d2fa3a54f76d38aec04fa53e`; ethereum `0x8fcd17e8c7496beea8e470935b610b2e43ba8fcb`; ethereum `0xb92635dd7636160c2863a47dc1193adad1328b21`; ethereum `0xccadc4e6c1624cd49e52d1224d326783baa905e3`; ethereum `0xd15b8f1fd9ed911c0032eb4b523cb33c6bc53165`; ethereum `0xe37cfefd1588bdb37b0908f6241102841fef922b`; ethereum `0xe3c67a3be126b6f41d66eabb89f1e346cd099195`; ethereum `0xf739f3c3cf12a3097541eedb7c0c324dcbf2c4db` | ⚠️ Unaudited |
| MiningCalculationAccountPowerUp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9a293ac079fdeaa54fcf3810e07b914672a28458`; ethereum `0xe8e51eff698bdf0fd7edb2aeab8e20895e7ea585` | ⚠️ Unaudited |
| MorphoSupplyFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08cb606cee700628e55b0b0159ad65421e6c8df` | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc13f3fd20556a595990c35612e9e5c1c071cb691` | ⚠️ Unaudited |
| OneValuePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7aa529ce055a1f745a40c1eea98ccb9b90e61cf` | ⚠️ Unaudited |
| OraclePublisher | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x254a663790cdaff53204c7072cf0c75231b505ff`; ethereum `0xa735b8993778a10de2382f57a8282738497dd508` | ⚠️ Unaudited |
| PauseFunctionPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7846bed0b55048db0e6a5388b89e92f091984d59` | ⚠️ Unaudited |
| PendleSwapPTFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeea3812b60ca4c6d0e2672a865bf7217ecd49f95` | ⚠️ Unaudited |
| PlasmaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x0552e28123a19ff2853d1ed3be75ef1329bb6ca8`; ethereum `0x1fdf5dc3f915cb40e0ad5690de51e3cb464d1bad`; ethereum `0x20e934c725b6703f0ac696f1689008057db9ac44`; ethereum `0x3a58d6d52d68460cbbda93dd858f4353878ef697`; ethereum `0x5904da6c07a15884ff9c480f240bc57fe9032eb2`; ethereum `0x5ddd768bae05b01828ea58167f76efa2e7787d88`; ethereum `0x604117f0c94561231060f56cd2ddd16245d434c5`; ethereum `0x60e36a79c3d21120350e39b5ea59ae26b75ae74c`; ethereum `0x707d816272ed15174c72f92eccc4149d1dcb7a80`; ethereum `0x78cc1353b07a049f39b68e24a0670859ef7a64fe`; ethereum `0x981a6c7ca4496acc3ff7bcdcc3b834fe0c4db5bc`; ethereum `0xad685fec2066d7f5436f5804882998ba79725706`; ethereum `0xae4362a98cd22f711f9b9f9f3edb9bb1379a573c`; ethereum `0xc1926c01ed88e93f5c266f3b43af57c1f6e63b5d`; ethereum `0xd36f53497507e948df9f277cf8c3ececb09a1c1d`; ethereum `0xfb696db7a9da52b7225c61edfb56537544307541`; ethereum `0xffb090cb1829c5977fbd070cebff7425c76b0472`; plasma `0x0a71624ab3e8101f78d95dfc81e0f1f31128ed7a` | ⚠️ Unaudited |
| PlasmaVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393836 | `0xc50b2d51fd1e2ac67a9c09eaf63c24ea2465c64b` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 9 | ethereum | n/a | 9 deployments: ethereum `0x08dd57a51025a266cecc85154860aa4e71e48ee8`; ethereum `0x29d322dd088e9b9d1416f43188954f08748fafbb`; ethereum `0x3151cee0cdb517c0e7db2b55ff5085e7d1809d90`; ethereum `0x64d47d8516034857c6fc040ecd405e03643a464f`; ethereum `0x6f66b845604dad6e80b2a1472e6cacbbe66a8c40`; ethereum `0x9824dcdac89f208bf8b5cb5c4dc41f04a0878607`; ethereum `0x9dc2819b49c3d39b11a5f4c8c0c17bd7e18126d9`; ethereum `0xb4790cfdf1df71c2e4ac2f5c43dbcb975ad447ae`; ethereum `0xb530a1b5259a71187f1d69acf0488f102637a3ed` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2de7320004f837925ba31326ff66210be90171ab`; ethereum `0x3943568797a280cbc51844c63bc2555c6e49df44` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393837 | 2 deployments: ethereum `0x43a32d4f6c582f281c52393f8f9e5ace1d4a1e68`; ethereum `0x9781413baff29db7bebdc52c475c780591c7b37b` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x43ee0243ea8cf02f7087d8b16c8d2007cc9c7ca2`; ethereum `0x7ef926cb565fde40dacaa3d5712cfb488a6964d2`; ethereum `0xabab980f0ecb232d52f422c6b68d25c3d0c18e3e` | ⚠️ Unaudited |
| PlasmaVaultBase | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x84249464ca6f1591b4be126a2b531517fd7d5062`; ethereum `0xe9385eff3f937fcb0f0085da9a3f53d6c2b4fb5f` | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8`; ethereum `0x7c9119fbb87eb1a08224ad225362bdec213007e2`; ethereum `0xcdc7997a268abc11b44624ff39447a3a6aedc09c`; ethereum `0xee47a6f0556b855043d16819b057a72d2c7eb9a5` | ⚠️ Unaudited |
| PlasmaVaultRedeemFromRequestFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906af6a42079adaf1abd92f924a5d4263653af0d` | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7130383298822097531cf5cc5e3414dda1e09542` | ⚠️ Unaudited |
| PowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x586ac86675bd933c4b9a26c55b6e62b6496d49eb`; ethereum `0xf4725fa8ceeb9a3aa97f75fd83ecfb31587f3ab1` | ⚠️ Unaudited |
| PowerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x78dbf1ea2042fbef4af542aaaa81adb26884a0f7`; ethereum `0xd72915b95c37ae1b16b926f85ad61cca6395409f` | ⚠️ Unaudited |
| PowerTokenLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a4fc8f98ca356b7e957d18c155bc62e32d21ec3` | ⚠️ Unaudited |
| PreHooksInfoReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ecd96fd20f2c1a32e5906cccaec87e8afe19821` | ⚠️ Unaudited |
| PriceManagerFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0fc2d5046937f10805a7581f0f68984ef3b07609`; ethereum `0x6558eb96c61ccb8b23cfa26a6b91facd6a0ab162`; ethereum `0x7d49c68cb11f6203178d13b4186d39c454e3fe82` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09321c70b4e51f3f21bdad79c61d11fba1024da2`; ethereum `0xb7018c15279e0f5990613cc00a91b6032066f2f7` | ⚠️ Unaudited |
| PriceOracleMiddleware | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf0ff8767f488a91cf63ace04881660e20385c9` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x07fc092fa44c52516decd5f7545061316d062930`; ethereum `0x18fda40bee2a2ec4fff630dedba78a2aa0187d5e`; ethereum `0x213bb78f9d9e66f557450f229e47d49f6775dc4d`; ethereum `0x3ac6556d1d8ff91cc83b9b4cf03178ee9d189b5a`; ethereum `0x45d0e14d946990c5fce42b95195b15f27974c115`; ethereum `0x4e3c90d8eb0f12e86f2b9f00d21f625f4c83575b`; ethereum `0x654ff36e03d51a8710917b9fe4162e0e3ad776b1`; ethereum `0x6d16b74ab612db92327335cd97bd8028804abc02`; ethereum `0x7c6f94e4d72c90eb87463fdc2e0604a9da8ec03e`; ethereum `0x80c0865d7d290a4b8a511f0f71f2c75740b8c1aa`; ethereum `0x8b1ebe26fe0f97024dfd1c62496dd396dd8029e8`; ethereum `0x962131e9120a337202c448e8fdd61c0db890ee87`; ethereum `0x9f69939b5160841b0cbeb94b93a0cba389dc8548`; ethereum `0xc3eb0c3f691f3fd2fc3ab6ae03b68c7c888d5787`; ethereum `0xcb5ef939f94d1609a1d45e63e693ada259179362` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc9f32d65a278b012371858fd3cde315b12d664c6`; ethereum `0xeba87a0b152b4b672ad048d3f446810a89f9317c` | ⚠️ Unaudited |
| PtPriceFeedFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1cb493392367a0283090bf965503a9588d26007c`; ethereum `0xe2a264e9fb3ac248bf9ce57f376873dca752db9b` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x399502b8dc8a38e2cd2d670f4f40cc168c063585` | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a` | ⚠️ Unaudited |
| RewardsClaimManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 25 deployments: ethereum `0x11cbc30008dde93db992ac0190848852d310367f`; ethereum `0x1f8397de7c32cc7f042477326892953ca102ded0`; ethereum `0x23c8dc9520df31c69c725c6ed4657ae6cc21cdec`; ethereum `0x2d1a21f4138a31f978857b28ed6f079408af2792`; ethereum `0x3b1dacc212b9420d472c61a3311088c027b967b1`; ethereum `0x3e9dbaac4290d4ddc5faf23df8829b3204b9c67c`; ethereum `0x4d99e7e470a3fc64d4b4b25304c74ad8413bddb3`; ethereum `0x4de58c0cdbf95e875e741a7ce90c72397a7d3e23`; ethereum `0x5367835812d64e18c78e4dac78decfc3b77a91a9`; ethereum `0x5a5f437f0c481ace6cda50355bd4bacc8918aa01`; ethereum `0x5cb733ecaf07681c0e79f76b7b02844b66208a71`; ethereum `0x7a79b55893a8799ee0184ca18fffc84699749aea`; ethereum `0x84c87f41b9b650fed730258fb0fcb3b8a0375cb1`; ethereum `0x9beff376ff554c81888031fe8899dcd9dfe42051`; ethereum `0xb20e1dc72f261c857b6eae41bc59a24fcf0cd802`; ethereum `0xb401b9e1104726e1c9b59580588c116cc0fdc3e2`; ethereum `0xb5842341920266e099209be4d622d7936d79a4c8`; ethereum `0xcb1bbc36c711ae3d36d9dc61d75dd8efff34f224`; ethereum `0xcd397f64a171158d999b6f256b0cc169feed6889`; ethereum `0xcdb0a68935f59eaf575ca27b6efe1f65f08b5821`; ethereum `0xd0e1705ce89b77452ea7184d300b7745e0937901`; ethereum `0xd6dc843a92cd90afe65cfb00432ede37549a2946`; ethereum `0xda376ff67d108db6783eb8c4f4cdf43ac1214721`; ethereum `0xf4c6fe697b65785037d04b5c614c961e3693cdc8`; ethereum `0xf5db3e3961d52ecfdd939e8c00de47b8e3d0be61` | ⚠️ Unaudited |
| RewardsManagerFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x274567024cc733e78d6e47644a745936a3c54028`; ethereum `0x5d9f02e85cccec44450c4c9c5bc71fb09bc3c71a`; ethereum `0xb03a4f04aa4cc8ef88e6cf709d61f54571d6752e` | ⚠️ Unaudited |
| SDaiPriceFeedEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x974672fa995917fec4a5c9db32784d36c370805d` | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x086aca94aa413932c6ac5e09b863ac2cbe17998f` | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d24b8d16d87a570e8539c2849a23bbc5f13005b` | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5` | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x897d96a7c91e2f1b8213f240cad031f9acdefa56` | ⚠️ Unaudited |
| SoapIndicatorRebalanceLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x21353473a7847bd8e44b0ab5e5d466b0cb4d7100`; ethereum `0x4c9a6f37b3552777c06b1cc9e6041612d564a2b0`; ethereum `0x9cae0da40bb40a93931f40a664603b01b5c2ce95`; ethereum `0xb70a2e06e77e7d91f8b9332639f8b7ebe48d99e6`; ethereum `0xb933b5a5257dd22a1801b5d6452307c5940cc060`; ethereum `0xea87d365530ac92a8b5df97e4f16016b3e64e0a1` | ⚠️ Unaudited |
| Spread28Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d531ea16caf1cf7b7cbc333e8963db59e8dad5` | ⚠️ Unaudited |
| Spread60Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36618ce1615305f3b99eeb9df8d4272e729a81ab` | ⚠️ Unaudited |
| Spread90Days | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c1cf8fcde74a373791863953b8c9ab417795d5` | ⚠️ Unaudited |
| SpreadBaseV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x768762712eca97bc9ec930320d3ee0bd91a358fb` | ⚠️ Unaudited |
| SpreadCloseSwapService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x948548414a364c7d6f379ed73aeddb3c795dcacd` | ⚠️ Unaudited |
| SpreadRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x11cc7a3b0519ad10542907d985e6b0780281ede2`; ethereum `0xac1c86ceacf03d5afc8b08a22fc38ec7c72338ed` | ⚠️ Unaudited |
| SpreadRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa14eb6cb1d10348b224796be50edf1d620c90a8` | ⚠️ Unaudited |
| SpreadStorageLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50c618d63806ec1594547ecdb3e97737d6c12c6` | ⚠️ Unaudited |
| SpreadStorageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45336f3fa7b0f6e030f60eada71de147bff1493e` | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c59d9cd3859673edc70b0bcf66e2715831c3816` | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec22c4defe53ec35f03f0b6468ec319c577defc` | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be6e757763a3b7106d211df5017823366ce3c1e` | ⚠️ Unaudited |
| StakeService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3790383f8685b439391dc1bc56f7b3f82236f6c7`; ethereum `0xf8302787582fb769fd30107e4d877695f0deafea` | ⚠️ Unaudited |
| StanleyDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8f0279e4a5d3447e6dd9b536e03504f20313a817`; ethereum `0xadeb2ff65d75f971087dc8a09b149df6313c1872` | ⚠️ Unaudited |
| StanleyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe945ef2449a22958267c67a7df63519454a339e4` | ⚠️ Unaudited |
| StanleyUsdc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb512e32e56f270e9a1dbd56be6fa7baf0014114b` | ⚠️ Unaudited |
| StanleyUsdt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6923eaa3cd97c6f4369c8a40bd9324ffa5903d6` | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x176f645b837663f4af2579f37059bdc22ee69584`; ethereum `0xab97e49fcb752f7713090814199b4458b4ea1bad` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x526d0047725d48bbc6e24c7b82a3e47c1af1f62f`; ethereum `0xfa0186c12e5166d02ef871a89349f7c664999f8c` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x58703da5295794ed4e82323fcce7371272c5127d` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x77fcae921e3df22810c5a1ac1d33f2586bba028f` | ⚠️ Unaudited |
| StrategyAave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc843174ffb68a02d8c64048e062b21c53ea574c9` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87cef19aca214d12082e201e6130432df39fc774`; ethereum `0xcf7be43d901b348928bc14fc52cb6fe2afbc7de0` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbb838373c5168184abf60c2547cec94411a2a5da`; ethereum `0xe4cd9aa68be5b5276573e24fa7a0007da29ab5b1` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc301ecc4dbc68e6d4591df3928d1a71e7883d7df`; ethereum `0xe5257cf3bd0efd397227981fe7bbd55c7582f526` | ⚠️ Unaudited |
| StrategyCompound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84450ca246858fe12ae58da6458e46d2a03d751` | ⚠️ Unaudited |
| StrategyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc26be51e50a358ec6d366147d78ab94e9597239c`; ethereum `0xd45763b40d630c8516dff003718b70ab9d44d6db` | ⚠️ Unaudited |
| StrategyDsrDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceceb64f9ab43b69a1f40d188d6b2542cb60ec2d` | ⚠️ Unaudited |
| SwapExecutorEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e3654082406519e35a5426bb54f29d2651bd1c4` | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a7034b0a5b5356e6975c5efe9217b25085205e9`; ethereum `0xe092b93d8aeebc10efd164cf67ccc381825f1b09` | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b1a6b2e6af64e74275015a65687de0ca941f537` | ⚠️ Unaudited |
| TradingCompetitionRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0aa4a0706fc8196710203ab097db97f96f05f824`; ethereum `0x3d143852a86ad775d7d033ad707025c9185623e6` | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5`; ethereum `0xd932d47fcf53d8dc1ef58455dd5910e19af2dbf0`; ethereum `0xee9a18f0de64e8eb399a3baef0550aa50a218768` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x54c860323ccd609405a18e46b0f799beb5df5d50`; ethereum `0x641b81e993e1c52a74a84caf17f1ad50a49675b3`; ethereum `0xa301d6f34f2c8399e8564681cf675999cc1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e0b22a5052b640967c55b92401b1c067fda53e0` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393834 | `0x63103375659d0aa94e9f35df15be01a3dd1ae9c0` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393835 | `0xb0f56bb0bf13ee05fef8cd2d8df5ffdfcac7a74f` | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cf053385492fef81e538f849e1e5308befc1a5c` | ⚠️ Unaudited |
| UpdateWithdrawManagerMaintenanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74ca34c2c47d0865856a54060246ab736a0bb0d0` | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8771e28451f0a2b891b3401c94bcfa272215d48b` | ⚠️ Unaudited |
| VestingAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87858b848c4b64bda3d694a554c5188f4c3e20e0` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x30378c767a5f2c444287bcbdbdb29a73af125151`; ethereum `0xfa5f2e760b0d9586db391098b9ac1f97f1a7d8db` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd643daebbc7a98fc00afbe4e6204b23eb4374d` | ⚠️ Unaudited |
| WithdrawManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 26 deployments: ethereum `0x0a78c1a2d99f1c9a03277a7c64734b7ffb336d2d`; ethereum `0x19e5ac38a67d2422c87992150cbffb40de02737c`; ethereum `0x22524fd9da2fb68c9603ad32fdd29dd2952bd0a1`; ethereum `0x468de989457f45c7bba362227274ae67e96d7b76`; ethereum `0x4ba0f214d1b7f572d11dabe8fe0be9c99e25e6fd`; ethereum `0x5903e1aeec722943cc5f816cb8c688b30777b2dd`; ethereum `0x5b7aecdc033968ccbf74f529f7de39df727b5c81`; ethereum `0x75742cc3d48720de065814428f62622c56db6a86`; ethereum `0x784008e32c9f07d564f272ff8d6ea746e6842c1b`; ethereum `0x79f140cf8ae51880fa00468c9621da125e79bbdb`; ethereum `0x7f447457a771745688de5ec7c68c12fb47722349`; ethereum `0x8138fd4f5b62237c201b4d6c721b702dc64584e1`; ethereum `0x83bc53e2663ad903b4d1f7d89fb5527cf5df28b7`; ethereum `0xa76aa0b3d570ae04fcdd3e03fd217bfc5511448c`; ethereum `0xa90196785a133ad5f1768347eb407fcb1b44b77d`; ethereum `0xac84794ad9aa87fd001e019bbeb53c5c0bc69c2b`; ethereum `0xbacf97aa4bcb35b285b5838e5a459b632580ad28`; ethereum `0xcb1ceae1645f721a378357d64f57527d0280b111`; ethereum `0xcb5d695f4c64f88ea3026b416f43913c629f2bb1`; ethereum `0xd685cec80b342117c5754148a63e161132ff44d3`; ethereum `0xd9d6ac593e62ffcb1c1106865c87d11356a401f3`; ethereum `0xdaf066a6b51499941299b566d1b124678ebc2b3c`; ethereum `0xdbe385169ee000cb82021c472a3312585d7fb444`; ethereum `0xefde29882c102fe5a4008e7c2e8067a3059fae28`; ethereum `0xf08cb48bfc705ffb4f2064c578987a27daad1386`; ethereum `0xf215cf8b8accd1f87edcdcddcf979fef0ffbd101` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00b0c40cfff6bb23816f110387593032b26fe521`; ethereum `0x86ea413c729fde506a443c6a929f735a24b488ae`; ethereum `0xe37b58668e23920edf841c90e2c3d2c61333e587` | ⚠️ Unaudited |
| WrappedPlasmaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74714bc6fbf7c2dfabc7650dd40e97f05e8b2c12`; ethereum `0x757e1bb7ade1ee157690b2c2d600a5a87cfb7058` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f68a6a4fca2e6b85d041a53eb4090f6ac3311f5`; ethereum `0xb17a9d70a73e0dcffc12563bcc0c1d68f3f353c8` | ⚠️ Unaudited |
| WstETHPriceFeedEthereum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4329e2178d41d058cf2808c11436a9e83bc5d8b0` | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x3aae99dfdf99bf86c400b618f470f1d2de94ee51`; ethereum `0x48bd852d83f6e58af59255abc708e3ddecb1d1e6`; ethereum `0x759ddf11e56d2915fe10ea8c4dbfc44a8d048e6e`; ethereum `0xb5c14b4c741391d5625a56f70049ab2d720be9c9`; ethereum `0xbc2907d76964510a4232878e7ac6e2b18c474efb` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc50b2d51fd1e2ac67a9c09eaf63c24ea2465c64b` | PlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43a32d4f6c582f281c52393f8f9e5ace1d4a1e68` | PlasmaVaultBase | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 209 |
| upstream | 10 |
| standard_library | 0 |
| needs_review | 2 |

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
