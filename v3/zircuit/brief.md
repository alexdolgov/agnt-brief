# Agentic Audit Brief: Zircuit

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 10 (1 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Zircuit (`zircuit`)
- Website: [https://www.zircuit.com/](https://www.zircuit.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum, sepolia
- Contract surface: 381 unique implementations (390 raw deployments)
- Coverage basis: 3/14 confirmed own live verified implementations (21.4%); conservative 21.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,256,422.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zircuit. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across base, ethereum, sepolia. Structural roles: 5 core, 5 supporting, 5 unclassified. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: core (5), supporting (5), unclassified (5)
- Contract kinds: contract (15)
- Detected standards: erc1967proxy (6), ownable (1), ownable2step (1)
- Frameworks: openzeppelin-upgradeable (6), solmate (6), openzeppelin (4)
- Upgradeable-pattern rows: 6

## Fork Analysis

1 of 10 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

**InstitutionLender** (`0xe83ef4375d806c02387069f1b753b2ab76ab1dc5`, chain 8453)
Origin: zircuit (`0x1a48ce...37e1cc`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- ERC20RevocableComplianceToken (`0x48ab4e39ac59f4e88974804b04a991b3a402717f`, chain 1)
- InstitutionLender (`0x1a48cec817bcb5436efe99bab6dde228cc37e1cc`, chain 8453)
- Proxy (`0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1`, chain 1)
- Proxy (`0x2a721cbe81a128be0f01040e3353c3805a5ea091`, chain 1)
- Proxy (`0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8`, chain 1)
- Proxy (`0x6c89104690452ad7e209f0ab72287c2561d5cf0e`, chain 1)
- Proxy (`0x7d43eb137185aea81a020563099e940bb380f35e`, chain 1)
- Proxy (`0x92ef6af472b39f1b363da45e35530c24619245a4`, chain 1)
- SP1VerifierGateway (`0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/14 (21.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 12 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 355 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 32
- Confirmed-live implementations: 14 of 381 unique; 367 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/29
- Verified + Unaudited implementations: 26
- Verified by bytecode match: 0
- Unverified implementations: 352
- Unique implementations: 381
- Raw deployments: 390
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 4 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 3 | 10.3% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| L1StandardBridge | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263726 | `0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8` | ✅ Audited |
| L2OutputOracle | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-263727 | `0x92ef6af472b39f1b363da45e35530c24619245a4` | ✅ Audited |
| OptimismPortal | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263741 | `0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1` | ✅ Audited |

### ⚠️ Verified + Unaudited (26)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountingReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x43c4a95788997a3e02f6ca7e5cc4c23dbde66c9c`; base `0x7fceb53b2959861d29057361158a2b41caaffd68` | ⚠️ Unaudited |
| CrisisControlRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263739 | `0x7d43eb137185aea81a020563099e940bb380f35e` | ⚠️ Unaudited |
| ERC20RevocableComplianceTokenBasicPackageUpgradable | token | project_anchor | own_supporting | 1 | ethereum | unit-263729 | `0x48ab4e39ac59f4e88974804b04a991b3a402717f` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2c0b27f7c8f083b539557a0ba787041bf22db276`; ethereum `0xc463eac02572cc964d43d2414023e2c6b62baf38` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263731 | `0x2a721cbe81a128be0f01040e3353c3805a5ea091` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263737 | `0x994eeb321f9cd79b077a5455fc248c77f30dd244` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac991621fd8048d9f235324780abd6c3ad26421` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263743 | `0xc77ece87c91c44afb5f19638f9a0f75b5d90e932` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263712 | `0x5b1ef673d9c316b3ee9ed3b4e3cc84952bfc5257` | ⚠️ Unaudited |
| ResolverRegistry | registry | project_anchor | own_supporting | 1 | ethereum | unit-263735 | `0x6c89104690452ad7e209f0ab72287c2561d5cf0e` | ⚠️ Unaudited |
| SP1VerifierGateway | periphery | project_anchor | own_supporting | 0 | ethereum | unit-263713 | `0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67` | ⚠️ Unaudited |
| StrategyManager | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x075193d36693da7ba3bb709cf63bef070ba04d94`; base `0xf7e745658fa6f1fe8f2cab47861a273991cd3374` | ⚠️ Unaudited |
| SuperchainConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263728 | `0x745393cc03b5fe668ecd52c0e625f59aad6d3da0` | ⚠️ Unaudited |
| SystemConfig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263733 | `0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x28966ce36d0f25858dc5d10dfc2829f05c332c49`; ethereum `0x6424c7548e214f89b64ea5981c5a0c5ec22b6e38` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | project_anchor | own_supporting | 2 | base | unit-263745 (2 proxies) | 2 deployments: base `0x1a48cec817bcb5436efe99bab6dde228cc37e1cc`; base `0xe83ef4375d806c02387069f1b753b2ab76ab1dc5` | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc91e44e9302288fe5df24d6392875e5069e1aca7` | ⚠️ Unaudited |
| UnderlyingOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x264d6474802ef8bc1bc05f89f7d640d1e93c5330`; base `0xd7abc360dfcf1b6dd0a03138235e12a2bc1c1c8b` | ⚠️ Unaudited |
| UnderlyingOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2d342de4c58a871b3525740c58a1c112d5835865`; ethereum `0xd58e8c1c83d598ad76b5f0e26b4a25cdb885d190` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x03067bbd0d41e3fe4a0bb6ca67c99e7352da4cae`; base `0x25d90abd6c1e8dccd40932d2fdd2cd381bfc832d` | ⚠️ Unaudited |
| VaultComposer | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x16ce6d9576a411911e62b6073f1cc9d1347ad96b`; base `0xbb801ed781df31f660cc743bef7bb9d04b030923` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6bce7408c0781dce7b71494274302d4b75a1447c` | ⚠️ Unaudited |
| VerifierV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc25d093d3a3f58952252d2e763beaf2559dc9737` | ⚠️ Unaudited |
| ZRC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd418e42783382e86ae91e445406600ba144d162` | ⚠️ Unaudited |
| ZrcOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5eb63caad0ca6e068114c42794ada9b7757ebc1` | ⚠️ Unaudited |
| ZtakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (352)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0792c46723d479d4c29de5d78d93c0146edf3f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b49136665dc78347893bfacf3f9e2af546a1069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d3fc87ec70705ba6fddacc72d5c71440f64463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e21a71ac3f7607da5c06153a17b1dd20e702c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x540ff7ab7bb9894e408bb650ed4f060c390c9b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ac894b2a32fed0dc09c2c617277c2f2bf1cf130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a7e2bca9e35ba49282e832a28a6023904460d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9641b86870bbe53264492854ad7af32e39079dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x987d6008bb5c1e94a72b60a4bbfaaf67ef09746e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da6c219742518ae98e364184ce32fe81c08ba2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9985758eed32892441faf6fe852b8c6d6847205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea946ff59f97eec54e4b32a01e68d67fb4df5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd69d3ac5ca686ccf94b258291772bc520feaf211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0792c46723d479d4c29de5d78d93c0146edf3f5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x000643b4eb2c35c41b8754e50b4090a6e1a80f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00821e648c7f3c2f8866d84f9a986c9357f69c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00cae0d560db32afa03ba16e5c02e97e2640e4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00df89aeb784b7e4474cd0c0802ed1964387f7c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x030a1287e8816348d0eed12883897813d706d69a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x03186bd3dcad593bdb4b1c301e8ec94d552a2b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04de4cfb4cacab315a948433633e61fc69467ee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04f8338cd01be8e03b41c9d1589906e6cf75f9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0607a1b51f01f5edb1443642181402d77feab59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0659383c6f9628a094aa09755e703c6f071f84f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0763f774a2cc83f7f532457fc95bdc0dfd96a784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07f3291db953a7a91f8e507d416ca2df77103f29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x08a38732d0d1d84f795122534335078ac2accd34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x092e355e8536ec52e05f95cdf27f382eb8c0e45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x09d52bd07fd2526ff703d236f8436de02e7fe7d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x09f8368e1db0855efd984bc989b4b32e2e96d950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a13cd73d8f8657885537d35a283dfa84b1d2430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0b069fdd82284a95e485f9ce4a80e28c4735d840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0d0703c2e862f539065428470f2aa3e2fa1f3744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ea9ad8d688e894713547eba68cd4374ec2e417d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0fd5b50fd075b89db9d9425880a1f80bb1b46340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x115eecfc9626333999282f60f6c3b3d18bd91e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x118c7b1994a3e11e0ceaebdbfda1ccd76e955b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11ab6c794aa953abeead164f201a381d43d05dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1310626952ba517abe94117753fa51d19efa273c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1488ad22e776a8ba06ef84fc7972f4ea8f710751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x151f61765d27c6b5637345e343336aea051f2415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x152e1e9ee724b7f9a190edbbb07972897dd0d77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x160646019d4123b6bda227e9a6cfe5ad2f0a5a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1623db38d2627f66a52878b0be1da1302ce37820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x167b7ba592cb6450982fca34a854bc560455b48f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1845cd32221ff6b97b6374eceddd11599692d455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1a34aadab39f6474d122272d067277649df91f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b478d5317c15ff077b5e4e84d98bf4037e6b8b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1b4dd4469e007e77df35cc3cb3d631705b2b0b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1ba76c8fc346879cab31f539842b7aa6759deded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1e1a5616b61341c0ca1952896f007c318bad2e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1e22ba2401df80c48f73a0686beed9d316758454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1fdc71fbc67e23ba817b7313c98c1bea4b3752ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x22982eb7094f6b4a3700af2fe33d34c6e4bd3296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23b48a6103fb2f328158955aa11490351fe2f2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x23e072178d054b26585757c6232e4b8fb7449ea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24c9affac36f38e577cef87c28dc98317d12a358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2506d0e7191e70d4ab4e3d6ab611dc7699c8e40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x25858ddaa3c3b48ede7aed45f9ce8f116899df68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x268e6f7a87908cfa8efc3ef1f59e5775b3d11a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27d8bf58feb843b132998bea8e980d45ba5e1034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x27dbf44b29aa017596af36d778a9e0b13465039f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x288cef6dcf65a80d8132b305e6f3a2cc60b138a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x299eeaac090be619ddc833cdf9effc05f8e40f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2a1f1d2f0dbb017d5918e6436bc7b5a053a99784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ac2ecc124ac0903cdb97bb3200b465bf8f803e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2b2ec3eef875a5c29a2b950ad9a10e2ea94e3b24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263714 | `0x2b49136665dc78347893bfacf3f9e2af546a1069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d4101942272f151f013a44d7e2396f8ba9e1791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2d6c89281292f20d95cf9deecb99926777df0566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ef186f5ea1800ea45c1bec83c004a8a00fe9955` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2f67c922aaeb03719ad8ecc828bf51ec9886a5ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3115a9b0e23bb206eef7351d0e870831ba41c011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32376c6d60bf25975276751ecbf3d71a1eb1aa49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x32adc7a3f9c0990fe209becce08ceed0ae42b5c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x33a3241a0784b8a1b62d59de3daed7d40b30c3d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34827a37f33d82f5a53b7685d0d3ea02048bfcca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x34e10a226254c9d3165d56de671c2f727b0c4b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x354da2488d992bd6bb3fc9ff1c6b8d42aa4da1e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x36d831b2f6075cf35bf342bb88e7bf780539e268` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x378661461f13e298393d3485810e083dd16a2c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x382cdfa236f6eb8905437e979c257ba7b1e8c691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x38449521ab79fc5a571f8d1312b716074cad736f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x385301e0b3fff39516c9889f13d30c9274665f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x392cde06abf2a37c90eb6023df6d596351213773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39c9fbdfd3053e33d2f7f663d17ac41a67ff3692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a2b8b00fda78df57c06e93504dd9ffbe10ee52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ade38430e13640317e02dbd42675af2401b716f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b6de275dcfb3dc4236991ac3adfa79c8524df97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c1df20c4e617c4ec7d5e545e68c45669ea175f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3c2867469f0d1c65adbb7d3e11be59e4014ffd18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ce1a0613533ee0cafa541b253e61e7c3ad4e41b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263715 | `0x3d3fc87ec70705ba6fddacc72d5c71440f64463f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d7df2e441470f6a4cc01b44724308872b4310af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d96c336dae7d0b08ff938c36e9e7a8d1ff1899b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3e461d134888be92aab6925543d07e34b6b16b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3fa2a50b65c05e30a9fe1d9b76f56b03bff92598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x40662b6e81a0c6b4190cc583a6d655671a540696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x417319200486a763bf7ab81a857503d1a1df3353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41bb274b66920e65d326f71a4f249943bcce80ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x41ce4ab448139078ec5647977dc11d6893420b07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42a1b5fcf8d4e8432ef14ab30be1d30e36088426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x42ff910ecaa95ce8a45d9f124951894ce503c4a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x43d9c9809300c8411fa0b4472f0704813b0ad4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x44cfaecf5f0342ac3abc50a76dfb9f36a5013f23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x45eeb946b2d0327f1f475e494c68eb468ab76a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47b3897eb605e713b19071d923e26a04a1c608f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47fb9f47a046f653b37543acae25914115757675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x481bac16cac803625e916cd016d46fc0f8e5f759` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x485d1ced83456301d99222f73ac2adbb1544df69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x487c71c4d46987f9055713d696f054421d984f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48ced71951217709b422c3e972bd9750b7fc37d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x48fd2d530315ba0997cf6602f1c369cc16f57673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49dd921166b371e338ca499426d95abf39530489` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x49ddf7ff3a321ba26a9fb3f0a19a1ac53cdc4af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ae853286599b585df75aac8bafc3c033dfea253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b1feee44204394adf4e53bd38b677bfd5789a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bf4fc685b4967ca3aacfe79bdea011a8ee03678` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263716 | `0x4e21a71ac3f7607da5c06153a17b1dd20e702c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e6b1c7c59d0c04416af410b09a366cfc9519df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4eb4c7e03f73c8ead69eb1e63acf9ba09b485234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f0e67ddea40f42df286a1275a3611a79df9792d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4f1c195acdf6ca87066419bb76b1e38990442d65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4fa08d85453f479919de62622e9e22ecce2a7994` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4fbe9feb8b2cd2ff2affd2f53c9d06068efb757f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ff39313fe90db0889d1c33db87e59cf06b66233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50a468f4ff224a94b22e92806b41c362c7fb4247` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50c832e1c4f25971761fb69a1452a48fbbf2a4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x526fad7815cde985ad603967a2e45914fc49b8e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52e1151edfe6041e83d2c34f028357b85279c164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x53b8767778c9f7eef14430d56644607b424e979d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263717 | `0x540ff7ab7bb9894e408bb650ed4f060c390c9b6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x54ad1b7c819e24c7eb4768ad0a5ba456b09477e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x55fb673226395d15e0c40e62df365395e0716b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x570e99bb6601ba479e88ea01e34373dbfb15be6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x57286ea9f6097ba1f5b789a94b3acbe50c8d51fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5838ea16031f7d81ec1f8d22e382dd486b604196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x58dd52d749054cf7e4c14a52506e987e849b697b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59a5b8721de017abb8ea957b42810d7d73478a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x59f775de80b70efdf86d7a21db5b94b1b8584917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a594db5253d6ab28a18e4e9e9c5a810e69013ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a639a71eac933f4a88b9b2e1c14a4f86f4ad942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5acf7036b8465295ed6475d6dca720d441b9c97a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5ae03d0e3ba21f197729f6d7c0e0a3664e8184c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5afe91a124e22faf00ad82ba6de3305123600016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5d7cb8617555cc4677e86379e877040f368029de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6013a864fd27384def491804fffeb5df05603b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61c9bed6635c1fe9633745c374bec2ee413b74fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x663a3350b76af81677a816ef839521e2ad7b0eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67f72dd836b53c8bae80d9a7b24d8eaef451099c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x68951b24f7747e547341b765152ce210e431b2d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6a76a811dc7246089d440765e1f7a86bdd28f1ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263718 | `0x6ac894b2a32fed0dc09c2c617277c2f2bf1cf130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6bb5afc72e1220dbbba4c60c702ba1a1b85d8af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6c63c7886c7b8c27d463afac4a7439614637951a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6cb3bed31e25f601a0a138e082cd6067b8e8ddb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6d33efc9e2fd52154a46524b6d903a09ea0806da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f0c74c7013b65409091ca48e2f909d36bec5eb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6f5fa88d270c264dabded657f035ed4930f2aabe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70814dd5ed35048106c241d9a0c8cbf48fb8c43e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7141846d5ebf50883ed5a8ecf60843837327831f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x71fe0a2b896422718f44d1a864d80d3ca7340ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7258ff64b031a902add649d39856869fff001740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72cc5b715d94f0a4c7d8ae47d975f377ed29df4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x735db0c909015c5c7acfddc3ea1666b03dfb6798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7400cd0b48e07a30e77c31205d538e4cbb8178d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7550038233bab47ce18728f52f89db4234a7aa23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75b6f7c029dd0e418f6ed6940302c1d49704187e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x761a2172a3fab3516b5f310d9bf8b09e7f8843fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x761ba54f64c01bf96715ea3e59cce05bef7489f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7631d4b0e0b14b34d5ba6938eb6131587e00babe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x76a378da6fcfded5561184f8720db9922f880c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x77e9cd3852623d4ff66f03d07768358c3c0cb50d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x797f29143dad32ac989ee56a917c1ca6abcc92cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x799c1530a83cb38988fefeff2dc3fa290dcf2147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x79a29549e9d2880080b2b7e5a644aeb2157ccb54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7af2bebe7f668cdaab249e607dbfd778ecf549ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7b0a1304274d2b6df5240aa152a284fc718ca82e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7bc224edf3b92a35513c770a7ba3c8a047b09838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7be8cf9df1378b904c2ae96c0e61cbcd1823477b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ca58c67e178c624de64de2b7d6a818447933ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7e9bf3867cb33ee2e046dd9be9cc5d9c3a7a5534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x82ee89ce40f6f6251f8d99dbbaad3dd9fe59de65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x832ed4a2e43a955f5fc211af23c83beb937b021a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x842554951bf9c7c854f23c7fb940677b3dffc2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x850a1372b79c8391d67f040a816b9f76c7abecc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8584d3f6dca1d7f57d3084f8ed115dfd1d93327d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85fc12967c9469ef38b755de18674f211c373a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x86fcd275038e300d941c18de2131535986f4d6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x87119a63ca8abe3b9b65ef76cb74903e83f4c6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8719bba438d20be475f9bcc3a2f99f8f935b54cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x878604d2902f2672c8ef77f97793b7581a57368d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263719 | `0x87a7e2bca9e35ba49282e832a28a6023904460d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x88929d1bbbfcb9f50d1e47ac2b5ae2e9ffe5838f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89993ef96ccec008e2cb40aeb513373f17195671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8a9f0c8c0b6ddb340811028f013941a6d494e204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8b2a1468a51e05eaa1e7466ba099aabab4372df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8bd6131f0d518dfe63717ce469435bd6cb744230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d0f143b079a1583d295055455f373dbdce62029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8d44cd904b74b95ff98b9fca7a636fb65c21957b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8ecf83b3dd48eaebbee8a4ca5bc82beefbaff7c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8fa704812ba46417248cc9d24b003dcfaf117983` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9098ae6e724fc1851c0bec4c2de4776a2e0fd53f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x920e54331381545be00c85e6263077411987d244` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x927c0e970c85655b294c460c31e82858c844bc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x92cb6d0f0f6f2cd51819a109780a7e01b50205ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x934b36187112cb396b74663354b3c02c6ce04a1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x93edcf48614f5bc93fd70ad5b4f56ee9c750f48d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9545a3f890f3acb626435f60e5361193623924e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9622eb0e07e041fbc848a9a3b1965d81e9405cd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263720 | `0x9641b86870bbe53264492854ad7af32e39079dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x97fda99bb2daf5f04a0193777122191195e1525a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98081351546b7e996fabff0c18b55cb0393239be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x987b8993cd0089df5c3c87f64b11da8ce741f9e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263721 | `0x987d6008bb5c1e94a72b60a4bbfaaf67ef09746e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98f6c6e08c755589282dff8b29ab61fbe9cc7c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x997c35639178f41ee2c9b8c0f3ff98c45a31e8af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x999d7855a6a5bd364aff04289e7001c8c2358a49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x99fbed36237f14c7d95d18c0a553e5b9f43c0a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9a4ba08925a92e92d77ff2da6eb6f45b3e23459f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9aa425b7264053d6ce0f41bb363a0c10a67a6d47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9b0733cef4770e83d8871067944a1bb71a7f2e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9ba868676620ee78c742beea18e61cc08f150fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9c28434e5a3bc93ef99dbe6d48d80ef8f02bc306` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263722 | `0x9da6c219742518ae98e364184ce32fe81c08ba2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9db4a954351b16f6e1e44fa4ae5fe191e6c66781` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9dbe9907f1e2ae5e2d37582e43ce0fc013752227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e394607c300bce1481673d957bd0f75d2125da4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9e83ebcbcfa0439cec21903dfc5e2c0fcc34086c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9efb04860539f0adc9c33fa75586830a581b18bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9f0e7c9bff649bd3f3384c1856831becaa67c20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9f590a9b62aaeb215ac76dbfa2ed31df688fc4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9fef34648730e57a59823ca75d47bbc63cffc413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa18b4c13bb8e01409228bd78ab4758aba4e6537f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa19f815a793c34a7557aacf81c59be1162535a7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa1d1355f65f5b8f2c1e3e5d8eeaf96828becf788` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa23d6fb46cad2aa4e576672d2db7e32f9c424f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa2b7f30cb1a6e9cd796a1c10ed26623f8f7cd5e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa315ec5e97ec3f96360a9c340b490317fe375a0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa39e1b6062db899dbf7c2f4f51cedb86a171faec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa4eef340b259e900d6cbec81c978597d7bf8f064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa66ca6c4435c68c2b70996cc2940cba4d9c5c1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa76a708d5e38d57eb15bd7677845cd85f7564a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa8069164a98e7a4b00cdde70f1f3e1486f45ac70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa947a21cd6475d0c0430de33be950af31a6c8ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9ac290a916af7836ec512601bd1f672bdc21c77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9f02981c0eae771d1069a3dede8c6f3e97597c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaa3a25c0b0ac59989326a8698ac62266c5a4948e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab2314ae593facf06567a61ac2ef040fff994919` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaba478f225729cdbfaf8d765daeaac7dbc83c590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xabe0e9faf7d4bdb3349cd4c3ed867f4610de3cce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xacbbee57e32400ecb7943b30d55d0e4509837d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xada49eac68fe4beb7db67084c3179f1b9fa68a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae224332be4bb28c7560de5b249faa71ce5a7f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xae3722ec62d96d5c4039aac94f52416a76ef422a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaf144a07f7852f1e00f1be006bdff0267c30a675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb0b40fad9f72a4c2e4b427f416e5e8685bb825d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb0c8b715b586b5aa54fe1915e10481d1f8c562e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb1b81ae1d04e90d60316e3c1264ce70d65a1e71a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb1e8437db0c259a8838b594fad7840c254821bf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb30adc0b143923c6f76e8f3407e27eccbc5f9241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb3d70bd7ffc1e5ae1f21c9dab90f33b330db47b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb3f46a1d24b8c0619d67fb2ff5a2ebb15ec78c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb498a9128e2ff7bed58770a062bb267e11b445d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb65d447629ac41867a6c1432e44f2b627027519d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb949fffc69c5c07f6c3b132c362512e98a470aed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263723 | `0xb9985758eed32892441faf6fe852b8c6d6847205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb0a0054a78a08517edd080710417467c651b195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbbb233f55561f4048d26c8d4204fce4f1f6caec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc1e5e677021302d20391310e5d15ddbe3626453` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd06f3a073ed111cabd792597c6e77f979aa3933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd7238f06e67f5bab3c2877901d986e7a16c5505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbe8034ac57823debdaeb156e9007b7316029dce1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263724 | `0xbea946ff59f97eec54e4b32a01e68d67fb4df5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbfeb61db9bb721fa7b07edf947b26a63ef75bad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc02c18898d99e9b0869bf47e8fa601444db28622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc074de8c7832d29cc804b4c659f5f010531a15cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc211eaecde07b8c1c4a637acdbc7bd1f93c30e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc22454fb5849a73f57fea78e2922acb2b1280941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc23c4799e2df60501e01a51f7aeb6da7614e684f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3b6fb0129b69e9c247a12e9e5b2ebf98cc0762c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3c37d6aa325886aa3a38e2c0326c140041ed4e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4871f8407bc6b842c0653d29db6f6eb0858b6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7114168bcb176eb74513a9224168f5939a137a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc746ea7ade1aaa073a975b154962cb3233a59ecc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc765fa6dc7238ea53185fd3eedf2cd0397d5dc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc7d1d869ea808913f28338d2597d085d37e28091` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc8e365eee4b18e433dc53979366f6e51a96213dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc9eeb99326ba5ee871105a2af961a2371f41ce09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb3081eef81b16b5a9f2719ad136aae35e4ff7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcc83739f764904e4037fee4c01c345e9097ae1ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcd91e5ad5abe9d5b0761604010c8ce36d9f7816c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcdb881f47d29928a1d1654a520550f8ed8ee795b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce035b55dfb71df3027c5b609cac28198400f517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xce21323b039f98249458a06be891574a2f726f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcfce21e8fbe70c6509891192942d7548d243b4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd189ff040206ec34b9848849a8f207cba25ed6ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd20802bbfbb725dbaa7030e99635d8cad1c14761` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd2306bffb09ca5dd24687538c09ce7970113e9e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd353ee26a54a13eddf3521febf692c8b2287efc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd3a69e94ceccb5701257d7ea2d1ba73d44b56ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4ffc229b44813a6c7d1fa3721a305daf2a9c3e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd5aae699cd38cf7d3bc4e6baef44482ddd8ece9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd62f6a6dc488b9671871d2a4ef6eac6870f3ed2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd66df8ec663e5180d73a43e993741889a9dff295` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-263725 | `0xd69d3ac5ca686ccf94b258291772bc520feaf211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd70493642e5c33110c2d27e7b9ae6ae093e24292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd7363b1a78d2daf0cb10ef6dacac057f2f271b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda1eb3e5210045899fb5fda49447ba4bf88e87ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda54e1964613f2e7bc979e31a095e954777dac1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdade9c715ae2cc1617a6d78b6174f80f623e55f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdc3dc371c3928bb146ad210ef30a29c8bf5f299f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd34182e868fab4bcf9610adf14a6cc528a051d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdd3e337b080983f6877dea1231f634e82ae40796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xddde5d89a2a31dd3ea558140110ff453924010d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xde3cdbb6666deeb16a6907a52de743e326eb81a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe028cfe6260e7cffb10a919a1a2fd720aa3b578c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1c24ca85b1af54f80bf97b9b926968c78ef0ff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe392693fb35fc0f475cc4103f4f9055df84db62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe4b1b3018269469f33b693392d27dfa09376b5f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe5a2bf59b9c1df218293e72f2f721bd7e0f5fd4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe6c283b58d20598b4732507bc5f04d12d68f0e42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe7b48d0f12c543114c56afe00f056a64c54ebd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe9657499bb1c1c9b9f677630978e423880ccfa79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe9e8a82e077fbcfb11e849a29935172cff733422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xea661820e80d824ab0e02cab1f3a906c953b5ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeaa0817098138b0b0037b6b82c9890af09b48a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeca4bb7ef1a3fbc8caafb0b7558843c3d7b3142f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecab610245d7f6190d82f2f637681e8b8838d011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xecfe945ea38b048a7649fce5314e6045a1417a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeddfb2f09e8bf8a85f86879037b47e6500cb8535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeffb29900e7ce874406291b4b1562debfe5503de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf012e893b87fc014c2ea5a633d2cc3856751d468` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf02d361ae7d616976e1f10dcc34a683b083d411f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf1188b44dcad83f22dedc99938c19f88fdb9c883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf132708496c51aeee18fa70249f2e801de157997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf1a3af5c8e164ed4bde72aed623b2789d262e618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf36a1a06d81d03a1649c10a282d8fee9e9fa1581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf5541ebe1fbef6180e6b233a237bd0ef2168a605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf633ec133142db607df889b0fdc852b0d542f999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf7cfd12bf65a2b39d1a48a941a378103bc0a6a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf87e18bd9e9d8bd3fffabe5941c241912085ad20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf8dcb30ce258a9b1b3faa591dc0b5dd3ea624b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf91286de6bc335e61bd2e3729c1867f3ede2eb44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf95dbab0db5ad149525417857087804ba0e30a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfa923148bb30fd975953750ca29645eee0485bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfcbf40cded5d88f2c6a58607b7a7acee92a51aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfd5b66ada39592d9387f6fadcec1ae71ba263b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfdedb41830d8641361c536f1c9c31c8c845b3c57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe89d1336c0d4490a287ca1b69f5709e4bbdbc36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfeb63e611dfce8a3c6279e889609f15db9ccf3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfeddc524866021202766b157c20dbebee521c797` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 334
- Live contracts: 5
- Unknown liveness contracts: 329
- Source-verified contracts: 8
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=7, contamination review=1, unverified unclassified=326

Showing first 200 of 334 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | contamination review | Migrator<br>`0xdac991621fd8048d9f235324780abd6c3ad26421` | non_address_book | unknown | unknown | verified | n/a | `0x0080e79e5f53f7f0e9c186a849d6bd6f246c635f` |
| ethereum | candidate review | Proxy<br>`0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc66b1986274a1be7162be045a0546a57414b6989` |
| ethereum | candidate review | Proxy<br>`0x6bce7408c0781dce7b71494274302d4b75a1447c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc66b1986274a1be7162be045a0546a57414b6989` |
| ethereum | candidate review | Proxy<br>`0x745393cc03b5fe668ecd52c0e625f59aad6d3da0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc66b1986274a1be7162be045a0546a57414b6989` |
| ethereum | candidate review | Proxy<br>`0x994eeb321f9cd79b077a5455fc248c77f30dd244` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc66b1986274a1be7162be045a0546a57414b6989` |
| ethereum | candidate review | Proxy<br>`0xc25d093d3a3f58952252d2e763beaf2559dc9737` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc66b1986274a1be7162be045a0546a57414b6989` |
| ethereum | candidate review | Proxy<br>`0xc77ece87c91c44afb5f19638f9a0f75b5d90e932` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc66b1986274a1be7162be045a0546a57414b6989` |
| ethereum | candidate review | ProxyAdmin<br>`0x5b1ef673d9c316b3ee9ed3b4e3cc84952bfc5257` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xc66b1986274a1be7162be045a0546a57414b6989` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x000643b4eb2c35c41b8754e50b4090a6e1a80f92` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x00821e648c7f3c2f8866d84f9a986c9357f69c73` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x00cae0d560db32afa03ba16e5c02e97e2640e4a1` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x00df89aeb784b7e4474cd0c0802ed1964387f7c0` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x030a1287e8816348d0eed12883897813d706d69a` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x03186bd3dcad593bdb4b1c301e8ec94d552a2b2d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x04de4cfb4cacab315a948433633e61fc69467ee7` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x04f8338cd01be8e03b41c9d1589906e6cf75f9a6` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0607a1b51f01f5edb1443642181402d77feab59f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0659383c6f9628a094aa09755e703c6f071f84f6` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0763f774a2cc83f7f532457fc95bdc0dfd96a784` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x07f3291db953a7a91f8e507d416ca2df77103f29` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x08a38732d0d1d84f795122534335078ac2accd34` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x092e355e8536ec52e05f95cdf27f382eb8c0e45f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x09d52bd07fd2526ff703d236f8436de02e7fe7d7` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x09f8368e1db0855efd984bc989b4b32e2e96d950` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0a13cd73d8f8657885537d35a283dfa84b1d2430` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0b069fdd82284a95e485f9ce4a80e28c4735d840` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0d0703c2e862f539065428470f2aa3e2fa1f3744` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0ea9ad8d688e894713547eba68cd4374ec2e417d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0fd5b50fd075b89db9d9425880a1f80bb1b46340` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x115eecfc9626333999282f60f6c3b3d18bd91e47` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x118c7b1994a3e11e0ceaebdbfda1ccd76e955b03` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x11ab6c794aa953abeead164f201a381d43d05dca` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1310626952ba517abe94117753fa51d19efa273c` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1488ad22e776a8ba06ef84fc7972f4ea8f710751` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x151f61765d27c6b5637345e343336aea051f2415` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x152e1e9ee724b7f9a190edbbb07972897dd0d77d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x160646019d4123b6bda227e9a6cfe5ad2f0a5a3b` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1623db38d2627f66a52878b0be1da1302ce37820` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x167b7ba592cb6450982fca34a854bc560455b48f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1845cd32221ff6b97b6374eceddd11599692d455` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1a34aadab39f6474d122272d067277649df91f83` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1b4dd4469e007e77df35cc3cb3d631705b2b0b95` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1ba76c8fc346879cab31f539842b7aa6759deded` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1e1a5616b61341c0ca1952896f007c318bad2e04` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1e22ba2401df80c48f73a0686beed9d316758454` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x1fdc71fbc67e23ba817b7313c98c1bea4b3752ad` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x22982eb7094f6b4a3700af2fe33d34c6e4bd3296` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x23e072178d054b26585757c6232e4b8fb7449ea5` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x24c9affac36f38e577cef87c28dc98317d12a358` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2506d0e7191e70d4ab4e3d6ab611dc7699c8e40d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x25858ddaa3c3b48ede7aed45f9ce8f116899df68` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x268e6f7a87908cfa8efc3ef1f59e5775b3d11a43` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x27d8bf58feb843b132998bea8e980d45ba5e1034` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x27dbf44b29aa017596af36d778a9e0b13465039f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x288cef6dcf65a80d8132b305e6f3a2cc60b138a5` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x299eeaac090be619ddc833cdf9effc05f8e40f68` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2a1f1d2f0dbb017d5918e6436bc7b5a053a99784` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2ac2ecc124ac0903cdb97bb3200b465bf8f803e0` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2b2ec3eef875a5c29a2b950ad9a10e2ea94e3b24` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2d4101942272f151f013a44d7e2396f8ba9e1791` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2d6c89281292f20d95cf9deecb99926777df0566` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2ef186f5ea1800ea45c1bec83c004a8a00fe9955` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x2f67c922aaeb03719ad8ecc828bf51ec9886a5ea` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3115a9b0e23bb206eef7351d0e870831ba41c011` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x32376c6d60bf25975276751ecbf3d71a1eb1aa49` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x32adc7a3f9c0990fe209becce08ceed0ae42b5c9` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x33a3241a0784b8a1b62d59de3daed7d40b30c3d0` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x34827a37f33d82f5a53b7685d0d3ea02048bfcca` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x34e10a226254c9d3165d56de671c2f727b0c4b4f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x354da2488d992bd6bb3fc9ff1c6b8d42aa4da1e9` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x36d831b2f6075cf35bf342bb88e7bf780539e268` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x378661461f13e298393d3485810e083dd16a2c11` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x382cdfa236f6eb8905437e979c257ba7b1e8c691` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x38449521ab79fc5a571f8d1312b716074cad736f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x385301e0b3fff39516c9889f13d30c9274665f62` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x392cde06abf2a37c90eb6023df6d596351213773` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x39c9fbdfd3053e33d2f7f663d17ac41a67ff3692` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3a2b8b00fda78df57c06e93504dd9ffbe10ee52a` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3ade38430e13640317e02dbd42675af2401b716f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3b6de275dcfb3dc4236991ac3adfa79c8524df97` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3c1df20c4e617c4ec7d5e545e68c45669ea175f1` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3c2867469f0d1c65adbb7d3e11be59e4014ffd18` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3ce1a0613533ee0cafa541b253e61e7c3ad4e41b` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3d7df2e441470f6a4cc01b44724308872b4310af` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3d96c336dae7d0b08ff938c36e9e7a8d1ff1899b` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3e461d134888be92aab6925543d07e34b6b16b5a` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x3fa2a50b65c05e30a9fe1d9b76f56b03bff92598` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x40662b6e81a0c6b4190cc583a6d655671a540696` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x417319200486a763bf7ab81a857503d1a1df3353` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x41bb274b66920e65d326f71a4f249943bcce80ac` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x41ce4ab448139078ec5647977dc11d6893420b07` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x42a1b5fcf8d4e8432ef14ab30be1d30e36088426` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x42ff910ecaa95ce8a45d9f124951894ce503c4a7` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x43d9c9809300c8411fa0b4472f0704813b0ad4a4` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x44cfaecf5f0342ac3abc50a76dfb9f36a5013f23` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x47b3897eb605e713b19071d923e26a04a1c608f2` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x47fb9f47a046f653b37543acae25914115757675` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x481bac16cac803625e916cd016d46fc0f8e5f759` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x485d1ced83456301d99222f73ac2adbb1544df69` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x487c71c4d46987f9055713d696f054421d984f49` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x48ced71951217709b422c3e972bd9750b7fc37d6` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x48fd2d530315ba0997cf6602f1c369cc16f57673` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x49dd921166b371e338ca499426d95abf39530489` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x49ddf7ff3a321ba26a9fb3f0a19a1ac53cdc4af1` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4ae853286599b585df75aac8bafc3c033dfea253` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4b1feee44204394adf4e53bd38b677bfd5789a1f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4bf4fc685b4967ca3aacfe79bdea011a8ee03678` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4eb4c7e03f73c8ead69eb1e63acf9ba09b485234` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4f0e67ddea40f42df286a1275a3611a79df9792d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4f1c195acdf6ca87066419bb76b1e38990442d65` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4fa08d85453f479919de62622e9e22ecce2a7994` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4fbe9feb8b2cd2ff2affd2f53c9d06068efb757f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x4ff39313fe90db0889d1c33db87e59cf06b66233` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x50a468f4ff224a94b22e92806b41c362c7fb4247` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x50c832e1c4f25971761fb69a1452a48fbbf2a4e2` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x526fad7815cde985ad603967a2e45914fc49b8e7` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x52e1151edfe6041e83d2c34f028357b85279c164` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x53b8767778c9f7eef14430d56644607b424e979d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x54ad1b7c819e24c7eb4768ad0a5ba456b09477e5` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x55fb673226395d15e0c40e62df365395e0716b71` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x570e99bb6601ba479e88ea01e34373dbfb15be6e` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x57286ea9f6097ba1f5b789a94b3acbe50c8d51fa` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5838ea16031f7d81ec1f8d22e382dd486b604196` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x58dd52d749054cf7e4c14a52506e987e849b697b` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x59a5b8721de017abb8ea957b42810d7d73478a00` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x59f775de80b70efdf86d7a21db5b94b1b8584917` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5a594db5253d6ab28a18e4e9e9c5a810e69013ac` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5a639a71eac933f4a88b9b2e1c14a4f86f4ad942` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5acf7036b8465295ed6475d6dca720d441b9c97a` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5ae03d0e3ba21f197729f6d7c0e0a3664e8184c2` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5afe91a124e22faf00ad82ba6de3305123600016` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x5d7cb8617555cc4677e86379e877040f368029de` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6013a864fd27384def491804fffeb5df05603b21` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x61c9bed6635c1fe9633745c374bec2ee413b74fb` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x663a3350b76af81677a816ef839521e2ad7b0eb9` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x67f72dd836b53c8bae80d9a7b24d8eaef451099c` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x68951b24f7747e547341b765152ce210e431b2d2` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6a76a811dc7246089d440765e1f7a86bdd28f1ec` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6bb5afc72e1220dbbba4c60c702ba1a1b85d8af8` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6c63c7886c7b8c27d463afac4a7439614637951a` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6cb3bed31e25f601a0a138e082cd6067b8e8ddb5` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6d33efc9e2fd52154a46524b6d903a09ea0806da` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6f0c74c7013b65409091ca48e2f909d36bec5eb7` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6f5fa88d270c264dabded657f035ed4930f2aabe` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x70814dd5ed35048106c241d9a0c8cbf48fb8c43e` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7141846d5ebf50883ed5a8ecf60843837327831f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x71fe0a2b896422718f44d1a864d80d3ca7340ec8` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7258ff64b031a902add649d39856869fff001740` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x72cc5b715d94f0a4c7d8ae47d975f377ed29df4e` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x735db0c909015c5c7acfddc3ea1666b03dfb6798` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7400cd0b48e07a30e77c31205d538e4cbb8178d2` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7550038233bab47ce18728f52f89db4234a7aa23` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x75b6f7c029dd0e418f6ed6940302c1d49704187e` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x761a2172a3fab3516b5f310d9bf8b09e7f8843fe` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x761ba54f64c01bf96715ea3e59cce05bef7489f1` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7631d4b0e0b14b34d5ba6938eb6131587e00babe` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x76a378da6fcfded5561184f8720db9922f880c42` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x77e9cd3852623d4ff66f03d07768358c3c0cb50d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x797f29143dad32ac989ee56a917c1ca6abcc92cc` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x799c1530a83cb38988fefeff2dc3fa290dcf2147` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x79a29549e9d2880080b2b7e5a644aeb2157ccb54` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7af2bebe7f668cdaab249e607dbfd778ecf549ea` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7b0a1304274d2b6df5240aa152a284fc718ca82e` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7bc224edf3b92a35513c770a7ba3c8a047b09838` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7be8cf9df1378b904c2ae96c0e61cbcd1823477b` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7ca58c67e178c624de64de2b7d6a818447933ca5` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7e9bf3867cb33ee2e046dd9be9cc5d9c3a7a5534` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x82ee89ce40f6f6251f8d99dbbaad3dd9fe59de65` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x832ed4a2e43a955f5fc211af23c83beb937b021a` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x842554951bf9c7c854f23c7fb940677b3dffc2bf` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x850a1372b79c8391d67f040a816b9f76c7abecc3` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8584d3f6dca1d7f57d3084f8ed115dfd1d93327d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x85fc12967c9469ef38b755de18674f211c373a3b` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x86fcd275038e300d941c18de2131535986f4d6af` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x87119a63ca8abe3b9b65ef76cb74903e83f4c6a1` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8719bba438d20be475f9bcc3a2f99f8f935b54cc` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x878604d2902f2672c8ef77f97793b7581a57368d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x88929d1bbbfcb9f50d1e47ac2b5ae2e9ffe5838f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x89993ef96ccec008e2cb40aeb513373f17195671` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8a9f0c8c0b6ddb340811028f013941a6d494e204` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8b2a1468a51e05eaa1e7466ba099aabab4372df5` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8bd6131f0d518dfe63717ce469435bd6cb744230` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8d0f143b079a1583d295055455f373dbdce62029` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8d44cd904b74b95ff98b9fca7a636fb65c21957b` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8ecf83b3dd48eaebbee8a4ca5bc82beefbaff7c0` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x8fa704812ba46417248cc9d24b003dcfaf117983` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9098ae6e724fc1851c0bec4c2de4776a2e0fd53f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x920e54331381545be00c85e6263077411987d244` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x927c0e970c85655b294c460c31e82858c844bc96` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x92cb6d0f0f6f2cd51819a109780a7e01b50205ac` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x934b36187112cb396b74663354b3c02c6ce04a1e` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x93edcf48614f5bc93fd70ad5b4f56ee9c750f48d` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9545a3f890f3acb626435f60e5361193623924e1` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x9622eb0e07e041fbc848a9a3b1965d81e9405cd8` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x97fda99bb2daf5f04a0193777122191195e1525a` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x98081351546b7e996fabff0c18b55cb0393239be` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x98f6c6e08c755589282dff8b29ab61fbe9cc7c6f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x997c35639178f41ee2c9b8c0f3ff98c45a31e8af` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x999d7855a6a5bd364aff04289e7001c8c2358a49` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x99fbed36237f14c7d95d18c0a553e5b9f43c0a4f` | non_address_book | unknown | unknown | unverified | n/a | `0x90b9b5062f296483441bb48d4005077463b28b1c` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [index.html](https://certificate.quantstamp.com/full/zircuit-l-2-upgradeable-contract/e765bc0e-0cbc-40f8-9a84-a7cfbd91cae0/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Zircuit_zrc_token_Secure3_Audit_Report.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_zrc_token_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf) | Unknown | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Zircuit-ZRC-Token-audit-report-2024-1.1.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit-ZRC-Token-audit-report-2024-1.1.pdf) | Unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf](https://github.com/zircuit-labs/audit-report/blob/main/Zircuit_OP_Bridge_July_24%2C_2024_Dedaub_Audit_Reports_gdoc.pdf) | Dedaub | Audit | 2024-07 | stale | Direct | n/a | matched | 3 | 3 | 0 | 3 | n/a |
| [dedaub-audit-zkr-staking-ztakingpool.pdf](https://github.com/zircuit-labs/audit-report/blob/main/dedaub-audit-zkr-staking-ztakingpool.pdf) | Dedaub | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [ztakingpool_ottersec.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ztakingpool_ottersec.pdf) | Ottersec | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [ZRC_OFT_final_report_Quantstamp.pdf](https://github.com/zircuit-labs/audit-report/blob/main/ZRC_OFT_final_report_Quantstamp.pdf) | Quantstamp | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2012] index.html — no match: The provided text is not a valid audit report; it appears to be a placeholder or error message from Quantstamp's website requiring JavaScript.
- [2014] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf — no match: Only one contract in scope: USDCAdapter.sol. Audit date from title: Sep 19th, 2024.
- [2015] Zircuit_zrc_token_Secure3_Audit_Report.pdf — no match: No reason recorded
- [2016] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf — no match: Extracted 4 contracts from Appendix 1 - Files in Scope. Audit date from 'Dates Sep14 2024' in overview.
- [2017] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf — no match: Scope section explicitly lists three contracts: BatchMigrator.sol, Migrator.sol, ZrcDistributor.sol. Audit date is the end date of engagement: August 2nd, 2024.
- [2018] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf — no match: No reason recorded
- [2019] Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf — matched: No reason recorded
- [2020] dedaub-audit-zkr-staking-ztakingpool.pdf — no match: No reason recorded
- [2021] ztakingpool_ottersec.pdf — no match: No reason recorded
- [2022] ZRC_OFT_final_report_Quantstamp.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf | USDCAdapter | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRC | unmatched — not counted | — | — | no |
| Zircuit_zrc_token_Secure3_Audit_Report.pdf | ZRCL2 | unmatched — not counted | — | — | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LiquidityHub | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPool | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | BasePool | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf | LaunchPoolFactory | unmatched — not counted | — | listed in scope appendix | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | BatchMigrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | Migrator | unmatched — not counted | — | listed in scope | no |
| Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf | ZrcDistributor | unmatched — not counted | — | listed in scope | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | BatchTransfer | unmatched — not counted | — | — | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRC | unmatched — not counted | — | — | no |
| Zircuit-ZRC-Token-audit-report-2024-1.1.pdf | ZRCL2 | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L1StandardBridge | own proxy deployment | Proxy (proxy) (selected) `0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8` — deployed 2024-07-02 19:08:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2OutputOracle | own proxy deployment | Proxy (proxy) (selected) `0x92ef6af472b39f1b363da45e35530c24619245a4` — deployed 2024-07-02 19:08:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2StandardBridge | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | L2ToL1MessagePasser | unmatched — not counted | — | — | no |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | OptimismPortal | own proxy deployment | Proxy (proxy) (selected) `0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1` — deployed 2024-07-02 19:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zircuit_OP_Bridge_July_24,_2024_Dedaub_Audit_Reports_gdoc.pdf | StandardBridge | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IMigrator | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IWETH | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | IZtakingPool | unmatched — not counted | — | — | no |
| dedaub-audit-zkr-staking-ztakingpool.pdf | ZtakingPool | unmatched — not counted | — | — | no |
| ztakingpool_ottersec.pdf | ZtakingPool | unmatched — not counted | — | — | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ERC20PermitOFT | unmatched — not counted | — | — | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFT | unmatched — not counted | — | — | no |
| ZRC_OFT_final_report_Quantstamp.pdf | ZrcOFTAdapter | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x7d43eb137185aea81a020563099e940bb380f35e` | CrisisControlRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48ab4e39ac59f4e88974804b04a991b3a402717f` | ERC20RevocableComplianceTokenBasicPackageUpgradable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2a721cbe81a128be0f01040e3353c3805a5ea091` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x994eeb321f9cd79b077a5455fc248c77f30dd244` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc77ece87c91c44afb5f19638f9a0f75b5d90e932` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c89104690452ad7e209f0ab72287c2561d5cf0e` | ResolverRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf35a4088ea0231c44b9db52d25c0e9e2fee31f67` | SP1VerifierGateway | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x745393cc03b5fe668ecd52c0e625f59aad6d3da0` | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x30f82a1ca89226e8b8815d6ebb728e3b18a428ff` | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1a48cec817bcb5436efe99bab6dde228cc37e1cc` | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 352 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 24 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [2012] index.html
- [2014] Zircuit-USDCAdapter_Secure3_Audit_Report-updated.pdf
- [2015] Zircuit_zrc_token_Secure3_Audit_Report.pdf
- [2016] Zircuit-Labs_Zkr-Staking_report_2024-09-17.pdf
- [2017] Zircuit_Labs_zkr_staking_Migration_Contracts_Smart_Contract_Security.pdf
- [2018] Zircuit-ZRC-Token-audit-report-2024-1.1.pdf
- [2020] dedaub-audit-zkr-staking-ztakingpool.pdf
- [2021] ztakingpool_ottersec.pdf
- [2022] ZRC_OFT_final_report_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
