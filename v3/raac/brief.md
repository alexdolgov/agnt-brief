# Agentic Audit Brief: RAAC

## Export Authority

- Production state: **published scope**
- Raw selected rows: 19 across 6 audit(s)
- Eligible audit results: 12 (6 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: RAAC (`raac`)
- Website: [https://raac.io/](https://raac.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 70 unique implementations (70 raw deployments)
- Coverage basis: 10/12 confirmed own live verified implementations (83.3%); conservative 83.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $106,249,189.15
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for RAAC. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across ethereum, sepolia. Structural roles: 8 core, 2 infra, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (8), infra (2), supporting (2)
- Contract kinds: contract (11), abstract (1)
- Detected standards: ownable (8), erc165 (2), accesscontrol (1), erc1967proxy (1), erc20 (1), pausable (1)
- Frameworks: openzeppelin (11), chainlink (4), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4e8ef157762f0b8a7ad0d9ff45f86b203a0658cc`, chain 1)
- UnnamedContract (`0x75939ceb9fba27a545fe27d1cbd228c29123687c`, chain 1)
- UnnamedContract (`0x947867e0ad5d75d9cd4d48d44f9ca236d17bbb40`, chain 1)
- UnnamedContract (`0xa3931d71877c0e7a3148cb7eb4463524fec27fbd`, chain 1)
- UnnamedContract (`0xa8390c2be8a42e32a6c06522fd31ec5dd78823e4`, chain 1)
- UnnamedContract (`0xb2102b4d8802648ec6a9e89acd46b4b799833469`, chain 1)
- UnnamedContract (`0xc0c17dd08263c16f6b64e772fb9b723bf1344ddf`, chain 1)
- BaseVRFv2Consumer (`0x9c359b341470e17345a3ffd53fe9624c64cccb36`, chain 1)
- ComplianceRegistry (`0x6e35c61a73ec5d1779038df78cbb8183f76fcd4b`, chain 1)
- ProxyAdmin (`0x89ab60d8fcd674b2b0b308e7fa63ff84a2682ce2`, chain 1)
- RAACHousePriceOracle (`0x556553877fc8e643a78f6925c465991d73b0179c`, chain 1)
- RAACHousePrices (`0x1a97dad63f29974aa4a54d4e337c183ed1545a70`, chain 1)
- RAACNFTVaultAdapterOracle (`0x61273a2915e5ef5523438f85a7909c01bae46649`, chain 1)
- RAACNFTVaultAdapterV2 (`0xb1b35c62b99a450c474e9dad75fa121d3daa1d34`, chain 1)
- RateProvider (`0x9a6b5bda2128e6341175c79e43cd2a7e0c5f5b21`, chain 1)
- RWAIndexToken (`0xe6a60d2886b11256c24c128210159133096e5ccf`, chain 1)
- RWAVault (`0x575ffb62f712410a4eca56c2eb37596cec3cc732`, chain 1)
- TokenBlender (`0x7a7f847fb60b0000e24cce07298dc73df8b8e56a`, chain 1)
- TransparentUpgradeableProxy (`0x51c4348af0c6066a2fd31bd968bc0c039fe27342`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 12; live-surface rows included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/38 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/12 (83.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 19 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 19 of 70 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/19
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 51
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 7 fresh, 2 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 10 | 52.6% | 2026-03 |
| FYEO | Tier 2 | 1 | 5.3% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseVRFv2Consumer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252215 | `0x9c359b341470e17345a3ffd53fe9624c64cccb36` | ✅ Audited |
| ComplianceRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252210 | `0x6e35c61a73ec5d1779038df78cbb8183f76fcd4b` | ✅ Audited |
| RAACHousePriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252207 | `0x556553877fc8e643a78f6925c465991d73b0179c` | ✅ Audited |
| RAACHousePrices | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252205 | `0x1a97dad63f29974aa4a54d4e337c183ed1545a70` | ✅ Audited |
| RAACNFTVaultAdapterOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252209 | `0x61273a2915e5ef5523438f85a7909c01bae46649` | ✅ Audited |
| RAACNFTVaultAdapterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252218 | `0xb1b35c62b99a450c474e9dad75fa121d3daa1d34` | ✅ Audited |
| RateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252214 | `0x9a6b5bda2128e6341175c79e43cd2a7e0c5f5b21` | ✅ Audited |
| RWAIndexToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252221 | `0xe6a60d2886b11256c24c128210159133096e5ccf` | ✅ Audited |
| RWAVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252208 | `0x575ffb62f712410a4eca56c2eb37596cec3cc732` | ✅ Audited |
| TokenBlender | unknown | project_anchor | own_supporting | 1 | ethereum | unit-252242 | `0x7a7f847fb60b0000e24cce07298dc73df8b8e56a` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CrvUSDToUSDOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x716600c66f8a9999353c8545cfcbcc14bf1bc7c7` | ⚠️ Unaudited |
| FractionalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32d93b015562cc8da0ef3ccbccc3f8e1da8541d8` | ⚠️ Unaudited |
| LeveragedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616ff3a9031fa613241c407a4c414676304f2baf` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b21afa735e24683f0912d9f6f8a8bfabbeb10e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252212 | `0x89ab60d8fcd674b2b0b308e7fa63ff84a2682ce2` | ⚠️ Unaudited |
| PSMVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8819dcd779e3a44052a40f117999063740c3393c` | ⚠️ Unaudited |
| RAACNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x993776c3f184d1ec6bdcf77e7aecedf48076eb9f` | ⚠️ Unaudited |
| SUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e7991e5c547ce825bdeb665ee14a3274f9f61e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-252241 | `0x51c4348af0c6066a2fd31bd968bc0c039fe27342` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (51)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x062a641ef54810b321f123487fff083cadb50989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0808adf390be6f9a2d89d6dffe8d8f4c58553ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cff98a49d62541ebb990c2b397297d477d3ef34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x151ab3ae431978948559de0e73bad073cd3f8d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1858d5cc3d755aee51be8fe60b5706a399c5b036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5130b844600f70d0cb3d9097d8dd2940f99a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bce0e1c1ab90936c5975d9755fbac4a00c3f145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20d5bc3a2a350eb55cbfb461e2bcfc897decd700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a8aaca13e882e496c75068c33e72825d7b36843` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f03459d4cedcd156c4f8071c0f4f8a7baa53568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x448d80fa5f3c3e8da9795a5b0367bc99d7f9e621` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252206 | `0x4e8ef157762f0b8a7ad0d9ff45f86b203a0658cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x531b322933ebc65b4a139a11139534a3872beb1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59efaae9b107d8b503e6cf1cb7233ca359f8251c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b2b86931846a66c178725cfd8fcae4bf2a08617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66070bd2b077dd3e0aced5d0c74188d1cbaac6bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x685510e5921da45a46d6348769910668c5a25b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68629e941fd63e0e15e576eff742ea933a220bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7421e594b65414d1b3eb5b798bc7beeb2f834b6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252211 | `0x75939ceb9fba27a545fe27d1cbd228c29123687c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252213 | `0x947867e0ad5d75d9cd4d48d44f9ca236d17bbb40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9899379d4d9b206a48f126f358ff4327414c0706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c731cfc4161d8bf5fc38a7b2421ef0263d69aee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252216 | `0xa3931d71877c0e7a3148cb7eb4463524fec27fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4f93e2d2afd4658e638a26dce189acfd542fc0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252217 | `0xa8390c2be8a42e32a6c06522fd31ec5dd78823e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1497d797c3c02e7e007ba0cb241afdd70ab5249` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252219 | `0xb2102b4d8802648ec6a9e89acd46b4b799833469` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252220 | `0xc0c17dd08263c16f6b64e772fb9b723bf1344ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe281db3e652f1c649f324aa621fc1917f74a5243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9594c6923a909528336009f0ab916d72d28478e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8502c80753740ac4add5caf10ac96aed01de69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252222 | `0x062a641ef54810b321f123487fff083cadb50989` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252223 | `0x0cff98a49d62541ebb990c2b397297d477d3ef34` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252224 | `0x151ab3ae431978948559de0e73bad073cd3f8d68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252225 | `0x1bce0e1c1ab90936c5975d9755fbac4a00c3f145` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252226 | `0x2a8aaca13e882e496c75068c33e72825d7b36843` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252227 | `0x2f03459d4cedcd156c4f8071c0f4f8a7baa53568` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252228 | `0x531b322933ebc65b4a139a11139534a3872beb1a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252229 | `0x59efaae9b107d8b503e6cf1cb7233ca359f8251c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252230 | `0x5b2b86931846a66c178725cfd8fcae4bf2a08617` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252231 | `0x66070bd2b077dd3e0aced5d0c74188d1cbaac6bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252232 | `0x685510e5921da45a46d6348769910668c5a25b79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252233 | `0x7421e594b65414d1b3eb5b798bc7beeb2f834b6f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252234 | `0x9899379d4d9b206a48f126f358ff4327414c0706` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252235 | `0x9c731cfc4161d8bf5fc38a7b2421ef0263d69aee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252236 | `0xa4f93e2d2afd4658e638a26dce189acfd542fc0e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252237 | `0xb1497d797c3c02e7e007ba0cb241afdd70ab5249` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252238 | `0xe281db3e652f1c649f324aa621fc1917f74a5243` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252239 | `0xe9594c6923a909528336009f0ab916d72d28478e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-252240 | `0xed8502c80753740ac4add5caf10ac96aed01de69` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-08-Pashov-RWf(x)-V1-public.pdf (also discovered via alternate URL)](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-08-Pashov-RWf(x)-V1-public.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-08-Pashov-CORE.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-08-Pashov-CORE.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | matched | 5 | 0 | 0 | 23 | high |
| [2025-11-Pashov-CORE.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-11-Pashov-CORE.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 12 | high |
| [2025-11-Pashov-RWf(x)-v2-public.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-11-Pashov-RWf(x)-v2-public.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2025-11-Pashov-RWf(x)-v3-public.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-11-Pashov-RWf(x)-v3-public.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 7 | high |
| [2025-12-Pashov-CORE.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2025-12-Pashov-CORE.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | matched | 8 | 0 | 0 | 35 | high |
| [2026-03-Pashov-PSM.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/2026-03-Pashov-PSM.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [FYEO-1-audit.pdf](https://github.com/RegnumAurumAcquisitionCorp/audits/blob/main/FYEO-1-audit.pdf) | FYEO | Audit | 2024-10 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 46 | high |
| [codehawks.cyfrin.io/c/2025-02-raac](https://codehawks.cyfrin.io/c/2025-02-raac) | Cyfrin | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [whitepaper-q1.pdf](https://docs.raac.io/whitepaper-q1.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [lightpaper-q1.pdf](https://docs.raac.io/lightpaper-q1.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20971] 2025-08-Pashov-RWf(x)-V1-public.pdf — no match: Scope section lists 7 Solidity files. Audit date is the end date of the timeline (August 22nd 2025).
- [20972] 2025-08-Pashov-CORE.pdf — matched: Scope section explicitly lists all contract file names. Audit date is the end date of the engagement period.
- [20973] 2025-11-Pashov-CORE.pdf — matched: Scope section explicitly lists 15 contract files. Audit date is November 5th 2025 (end date of timeline).
- [20974] 2025-11-Pashov-RWf(x)-v2-public.pdf — no match: Scope section explicitly lists 9 Solidity files. Audit date is the end date of the timeline (November 20th 2025).
- [20975] 2025-11-Pashov-RWf(x)-v3-public.pdf — matched: Scope section lists 8 Solidity files. Audit date from timeline: November 27th 2025 - December 1st 2025, using end date.
- [20976] 2025-12-Pashov-CORE.pdf — matched: Scope section explicitly lists all contract files. Audit date is the end date of the engagement (December 14th 2025).
- [20977] 2026-03-Pashov-PSM.pdf — matched: Scope section explicitly lists PSMVault.sol and RateProvider.sol. Audit date range is March 26th 2026 - March 30th 2026, using end date.
- [20978] FYEO-1-audit.pdf — matched: All contracts listed in the 'Files included in the code review' table under Scope and Rules of Engagement section are extracted. The audit date is from the cover page: '18 October 2024'.
- [20979] codehawks.cyfrin.io/c/2025-02-raac — no match: The provided text is a contest description page, not an audit report. It does not list specific contracts in scope or an audit date.
- [20980] whitepaper-q1.pdf — no match: The document is a whitepaper describing the RAAC protocol, not an audit report. No audit scope, contracts, or audit date are present.
- [20981] lightpaper-q1.pdf — no match: The provided text is a whitepaper/protocol overview, not an audit report. It does not contain a scope section, contract listings, or audit date. No specific smart contract names are explicitly listed as in scope for an audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-08-Pashov-RWf(x)-V1-public.pdf | FxLowVolatilityMath | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-RWf(x)-V1-public.pdf | HarvestableTreasury | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-RWf(x)-V1-public.pdf | Market | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-RWf(x)-V1-public.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-RWf(x)-V1-public.pdf | IFxMarket | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-RWf(x)-V1-public.pdf | IFxTreasury | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-RWf(x)-V1-public.pdf | IRWAVaultPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | ERC20AssetAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | ERC721AssetAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | LendingPoolStorage | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | LiquidationProxy | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | VaultProxy | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | LiquidationStrategyProxy | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | LiquidationSwap | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | StabilityPool | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | StabilityPoolStorage | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | ComplianceRegistry | own contract | ComplianceRegistry (selected) `0x6e35c61a73ec5d1779038df78cbb8183f76fcd4b` — deployed 2026-03-06 22:50:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-08-Pashov-CORE.pdf | RAACHousePrices | own contract | RAACHousePrices (selected) `0x1a97dad63f29974aa4a54d4e337c183ed1545a70` — deployed 2026-03-09 04:11:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-08-Pashov-CORE.pdf | WithCompliance | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | DEToken | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | RAACNFT | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | RToken | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | RWAIndexToken | own contract | RWAIndexToken (selected) `0xe6a60d2886b11256c24c128210159133096e5ccf` — deployed 2026-03-09 05:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-08-Pashov-CORE.pdf | ERC20VaultAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | ERC721VaultAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | RAACNFTVaultAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | RAACNFTVaultAdapterV2 | own contract | RAACNFTVaultAdapterV2 (selected) `0xb1b35c62b99a450c474e9dad75fa121d3daa1d34` — deployed 2026-03-09 05:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-08-Pashov-CORE.pdf | RWAVault | own contract | RWAVault (selected) `0x575ffb62f712410a4eca56c2eb37596cec3cc732` — deployed 2026-03-09 05:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-08-Pashov-CORE.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | TimeWeightedAverage | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | ReserveLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-08-Pashov-CORE.pdf | StringUtils | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | RWAIndexTokenOracle | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | LendingPoolStorage | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | LiquidationSwap | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | StabilityPool | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | DEToken | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | RAACNFT | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | RToken | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | RAACNFTVaultAdapterOracle | own contract | RAACNFTVaultAdapterOracle (selected) `0x61273a2915e5ef5523438f85a7909c01bae46649` — deployed 2026-03-09 05:15:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-Pashov-CORE.pdf | RAACNFTVaultAdapterV2 | own contract | RAACNFTVaultAdapterV2 (selected) `0xb1b35c62b99a450c474e9dad75fa121d3daa1d34` — deployed 2026-03-09 05:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-Pashov-CORE.pdf | RWAVault | own contract | RWAVault (selected) `0x575ffb62f712410a4eca56c2eb37596cec3cc732` — deployed 2026-03-09 05:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-Pashov-CORE.pdf | ILendingPool | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | IDEToken | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | IRToken | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-CORE.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | FxLowVolatilityMath | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | FractionalToken | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | HarvestableTreasury | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | LeveragedToken | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | Market | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | Treasury | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | IFxFractionalToken | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | IFxMarket | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v2-public.pdf | IFxTreasury | unmatched — not counted | — | listed in scope section | no |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | FxLowVolatilityMath | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | FractionalToken | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | HarvestableTreasury | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | LeveragedToken | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | Market | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | TokenBlender | own proxy deployment | TokenBlender (proxy) (selected) `0x7a7f847fb60b0000e24cce07298dc73df8b8e56a` — deployed 2025-12-09 04:36:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-Pashov-RWf(x)-v3-public.pdf | ChainlinkOracleAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ERC20Collector | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | FeeCollector | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | NFTRoyaltyFeeCollector | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | RAACTokenCollector | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | RWAIndexTokenCollector | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | Treasury | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | BaseChainlinkFunctionsOracle | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | BaseVRFv2Consumer | own contract | BaseVRFv2Consumer (selected) `0x9c359b341470e17345a3ffd53fe9624c64cccb36` — deployed 2026-03-09 05:16:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | crvUSDPriceOracle | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | CrvUSDToUSDOracle | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | RAACHousePriceOracle | own contract | RAACHousePriceOracle (selected) `0x556553877fc8e643a78f6925c465991d73b0179c` — deployed 2026-03-09 04:23:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | RAACPrimeRateOracle | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | RWAIndexTokenOracle | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ZkMeKYCVerifyModule | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | KYCVerifyModule | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ERC20AssetAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ERC721AssetAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | LendingPool | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | LendingPoolStorage | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | LiquidationProxy | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | VaultProxy | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | LiquidationStrategyProxy | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | LiquidationSwap | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | StabilityPool | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | StabilityPoolStorage | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ComplianceRegistry | own contract | ComplianceRegistry (selected) `0x6e35c61a73ec5d1779038df78cbb8183f76fcd4b` — deployed 2026-03-06 22:50:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | RAACHousePrices | own contract | RAACHousePrices (selected) `0x1a97dad63f29974aa4a54d4e337c183ed1545a70` — deployed 2026-03-09 04:11:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | WithCompliance | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | RWAIndexToken | own contract | RWAIndexToken (selected) `0xe6a60d2886b11256c24c128210159133096e5ccf` — deployed 2026-03-09 05:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | RToken | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | RAACNFT | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | DEToken | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | DebtToken | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ERC20VaultAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ERC721VaultAdapter | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | RAACNFTVaultAdapterOracle | own contract | RAACNFTVaultAdapterOracle (selected) `0x61273a2915e5ef5523438f85a7909c01bae46649` — deployed 2026-03-09 05:15:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | RAACNFTVaultAdapterV2 | own contract | RAACNFTVaultAdapterV2 (selected) `0xb1b35c62b99a450c474e9dad75fa121d3daa1d34` — deployed 2026-03-09 05:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | RWAVault | own contract | RWAVault (selected) `0x575ffb62f712410a4eca56c2eb37596cec3cc732` — deployed 2026-03-09 05:16:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-12-Pashov-CORE.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | TimeWeightedAverage | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | ReserveLibrary | unmatched — not counted | — | listed in scope | no |
| 2025-12-Pashov-CORE.pdf | StringUtils | unmatched — not counted | — | listed in scope | no |
| 2026-03-Pashov-PSM.pdf | PSMVault | unmatched — not counted | — | listed in scope section | no |
| 2026-03-Pashov-PSM.pdf | RateProvider | own contract | RateProvider (selected) `0x9a6b5bda2128e6341175c79e43cd2a7e0c5f5b21` — deployed 2026-04-16 18:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FYEO-1-audit.pdf | FeeCollector | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | GaugeController | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | Governance | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | RAACMinter | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | LendingPool | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | MarketCreator | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | NFTLiquidator | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | StabilityPool | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | RAACHousePrices | own contract | RAACHousePrices (selected) `0x1a97dad63f29974aa4a54d4e337c183ed1545a70` — deployed 2026-03-09 04:11:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FYEO-1-audit.pdf | DEToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | DebtToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IndexToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | RAACNFT | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | RAACToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | RToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | veRAACToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IDEToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IDebtToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IERC20 | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IFeeCollector | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IGaugeController | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IGovernance | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IHousePrices | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | ILendingPool | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | ILiquidityPool | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IMarketCreator | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | INFTLiquidator | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IPoolManager | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IRAACHousePrices | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IRAACMinter | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IRAACNFT | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IRAACToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IRToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IReserveAllocationLibraryMock | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IStabilityPool | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IUSDC | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IveRAACDistributor | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | IveRAACToken | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | PercentageMath | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | WadRayMath | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | DataTypes | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | ReserveLibrary | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | Auction | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | AuctionFactory | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | ZENO | unmatched — not counted | — | listed in scope table | no |
| FYEO-1-audit.pdf | ZENOFactory | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 19 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 140 unmatched
- Matched-own operational status: 19 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=3
- Match method counts: unique_name=19

Zero-match audit list:

- [20971] 2025-08-Pashov-RWf(x)-V1-public.pdf
- [20974] 2025-11-Pashov-RWf(x)-v2-public.pdf
- [20979] codehawks.cyfrin.io/c/2025-02-raac
- [20980] whitepaper-q1.pdf
- [20981] lightpaper-q1.pdf

Fork inheritance lineage and inherited audits are included when available.
