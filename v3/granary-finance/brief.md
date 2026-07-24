# Agentic Audit Brief: Granary Finance

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

- Project: Granary Finance (`granary-finance`)
- Website: [https://granary.finance/dashboard](https://granary.finance/dashboard)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, metis, optimism
- Contract surface: 154 unique implementations (154 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $615,228.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Granary Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 154 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/39
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 115
- Unique implementations: 154
- Raw deployments: 154
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142875 | `0x9546f673ef71ff666ae66d01fd6e7c6dae5a9995` | ⚠️ Unaudited |
| AaveProtocolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142870 | `0x33c62bc416309f010c4941163abea3725e4645bf` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142893 | `0x3f45e5a462a4c7f0ed4bbd5c70bdded55b7448fd` | ⚠️ Unaudited |
| ATokensAndRatesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142879 | `0x0ce5e78139090cbf36fc6fb7f655204a981907e2` | ⚠️ Unaudited |
| ChainlinkSourcesRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142872 | `0x37682435b24cc7ba3767c4abe3b81bfa65ec587d` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142863 | `0x025d9d36c616946530ff8ea32d912abf73170947` | ⚠️ Unaudited |
| FarmerNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142899 | `0x9a6add057603d3366ac3ca97fe80126b7f96af05` | ⚠️ Unaudited |
| FarmersMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142895 | `0x582e0759e35a93e35e6855d47ce6799ad2d41008` | ⚠️ Unaudited |
| GenericLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142873 | `0x39dfc4f2d95210a06cd0ea79d53946e3c2593cc4` | ⚠️ Unaudited |
| Grain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142865 | `0x12c26138b666360ab2b7a1b149df9cf6642cdfbf` | ⚠️ Unaudited |
| GrainLGEUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142881 | `0x1033fe9cb2b097aa4d4c0a3fed9798dabf7b9428` | ⚠️ Unaudited |
| GrainSaleClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142878 | `0x037c664ec37c6324d174140bde35a9e7596d3a52` | ⚠️ Unaudited |
| GranaryRewardsVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142887 | `0x2468246caa105d65b58bdaca216ab7a4b5f73d28` | ⚠️ Unaudited |
| GranaryTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142900 | `0xb17844f6e50f4ee8f8fec7d9ba200b0e034b8236` | ⚠️ Unaudited |
| Intermediary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142889 | `0x27d72395a9b6170b846dc9283d5b041a4413426a` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142876 | `0xc01a7ad7fb8a085a3cc16be8eaa10302c78a1783` | ⚠️ Unaudited |
| LendingPoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142891 | `0x3884fcd0db58c0fe9f6da852fa43db898524be95` | ⚠️ Unaudited |
| LendingPoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142890 | `0x33c62bc416309f010c4941163abea3725e4645bf` | ⚠️ Unaudited |
| LendingPoolCollateralManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142901 | `0xc2cda52c7dc64d4ff01b58b0981e1fcdd94b16c2` | ⚠️ Unaudited |
| LendingPoolConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142884 | `0x204f5ccc7b5217b8477c8fa45708144fb0a61831` | ⚠️ Unaudited |
| LendingRateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142894 | `0x4a418c8fe7c06f14849786a6f26be8333cf952c7` | ⚠️ Unaudited |
| Leverager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142885 | `0x21ba67fafad9bcb7e0aea9739dbfffd5ee72e716` | ⚠️ Unaudited |
| RektCure | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142877 | `0xec4ec3878d7e63ded964956a687e9fd34f9376fc` | ⚠️ Unaudited |
| ReserveLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142888 | `0x250b47f097ec51225ece85b13273b70a4233e1e9` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142896 | `0x7a191973eaf8cdcc4de683d10c1e11c5a5bc717d` | ⚠️ Unaudited |
| StableAndVariableTokensHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142866 | `0x158b0b1414f153e58f8acac50e777feec234dd9d` | ⚠️ Unaudited |
| StableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142898 | `0x8429d0afade80498eadb9919e41437a14d45a00b` | ⚠️ Unaudited |
| TestGrainLGEUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142883 | `0x14d83baa7a547fac51a13f92c7b0a2df8366e36a` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142867 | `0x198147e0a57f009e337ea3f0e5fe9bbca3ed1975` | ⚠️ Unaudited |
| Timestamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142886 | `0x22a6391ec86557174538b87fbe36c732919e2cd7` | ⚠️ Unaudited |
| UiDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142880 | `0x0fdbd7bab654b5444c96fcc4956b8df9ccc508be` | ⚠️ Unaudited |
| UiIncentiveDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142874 | `0x48b61dc3149df0184383d57949655f05e5aa3b62` | ⚠️ Unaudited |
| UiIncentiveDataProviderV2V3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142902 | `0xf742a05eb1a5755ba9a52243aebc514b9f5cba9a` | ⚠️ Unaudited |
| UiPoolDataProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142864 | `0x0ce5e78139090cbf36fc6fb7f655204a981907e2` | ⚠️ Unaudited |
| UiPoolDataProviderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142869 | `0x30a5a41c3c903a04f7fc1b9c7a58998ed038f54c` | ⚠️ Unaudited |
| ValidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142882 | `0x12c26138b666360ab2b7a1b149df9cf6642cdfbf` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142892 | `0x3e45df33adf1b81e7b45ca468e8e41496a66c837` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-142897 | `0x7b48eb52c1314b4ee374315b343caae38ff00e90` | ⚠️ Unaudited |
| WETHGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | unit-142868 | `0x2aa6853ae999d47f86290022e5ebe0df9ab747ea` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (115)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0df4603d018c96c40b80d3c9f09b5e3e2e96f68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x204f5ccc7b5217b8477c8fa45708144fb0a61831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ddd3bca2fa050532b8d7fd41fb1449382187daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x352bc36e5552a364d4d2aa01c8c12bec11c6cc11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37133a8dca96400c249102e59b11e25b0f663ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x389ee3f9a95f5cb73b50d138679b3f21883dac37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d08c69c49cc2d4420ef533bec4c1016554567a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x417ca1091fa4c329cee19452851dff46902440a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4569a109f0a0201f1b2c8dd360f6b6b186d33582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a418c8fe7c06f14849786a6f26be8333cf952c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52ce4d9a2db0f1606416df2606208b9e58585986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a3423210536d930150080f699248edebc65e2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c93b799d31d3d6a7c977f75fdb88d069565a55b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e20e155819f0ee08d1291b0b9889b0e011b8224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72fad09e3da8cec0e975bf253c1e5eafdb927fec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f8face1fba2901cb46f8a87a9e1717ecb215210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8429d0afade80498eadb9919e41437a14d45a00b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a3afcf0b432bc9a6d5eb301935957076c44542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e82618e67783d6595cd02cde94c11a7ce894d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95634aba065636b2ec05c0157b65fcc00779887d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96bcfb86f1bff315c13e00d850e2faea93ccd3e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aeefef549323511e027d70562f0c7edcdeb294c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23e5717754022f6853c276ae9fa619201a8feea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1fcc8d4a25ca186b6329c30f093e5733d244147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb50634241bad11898d81adaa5f556aab7ebcf749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc2ddf689152e32a55dfbce0c01597398ab224db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc043ba54f34c9fb3a0b45d22e2ef1f171272bc9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ae6cea0f15f5a44e0f8eea1d516af2eccb9709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6ce37f0076a00c7e95af7fc0524d41b551888dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfcd1a9221434642b221273949361e768431ee13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2abc5d7841d49c40fd35a1ec832ee1dacc8d339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd93e25a8b1d645b15f8c736e1419b4819ff9e6ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb45611e3854f171d073a922a969cd6d707ff3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1537fef008944d1c8dcafbace4dc76d31d22dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4f4f36fcbb2d53c0bab95f5d117489579553caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe767cd4871c5749e59451caebc3f1062eaf40958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedc83309549e36f3c7fd8c2c5c54b4c8e5fa00fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf270bfe3f97655fff1d89aff50a8e1dc381941b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6d1cabe63237970b0e5fec45afc5b2c1312d8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7c7077857a44d029d14257c9c962270681e5e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf88baf18fab7e330fa0c4f83949e23f52fececce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaf84d4679a5313ed6d6484316f2401bedd669ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe2ea9d03594ad1b9726c7749cdcf4b1f0e11caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x025d9d36c616946530ff8ea32d912abf73170947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10615d451a5b91c92ce8538703e7aaba5d5ccc4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x158b0b1414f153e58f8acac50e777feec234dd9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b7bb595594508f3af1644ab1de15c2e6800ceea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x217aaccab7577e2889cbab025836de79c97d2791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2aa6853ae999d47f86290022e5ebe0df9ab747ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ddd3bca2fa050532b8d7fd41fb1449382187daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34b34aad656fb95655de27247813bd381f7eb3fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x383b82eca21811bf77a1f7591fd666bffd008069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3a46459e4513ce15a8f9b77d092ec16641e94903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cc0a623f1affab5d5514a453965ce8c80b45549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d08c69c49cc2d4420ef533bec4c1016554567a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43d80ed279968b85901b514a7bd678bc847506c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44998eee6fe3bfead1e6a69cd15208e2ca4a5280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ff2b51e40cef35157e8b1aab736ebe3cafeae2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x512f582ffccf3c14bd872152eeae60866dcb2a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a3423210536d930150080f699248edebc65e2b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a89ec095e6466379dcad8b60059a95977e14fee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5cd957bbc79639ef66262e929e5a031aa7b52810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f272ee6348bde137d9a6c640c42ddcf0de3d0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x642cc899652b068d1bed786c4b060ec1027d1563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6997ba833148ca964ab51e4df889b4b2a4fc0b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b2be27fb4442443ccd9c1b562269d8c1bc7c98c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e38dec052231eea0a7b40d05ef6122298168c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7366c31311ce84e0009334d2731e262f17f8b217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75d9f91818c9401af70d5443a240e2228339ccc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x772378b401f5f1047137b5d5703cc82cf578f2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c8e7536c5044e1b3693eb564c6de3a3ce58bbda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7fb479624ca336ba8f2dc66439f8683330ee2880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80bb30d62a16e1f2084deae84dc293531c3ac3a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x872b9e8aea5d65fbf29b8b05bfa4aa3fe94cc11f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89f23e07dae2a6f0eb48770cc3dbc9c805b02b17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a331970034ba16e7a610fac11e03a0a328b72a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f87a7d376821c7b2658a005aaf190ec778bf37a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x949a74ff08543a7469777aae0a8e176223d10028` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x98c1b7c2b3e89d3e46833bad6afc042b55274a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9aeefef549323511e027d70562f0c7edcdeb294c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e73e030c08b0ea7a9aa5a8b5c2d034efa533d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e98d974ffcccbf4ebdb9dca60765d3ed37333e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabc771bd121a19ac2b1a0e27a34d47ecfb7275c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb3ac95152e9ab64f8f2bbae4f0024a6c01cddda5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb50634241bad11898d81adaa5f556aab7ebcf749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb839c82630a36b5f7a5320cd0814886bf4900f1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbc6de4458b7d6fbf82240ce8cc0ca6a2f4986eb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc01a7ad7fb8a085a3cc16be8eaa10302c78a1783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc043ba54f34c9fb3a0b45d22e2ef1f171272bc9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4ae6cea0f15f5a44e0f8eea1d516af2eccb9709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1fe69a08413d84ea65052c3dd90bb50f80130c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2abc5d7841d49c40fd35a1ec832ee1dacc8d339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd539294830eaf5c22467ce6e085ae4e02861845a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6eced291a1c6c68fde3d3730c5757b0fbd653b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbc66f1cb35b0c6f9147edf9dea90b8f88575a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdde5dc81e40799750b92079723da2acaf9e1c6d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe038d965ac9b73fc8db15576ed3108c9ab2cc411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2dfcb86c99599dafc12028f67b8456f99c9de4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4f4f36fcbb2d53c0bab95f5d117489579553caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe527a473497f5348a12c78c4689e4af7f04e76a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe5dc7e2d22898bf9959a610b38c1a24e61e96149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6f0cb28045e57f905f601e31469743d3e095213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe767cd4871c5749e59451caebc3f1062eaf40958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xedc83309549e36f3c7fd8c2c5c54b4c8e5fa00fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5604a93caddb18a4ba8ee8f3f20324ca286dcae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6d1cabe63237970b0e5fec45afc5b2c1312d8e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf88baf18fab7e330fa0c4f83949e23f52fececce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf957262db8b35181a0ab8f034ec8ce73a7531f9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9d3647e7663be000d1c8462314a8931d10dc31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa47b56e9eb5fa979cec3d4c7ac319edfba4f47c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd389dc9533717239856190f42475d3f263a270d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe2ea9d03594ad1b9726c7749cdcf4b1f0e11caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff1b7120baaa89acde6e45ccfb2263a8416c20f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xff50bcda308254549be68e5f3e79cd6304d95478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfff14142e85bbc01a063fdbedb388b1c801ea912` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 115
- Live contracts: 0
- Unknown liveness contracts: 115
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=115

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x025d9d36c616946530ff8ea32d912abf73170947` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10615d451a5b91c92ce8538703e7aaba5d5ccc4d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x158b0b1414f153e58f8acac50e777feec234dd9d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1b7bb595594508f3af1644ab1de15c2e6800ceea` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x217aaccab7577e2889cbab025836de79c97d2791` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2aa6853ae999d47f86290022e5ebe0df9ab747ea` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ddd3bca2fa050532b8d7fd41fb1449382187daa` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34b34aad656fb95655de27247813bd381f7eb3fa` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x383b82eca21811bf77a1f7591fd666bffd008069` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3a46459e4513ce15a8f9b77d092ec16641e94903` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3cc0a623f1affab5d5514a453965ce8c80b45549` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3d08c69c49cc2d4420ef533bec4c1016554567a6` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43d80ed279968b85901b514a7bd678bc847506c3` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44998eee6fe3bfead1e6a69cd15208e2ca4a5280` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ff2b51e40cef35157e8b1aab736ebe3cafeae2d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x512f582ffccf3c14bd872152eeae60866dcb2a1e` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5a3423210536d930150080f699248edebc65e2b4` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5a89ec095e6466379dcad8b60059a95977e14fee` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5cd957bbc79639ef66262e929e5a031aa7b52810` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f272ee6348bde137d9a6c640c42ddcf0de3d0aa` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x642cc899652b068d1bed786c4b060ec1027d1563` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6997ba833148ca964ab51e4df889b4b2a4fc0b0d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b2be27fb4442443ccd9c1b562269d8c1bc7c98c` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e38dec052231eea0a7b40d05ef6122298168c04` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7366c31311ce84e0009334d2731e262f17f8b217` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x75d9f91818c9401af70d5443a240e2228339ccc2` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x772378b401f5f1047137b5d5703cc82cf578f2a1` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c8e7536c5044e1b3693eb564c6de3a3ce58bbda` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7fb479624ca336ba8f2dc66439f8683330ee2880` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x80bb30d62a16e1f2084deae84dc293531c3ac3a1` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x872b9e8aea5d65fbf29b8b05bfa4aa3fe94cc11f` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89f23e07dae2a6f0eb48770cc3dbc9c805b02b17` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8a331970034ba16e7a610fac11e03a0a328b72a0` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f87a7d376821c7b2658a005aaf190ec778bf37a` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x949a74ff08543a7469777aae0a8e176223d10028` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x98c1b7c2b3e89d3e46833bad6afc042b55274a9f` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9aeefef549323511e027d70562f0c7edcdeb294c` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e73e030c08b0ea7a9aa5a8b5c2d034efa533d77` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e98d974ffcccbf4ebdb9dca60765d3ed37333e0` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xabc771bd121a19ac2b1a0e27a34d47ecfb7275c0` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb3ac95152e9ab64f8f2bbae4f0024a6c01cddda5` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb50634241bad11898d81adaa5f556aab7ebcf749` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb839c82630a36b5f7a5320cd0814886bf4900f1e` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbc6de4458b7d6fbf82240ce8cc0ca6a2f4986eb5` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc01a7ad7fb8a085a3cc16be8eaa10302c78a1783` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc043ba54f34c9fb3a0b45d22e2ef1f171272bc9d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc4ae6cea0f15f5a44e0f8eea1d516af2eccb9709` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd1fe69a08413d84ea65052c3dd90bb50f80130c4` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd2abc5d7841d49c40fd35a1ec832ee1dacc8d339` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd539294830eaf5c22467ce6e085ae4e02861845a` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd6eced291a1c6c68fde3d3730c5757b0fbd653b7` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdbc66f1cb35b0c6f9147edf9dea90b8f88575a72` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdde5dc81e40799750b92079723da2acaf9e1c6d6` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe038d965ac9b73fc8db15576ed3108c9ab2cc411` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe2dfcb86c99599dafc12028f67b8456f99c9de4c` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe4f4f36fcbb2d53c0bab95f5d117489579553caa` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe527a473497f5348a12c78c4689e4af7f04e76a2` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe5dc7e2d22898bf9959a610b38c1a24e61e96149` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe6f0cb28045e57f905f601e31469743d3e095213` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe767cd4871c5749e59451caebc3f1062eaf40958` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xedc83309549e36f3c7fd8c2c5c54b4c8e5fa00fc` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf5604a93caddb18a4ba8ee8f3f20324ca286dcae` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf6d1cabe63237970b0e5fec45afc5b2c1312d8e0` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf88baf18fab7e330fa0c4f83949e23f52fececce` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf957262db8b35181a0ab8f034ec8ce73a7531f9b` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf9d3647e7663be000d1c8462314a8931d10dc31e` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfa47b56e9eb5fa979cec3d4c7ac319edfba4f47c` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfd389dc9533717239856190f42475d3f263a270d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfe2ea9d03594ad1b9726c7749cdcf4b1f0e11caf` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff1b7120baaa89acde6e45ccfb2263a8416c20f0` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xff50bcda308254549be68e5f3e79cd6304d95478` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfff14142e85bbc01a063fdbedb388b1c801ea912` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0df4603d018c96c40b80d3c9f09b5e3e2e96f68f` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x204f5ccc7b5217b8477c8fa45708144fb0a61831` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ddd3bca2fa050532b8d7fd41fb1449382187daa` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x352bc36e5552a364d4d2aa01c8c12bec11c6cc11` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x37133a8dca96400c249102e59b11e25b0f663ee0` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x389ee3f9a95f5cb73b50d138679b3f21883dac37` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d08c69c49cc2d4420ef533bec4c1016554567a6` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x417ca1091fa4c329cee19452851dff46902440a5` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4569a109f0a0201f1b2c8dd360f6b6b186d33582` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4a418c8fe7c06f14849786a6f26be8333cf952c7` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52ce4d9a2db0f1606416df2606208b9e58585986` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a3423210536d930150080f699248edebc65e2b4` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c93b799d31d3d6a7c977f75fdb88d069565a55b` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e20e155819f0ee08d1291b0b9889b0e011b8224` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72fad09e3da8cec0e975bf253c1e5eafdb927fec` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f8face1fba2901cb46f8a87a9e1717ecb215210` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8429d0afade80498eadb9919e41437a14d45a00b` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87a3afcf0b432bc9a6d5eb301935957076c44542` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e82618e67783d6595cd02cde94c11a7ce894d45` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95634aba065636b2ec05c0157b65fcc00779887d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96bcfb86f1bff315c13e00d850e2faea93ccd3e7` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9aeefef549323511e027d70562f0c7edcdeb294c` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa23e5717754022f6853c276ae9fa619201a8feea` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1fcc8d4a25ca186b6329c30f093e5733d244147` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb50634241bad11898d81adaa5f556aab7ebcf749` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc2ddf689152e32a55dfbce0c01597398ab224db` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc043ba54f34c9fb3a0b45d22e2ef1f171272bc9d` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4ae6cea0f15f5a44e0f8eea1d516af2eccb9709` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6ce37f0076a00c7e95af7fc0524d41b551888dd` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfcd1a9221434642b221273949361e768431ee13` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2abc5d7841d49c40fd35a1ec832ee1dacc8d339` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd93e25a8b1d645b15f8c736e1419b4819ff9e6ef` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb45611e3854f171d073a922a969cd6d707ff3d1` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1537fef008944d1c8dcafbace4dc76d31d22dc5` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4f4f36fcbb2d53c0bab95f5d117489579553caa` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe767cd4871c5749e59451caebc3f1062eaf40958` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xedc83309549e36f3c7fd8c2c5c54b4c8e5fa00fc` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf270bfe3f97655fff1d89aff50a8e1dc381941b5` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6d1cabe63237970b0e5fec45afc5b2c1312d8e0` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7c7077857a44d029d14257c9c962270681e5e13` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf88baf18fab7e330fa0c4f83949e23f52fececce` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfaf84d4679a5313ed6d6484316f2401bedd669ea` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe2ea9d03594ad1b9726c7749cdcf4b1f0e11caf` | non_address_book | unknown | unknown | unverified | n/a | `0xe027880ceb8114f2e367211df977899d00e66138` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/granary](https://skynet.certik.com/projects/granary) | CertiK | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21364] skynet.certik.com/projects/granary — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 115 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21364] skynet.certik.com/projects/granary

Fork inheritance lineage and inherited audits are included when available.
