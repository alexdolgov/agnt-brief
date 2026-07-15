# Agentic Audit Brief: World Chain

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

- Project: World Chain (`world-chain`)
- Website: [https://world.org/](https://world.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 113 unique implementations (114 raw deployments)
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

- UnnamedContract (`0x6ab077...a6300a`, chain 1)
- UnnamedContract (`0x9c065e...1be277`, chain 1)
- UnnamedContract (`0xd4d7a5...327099`, chain 1)
- UnnamedContract (`0xd9db27...709552`, chain 1)
- DisputeGameFactory (`0x069c4c...2ec5ea`, chain 1)
- GnosisSafe (`0xa4fb12...dbbf1d`, chain 1)
- GnosisSafeProxyFactory (`0xa6b71e...896ab2`, chain 1)
- L1CrossDomainMessenger (`0xf931a8...7e710a`, chain 1)
- L1ERC721Bridge (`0x1df436...90a8e9`, chain 1)
- L1OpUSDCBridgeAdapter (`0x153a69...84b2db`, chain 1)
- L1StandardBridge (`0x470458...001113`, chain 1)
- L2OutputOracle (`0x19a6d1...343c5d`, chain 1)
- MIPS (`0x16e83c...344ce4`, chain 1)
- OptimismMintableERC20Factory (`0x82cb52...90dd0e`, chain 1)
- OptimismPortal2 (`0xd5ec14...beea6c`, chain 1)
- PermissionedDisputeGame (`0x48cf98...97b03e`, chain 1)
- ProtocolVersions (`0x8eef04...f70973`, chain 1)
- Proxy (`0x95703e...f04a4c`, chain 1)
- Proxy (`0xf9adf7...bd061f`, chain 1)
- ProxyAdmin (`0xd7405b...2f872d`, chain 1)

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
- Outside the address book: 79 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 15
- Confirmed-live implementations: 19 of 113 unique; 94 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 113
- Raw deployments: 114
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
| AddressManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x589109...9146a8` | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1325c4...73c0cb` | ⚠️ Unaudited |
| DelayedWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x8ec111...98449a` | ⚠️ Unaudited |
| DeputyGuardianModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dc91d...e4d2a8` | ⚠️ Unaudited |
| DisputeGameFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262160 | `0x069c4c...2ec5ea` | ⚠️ Unaudited |
| EntryPoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...7da032` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262162 | 2 deployments: ethereum `0xa4fb12...dbbf1d`; ethereum `0xd9db27...709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262131 | `0xa6b71e...896ab2` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262161 | `0xf931a8...7e710a` | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262156 | `0x1df436...90a8e9` | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262154 | `0x153a69...84b2db` | ⚠️ Unaudited |
| L1StandardBridge | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262153 | `0x470458...001113` | ⚠️ Unaudited |
| L2OutputOracle | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262155 | `0x19a6d1...343c5d` | ⚠️ Unaudited |
| LivenessGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x244243...d14a25` | ⚠️ Unaudited |
| LivenessModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045409...c8a748` | ⚠️ Unaudited |
| MIPS | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262122 | `0x16e83c...344ce4` | ⚠️ Unaudited |
| OpStateBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x093972...ad3abb` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262157 | `0x82cb52...90dd0e` | ⚠️ Unaudited |
| OptimismPortal2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262159 | `0xd5ec14...beea6c` | ⚠️ Unaudited |
| Pairing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57f928...01f611` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262125 | `0x48cf98...97b03e` | ⚠️ Unaudited |
| PolygonStateBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76db75...bb766f` | ⚠️ Unaudited |
| PreimageOracle | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-262129 | `0x922401...858854` | ⚠️ Unaudited |
| ProtocolVersions | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262158 | `0x8eef04...f70973` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262163 | `0x95703e...f04a4c` | ⚠️ Unaudited |
| Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262152 | `0xf9adf7...bd061f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262134 | `0xd7405b...2f872d` | ⚠️ Unaudited |
| Safe4337Module | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75cf11...d5c226` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29fcb4...00c762` | ⚠️ Unaudited |
| SafeProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1dcf...20ec67` | ⚠️ Unaudited |
| SemaphoreVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x443ad7...28abee` | ⚠️ Unaudited |
| StateBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86d26e...70511a` | ⚠️ Unaudited |
| SystemConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x33a032...e5a314` | ⚠️ Unaudited |
| Verifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03ad26...db6c4d` | ⚠️ Unaudited |
| VerifierLookupTable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0af990...102fa1` | ⚠️ Unaudited |
| WorldIDIdentityManagerImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad412...6132f8` | ⚠️ Unaudited |
| WorldIDIdentityManagerImplV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x521e8f...fdf8bd` | ⚠️ Unaudited |
| WorldIDRouterImplV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x163b09...732432` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c705...70cfa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053956...ad4295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x091ad9...f36cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a22c0...92dab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f3ff4...66b96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10158d...ff244c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1333d5...b0dd07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14a028...b66ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17b354...39a278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1ca1...4eb162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cfc85...863003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358050...c5b493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c68a...438192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a00fe...42e710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...00000f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000018` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...00001a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000021` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420000...000042` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f4b8a...311663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57b930...e0330d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262128 | `0x6ab077...a6300a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70410a...437feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7768c8...5659a9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x78ce36...53524b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a024...cd24d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5028...5ea25a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dd5b6...03c6f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859dbe...55be5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x866087...d4b322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b52da...296c29` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8bb294...a97fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9800...ad09b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945185...407837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262130 | `0x9c065e...1be277` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc547...a12787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ebddc...ec9de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9bcf5...e437b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae3f20...6374c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2d270...e36e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8886f...48300e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262133 | `0xd4d7a5...327099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7df54...b3f8de` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdd9167...e1ae6c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe1d72a...8d64a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe61df0...570623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6fcb4...093fec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec12a9...c27b5e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf43016...862be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4305d...c86e9d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262137 | `0x01dbc9...0cba29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262139 | `0x1333d5...b0dd07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262140 | `0x2d272e...58cd57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262141 | `0x358050...c5b493` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262142 | `0x4f4b8a...311663` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262143 | `0x552334...4a80ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262144 | `0x69470d...cfce01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262145 | `0x7768c8...5659a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262146 | `0x8ec111...98449a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262147 | `0x922401...858854` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262148 | `0x945185...407837` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262149 | `0xc8886f...48300e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262150 | `0xd7df54...b3f8de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-262151 | `0xff6eba...7dd1a4` | ❓ Unverified |

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
| ethereum | `0x069c4c...2ec5ea` | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa6b71e...896ab2` | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf931a8...7e710a` | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1df436...90a8e9` | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x153a69...84b2db` | L1OpUSDCBridgeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x470458...001113` | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x19a6d1...343c5d` | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x16e83c...344ce4` | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82cb52...90dd0e` | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd5ec14...beea6c` | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48cf98...97b03e` | PermissionedDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8eef04...f70973` | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 75 |

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
