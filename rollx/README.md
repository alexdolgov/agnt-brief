# Agentic Audit Brief: RollX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: RollX (`rollx`)
- Website: [https://rollx.trade/](https://rollx.trade/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base
- Contract surface: 77 unique implementations (77 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $509,605.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for RollX in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 77 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 77
- Raw deployments: 77
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessControlEnumerableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | unit-162883 | `0x03bc054493a9042eebc037e05f3ce2baf53a967d` | ⚠️ Unaudited |
| Bfbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162864 | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ⚠️ Unaudited |
| BfbtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | unit-162884 | `0x3f8c84fe47486156b81e74f08c4d9be3c3ab5f5b` | ⚠️ Unaudited |
| BrokerManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162866 | `0x1414bc9dc37f581e20c1820c3fca1755ac0f3c97` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162872 | `0x47ea06e0a70bd1a454bc876ebdedffea82395560` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162877 | `0x7cd88b475d40b6b789a3995a457536ab7cb577e8` | ⚠️ Unaudited |
| FeeManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162870 | `0x2abde7a6a499d0732c4d1267d22de08e27a43c5e` | ⚠️ Unaudited |
| LimitOrderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162869 | `0x282f0ffa62f928398b162ac36d5d5949c6b4210a` | ⚠️ Unaudited |
| LpManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162875 | `0x69396bcefb72523f9d35a6629f152cd64c618ccc` | ⚠️ Unaudited |
| MyAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162876 | `0x776b20e689497bb524dfbba01d85f878d0fe21ae` | ⚠️ Unaudited |
| PairsManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162881 | `0xa9e0e94266e2d0bd16086d8a80bf589f9c1e74b8` | ⚠️ Unaudited |
| PausableFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162871 | `0x3bc346cf1d225728d1ee91247c67570431fe39c4` | ⚠️ Unaudited |
| PriceFacadeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162868 | `0x23e6a467dadd513c01298b4d02e9455d4220d533` | ⚠️ Unaudited |
| RLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162873 | `0x59cca8cebf8b611618d24066178e33672bf68988` | ⚠️ Unaudited |
| SlippageManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162880 | `0xa4628799052b39be1b6a77c842aa66e5b3f1af8c` | ⚠️ Unaudited |
| TradingCheckerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162862 | `0x05533ecb5f199230e24aa04e0aa30f87db648311` | ⚠️ Unaudited |
| TradingCloseFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162863 | `0x0a86ba95b7dd0c8c5d16a8d2cbffe6e77d529131` | ⚠️ Unaudited |
| TradingConfigFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162865 | `0x12ef30b6e3f055bb92ff54d5a856166fa85203fc` | ⚠️ Unaudited |
| TradingCoreFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162874 | `0x5c9936a7dcefccb8af7de519cd3a6d199d3acb5e` | ⚠️ Unaudited |
| TradingOpenFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162878 | `0x8951edcaac946bc7b31f0545f53200d5a824d6ce` | ⚠️ Unaudited |
| TradingPortalFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162867 | `0x20c2e940e1edc66e80cd61f5c259391ba6ed9f67` | ⚠️ Unaudited |
| TradingReaderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162882 | `0xb293002489dfbd38d92b041c612b7f38d2ee6b33` | ⚠️ Unaudited |
| VaultFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | unit-162879 | `0x8ca1229b5b9d15edf6fb2fab8cc83191587741c5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x063410367c18a007750cfd2e5aa2204a95190203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x12ed87be65308a7be2e72645f9e2cfdcc215e37b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19c94a1604bf154fc5fb9e03cf4ddd686fd08253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27c742389a8e326589cb7ea4845a1c567e0cb745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x310e1534794c05c76d63863da98d8e14e4f4626e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bb35e6256dc8f87cad59698e502ea5fe7068802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3bf35a8c589c24a105baecba9cdb7db2e0c414e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c0bc398ca406cb94ebf1438c0528d87a6e70ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51c46f1d601c7d98dc34e9cbc980f7c280488a31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58c6d9a2a9d46139520b5772d538cfb41e9db0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x623f2774d9f27b59bc6b954544487532ce79d9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x709095cac3531cb609906700be33ec2c94539690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7731bd83b215aee4d01ea538571ace5100b9bf42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c04c56a00dc725f42186b5433cf96d231d25630` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7ea8234634f86aea9ce96a59225e4757b2fd8ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x823e0f1e91f9851529ce90c23e144203a59ef40a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8917c6ace7b4a39a62200d22f1a963e0f64b6832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d04100bf4f490b174394f5709ecdf20b961a7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d1a8138acac8b7c11352e53f83409907e0556ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x918e4a7742df6258e28a16ea8c18f4eb8ba273a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x958a1594ba32b1514435008b633818112a7b6fcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97a29410166989cf190d8d1604119d14b2f5fc06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa0824aeabbc37328fe70bafb5f2a56771ac6a996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1b352dd8b73869420c9f928db2d6ef784b00a94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6167bf92caadfaddb08263ded334a7832ab3813` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa67998d867cd4b64fe9ecc1549341f1d86389c0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa83f7e4f11d6966d92a0b9e4e7ba4aab3eaa0855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa851645e813cbe277ace3f766a1c126b1b73c89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8e3684e4df9b7feb16a9146e6cc541eb513b3b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8edbc399c0d59f764fb475a52bd65536c35bd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaeb6735056e33ae20266ff772dd6337b6e0c150f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb2d2f875b84666826a6438f2c344a894291c93da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb5e2e4a6f8049c5846901d0e47596a81b94b28f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xba31824e2b7ba3342d4f2e990ddf7303f28bd1b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbac0ac8122843673c26a5ca301385978701c9a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbb55e9312f1dad37853712d5531e4d544ca8d648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbdc6e22026751be9a649489440d5cbb058e9dc12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbeb2988d578e058b3571906f4f9e74f59450c1bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc04bd82ce120759face102ae8b1b726e467094fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc1d54dc6951bfd682c7eec97e07c369462fd2b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc446e0d7e9802fa754eba3a62ce2bf4ab8601921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc89c9a50b1ee81c7c98a2d0802bcec60a49788f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc9e16a5d372de5776f9dc7da39207ed638fd6bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcd3194ab240e4c153e248629ecb3e2ea3c12c39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd326235f27d22699dd5d2c47d7596017e8bdc842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd6e8dd6ab1aa4a58876b02762861704b2f6f3864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd72e0cf185f0af2ff8b570f6ab1d99a32fd85d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdae8db4aa0a24af70df64a35bf68782d989f4918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe0e15a7e41e559946fec577b1a1b405856df5f94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xea0704fdcdb1a6a49b474de972a5864a7da9b72d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf3e62f34b86673be3f977d7082a302bde59ed03a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf731e48c09ccdab51a484a28526dd883f3cca817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfaaa7b279aeb0bcfca956c4f9431b7f31b6a4b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc02430a585d35bbfe516fb60aca8d0e7ffd7bb2` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 54
- Live contracts: 0
- Unknown liveness contracts: 54
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=54

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x063410367c18a007750cfd2e5aa2204a95190203` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x12ed87be65308a7be2e72645f9e2cfdcc215e37b` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x19c94a1604bf154fc5fb9e03cf4ddd686fd08253` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x27c742389a8e326589cb7ea4845a1c567e0cb745` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x310e1534794c05c76d63863da98d8e14e4f4626e` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x3bb35e6256dc8f87cad59698e502ea5fe7068802` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x3bf35a8c589c24a105baecba9cdb7db2e0c414e8` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x3c0bc398ca406cb94ebf1438c0528d87a6e70ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x51c46f1d601c7d98dc34e9cbc980f7c280488a31` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x58c6d9a2a9d46139520b5772d538cfb41e9db0b6` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x623f2774d9f27b59bc6b954544487532ce79d9df` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| unverified unclassified | UnnamedContract<br>`0x709095cac3531cb609906700be33ec2c94539690` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x7731bd83b215aee4d01ea538571ace5100b9bf42` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x7c04c56a00dc725f42186b5433cf96d231d25630` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x7ea8234634f86aea9ce96a59225e4757b2fd8ba0` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x823e0f1e91f9851529ce90c23e144203a59ef40a` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x8917c6ace7b4a39a62200d22f1a963e0f64b6832` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x8d04100bf4f490b174394f5709ecdf20b961a7ca` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x8d1a8138acac8b7c11352e53f83409907e0556ad` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x918e4a7742df6258e28a16ea8c18f4eb8ba273a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x958a1594ba32b1514435008b633818112a7b6fcb` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0x97a29410166989cf190d8d1604119d14b2f5fc06` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xa0824aeabbc37328fe70bafb5f2a56771ac6a996` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xa1b352dd8b73869420c9f928db2d6ef784b00a94` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xa6167bf92caadfaddb08263ded334a7832ab3813` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xa67998d867cd4b64fe9ecc1549341f1d86389c0f` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xa83f7e4f11d6966d92a0b9e4e7ba4aab3eaa0855` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xa851645e813cbe277ace3f766a1c126b1b73c89d` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xa8e3684e4df9b7feb16a9146e6cc541eb513b3b8` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| unverified unclassified | UnnamedContract<br>`0xa8edbc399c0d59f764fb475a52bd65536c35bd58` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xaeb6735056e33ae20266ff772dd6337b6e0c150f` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xb2d2f875b84666826a6438f2c344a894291c93da` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xb5e2e4a6f8049c5846901d0e47596a81b94b28f7` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xba31824e2b7ba3342d4f2e990ddf7303f28bd1b9` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xbac0ac8122843673c26a5ca301385978701c9a98` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xbb55e9312f1dad37853712d5531e4d544ca8d648` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xbdc6e22026751be9a649489440d5cbb058e9dc12` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xbeb2988d578e058b3571906f4f9e74f59450c1bc` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xc04bd82ce120759face102ae8b1b726e467094fa` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xc1d54dc6951bfd682c7eec97e07c369462fd2b23` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xc446e0d7e9802fa754eba3a62ce2bf4ab8601921` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xc89c9a50b1ee81c7c98a2d0802bcec60a49788f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xc9e16a5d372de5776f9dc7da39207ed638fd6bc4` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xcd3194ab240e4c153e248629ecb3e2ea3c12c39d` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xd326235f27d22699dd5d2c47d7596017e8bdc842` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xd6e8dd6ab1aa4a58876b02762861704b2f6f3864` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xd72e0cf185f0af2ff8b570f6ab1d99a32fd85d0d` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xdae8db4aa0a24af70df64a35bf68782d989f4918` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xe0e15a7e41e559946fec577b1a1b405856df5f94` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xea0704fdcdb1a6a49b474de972a5864a7da9b72d` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xf3e62f34b86673be3f977d7082a302bde59ed03a` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xf731e48c09ccdab51a484a28526dd883f3cca817` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xfaaa7b279aeb0bcfca956c4f9431b7f31b6a4b55` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |
| unverified unclassified | UnnamedContract<br>`0xfc02430a585d35bbfe516fb60aca8d0e7ffd7bb2` | non_address_book | unknown | unknown | unverified | n/a | `0xb44e8c0085376f642be3fa695226f2518c0fd3d7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/zh-CN/projects/rolldex) | CertiK | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Certik](https://skynet.certik.com/projects/rolldex) | CertiK | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18096] DL audit link — no match: Extracted from CertiK Skynet page for RollX; audit files listed as _IWBNB.sol and INTV.sol. Date from '最近一次审计于 7/12/2024 完成'.
- [18097] Certik — no match: Extracted from audited files list; only two contract names were identifiable from truncated file paths.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | _IWBNB | unmatched — not counted | — | listed in audit files | no |
| DL audit link | INTV | unmatched — not counted | — | listed in audit files | no |
| Certik | _IWBNB | unmatched — not counted | — | listed in audited files | no |
| Certik | INTV | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 54 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=2
- Match method counts: n/a

Zero-match audit list:

- [18096] DL audit link
- [18097] Certik

Fork inheritance lineage and inherited audits are included when available.
