# Agentic Audit Brief: UwU Lend

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: UwU Lend (`uwu-lend`)
- Website: [https://www.uwulend.fi/](https://www.uwulend.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 86 unique implementations (89 raw deployments)
- Coverage basis: 12/86 confirmed own live verified implementations (14.0%); conservative 14.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $236,350.53
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for UwU Lend. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 123 contract row(s) across ethereum. Structural roles: 71 core, 36 unclassified, 16 supporting. 15 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 123
- Structural roles: core (71), unclassified (36), supporting (16)
- Contract kinds: contract (120), unclassified (3)
- Detected standards: erc20 (35), ownable (18), erc1967proxy (15), erc20permit (8), erc165 (3), pausable (3), accesscontrol (2), erc4626 (2)
- Frameworks: openzeppelin (80), foundry (23), boringcrypto (4)
- Upgradeable-pattern rows: 15

## Fork Analysis

5 of 89 contracts are derived from known codebases. 84 contracts have no detected origin.

### Forked Contracts

**FRAXStablecoin** (`0x853d95...75b99e`, chain 1)
Origin: alchemix (`0x853d95...75b99e`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**InitializableImmutableAdminUpgradeabilityProxy** (`0x408c97...5b005c`, chain 1)
Origin: xave-finance (`0xc8c8e2...50eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPool** (`0x05bfa9...25ea4d`, chain 1)
Origin: bao-finance (`0x8dff5e...a30fcf`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LendingPoolConfigurator** (`0x40daf7...835347`, chain 1)
Origin: xave-finance (`0xc8c8e2...50eb8c`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ValidationLogic** (`0x3c0ada...8839af`, chain 1)
Origin: bao-finance (`0x8dff5e...a30fcf`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- AaveOracle (`0xac4a2a...772598`, chain 1)
- AaveProtocolDataProvider (`0x17938e...8cd521`, chain 1)
- AnyswapV5ERC20 (`0x3b79a2...7faf57`, chain 1)
- ATokensAndRatesHelper (`0xaab1b4...b95645`, chain 1)
- BLUSDToken (`0xb9d7dd...3f79c3`, chain 1)
- ChefIncentivesController (`0x219531...1cccdb`, chain 1)
- crvUSD Stablecoin (`0xf939e0...ac1b4e`, chain 1)
- Dai (`0x6b1754...271d0f`, chain 1)
- DefaultReserveInterestRateStrategy (`0x03bca3...af7b64`, chain 1)
- DefaultReserveInterestRateStrategy (`0x4cc685...ccd1c2`, chain 1)
- DefaultReserveInterestRateStrategy (`0x690dcb...ff494a`, chain 1)
- DefaultReserveInterestRateStrategy (`0x9203a2...cf1a9c`, chain 1)
- DefaultReserveInterestRateStrategy (`0xb87872...5543b0`, chain 1)
- DefaultReserveInterestRateStrategy (`0xba285e...e9e6a6`, chain 1)
- DefaultReserveInterestRateStrategy (`0xc818d6...7a89c5`, chain 1)
- DefaultReserveInterestRateStrategy (`0xf15ca7...8c1836`, chain 1)
- GenericLogic (`0xaede01...198b89`, chain 1)
- IncentivesControllerV2 (`0xdb5c23...8e9e5a`, chain 1)
- IncentivesControllerV3 (`0xf8390b...d6c568`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x02738e...560dae`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x1254b1...8e410f`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x13cdfd...11176b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x20e61b...564aa4`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2409af...87c668`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x243387...31aa70`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x24959f...233c7d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x29d567...03ac3f`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x39a873...7726b9`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x453842...d023d3`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x511447...b7e670`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x51e0f1...9427d9`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x5c8cb0...b3f241`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x64e484...e4e2d4`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x67fadb...0e13e5`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x6ace5c...d8fc8d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x8028ea...ea90a6`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x82a49c...8d2805`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x8c240c...8fa93d`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x9abe34...bb18ef`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xaac1d6...8dc160`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xadfa5f...500086`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb95bd0...3c7626`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb9e8bc...0affa0`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xbac9d1...488d66`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc480a1...bc12fc`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc4bf70...1ba0fa`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd1e6b0...3510e2`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd5bfd3...47850b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xd7f6e4...450d11`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdb1a8f...a59eba`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xe873e3...748fad`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xeb61e5...8a14cc`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xec12f6...b7b2c1`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xf12931...0b67a6`, chain 1)
- LendingPoolAddressesProvider (`0x011c0d...f7f1fb`, chain 1)
- LendingPoolAddressesProviderRegistry (`0xac5384...cabed4`, chain 1)
- LendingPoolCollateralManager (`0x2e9f84...fe7ddb`, chain 1)
- LendingRateOracle (`0x413a1f...522fe4`, chain 1)
- Leverager (`0x780dcf...2f32ed`, chain 1)
- LUSDToken (`0x5f9880...568ba0`, chain 1)
- MagicInternetMoneyV1 (`0x99d8a9...1e17f3`, chain 1)
- MultiFeeDistribution (`0x7c0bf1...c5e237`, chain 1)
- MultiFeeDistributionV2 (`0x0a7b2a...9b0188`, chain 1)
- MultiFeeDistributionV3 (`0x630de1...2bdd44`, chain 1)
- ReserveLogic (`0x4be759...8fbdd9`, chain 1)
- SavingsDai (`0x83f20f...42beea`, chain 1)
- Sifu (`0x8dd098...9697ff`, chain 1)
- SifuM (`0x593899...ddaab5`, chain 1)
- sSpellV1 (`0x26fa3f...a106a9`, chain 1)
- sSpellV1 (`0x4ca9c6...c42b8c`, chain 1)
- StableAndVariableTokensHelper (`0xbcdad8...92279a`, chain 1)
- StakedUSDeV2 (`0x9d39a5...7a3497`, chain 1)
- StakingRewards (`0xe36435...527186`, chain 1)
- TetherToken (`0xdac17f...831ec7`, chain 1)
- TokenMintERC20Token (`0x29127f...eac313`, chain 1)
- UiPoolDataProviderV2 (`0x19dd01...e20ce5`, chain 1)
- UniswapV2Pair (`0x3e0486...2b6027`, chain 1)
- UwU (`0x55c08c...765257`, chain 1)
- Vyper_contract (`0xd533a9...34cd52`, chain 1)
- WalletBalanceProvider (`0x793533...c6addd`, chain 1)
- WBTC (`0x2260fa...c2c599`, chain 1)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- WETHGateway (`0x2fd22a...4d7d2f`, chain 1)
- Wonderland (`0x9b06f3...c68a76`, chain 1)

## Contract Surface Quality

- Indexed contracts: 123; live-surface contracts included: 123 (89 live, 34 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 87/87 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/86 (14.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 86 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Deployed-live implementations: 86 of 86 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 12/86
- Verified + Unaudited implementations: 74
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 86
- Raw deployments: 89
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 12 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 12 | 14.0% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260169 | `0xac4a2a...772598` | ✅ Audited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260210 | `0x511447...b7e670` | ✅ Audited |
| ChefIncentivesController | governance | project_anchor | own_supporting | 0 | ethereum | unit-260139 | `0x219531...1cccdb` | ✅ Audited |
| GenericLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260171 | `0xaede01...198b89` | ✅ Audited |
| LendingPoolAddressesProvider | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260134 | `0x011c0d...f7f1fb` | ✅ Audited |
| Leverager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260158 | `0x780dcf...2f32ed` | ✅ Audited |
| MultiFeeDistribution | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260160 | `0x7c0bf1...c5e237` | ✅ Audited |
| MultiFeeDistributionV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260136 | `0x0a7b2a...9b0188` | ✅ Audited |
| ReserveLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260149 | `0x4be759...8fbdd9` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260181 | `0xe36435...527186` | ✅ Audited |
| ValidationLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260146 | `0x3c0ada...8839af` | ✅ Audited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260220 | `0xec12f6...b7b2c1` | ✅ Audited |

### ⚠️ Verified + Unaudited (74)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveProtocolDataProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260137 | `0x17938e...8cd521` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-260145 | `0x3b79a2...7faf57` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260194 | `0x02738e...560dae` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260205 | `0x20e61b...564aa4` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260207 | `0x243387...31aa70` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260188 | `0x24959f...233c7d` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260200 | `0x67fadb...0e13e5` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260206 | `0x6ace5c...d8fc8d` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260219 | `0x8028ea...ea90a6` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260192 | `0x8c240c...8fa93d` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260185 | `0xadfa5f...500086` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260193 | `0xb95bd0...3c7626` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260213 | `0xc480a1...bc12fc` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260199 | `0xc4bf70...1ba0fa` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260189 | `0xd1e6b0...3510e2` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260187 | `0xdb1a8f...a59eba` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260203 | `0xe873e3...748fad` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260201 | `0xeb61e5...8a14cc` | ⚠️ Unaudited |
| AToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260208 | `0xf12931...0b67a6` | ⚠️ Unaudited |
| ATokensAndRatesHelper | token | project_anchor | own_supporting | 0 | ethereum | unit-260168 | `0xaab1b4...b95645` | ⚠️ Unaudited |
| BLUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260173 | `0xb9d7dd...3f79c3` | ⚠️ Unaudited |
| crvUSD Stablecoin | token | project_anchor | own_supporting | 0 | ethereum | unit-260184 | `0xf939e0...ac1b4e` | ⚠️ Unaudited |
| Dai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260157 | `0x6b1754...271d0f` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260135 | `0x03bca3...af7b64` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260151 | `0x4cc685...ccd1c2` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260156 | `0x690dcb...ff494a` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260164 | `0x9203a2...cf1a9c` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260172 | `0xb87872...5543b0` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260174 | 2 deployments: ethereum `0xba285e...e9e6a6`; ethereum `0xf15ca7...8c1836` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260177 | `0xc818d6...7a89c5` | ⚠️ Unaudited |
| FRAXStablecoin | token | project_anchor | own_supporting | 0 | ethereum | unit-260162 | `0x853d95...75b99e` | ⚠️ Unaudited |
| IncentivesControllerV2 | governance | project_anchor | own_supporting | 0 | ethereum | unit-260180 | `0xdb5c23...8e9e5a` | ⚠️ Unaudited |
| IncentivesControllerV3 | governance | project_anchor | own_supporting | 0 | ethereum | unit-260183 | `0xf8390b...d6c568` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-260186 | 2 deployments: ethereum `0x05bfa9...25ea4d`; ethereum `0x2409af...87c668` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-260170 | `0xac5384...cabed4` | ⚠️ Unaudited |
| LendingPoolCollateralManager | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260143 | `0x2e9f84...fe7ddb` | ⚠️ Unaudited |
| LendingPoolConfigurator | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-260197 | 2 deployments: ethereum `0x408c97...5b005c`; ethereum `0x40daf7...835347` | ⚠️ Unaudited |
| LendingRateOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-260148 | `0x413a1f...522fe4` | ⚠️ Unaudited |
| LUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260154 | `0x5f9880...568ba0` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260165 | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| MultiFeeDistributionV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260155 | `0x630de1...2bdd44` | ⚠️ Unaudited |
| SavingsDai | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260161 | `0x83f20f...42beea` | ⚠️ Unaudited |
| Sifu | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260163 | `0x8dd098...9697ff` | ⚠️ Unaudited |
| SifuM | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260153 | `0x593899...ddaab5` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260141 | `0x26fa3f...a106a9` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260150 | `0x4ca9c6...c42b8c` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | token | project_anchor | own_supporting | 0 | ethereum | unit-260175 | `0xbcdad8...92279a` | ⚠️ Unaudited |
| StakedUSDeV2 | token | project_anchor | own_supporting | 0 | ethereum | unit-260167 | `0x9d39a5...7a3497` | ⚠️ Unaudited |
| TetherToken | token | project_anchor | own_supporting | 0 | ethereum | unit-260179 | `0xdac17f...831ec7` | ⚠️ Unaudited |
| TokenMintERC20Token | token | project_anchor | own_supporting | 0 | ethereum | unit-260142 | `0x29127f...eac313` | ⚠️ Unaudited |
| UiPoolDataProviderV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-260138 | `0x19dd01...e20ce5` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260147 | `0x3e0486...2b6027` | ⚠️ Unaudited |
| UwU | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260152 | `0x55c08c...765257` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260190 | `0x1254b1...8e410f` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260191 | `0x13cdfd...11176b` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260202 | `0x29d567...03ac3f` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260214 | `0x39a873...7726b9` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260215 | `0x453842...d023d3` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260196 | `0x51e0f1...9427d9` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260217 | `0x5c8cb0...b3f241` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260216 | `0x64e484...e4e2d4` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260195 | `0x82a49c...8d2805` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260209 | `0x9abe34...bb18ef` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260198 | `0xaac1d6...8dc160` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260212 | `0xb9e8bc...0affa0` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260211 | `0xbac9d1...488d66` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260204 | `0xd5bfd3...47850b` | ⚠️ Unaudited |
| VariableDebtToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260218 | `0xd7f6e4...450d11` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260178 | `0xd533a9...34cd52` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260159 | `0x793533...c6addd` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-260140 | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-260176 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WETHGateway | token | project_anchor | own_supporting | 0 | ethereum | unit-260144 | `0x2fd22a...4d7d2f` | ⚠️ Unaudited |
| Wonderland | unknown | project_anchor | own_supporting | 0 | ethereum | unit-260166 | `0x9b06f3...c68a76` | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-UWU-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-UWU-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | matched | 12 | 2 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21205] PeckShield-Audit-Report-UWU-v1.0.pdf — matched: Extracted 15 contract names from the scope section (pages 4-5) and findings. The audit date is December 31, 2022 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-UWU-v1.0.pdf | MultiFeeDistribution | own contract | MultiFeeDistribution (selected) `0x7c0bf1...c5e237` — deployed 2022-09-19 19:11:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | StakingRewards | own contract | StakingRewards (selected) `0xe36435...527186` — deployed 2022-09-19 19:13:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ChefIncentivesController | own contract | ChefIncentivesController (selected) `0x219531...1cccdb` — deployed 2022-09-19 20:05:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | Leverager | own contract | Leverager (selected) `0x780dcf...2f32ed` — deployed 2022-10-13 00:59:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ReserveLogic | own contract | ReserveLogic (selected) `0x4be759...8fbdd9` — deployed 2022-09-19 19:54:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | GenericLogic | own contract | GenericLogic (selected) `0xaede01...198b89` — deployed 2022-09-19 19:54:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | ValidationLogic | own contract | ValidationLogic (selected) `0x3c0ada...8839af` — deployed 2022-09-19 19:55:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0x05bfa9...25ea4d` — deployed 2022-09-19 19:55:35+03 — liveness: live (proxy_unit_reachable)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x2409af...87c668` — deployed 2022-09-19 19:55:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPoolConfigurator | ambiguous — not counted | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x408c97...5b005c` — deployed 2022-09-19 19:56:11+03 — liveness: live (code_present_context)<br>LendingPoolConfigurator (alternative) `0x40daf7...835347` — deployed 2022-09-19 19:55:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | AToken | own proxy deployment | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xc4bf70...1ba0fa` — deployed 2022-09-19 20:10:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x243387...31aa70` — deployed 2022-09-19 20:10:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x02738e...560dae` — deployed 2022-09-19 20:09:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xf12931...0b67a6` — deployed 2024-04-16 13:21:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x67fadb...0e13e5` — deployed 2022-09-19 20:09:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x8028ea...ea90a6` — deployed 2022-10-17 14:06:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xe873e3...748fad` — deployed 2023-08-31 18:53:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x6ace5c...d8fc8d` — deployed 2022-09-19 20:09:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x20e61b...564aa4` — deployed 2024-03-11 14:52:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x24959f...233c7d` — deployed 2022-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xdb1a8f...a59eba` — deployed 2022-09-19 20:10:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xeb61e5...8a14cc` — deployed 2024-01-23 16:35:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd1e6b0...3510e2` — deployed 2023-08-15 11:41:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xadfa5f...500086` — deployed 2022-09-19 20:10:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xc480a1...bc12fc` — deployed 2022-09-19 20:09:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xb95bd0...3c7626` — deployed 2022-09-19 20:08:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (selected) `0x511447...b7e670` — deployed 2022-12-26 13:25:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x8c240c...8fa93d` — deployed 2022-09-19 20:08:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-26 was 5d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | VariableDebtToken | own proxy deployment | InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x82a49c...8d2805` — deployed 2023-08-31 18:53:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x1254b1...8e410f` — deployed 2022-09-19 20:08:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x51e0f1...9427d9` — deployed 2022-09-19 20:08:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x39a873...7726b9` — deployed 2022-10-17 14:06:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x5c8cb0...b3f241` — deployed 2022-09-19 20:09:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xbac9d1...488d66` — deployed 2022-09-19 20:09:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xb9e8bc...0affa0` — deployed 2022-09-19 20:10:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x453842...d023d3` — deployed 2023-08-15 11:41:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x13cdfd...11176b` — deployed 2022-09-19 20:10:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x9abe34...bb18ef` — deployed 2022-09-19 20:10:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xaac1d6...8dc160` — deployed 2022-10-11 20:26:47+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd5bfd3...47850b` — deployed 2022-09-19 20:09:59+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x64e484...e4e2d4` — deployed 2022-09-19 20:09:35+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (selected) `0xec12f6...b7b2c1` — deployed 2022-12-26 13:25:11+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0x29d567...03ac3f` — deployed 2022-09-19 20:10:23+03 — liveness: live (current_address_book_code)<br>InitializableImmutableAdminUpgradeabilityProxy (proxy) (alternative) `0xd7f6e4...450d11` — deployed 2024-04-16 13:21:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-12-26 was 5d from audit; next candidate 75d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | AaveOracle | own contract | AaveOracle (selected) `0xac4a2a...772598` — deployed 2022-09-19 19:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | FallbackOracle | unmatched — not counted | — | Explicitly stated: 'this audit only covers the fallback-oracle/FallbackOracle.sol contract' on page 5. | no |
| PeckShield-Audit-Report-UWU-v1.0.pdf | MultiFeeDistributionV2 | own contract | MultiFeeDistributionV2 (selected) `0x0a7b2a...9b0188` — deployed 2022-12-19 16:38:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-UWU-v1.0.pdf | LendingPoolAddressesProvider | own contract | LendingPoolAddressesProvider (selected) `0x011c0d...f7f1fb` — deployed 2022-09-19 19:52:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x02738e...560dae` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20e61b...564aa4` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x243387...31aa70` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x24959f...233c7d` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x67fadb...0e13e5` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ace5c...d8fc8d` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8028ea...ea90a6` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c240c...8fa93d` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xadfa5f...500086` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb95bd0...3c7626` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc480a1...bc12fc` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc4bf70...1ba0fa` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd1e6b0...3510e2` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb1a8f...a59eba` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe873e3...748fad` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb61e5...8a14cc` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf12931...0b67a6` | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaab1b4...b95645` | ATokensAndRatesHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb9d7dd...3f79c3` | BLUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf939e0...ac1b4e` | crvUSD Stablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1754...271d0f` | Dai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x03bca3...af7b64` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4cc685...ccd1c2` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x690dcb...ff494a` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9203a2...cf1a9c` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb87872...5543b0` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba285e...e9e6a6` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc818d6...7a89c5` | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdb5c23...8e9e5a` | IncentivesControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8390b...d6c568` | IncentivesControllerV3 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x05bfa9...25ea4d` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac5384...cabed4` | LendingPoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e9f84...fe7ddb` | LendingPoolCollateralManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x408c97...5b005c` | LendingPoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x413a1f...522fe4` | LendingRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5f9880...568ba0` | LUSDToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99d8a9...1e17f3` | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x630de1...2bdd44` | MultiFeeDistributionV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x83f20f...42beea` | SavingsDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8dd098...9697ff` | Sifu | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x593899...ddaab5` | SifuM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26fa3f...a106a9` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ca9c6...c42b8c` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcdad8...92279a` | StableAndVariableTokensHelper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9d39a5...7a3497` | StakedUSDeV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdac17f...831ec7` | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19dd01...e20ce5` | UiPoolDataProviderV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x55c08c...765257` | UwU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1254b1...8e410f` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13cdfd...11176b` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29d567...03ac3f` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x39a873...7726b9` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x453842...d023d3` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51e0f1...9427d9` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5c8cb0...b3f241` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x64e484...e4e2d4` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82a49c...8d2805` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9abe34...bb18ef` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaac1d6...8dc160` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb9e8bc...0affa0` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbac9d1...488d66` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5bfd3...47850b` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd7f6e4...450d11` | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd533a9...34cd52` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x793533...c6addd` | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2fd22a...4d7d2f` | WETHGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b06f3...c68a76` | Wonderland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 80 |
| upstream | 6 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 12 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 1 unmatched
- Matched-own operational status: 12 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=2, unique_name=10

Fork inheritance lineage and inherited audits are included when available.
