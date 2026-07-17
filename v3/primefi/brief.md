# Agentic Audit Brief: PrimeFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PrimeFi (`primefi`)
- Website: [https://primefi.xyz/](https://primefi.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, hyperliquid
- Contract surface: 155 unique implementations (198 raw deployments)
- Coverage basis: 0/14 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $174,869.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PrimeFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base, hyperliquid. Structural roles: 13 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: unclassified (13), core (1)
- Contract kinds: contract (14)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x009a18797c9c7eb06811d4cdc44881f3c5fa748a`, chain 999)
- UnnamedContract (`0x11f7467591b3e9e7b4d97e0827dcaae51e46d373`, chain 999)
- UnnamedContract (`0x1952dd6d79a7ab0419321e0669b1bdf4df1490e5`, chain 999)
- UnnamedContract (`0x386f40c2a8485d6572cb74a736a0763c0521095b`, chain 999)
- UnnamedContract (`0x5fc1737115ecb6850be0a4f0ce25b7f98231cab9`, chain 999)
- UnnamedContract (`0x98b7056e0e0521b7ba32f4ac8af8e1249789d2d6`, chain 999)
- UnnamedContract (`0xd00fe535b82f215989178609286610fe666e5365`, chain 999)
- UnnamedContract (`0xd218a5f74af42d9b1a879e2349e751deafe3114c`, chain 999)
- UnnamedContract (`0x3a577f9789fc81c2ea0b81b9e02b6dbc67158a37`, chain 8453)
- UnnamedContract (`0xd9ba32e8a4955e4fbbbdd61f121b2f81ca7bbfe8`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x07cb5aa0c467df9b3a38df3fbfd465c454905690`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x182cfb49ad159f8c770ef7ad9ff56f3e61b9a9fa`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x6e811aa146f961c918d14be9ed9c0cd68f447a6e`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x71f719166c403ac15f55567babdd19b7da1e8817`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x9601c465c3c404465d968a2dda10fd807f2b2d5c`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0xcf4642ef89683d0299b59738b1cc3ac0177348ba`, chain 999)
- InitializableImmutableAdminUpgradeabilityProxy (`0x1ff5e0037b478547715a4ce337d9fcff86a30401`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2a50be4df06202a239384e828d6e67f9f2fa954e`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x47c4d740016411bb8f5c9d9bdb3f866c9b46e0a4`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0x834695a5d33967f8cc27e6d15684c0aa36ca4375`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xaae0d3c0b4aa454ceb5b5346ba1e95a86395d656`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb9a14b24c6e669d24e76dab65f7c4dc52f68741c`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc12bdd620a54149df6b73fad9726d387402a9066`, chain 8453)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdbed51f298901987651faf1daed8bb575942d406`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 14; live-surface rows included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 24/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/14 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 24 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 131 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 29
- Confirmed-live implementations: 24 of 155 unique; 131 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/87
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 0
- Unverified implementations: 68
- Unique implementations: 155
- Raw deployments: 198
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8bd82c5f94d2caff3f980f0137f16add71e98dfb` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3bc108ca0202739fc65bf453a255e5c49ba6544a`; base `0x7b7cd09465ff2cab67360d5cd24a3cc3ad0c856a` | ⚠️ Unaudited |
| AToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x1de97549d6ce6ab9e44a2f5468ae003a00826a82`; hyperliquid `0x6e2c18389f6eea695c9d7d1396efe4dddbc7bfd0`; hyperliquid `0xa334794d82fb7d6f292f77eb78ad5370d306cc1d` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8c6357575bbe7157612ba763dd5cbdbdfabf83e8` | ⚠️ Unaudited |
| BountyManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1d3f9b3a0bfaac53fca7b2042ec5736321df3d48`; hyperliquid `0x24498eb51a72d7cca8e005e81ed3c2e70f390778` | ⚠️ Unaudited |
| BountyManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x95d7a59c230d184f16b497c3c1bb834ca397c241` | ⚠️ Unaudited |
| Compounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb0241128b4e66ea783f12dcb2b73ff19d8789e0e` | ⚠️ Unaudited |
| Compounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xb16aecafa1310a1c51f66ebdf6fb753bfa76450e` | ⚠️ Unaudited |
| CreditMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x12dc9256acc9895b076f6638d628382881e62cee`; base `0x21e6738985aea7d8c547616ffb52d4fe56d92b9e`; base `0x6b73d3cbbb278ce2e8698e983aeccdd94dc4594b` | ⚠️ Unaudited |
| DataStreamConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x04edbf3904789d80b0c991e0b66577f2208a2be6`; base `0x163a1e3cd4726f3c92eb005a942308029c27f64b` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 5 deployments: hyperliquid `0x0590aab2b147adb08da1dcdc555fb0bb509213a9`; hyperliquid `0x2ce24d319d7f5598f1c900025cdc939670fefb41`; hyperliquid `0x3bc295c25416721849dc69de40cfa531c8bc5fa5`; hyperliquid `0xa2f901f3e5f910d91cb76686a7fe8319bbcdef0c`; hyperliquid `0xc3062b884ab44aad5823730a52a394c132527d57` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb3dd71a3ef63b7becefbc68a87352fcc4507ba97`; hyperliquid `0xc1f647c2fb6d21ad13070fca9d543d8c2f9d6e25` | ⚠️ Unaudited |
| EligibilityDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xe8df0d0cba73403ca89e07e6deca9252e1af4084` | ⚠️ Unaudited |
| FeeLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x08ed1d79d509a6f1020685535028ae60c144441e`; base `0x15efb7850aa5b7a05184579b0aab501091e7b389`; base `0x17e450be3ba9557f2378e20d64ad417e59ef9a34`; base `0xa76cd3a43751090c40a35c37b38aa06973cc6184` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x833589fcd6edb6e08f4c7c32d4f71b54bda02913` | ⚠️ Unaudited |
| Flik | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4483564436120d7fbbac8a346ae0bbad4c8f219b`; hyperliquid `0xd27fb81fa6cc49838d181dcb9ab8a81cc60c9576` | ⚠️ Unaudited |
| Flik | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x76c6452e7c4711ee986b4911243ea20d8b28f506` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3ad9435fe5dc18d295a2816aaea590b710b0462f`; hyperliquid `0xf532fdfdf2787c5af15c2b09e8ec6a31247f6b30` | ⚠️ Unaudited |
| IncentivesControllerDiamond | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x95d7a59c230d184f16b497c3c1bb834ca397c241` | ⚠️ Unaudited |
| IncentivesControllerGetter | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc69ba5c734e68aca6c034c2e5a4170e5966151be` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251787 | `0x07cb5aa0c467df9b3a38df3fbfd465c454905690` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251789 | `0x182cfb49ad159f8c770ef7ad9ff56f3e61b9a9fa` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251793 | `0x6e811aa146f961c918d14be9ed9c0cd68f447a6e` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251794 | `0x71f719166c403ac15f55567babdd19b7da1e8817` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251795 | `0x9601c465c3c404465d968a2dda10fd807f2b2d5c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251797 | `0xcf4642ef89683d0299b59738b1cc3ac0177348ba` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251777 | `0x1ff5e0037b478547715a4ce337d9fcff86a30401` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | proxy | project_anchor | own_supporting | 1 | base | unit-251800 | `0x2a50be4df06202a239384e828d6e67f9f2fa954e` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251779 | `0x47c4d740016411bb8f5c9d9bdb3f866c9b46e0a4` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251780 | `0x834695a5d33967f8cc27e6d15684c0aa36ca4375` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251781 | `0xaae0d3c0b4aa454ceb5b5346ba1e95a86395d656` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251782 | `0xb9a14b24c6e669d24e76dab65f7c4dc52f68741c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251783 | `0xc12bdd620a54149df6b73fad9726d387402a9066` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | base | unit-251785 | `0xdbed51f298901987651faf1daed8bb575942d406` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x88b60d926754accb8facadd092f68f066c0bb7d0` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x8a619d8e3bfab54f7c30ef39ce16c53429c739c3` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x07093ca1e6c8c03ff77dea07532f738d88de1d75`; hyperliquid `0x66e36833c6dc29befe29a633e4af0cb4dd69a8e3`; base `0xbc2adf6bee6e8468f9e60dfc017d4e2ce682be0c` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x69a3c30a85aa1e22791466a08819c1080f0aab7f`; hyperliquid `0xbc2adf6bee6e8468f9e60dfc017d4e2ce682be0c`; base `0xbfee735e3868f8990787cceaa4b920c9ed162b07` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1688266ce67dc0894dfb71be2ef319feb03b1b6b` | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x163a1e3cd4726f3c92eb005a942308029c27f64b`; hyperliquid `0xfebc15460a5af7bd5c0f2d6746aab00c9531747d` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7169bf0ccfb949d2fa78a8bdaee0410fbd617632`; base `0xd719084151f1f47b7dcb937bb33845656580b79d` | ⚠️ Unaudited |
| LockerList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6584bfe4d784bb8f1fd81d569a2202ce6f2f42ad`; base `0x7d08e488fa39e7f29701c90eb49cc766857895a8` | ⚠️ Unaudited |
| Looper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1853d7da8986a3c20f9ab51759e9a3967c5f89e8`; hyperliquid `0xc957668b2a4c507d44d0aeebd1f8f5fc139f0da1` | ⚠️ Unaudited |
| Looper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x515fbd7124a782818ba6719e48e94c489ba769f4` | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1b2164d254c7fa14901d54fb1043fb228eacb8f6`; hyperliquid `0xfb5c7dc83caa47e9ab314073fb5152191380ed8a` | ⚠️ Unaudited |
| MiddleFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7f2ebfb68be75e56bb6c14c504bb0a0c0b6eb8df` | ⚠️ Unaudited |
| Multicall3 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5eb7ed8e58e7ed4509612f3e9ccb5433ee822dc9`; base `0xc7c567e10656eb2f4b1024757263a587ac1942ad` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x33cd734739c6ded500fd080d476d93135cb813ef`; hyperliquid `0x6a82558f226b3e7450024481d634694d3210907c` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5b6d95545750f1bb1812f5c564d9a401d3debd80` | ⚠️ Unaudited |
| OFTWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd433efa0ef993b14fe67ca92fcd555e95486f184` | ⚠️ Unaudited |
| ONFTDiamond | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x693a3a45ff596024f844be1cc6845d59f778dcf5`; base `0x8da56bed633b73547535f0563f287472e1bc9fa5` | ⚠️ Unaudited |
| ONFTMainchain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x47af6fba7160e9ff9997f2757232d026ff97d34e` | ⚠️ Unaudited |
| PRFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7bbcf1b600565ae023a1806ef637af4739de3255`; base `0x7bbcf1b600565ae023a1806ef637af4739de3255` | ⚠️ Unaudited |
| PRFIVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x16db157393eb152a0c708d053c2b91e5a350e38e` | ⚠️ Unaudited |
| PRFIVestingV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a01d4f32a6ba70185b736588dfc77c25852472a` | ⚠️ Unaudited |
| PRFIVestingV2_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0fe1842557dd15b9c040486e68677c2eb3f38040` | ⚠️ Unaudited |
| PRFIVestingV2Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x44312db52c13fbd33a975db5d12840c17c80b89c`; base `0xc7f1716625d999fb8d70b67e47310fe401000c7a` | ⚠️ Unaudited |
| PriceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x198c93ebd82e9285376f43e2a98b8d58969ad850`; hyperliquid `0xea08468efd77bc42d09f629f890770bf19fd2159` | ⚠️ Unaudited |
| PriceProvider | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x04edbf3904789d80b0c991e0b66577f2208a2be6` | ⚠️ Unaudited |
| PrimeChainlinkOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x97d76a00eae8c8a8edc31a746f647dff12849011` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x11b545129bd04e86a82969dc1d83089be078d4b4`; hyperliquid `0x77b9f5c7ab2c1192869c704615eaee9981c9d5fb` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x70a74f992a2806e2921c4e9205e4e6237ab361f9` | ⚠️ Unaudited |
| RewardLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x22bdf9633f3e679785638db690b85dc0dc8b35b8` | ⚠️ Unaudited |
| RewardRegistryLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8db623d439c8c4dfa1ca94e4cd3eb8b3aaff8331` | ⚠️ Unaudited |
| SidechainIncentivesController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68a17ddf7ab288c2d59be84dda6706a8fe7a4878` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7b4ce028a8b58d3fde250cd0e125b7e33b6a8d98`; hyperliquid `0xab008abd38ac3fb371d8c442d48e10225cd46db6` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5dff4ba7a9858a03e7958aba906fdf8d702013cd`; hyperliquid `0x6681155c2edc50f79535d8e4861c3fdb1d4da856` | ⚠️ Unaudited |
| Staker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x63af36718dc17714805b3a988fced01c16242a2c` | ⚠️ Unaudited |
| StargateBorrow | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0xb380637652cafbb37e08ecafc015ffcb800618d0` | ⚠️ Unaudited |
| StargateBorrow | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x944963ff76c7618edbf926469a3f77a78d461d65` | ⚠️ Unaudited |
| StargatePoolNative | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc181bd607330aeebef6ea62e03e5e1fb4b6f7c7` | ⚠️ Unaudited |
| StargatePoolUSDC | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27a16dc786820b16e5c9028b75b99f6f604b5d26` | ⚠️ Unaudited |
| TokenMessaging | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x41a5b0470d96656fb3e8f68a218b39adbca3420b`; base `0x5634c4a5fed09819e3c46d86a965dd9447d86e47` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x43960b513147ee59bf7018e032add20df7faab1d`; hyperliquid `0x76c6452e7c4711ee986b4911243ea20d8b28f506` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d87ba6c21612d96275299916baa295a527187d6`; hyperliquid `0xac4044aa30d3f8727cce1f7d527cb7bc02e73b4e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0x69a3c30a85aa1e22791466a08819c1080f0aab7f` | ⚠️ Unaudited |
| Treasurer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xb7a05a3a687ef09cc70e3f98b5f6a62f32e3ae58`; base `0xd47b03ee6d86cf251ee7860fb2acf9f91b9fd4d7` | ⚠️ Unaudited |
| UiPoolDataProvider | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x53ced6bedea3e1f0f729629ac59c698d4a7fe409` | ⚠️ Unaudited |
| UiPoolDataProviderV2V3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7d08e488fa39e7f29701c90eb49cc766857895a8` | ⚠️ Unaudited |
| UniswapPoolHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | `0x58933fab624ed4e6b7eb9e64cb470bb61be4de6d` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87b417af600312df37f551a05ae14bcc3d55bc36` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3a0a3639ed67a038a5f5071b6351f7e2b850c7dd` | ⚠️ Unaudited |
| VariableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x065fd3ba477c85503bfac48be7d1a2fcada02847`; hyperliquid `0x2e6ba568aaebadb4db3e018313ee34bad0328988`; hyperliquid `0x924045931252a4a5fa7dcbc32bd963939837b0d6` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: hyperliquid `0xa911afd7db4226cee8073cda2da668b4cb918af9`; base `0x33cd734739c6ded500fd080d476d93135cb813ef` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4200000000000000000000000000000000000006` | ⚠️ Unaudited |
| WETHGateway | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x88ae2596dac8e7e9e235b465ee8215cc3192fcae`; hyperliquid `0xac57f0d2f8ef17b8d26189ba0db353361374b2ca` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (68)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251786 | `0x009a18797c9c7eb06811d4cdc44881f3c5fa748a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x01c46d99154b80f201803d6c16bccfb9a7832fae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0894102d71ee64342741fd5d15c601a027769292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0bd6d1d83bee2d56c4be64cce156913c6c18da2f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251788 | `0x11f7467591b3e9e7b4d97e0827dcaae51e46d373` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251790 | `0x1952dd6d79a7ab0419321e0669b1bdf4df1490e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1e8559dc36662ef13c924e0ef65a4c8bbcb97582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1fd0ee2db11a51e316d6dd26a6319ea00e6f6f57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251791 | `0x386f40c2a8485d6572cb74a736a0763c0521095b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x40d9ab82b92d9bbf30a851b5c9fca840b5da0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x519e18819096019fa9281ff3bd71d837036baa44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5275a0d20e9904122667b1bf0407280178dae649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5382ce056de531290f3f69b28d84e075e299de88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x57e1fb32d4c36320fcc1fc9aa1441858238ecb9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251792 | `0x5fc1737115ecb6850be0a4f0ce25b7f98231cab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x65a2578e2bb5fe859bf637fec45b5a8e408755a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ebe64e923405610834c8e9694500a42eb953ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x722843b638dc6c2d8f8697fb2b65cae85700212b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x78adb8d91ab57332c49a0ae6bb3031f3909fbbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x83bb28cc173814fecabad6d9be0baa03c02f1ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x854dd2b26b88411eca8493178e330f83d3073ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x89563afbc36145d27c567dd4eefab766aaf4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251796 | `0x98b7056e0e0521b7ba32f4ac8af8e1249789d2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9fa63c68d7d2b72f923f96cd95fbde70341e330c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc32991be6e2cb5f516f85cc512c3bde4632b1057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc75f6d68b0efc3f20692b8a4b3750018639b8e88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251798 | `0xd00fe535b82f215989178609286610fe666e5365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd0696a0d8b584001905acbec62d899abdf40a56a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251799 | `0xd218a5f74af42d9b1a879e2349e751deafe3114c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd75dda802a2cece36c542868a6f5ea590db655be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdd93088e35e0b5423a394b934385229b13a7df3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdfc67d79ecdd40f0702c38d7a50985275d10c4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0412cd2d9f333c68ca6d208b2aa846a5f2901787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x065fd3ba477c85503bfac48be7d1a2fcada02847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08bacc0ba73681af12e3df616010032422ae75d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c7558f634b3465ff7637500d5a710731393c8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0eb74491493e9722cd876ada671ff8a62650ad83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13379b489fb2e76cedf96bceaa2441e5930d75e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1502fa4be69d526124d453619276faccab275d3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x160345fc359604fc6e70e3c5facbde5f7a9342d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b2164d254c7fa14901d54fb1043fb228eacb8f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1e8559dc36662ef13c924e0ef65a4c8bbcb97582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2bd11f0f5e36411d7587d8a8969f9db6c7022973` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251778 | `0x3a577f9789fc81c2ea0b81b9e02b6dbc67158a37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3d51540dfdda899ba2fc15fd7b78e53557563bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x430102caac989c9259edb9a80a772ce547ef0f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5177a8bf01842fd5b47f3bafee098f46b561a95b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579d29810c8e5b84c18d9ae2e47219ce028536d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5c386d85b1b82fd9db681b9176c8a4248bb6345b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x647fd4d817e395616f2eb57b75ab49210cde5cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b25bd29496ef5280f5c6b097733b52735088c41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x793db56a15ca053dcfd9d62b9992eb1906bad98b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d8f06ed5f7844037a01d7b3f690c2dcc1c68494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7eb97441c0c637377a441599412434e554cb3f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x816e810f9f787d669fb71932deabf6c83781cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86ceb2583db939ca2e3ddf638cd34e7654936f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x873cfb4bae1ab6a5de753400e9d0616e10dced22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8899da8a3621708709feb9ee3991299769e96e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcdb3ad3d8f873a9a1c35e36f4545b15e293ed570` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6a291aaeeab8d118fa07b649760bb84a693e26e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251784 | `0xd9ba32e8a4955e4fbbbdd61f121b2f81ca7bbfe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdf320691ea30081a9c4179ab31ddb7e23e22151a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe520d724f0c4b72faeb9c0580281f6fe1f3e79f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xeb3ba9f55ec6fa6395d64300ee2bb75f50e9e8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2e2a49631927108086268c68c559c63c3c8f73d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf6f832466cd6c21967e0d954109403f36bc8ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf78ea70b81946b746c79e4bea38924089e33808c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfebc15460a5af7bd5c0f2d6746aab00c9531747d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view](https://drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view) | PeckShield | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3](https://www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3) | QuillAudits | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2750] drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view — no match: No explicit scope table; contracts extracted from findings targets and references.
- [2751] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3 — no match: No contract names or scope section found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | RewardDistributionController | unmatched — not counted | — | Listed as target in findings PVE-001, PVE-002, PVE-004 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | MultiFeeDistribution | unmatched — not counted | — | Listed as target in findings PVE-003, PVE-005 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | EligibilityDataProvider | unmatched — not counted | — | Mentioned in finding PVE-002 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | LendingPool | unmatched — not counted | — | Listed as target in finding PVE-006 | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | ChefIncentivesController | unmatched — not counted | — | Referenced in finding PVE-007 (example setters) | no |
| drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view | LendingPoolAddressesProvider | unmatched — not counted | — | Mentioned in finding PVE-007 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 10 |
| standard_library | 19 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [2750] drive.google.com/file/d/1TLig0aCVzmdpwOvYbE_S3JX-BOYIGwVG/view
- [2751] www.quillaudits.com/leaderboard/prime-numbers/prime-numbers-v3

Fork inheritance lineage and inherited audits are included when available.
