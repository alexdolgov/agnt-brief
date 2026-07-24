# Agentic Audit Brief: World Chain

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

- Project: World Chain (`world-chain`)
- Website: [https://world.org/](https://world.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sepolia
- Contract surface: 332 unique implementations (333 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $381,453,262.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for World Chain. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across ethereum, sepolia. Structural roles: 15 core, 1 infra, 1 supporting. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (15), infra (1), supporting (1)
- Contract kinds: contract (17)
- Detected standards: erc1967proxy (9), ownable (1)
- Frameworks: openzeppelin (13), openzeppelin-upgradeable (10), solmate (10), solady (1)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6ab0777fd0e609ce58f939a7f70fe41f5aa6300a`, chain 1)
- UnnamedContract (`0x9c065e11870b891d214bc2da7ef1f9ddfa1be277`, chain 1)
- UnnamedContract (`0xd4d7a57dcc563756ded99e224e144a6bf0327099`, chain 1)
- UnnamedContract (`0xd9db270c1b5e3bd161e8c8503c55ceabee709552`, chain 1)
- DisputeGameFactory (`0x069c4c579671f8c120b1327a73217d01ea2ec5ea`, chain 1)
- GnosisSafe (`0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d`, chain 1)
- GnosisSafeProxyFactory (`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`, chain 1)
- L1CrossDomainMessenger (`0xf931a81d18b1766d15695ffc7c1920a62b7e710a`, chain 1)
- L1ERC721Bridge (`0x1df436afdb2fbb40f1fe8bed4fc89a0d0990a8e9`, chain 1)
- L1OpUSDCBridgeAdapter (`0x153a69e4bb6fedbbaaf463cb982416316c84b2db`, chain 1)
- L1StandardBridge (`0x470458c91978d2d929704489ad730dc3e3001113`, chain 1)
- L2OutputOracle (`0x19a6d1e9034596196295cf148509796978343c5d`, chain 1)
- MIPS (`0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4`, chain 1)
- OptimismMintableERC20Factory (`0x82cb528466cf22412d89bdbe9bcf04856790dd0e`, chain 1)
- OptimismPortal2 (`0xd5ec14a83b7d95be1e2ac12523e2dee12cbeea6c`, chain 1)
- PermissionedDisputeGame (`0x48cf980849a7eea03180f7dea4e21c112097b03e`, chain 1)
- ProtocolVersions (`0x8eef04eef96fef1050702453f75f0fc4f8f70973`, chain 1)
- Proxy (`0x95703e0982140d16f8eba6d158fccede42f04a4c`, chain 1)
- Proxy (`0xf9adf7c9502c5c60352c20a4d22683422dbd061f`, chain 1)
- ProxyAdmin (`0xd7405be7f3e63b094af6c7c23d5ee33fd82f872d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (16 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 15 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 298 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 19 of 332 unique; 313 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 294
- Unique implementations: 332
- Raw deployments: 333
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5891090d5085679714cb0e62f74950a3c19146a8` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1325c4966d17038c5592fb38416aee85ee73c0cb` | ⚠️ Unaudited |
| DelayedWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8ec1111f67dad6b6a93b3f42dfbc92d81c98449a` | ⚠️ Unaudited |
| DeputyGuardianModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dc91d01290af474ce21de14c17335a6dee4d2a8` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262160 | `0x069c4c579671f8c120b1327a73217d01ea2ec5ea` | ⚠️ Unaudited |
| EntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0000000071727de22e5e9d8baf0edac6f37da032` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262162 | 2 deployments: ethereum `0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d`; ethereum `0xd9db270c1b5e3bd161e8c8503c55ceabee709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262131 | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262161 | `0xf931a81d18b1766d15695ffc7c1920a62b7e710a` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262156 | `0x1df436afdb2fbb40f1fe8bed4fc89a0d0990a8e9` | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262154 | `0x153a69e4bb6fedbbaaf463cb982416316c84b2db` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262153 | `0x470458c91978d2d929704489ad730dc3e3001113` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262155 | `0x19a6d1e9034596196295cf148509796978343c5d` | ⚠️ Unaudited |
| LivenessGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24424336f04440b1c28685a38303ac33c9d14a25` | ⚠️ Unaudited |
| LivenessModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0454092516c9a4d636d3cafa1e82161376c8a748` | ⚠️ Unaudited |
| MIPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262122 | `0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4` | ⚠️ Unaudited |
| OpStateBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0939726264f2667429ef68e2b3734ecfbbad3abb` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262157 | `0x82cb528466cf22412d89bdbe9bcf04856790dd0e` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262159 | `0xd5ec14a83b7d95be1e2ac12523e2dee12cbeea6c` | ⚠️ Unaudited |
| Pairing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57f928158c3ee7cdad1e4d8642503c4d0201f611` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262125 | `0x48cf980849a7eea03180f7dea4e21c112097b03e` | ⚠️ Unaudited |
| PolygonStateBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76db75dc752305e2debd44c479680352f3bb766f` | ⚠️ Unaudited |
| PreimageOracle | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-262129 | `0x92240135b46fc1142da181f550ae8f595b858854` | ⚠️ Unaudited |
| ProtocolVersions | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262158 | `0x8eef04eef96fef1050702453f75f0fc4f8f70973` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262163 | `0x95703e0982140d16f8eba6d158fccede42f04a4c` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262152 | `0xf9adf7c9502c5c60352c20a4d22683422dbd061f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262134 | `0xd7405be7f3e63b094af6c7c23d5ee33fd82f872d` | ⚠️ Unaudited |
| Safe4337Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fcb43b46531bca003ddc8fcb67ffe91900c762` | ⚠️ Unaudited |
| SafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67` | ⚠️ Unaudited |
| SemaphoreVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443ad7acf39baa104b2e70fa5cf6fe32cc28abee` | ⚠️ Unaudited |
| StateBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d26ed31556ea7694bd0cc4e674d7526f70511a` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a032ec93ec0c492ec4bf0b30d5f51986e5a314` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03ad26786469c1f12595b0309d151fe928db6c4d` | ⚠️ Unaudited |
| VerifierLookupTable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0af990389fc2007cfb31855d6f7dfc383f102fa1` | ⚠️ Unaudited |
| WorldIDIdentityManagerImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad412a1df96434eed0779d2db4a8694a06132f8` | ⚠️ Unaudited |
| WorldIDIdentityManagerImplV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521e8fb3a32ea44237dc8b1e506dd78accfdf8bd` | ⚠️ Unaudited |
| WorldIDRouterImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x163b09b4fe21177c455d850bd815b6d583732432` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (294)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c7054bcb39f7b2e5b2c7acb37583e32d70cfa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053956ab1618ecacc135ebc18fd7564979ad4295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091ad9e2e6e5ed44c1c66db50e49a601f9f36cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a22c04215c97e3f532f4ef30e0ad9458792dab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e90dcafbc242d2c861a20bb20ec8e7182965a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3ff4731d7a10b89ed79ad1fd97844d7f66b96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10158d43e6cc414dee1bd1eb0efc6a5cbcff244c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1333d5e5201d760444a399e77b3d337ebdb0dd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a028cc500108307947dca4a1aa35029fb66ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17b354dd2595411ff79041f930e491a4df39a278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1ca1fbbd5f28e5492cc6bf8c4e8c57354eb162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cfc85d8e48f8eab294be644d9e25c3030863003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3580505c56f8560e3777e92fb27f70fd20c5b493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c68a1d60c47973ece5bc1725b65d8bec438192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a00fe3254c94c4689cb5163c91ee501d942e710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000000000000000000000000000000000001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4200000000000000000000000000000000000042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f4b8adf1af4b61bb62f68b7af1c37f8a6311663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537afb5ad22af9d4a17762bce0c5db101fa3fd61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57b930d551e677cc36e2fa036ae2fe8fdae0330d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262128 | `0x6ab0777fd0e609ce58f939a7f70fe41f5aa6300a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70410a302c4a5c52c659b780941c947abd437feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7768c821200554d8f359a8902905ba9ede5659a9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x78ce3664d1582e14270092ea9817f111ac53524b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a02482a880bce3f13e09da970dc34db4cd24d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5028bda40e7b173c278c5342087826455ea25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd5b6b5a574efd452ac0cfe3e1b69384a03c6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859dbe24b90c9f2f7742083d3cf59ca41f55be5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866087c23a7ee1fd5498ef84d59af742f3d4b322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b52dacb7b5d9a959cdcd5419061c0edd1296c29` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8bb2943ab030e3ee05a58d9832525b4f60a97fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c7c0208d17ea76eeac6033c4456c731d95762a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d98006269238caed033b2d94661b29312ad09b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945185c01fb641ba3e63a9bdf66575e35a407837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262130 | `0x9c065e11870b891d214bc2da7ef1f9ddfa1be277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc547e0ca60dc249eea2d91ba12f00c4ca12787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ebddcba71c9027e1eb45135672a30bcfeec9de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa231f8be37e583f276f93df516d88a043bfe47e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9bcf56d9fcc0178414ef27a3d893c9469e437b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae3f204c75e46c27f66c843bc9f3bbd04a6374c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d270651cef0aa3734c9a7feacd3b3b39e36e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8886f8bab6eaeb215adb5f1c686bf699248300e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262133 | `0xd4d7a57dcc563756ded99e224e144a6bf0327099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7df54b3989855eb66497301a4aaec33dbb3f8de` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdd91675235c37a47597c053807d61da27ae1ae6c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe1d72a719171dceab9499757eb9d5aeb9e8d64a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61df0cac9d85876ace5e3037005d80943570623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6fcb4952b2d3fab6da4bc165831f5575e093fec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec12a9f9a09f50550686363766cc153d03c27b5e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf4301686aff4ee36d70c718a9e62309b53862be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4305dd6256dc2b0d07caaf2953688defbc86e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x00ad377f2d3a905825855cbfe7781e3b4e79af36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x013a08bf4d4afd991360639b5cdb33f8c7be8dc0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262137 | `0x01dbc9abe8e59f021d47cf79143de830820cba29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0363b3feccdc1fe716f64aa71888b8ba211cec6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x04cea05e5e8b244fef77ddeeddb2780bae9ecd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x07715da01dedf90c42b67336aaea04a630a7670c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x082515cda1c28e501a69fe45e1e8ce8295afeed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0cb0082f28482169886383c436339a9379f34a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0d5d4e50ff9dcb1f945bad4142bf7dbb435a437b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0dddd950cd16bba81682da35da6c68f9998cae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0e0f25e66952cee606fc2daf9aee743005b3fc2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0ff1ec59e4b6101e73737780c1b3b56e15878298` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x10e668ced75d6f0f342b4f674ca6f1c695ef05d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x112244b12fc9359111902f9592e7da8b157b6837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1191d0d70c9c06f6714819092f8d52e1729c9739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x11c501c7320771b64d47c44db2a6cfcbcc9031bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262139 | `0x1333d5e5201d760444a399e77b3d337ebdb0dd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x137438658b078542ae14a4ae1e257b8b6ad84683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1517fdd5a31b35f790ea8a3c6cc2f595b1bd4742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x15c670241a9f0078060499b46feef1ec954dccd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x164e0ce664e1e78eaa122c79954e3ba3f3d02371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x166f9406e79a656f12f05247fb8f5dfa6155bcbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x172f72f0d7de0369b535051f436a2d4bf10296eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x18252c2ad53af05908b8e56c60ed05d50ac1dd50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1d5c8daabf84b2b2da7e4fdcf4e9b7095964689f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1e3e9632f019c681e06eb6902ebe50411e1baf97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x1f4997a460f1852b475a9324d326fe14fbe6c277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x207a912712ebebe799664af33ec8a0f754ee1d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x22d14701e603079c99c62959e39c0ce4ed12c6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x242d8b0891d38a10854eb55d95f9650f9f464d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24a7be4e07d5b19cb4ce6c9374de00f628830b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x24becc5023eb54cd0bb30b936bcdd6cfcb9e8723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26c15eb2d50df63d9966ab45aa839033fbbab616` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x26c5519ba3f431ec7efeea70afa83d8eda54bf81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2cb027b98272b8043175ffe87b3ce01ef8ab1887` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262140 | `0x2d272ef54ee8ef5c2ff3523559186580b158cd57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2ec19721996bb22a469c64110dcb446a9478633b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x2fb82f657bede4c49338a9d06ea751096b4c295c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x303634ec66179ba705c4065a9925b8f5a5a21710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x305905295fa9e7c6e578cca517535ab199d56ce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3106209760852c115805ca28c93c6cc55801f33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x31559cf877893e2c8969fe37aed6df7970d33cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x320c39a7f263884bf8df33322533aab079a8ff41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x331d3a78af58b618895e88a3027f761b45f2382d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x347f6ba21e2c3ff2d79007f47992b270040b43ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262141 | `0x3580505c56f8560e3777e92fb27f70fd20c5b493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x35e7d5184085c9939ef8194f3f7d9f8b617b2296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x373050b211d05b5b8bb1d69fb9f395e87bf7b96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x378e4264d0a1cee9edb56ee4eb50aec42f70036f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39e81256a9664a45b2d28c94637e9349a4490647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x39f030863d55da3ca02d1cfa93a88fe6c07e3a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a757f93d06a6aa2810f237b920bb278ac0eca2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3a987fe1cb587b0a1808cf9bb7cbe0e341838319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3b20d63b606304abbd3c51ed9b8c002df4e947a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3be205102698a1ae2fac597538903ee927aeb574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3d061143f3b778eadefdbf8574d40114dfa29c0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x3ff171786ae26889cf2f2d03f1ea07afe6b05ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x420e50b615dfb8f5901515749b24dcb8f9cd438c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4310d16ad7d929a98a7b2c0516871f1cb75e9be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4642c5ed3b1568e0f05d73b10d02e6fb2595af9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x474035f5e8cab358ce01a2c161ae2013544212c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x47a7603c859d53680f9e30b67d3618bcc836ebea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4831323bdd5ecbedffe6200eaf751c4815bd9005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x497b61b1cf2da703a8892318d09a3d0bcac69e5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4a781256558194623f1086b50ed82826f2c7481a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4a8053d10e52b252ce78220a411a4e2117f7960f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ab472a5246958ad156ee6699a0ce415ac868148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b5bffc74fc2c1f6ffca90d24b79170ff77f3832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b67098273b648622c419da6b7007fcc7605e676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4b677ee269d3f24c69c06664fbc66765b8af853c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4be2030a76082eac5c92e263902756a73373377b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4bf829169ed6270a9603b2b080014da1071a53af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d5a318c32dd9384cb09826182a52cb17ad0e84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4d64abe557ac0d9073c75c5eaec29edbebfa574e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e3a2b7560f82e697b339b495e51557c1021f391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e3f66681cf21a6321bda8bde12f01dd4b4b3be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4e444af51e45a53012f614f4a3c44df786b682d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x4ed046e66c96600dae1a4ec39267bb0ce476e8cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262142 | `0x4f4b8adf1af4b61bb62f68b7af1c37f8a6311663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5031c3d25b05117fb5cfc2099f52244f616f0ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5084b742583140a78623eb2befff43832da28eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50c037a4fac5b5ea20648248a871421a3b998a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x50f789670d0fa724c923114b6f30fad531c0fa00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x52ee54acb5c0aa55a903b2c9eade577bdb0a5012` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262143 | `0x552334bf0b124bd89bff744f33ca7e49d44a80ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x559b57c0f7221113469c11e79a4fabc0b42fe65c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5653bd8e12a0f05ab6a7d187731580d2de04f219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x575697f2c20bd63415e5b24656d935d4b81b8220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x576192780db34e4c369577a834af6a06ab776199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5897d636042452f6ae076bb38b40c861719fa29d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5a79f3d8d02b70b6b92abd39b19c9faa3abcb575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x5e0877a8f6692ed470013e651c4357d0c4941e6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x61481d88868c29baac50d998f4d8a3aabc9a6e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62254b31dbc258ad27472ab08a7920b410734791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x62de760b964cf3f5013b7cc12fe1654a02f1c5ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x64ac207d080abac3da56d6525ff73c8bcd07eeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x65406ff846eb9f30baad88109675a332b5927422` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x662379b472c4bf56930b05424b040cf9fba6e3e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67a2907a05e1f3a5a8fb49cd2dfa8537459ce078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67ae92b1e7ac2f88e72e40b94a11b533ca0535f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x67e77f4ce97207de505808068fcdc3fbd75a901e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6942ecbe74bd9687d90ce3839af56b9e0be6078d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x694561ce3a19f05f8cf29064875324520f06c7ba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262144 | `0x69470d6970cd2a006b84b1d4d70179c892cfce01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6b727399e637875cac72ae4745914673df462b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6ca201f38d51f34a5e9fc846dbb1e7e3d0facdd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700477250002e7c6a620903fd76a69b15bbf029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x700d168b288f73291ebe193852a6139e1e937bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7044407dd584194d7f5266f7cdc45954653484e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7089a8eaeb96a962d73a36d48c7d43f5343b6bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x70c0e12aeb3c9a18cd073ad3c3ecabd2d15435b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x711afd8993d4ba637fe97f624c1f5851198b70e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x72942e8cdb7e2bb689923ed1842d800f2cd6baa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x73326b7743fb1cb1b4881ec6dce970269d97c030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x739ea1660392bf57bec2c5d605e4a0fb20ba164c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x74834f81d868ad4e9982d8d938408e61a7310ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x757b001cb536404b78cc6ce380ecd0ceb44786b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x75f43303738dc3a0ba3b4552005fb4b68dd0e197` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262145 | `0x7768c821200554d8f359a8902905ba9ede5659a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x784084a01f905bf30bb34f260c9b8acf87be2863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7988c31b154911b67eb9fad2e554ba1adb6cf333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7e5c564df020245abe5c9094cbc63725732daf83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7f6e1745473aede6dfff06755f4e691dc738d36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x806ebaaca7ab91f5cdc8d7adeb702fb969c6706b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x84115db01c170190dfb9d43510f1c81569dbaaae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85f046ec3370ed708ccd3140ecda80ed16c19509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x85ff4bd8298fc8603cdf5f8edbeda6b961bf047a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x863f0ffd97ed01ee65863fa4a006d01cadd03a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8874a8273dd9eaa4a2d4610b579a6950527d51a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x89cb66e16253cf1792c9cd042c2ff85de06c1b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8cf97ee616c986a070f5020d973b456d0120c253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8daf02ff86b321d2de43ba09c386cdddc30a4b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x8e03c154501b617cdc2c014930cd944927d77ecd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262146 | `0x8ec1111f67dad6b6a93b3f42dfbc92d81c98449a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262147 | `0x92240135b46fc1142da181f550ae8f595b858854` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262148 | `0x945185c01fb641ba3e63a9bdf66575e35a407837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9567fc71b6c68fc6fe86403d2635eb67ada7010d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x965120b7833f86960910a080ffca8985e2c9dbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x968f775fd82f4d985c47e3d603349f2a62459921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x983a77fa303a8955f69033d0d4553afb08bea7fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x98aed342522099880c80768770894160a9885470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9eb3937d685fc928c740c347052b3e49a91c0088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x9f55b0e9514adbe825d616ffae02573e1c117fe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa0297e9627428739031980e9881efc61f8fa553d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa10e8a46707b39d1839f17bb3b12ebe311204957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa17a9a87aa2532aa76bbc7cd4ff7136287b05337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa20ebc686ef7caa9f279416b30fcc1e6ba778965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa557a13bfbc10f68b83512975836ebfc2b90699a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa56872fad64c2ef38901c49e617b84739d52df12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa58de1610646cb30b77a5e8ce82cfd3a0dc3bd39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa7adc12bc192a3a18669c84dba19ce2fc7f0a1f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xa9ca62b32fbf3b3c0555371fb362cb32b3d30a84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab2f99a55389909f5a835a4c5418703cf8eb126b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xab60681bb5bf04cc3a2913d894f96fd0e1681803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac4e1bc464970c39ceb4d8fed4631fc97eac42f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xac9f9e8128f7f7c22ef08368b1687943a1d63ee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaeb3cfd5aaba01cfd12e6017a9a307a218cdd7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xaf9e462785365de187ee61821404e646027b0c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafb68bb1cb97d9252cc666af085adbe987316b50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xafe44cf54a470a718d79b3f1a14341646fdae889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb1b4cb917427f41fb3fc0f0d0241b3456aba2b18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb3eefb18ee2d57000f142257d3926083ce61525e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb51bad2d9da9f94d6a4a5a493ae6469005611b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb685598c8cae755d7be2c07e043aad88393ac10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb6e5b8226c7f18b6e1e5e40ac2bdcd6149bbe81d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb7a860610a2cf1aca38383ef630acb8f600b5da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb8a6df080b69c062d95176acb0dda3b622b65f40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbaced002322d0b7cbeb92a9d11d9a2669a676d74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbaf2c07b8f50e7572758e40ce4fe350f6f36de29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb2ecb731153d70ff5f82d5b65cc9fc9dc4c6348` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb521ea1fe956e69f2b76394db224476344b1765` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbb8de81408a2ee947b70a7cd4645aae18caebe9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbc650b1756cdbaac2c8e65e3500fb481394aec24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbcebfae62bb241cce560a11256494eb01dafc1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbd2f93125b82eaeb5dae56452a1fcb0db2dc25a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xbddb8aca52195438709572db11c53837cbb71db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc0d40179915509f047d1efecd874802bcd7829c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc227e742f3e545b660dd3732bc858ca0ed878f57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc2812f44168d78f4ea8450fdf98ddcd0858f42a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc3a6a4bdcbd06f1cd6738225386bcc8fcfed8cfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc4ef8483635a1b0b06375171089fe8447cf1e501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc50ba0767a1c0ef69cf1d9cd44de52b08589f691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc6667c150aac44d16cccb349163ceb28e96ab076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc714035cd3f05ef504e83ed42bf9650cd3eb1a80` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262149 | `0xc8886f8bab6eaeb215adb5f1c686bf699248300e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xca7eafd27c77420bb0da08d0ec35500fc1240fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcb0590587fd6185aac86b5ded3a9795ad131b023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcbeb5bab10acb84f65ebba7b11a85feb3d933c19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xcf5f7d74778b9bdf87492aceabcb41ec0de49faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd1e12d0569c7656ffa00b0439849a39a5d5c467e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd23c87eda7a3df8e3629243c8def078ada265e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd26df2766e07557ba1de54f9399b33568ab9842e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd31e074f16abd53bb49062a0ae5df9eed603db71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd43bd46e06a80efdfab16758bb239315fe8571c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4e3175a2b2f7a2838bb655f811107e693968bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xd4f3b29db5af4e76a15d15a6f199b2bc5cb2756e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262150 | `0xd7df54b3989855eb66497301a4aaec33dbb3f8de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xda71eea719ce4a3c6ba8bcbdc6cdd93ee71c4b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdcb6cfa7968cb5628d74a8f22c609dc0afd15661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdfea7da48da4da1e8b9ce38bad6ced470eea6862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe0882c7dde5ae8215e1e4f5f8c12f553196aaa2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1d217ffab9f101d98f86c052b770feb2f4db3d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe1ed4c6d1960563d62e54633a00d2b4d777af1cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe2beb5fc251cfe252306bf31efcab13da2eb9e33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe4eede817fa291127acf15e43f3c9a83c2aa57fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe591ebbc2ba0ead3db6a0867cc132fe1c123f448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe76c7c7714a989398dc7a4efa500c24d9aec73c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe88bdd74636a04e66908d9e39b8fc9df1a85b049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeaea9cf088d4ffc9dab1d3e593a17b63d69686c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xec34e1235972e4d591af1678137b72ffce8e0531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xee2a1463d275c9d838980b49049c332d7f03d64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xeed19c302217acb884f7b5a2a9bb17685e9cbaa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf034293db828efed1279778098c5f8d04b757c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf11c47b2945cfa369fb26a9f19e9b491a6bd7144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf17c187bba29e3d4197417bb9248c33bd8305ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf180a465c2326008c057d72dd64fe023da0304fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf3b850aab81595ea88db1599146cc20158796233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf4b2c2894d791fde6681c4d28e957ccf8b97c2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf601c79c84bb32231ef3c152085cfe6076830ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf670a30a8bc0b61f87d596a6f8769c95ca20a441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xf70ed25b5dc5a17e5338dd9233794f7199e38dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfa428200097e003c9168629bea126ec961596e03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfb8580daf5c877260d0cf05ee6131761dfb6f344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfbb05549088f3b51631a83491e33a1a374eeddd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xfe9ee83844d93ff50ef4f565fae4766949d0d6f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262151 | `0xff6eba109271fe6d4237eeed4bab1dd9a77dd1a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffbfbf30ac41fc58a14d09059f31804473a3c58c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffd45511d635c7df7012be8986694a23e5288620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xffd855b7e3aafbcc79e5a48a077d3fcc82666b2a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 219
- Live contracts: 0
- Unknown liveness contracts: 219
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=219

Showing first 200 of 219 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0e90dcafbc242d2c861a20bb20ec8e7182965a52` | non_address_book | unknown | unknown | unverified | n/a | `0xb2aa0c2c4fd6bfcbf699d4c787cd6cc0dc461a9d` |
| unverified unclassified | UnnamedContract<br>`0x537afb5ad22af9d4a17762bce0c5db101fa3fd61` | non_address_book | unknown | unknown | unverified | n/a | `0xb2aa0c2c4fd6bfcbf699d4c787cd6cc0dc461a9d` |
| unverified unclassified | UnnamedContract<br>`0x8c7c0208d17ea76eeac6033c4456c731d95762a7` | non_address_book | unknown | unknown | unverified | n/a | `0xb2aa0c2c4fd6bfcbf699d4c787cd6cc0dc461a9d` |
| unverified unclassified | UnnamedContract<br>`0xa231f8be37e583f276f93df516d88a043bfe47e3` | non_address_book | unknown | unknown | unverified | n/a | `0xb2aa0c2c4fd6bfcbf699d4c787cd6cc0dc461a9d` |
| unverified unclassified | UnnamedContract<br>`0x00ad377f2d3a905825855cbfe7781e3b4e79af36` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x013a08bf4d4afd991360639b5cdb33f8c7be8dc0` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x0363b3feccdc1fe716f64aa71888b8ba211cec6f` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x04cea05e5e8b244fef77ddeeddb2780bae9ecd15` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x07715da01dedf90c42b67336aaea04a630a7670c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x082515cda1c28e501a69fe45e1e8ce8295afeed6` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x0cb0082f28482169886383c436339a9379f34a92` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x0d5d4e50ff9dcb1f945bad4142bf7dbb435a437b` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x0dddd950cd16bba81682da35da6c68f9998cae22` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x0e0f25e66952cee606fc2daf9aee743005b3fc2c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x0ff1ec59e4b6101e73737780c1b3b56e15878298` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x10e668ced75d6f0f342b4f674ca6f1c695ef05d8` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x112244b12fc9359111902f9592e7da8b157b6837` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x1191d0d70c9c06f6714819092f8d52e1729c9739` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x11c501c7320771b64d47c44db2a6cfcbcc9031bc` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x137438658b078542ae14a4ae1e257b8b6ad84683` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x1517fdd5a31b35f790ea8a3c6cc2f595b1bd4742` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x15c670241a9f0078060499b46feef1ec954dccd9` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x164e0ce664e1e78eaa122c79954e3ba3f3d02371` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x166f9406e79a656f12f05247fb8f5dfa6155bcbf` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x172f72f0d7de0369b535051f436a2d4bf10296eb` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x18252c2ad53af05908b8e56c60ed05d50ac1dd50` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x1d5c8daabf84b2b2da7e4fdcf4e9b7095964689f` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x1e3e9632f019c681e06eb6902ebe50411e1baf97` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x1f4997a460f1852b475a9324d326fe14fbe6c277` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x207a912712ebebe799664af33ec8a0f754ee1d7c` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x22d14701e603079c99c62959e39c0ce4ed12c6e7` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x242d8b0891d38a10854eb55d95f9650f9f464d01` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x24a7be4e07d5b19cb4ce6c9374de00f628830b7a` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x24becc5023eb54cd0bb30b936bcdd6cfcb9e8723` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x26c15eb2d50df63d9966ab45aa839033fbbab616` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x26c5519ba3f431ec7efeea70afa83d8eda54bf81` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x2cb027b98272b8043175ffe87b3ce01ef8ab1887` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x2ec19721996bb22a469c64110dcb446a9478633b` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x2fb82f657bede4c49338a9d06ea751096b4c295c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x303634ec66179ba705c4065a9925b8f5a5a21710` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x305905295fa9e7c6e578cca517535ab199d56ce4` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x3106209760852c115805ca28c93c6cc55801f33d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x31559cf877893e2c8969fe37aed6df7970d33cf9` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x320c39a7f263884bf8df33322533aab079a8ff41` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x331d3a78af58b618895e88a3027f761b45f2382d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x347f6ba21e2c3ff2d79007f47992b270040b43ea` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x35e7d5184085c9939ef8194f3f7d9f8b617b2296` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x373050b211d05b5b8bb1d69fb9f395e87bf7b96f` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x378e4264d0a1cee9edb56ee4eb50aec42f70036f` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x39e81256a9664a45b2d28c94637e9349a4490647` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x39f030863d55da3ca02d1cfa93a88fe6c07e3a8d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x3a757f93d06a6aa2810f237b920bb278ac0eca2c` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x3a987fe1cb587b0a1808cf9bb7cbe0e341838319` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x3b20d63b606304abbd3c51ed9b8c002df4e947a0` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x3be205102698a1ae2fac597538903ee927aeb574` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x3d061143f3b778eadefdbf8574d40114dfa29c0d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x3ff171786ae26889cf2f2d03f1ea07afe6b05ca0` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x420e50b615dfb8f5901515749b24dcb8f9cd438c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4310d16ad7d929a98a7b2c0516871f1cb75e9be5` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x4642c5ed3b1568e0f05d73b10d02e6fb2595af9a` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x474035f5e8cab358ce01a2c161ae2013544212c9` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x47a7603c859d53680f9e30b67d3618bcc836ebea` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4831323bdd5ecbedffe6200eaf751c4815bd9005` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x497b61b1cf2da703a8892318d09a3d0bcac69e5d` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x4a781256558194623f1086b50ed82826f2c7481a` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4a8053d10e52b252ce78220a411a4e2117f7960f` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4ab472a5246958ad156ee6699a0ce415ac868148` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x4b5bffc74fc2c1f6ffca90d24b79170ff77f3832` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4b67098273b648622c419da6b7007fcc7605e676` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4b677ee269d3f24c69c06664fbc66765b8af853c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4be2030a76082eac5c92e263902756a73373377b` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4bf829169ed6270a9603b2b080014da1071a53af` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4d5a318c32dd9384cb09826182a52cb17ad0e84c` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x4d64abe557ac0d9073c75c5eaec29edbebfa574e` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4e3a2b7560f82e697b339b495e51557c1021f391` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4e3f66681cf21a6321bda8bde12f01dd4b4b3be9` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4e444af51e45a53012f614f4a3c44df786b682d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x4ed046e66c96600dae1a4ec39267bb0ce476e8cc` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x5031c3d25b05117fb5cfc2099f52244f616f0ede` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x5084b742583140a78623eb2befff43832da28eca` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x50c037a4fac5b5ea20648248a871421a3b998a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x50f789670d0fa724c923114b6f30fad531c0fa00` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x52ee54acb5c0aa55a903b2c9eade577bdb0a5012` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x559b57c0f7221113469c11e79a4fabc0b42fe65c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x5653bd8e12a0f05ab6a7d187731580d2de04f219` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x575697f2c20bd63415e5b24656d935d4b81b8220` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x576192780db34e4c369577a834af6a06ab776199` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x5897d636042452f6ae076bb38b40c861719fa29d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x5a79f3d8d02b70b6b92abd39b19c9faa3abcb575` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x5e0877a8f6692ed470013e651c4357d0c4941e6c` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x61481d88868c29baac50d998f4d8a3aabc9a6e5c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x62254b31dbc258ad27472ab08a7920b410734791` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x62de760b964cf3f5013b7cc12fe1654a02f1c5ca` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x64ac207d080abac3da56d6525ff73c8bcd07eeb0` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x65406ff846eb9f30baad88109675a332b5927422` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x662379b472c4bf56930b05424b040cf9fba6e3e6` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x67a2907a05e1f3a5a8fb49cd2dfa8537459ce078` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x67ae92b1e7ac2f88e72e40b94a11b533ca0535f7` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x67e77f4ce97207de505808068fcdc3fbd75a901e` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x6942ecbe74bd9687d90ce3839af56b9e0be6078d` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x694561ce3a19f05f8cf29064875324520f06c7ba` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x6b727399e637875cac72ae4745914673df462b78` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x6ca201f38d51f34a5e9fc846dbb1e7e3d0facdd8` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x700477250002e7c6a620903fd76a69b15bbf029e` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x700d168b288f73291ebe193852a6139e1e937bdc` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x7044407dd584194d7f5266f7cdc45954653484e2` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x7089a8eaeb96a962d73a36d48c7d43f5343b6bdc` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x70c0e12aeb3c9a18cd073ad3c3ecabd2d15435b6` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x711afd8993d4ba637fe97f624c1f5851198b70e8` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x72942e8cdb7e2bb689923ed1842d800f2cd6baa2` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x73326b7743fb1cb1b4881ec6dce970269d97c030` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x739ea1660392bf57bec2c5d605e4a0fb20ba164c` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x74834f81d868ad4e9982d8d938408e61a7310ae5` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x757b001cb536404b78cc6ce380ecd0ceb44786b2` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x75f43303738dc3a0ba3b4552005fb4b68dd0e197` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x784084a01f905bf30bb34f260c9b8acf87be2863` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x7988c31b154911b67eb9fad2e554ba1adb6cf333` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x7e5c564df020245abe5c9094cbc63725732daf83` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x7f6e1745473aede6dfff06755f4e691dc738d36e` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x806ebaaca7ab91f5cdc8d7adeb702fb969c6706b` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x84115db01c170190dfb9d43510f1c81569dbaaae` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x85f046ec3370ed708ccd3140ecda80ed16c19509` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x85ff4bd8298fc8603cdf5f8edbeda6b961bf047a` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x863f0ffd97ed01ee65863fa4a006d01cadd03a6e` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x8874a8273dd9eaa4a2d4610b579a6950527d51a5` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x89cb66e16253cf1792c9cd042c2ff85de06c1b51` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x8cf97ee616c986a070f5020d973b456d0120c253` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0x8daf02ff86b321d2de43ba09c386cdddc30a4b8f` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x8e03c154501b617cdc2c014930cd944927d77ecd` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x9567fc71b6c68fc6fe86403d2635eb67ada7010d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x965120b7833f86960910a080ffca8985e2c9dbb5` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x968f775fd82f4d985c47e3d603349f2a62459921` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x983a77fa303a8955f69033d0d4553afb08bea7fa` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0x98aed342522099880c80768770894160a9885470` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0x9eb3937d685fc928c740c347052b3e49a91c0088` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0x9f55b0e9514adbe825d616ffae02573e1c117fe9` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xa0297e9627428739031980e9881efc61f8fa553d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xa10e8a46707b39d1839f17bb3b12ebe311204957` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xa17a9a87aa2532aa76bbc7cd4ff7136287b05337` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xa20ebc686ef7caa9f279416b30fcc1e6ba778965` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xa557a13bfbc10f68b83512975836ebfc2b90699a` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xa56872fad64c2ef38901c49e617b84739d52df12` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xa58de1610646cb30b77a5e8ce82cfd3a0dc3bd39` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xa7adc12bc192a3a18669c84dba19ce2fc7f0a1f8` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xa9ca62b32fbf3b3c0555371fb362cb32b3d30a84` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xab2f99a55389909f5a835a4c5418703cf8eb126b` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xab60681bb5bf04cc3a2913d894f96fd0e1681803` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xac4e1bc464970c39ceb4d8fed4631fc97eac42f5` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xac9f9e8128f7f7c22ef08368b1687943a1d63ee5` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xaeb3cfd5aaba01cfd12e6017a9a307a218cdd7e2` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xaf9e462785365de187ee61821404e646027b0c28` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xafb68bb1cb97d9252cc666af085adbe987316b50` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0xafe44cf54a470a718d79b3f1a14341646fdae889` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xb1b4cb917427f41fb3fc0f0d0241b3456aba2b18` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xb3eefb18ee2d57000f142257d3926083ce61525e` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0xb51bad2d9da9f94d6a4a5a493ae6469005611b68` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xb685598c8cae755d7be2c07e043aad88393ac10b` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xb6e5b8226c7f18b6e1e5e40ac2bdcd6149bbe81d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xb7a860610a2cf1aca38383ef630acb8f600b5da2` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xb8a6df080b69c062d95176acb0dda3b622b65f40` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xbaced002322d0b7cbeb92a9d11d9a2669a676d74` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xbaf2c07b8f50e7572758e40ce4fe350f6f36de29` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xbb2ecb731153d70ff5f82d5b65cc9fc9dc4c6348` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xbb521ea1fe956e69f2b76394db224476344b1765` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xbb8de81408a2ee947b70a7cd4645aae18caebe9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xbc650b1756cdbaac2c8e65e3500fb481394aec24` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xbcebfae62bb241cce560a11256494eb01dafc1fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xbd2f93125b82eaeb5dae56452a1fcb0db2dc25a6` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xbddb8aca52195438709572db11c53837cbb71db5` | non_address_book | unknown | unknown | unverified | n/a | `0x28fab3a5b69711cc64b09240d2694d9f0f07ebf6` |
| unverified unclassified | UnnamedContract<br>`0xc0d40179915509f047d1efecd874802bcd7829c8` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xc227e742f3e545b660dd3732bc858ca0ed878f57` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xc2812f44168d78f4ea8450fdf98ddcd0858f42a4` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xc3a6a4bdcbd06f1cd6738225386bcc8fcfed8cfd` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xc4ef8483635a1b0b06375171089fe8447cf1e501` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xc50ba0767a1c0ef69cf1d9cd44de52b08589f691` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xc6667c150aac44d16cccb349163ceb28e96ab076` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xc714035cd3f05ef504e83ed42bf9650cd3eb1a80` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xca7eafd27c77420bb0da08d0ec35500fc1240fc4` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xcb0590587fd6185aac86b5ded3a9795ad131b023` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xcbeb5bab10acb84f65ebba7b11a85feb3d933c19` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xcf5f7d74778b9bdf87492aceabcb41ec0de49faa` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xd1e12d0569c7656ffa00b0439849a39a5d5c467e` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xd23c87eda7a3df8e3629243c8def078ada265e5c` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xd26df2766e07557ba1de54f9399b33568ab9842e` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xd31e074f16abd53bb49062a0ae5df9eed603db71` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xd43bd46e06a80efdfab16758bb239315fe8571c3` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xd4e3175a2b2f7a2838bb655f811107e693968bba` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xd4f3b29db5af4e76a15d15a6f199b2bc5cb2756e` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xda71eea719ce4a3c6ba8bcbdc6cdd93ee71c4b8d` | non_address_book | unknown | unknown | unverified | n/a | `0xe78a0a96c5d6ae6c606418ed4a9ced378cb030a0` |
| unverified unclassified | UnnamedContract<br>`0xdcb6cfa7968cb5628d74a8f22c609dc0afd15661` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xdfea7da48da4da1e8b9ce38bad6ced470eea6862` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xe0882c7dde5ae8215e1e4f5f8c12f553196aaa2d` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xe1d217ffab9f101d98f86c052b770feb2f4db3d4` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xe1ed4c6d1960563d62e54633a00d2b4d777af1cb` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xe2beb5fc251cfe252306bf31efcab13da2eb9e33` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xe4eede817fa291127acf15e43f3c9a83c2aa57fa` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xe591ebbc2ba0ead3db6a0867cc132fe1c123f448` | non_address_book | unknown | unknown | unverified | n/a | `0xccdbffcc14944254510a735007f7e30a9b9e5c6e` |
| unverified unclassified | UnnamedContract<br>`0xe76c7c7714a989398dc7a4efa500c24d9aec73c7` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xe88bdd74636a04e66908d9e39b8fc9df1a85b049` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |
| unverified unclassified | UnnamedContract<br>`0xeaea9cf088d4ffc9dab1d3e593a17b63d69686c9` | non_address_book | unknown | unknown | unverified | n/a | `0x1633941b45711eb3fc790b64b42294946370a462` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM0122-FINAL_WORLDCOIN.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0122-FINAL_WORLDCOIN.pdf) | Nethermind | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [leastauthority.com/blog/the-audit-of-worldcoin-protocol-cryptography](https://leastauthority.com/blog/the-audit-of-worldcoin-protocol-cryptography) | Least Authority | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21203] NM0122-FINAL_WORLDCOIN.pdf — no match: Extracted all contracts from the audited files tables in Section 2. The audit date is from the cover page: 'Jul 23, 2023'.
- [21204] leastauthority.com/blog/the-audit-of-worldcoin-protocol-cryptography — no match: The report is about cryptographic implementation, not smart contracts. No contract names found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDIdentityManager | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDRouter | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDRouterImplV1 | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDIdentityManagerImplV1 | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDProxy | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDImpl | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | CheckInitialized | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | UnimplementedTreeVerifier | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | SemaphoreTreeDepthValidator | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | VerifierLookupTable | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | IWorldID | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | IBridge | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | IWorldIDGroups | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | ITreeVerifier | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | StateBridge | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | OpWorldID | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | PolygonWorldID | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDBridge | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | ICrossDomainOwnable3 | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | IWorldIDIdentityManager | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | ISendBridge | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | IOpWorldID | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDAirdrop | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WorldIDMultiAirdrop | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WLD | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | HourlyGrant | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | WeeklyGrant | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | IGrant | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | MonthlyGrant | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | RecurringGrantDrop | unmatched — not counted | — | listed in audited files table | no |
| NM0122-FINAL_WORLDCOIN.pdf | VestingWallet | unmatched — not counted | — | listed in audited files table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x069c4c579671f8c120b1327a73217d01ea2ec5ea` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf931a81d18b1766d15695ffc7c1920a62b7e710a` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1df436afdb2fbb40f1fe8bed4fc89a0d0990a8e9` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x153a69e4bb6fedbbaaf463cb982416316c84b2db` | L1OpUSDCBridgeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x470458c91978d2d929704489ad730dc3e3001113` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19a6d1e9034596196295cf148509796978343c5d` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4` | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82cb528466cf22412d89bdbe9bcf04856790dd0e` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5ec14a83b7d95be1e2ac12523e2dee12cbeea6c` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48cf980849a7eea03180f7dea4e21c112097b03e` | PermissionedDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8eef04eef96fef1050702453f75f0fc4f8f70973` | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 294 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [21203] NM0122-FINAL_WORLDCOIN.pdf
- [21204] leastauthority.com/blog/the-audit-of-worldcoin-protocol-cryptography

Fork inheritance lineage and inherited audits are included when available.
