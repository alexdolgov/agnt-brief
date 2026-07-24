# Agentic Audit Brief: Orbit Protocol

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Orbit Protocol (`orbit-protocol`)
- Website: [https://docs.orbitcdp.finance/](https://docs.orbitcdp.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: blast
- Contract surface: 76 unique implementations (76 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $418,276.09
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Orbit Protocol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 76 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 63
- Unique implementations: 76
- Raw deployments: 76
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| API3OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158559 | `0xcb80b73f2fe80b0859458048f27d57436bdd2730` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158553 | `0x1883151159f2ec4d6ac8d32b0ddf37dd2d218435` | ⚠️ Unaudited |
| OErc20DelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | unit-158563 | `0x0eb702a106c0d6c260ef2cbeab8d932b7da5f148` | ⚠️ Unaudited |
| OErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158554 | `0x3a61f4bf054cdfac3a3436a21c4463c6d85c2408` | ⚠️ Unaudited |
| OEther2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158551 | `0x0872b71efc37cb8dde22b2118de3d800427fdba0` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158557 | `0x8240881c0731a84f44b69a221871bbd88e8ca711` | ⚠️ Unaudited |
| OrbitSpaceStation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158558 | `0xc1794dd86c41bc261494c7c57d62bf8d336e6eef` | ⚠️ Unaudited |
| OrbitToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158555 | `0x42e12d42b3d6c4a74a88a61063856756ea2db357` | ⚠️ Unaudited |
| PythOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158556 | `0x5f3f2f65c78ea522767ae965a1c48cbc852820ce` | ⚠️ Unaudited |
| RedstoneOracleProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-158561 | `0xfe4c1021d3276a6f9c4c1e7f296947f92b293cd1` | ⚠️ Unaudited |
| SpaceStationUpgradable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | unit-158562 | `0x1e18c3cb491d908241d0db14b081b51be7b6e652` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158552 | `0x154d8e44d88a061908aa9b3a4f8609bd72b19886` | ⚠️ Unaudited |
| VestedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | unit-158560 | `0xfa1fdcf4682b72e56e3b32ff1aba7afcd5e1c7a8` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x005d2465168f03a00f2af52a5932fdc326ae86c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0607cbbd0d1d7731e30ddcec31415485662f184f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x190105892e1aa7a8350a46efc16fb858a459df9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1f4f8ce285d0ab49da56aa3e06a50b532703e8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x26d7b94b57e8de008920a23908f25bd1f6d223cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x273683ca19d9cf827628ee216e4a9604efb077a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x27a389b4cb1fbcc6be301076bfd5096e0b1ed679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x305b6c6cba3d593542ac01b1c21da5936c40002b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x34e1d9e215dba9ad79b8015e9bded770bbfc0403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x354e7e957a931750d916e9988a2826c56e32ddb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3571462bd9d4d4676a812b2b4f19d13fe67dca71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x383ca24eeea9df7e1fea5951b03f04f9d606fe2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x38e6da25e91fe7fc023bf2689a5bd0154e2f810a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3f18024cff6d87a98f376642af12e71d5a524827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3fdd96567bce7e6bc6882ac96cd4b25056081a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4228465d92c26f2789a8b4db657bb4f5160fa391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x43aa593813cc96ec81a54dd4fcb86e8a6e05b1d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4991b902f397dc16b0bbd21b0057a20b4b357ae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4adf85e2e760c9211894482df74ba535bcae50a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4cda323c0a25cda37b63f85044b50c053e7abd40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4e41e9bde2b68a6af0ee96172cf325a2af4ebaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4fa9fc1c94de6297d70cfb787e0de4ed38eca1b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x530a8d3fdf61112f8a879d753fe02e9e37ec36aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x586abb06179535de9eb6c6d968a355128dd74511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5d74fca751aac4374e9deef07e066456e74ecbab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7073cc6afdb5b62e2684b1c697b1fff9d13524be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x734c5ecc3a662c95b30a211377cce8367b2b74ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x769ea865b469d27f0b6a445ba9898ff30373a7e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7732e29e35e8a8b26e7f026c0865c7c2d88cf853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7878c119f08052789f84cf4fdd3c3642fa291257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x789a8ee0022a17d99f46c4bc03a74a047dc07a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x795dcd51eac6eb3123b7a4a1f906992eaa54cb0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7f19e9764b913374aeca07b1e6d8bcbecb7b9d2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7f4283b0f7a3109ff15fbd14d74f4f834d00ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x819b9be1b1bfabae83f351c1885297dbe66eb6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x89766bc82e8cdcdc87bc2f862a2f72550bdcff8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8c415331761063e5d6b1c8e700f996b13603fc2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x93cb44ba719459e445f3eec65f6c0fe449d71364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9abc74378d0bb733fd94a3f008ed6955fec590f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9aecedcd6a82d26f2f86d331b17a1c1676442a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9bbba6322fe5f3968c1f27c8b860727d683194c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x9d9cef84006048e7e5501777a34acc1b952164b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa1da0b72e04f7977f831b64e8764335d9bb46a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa3135b76c28b3971b703a5e6cd451531b187eb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa89bea4f0898910d561c642479ecb52400a8c64d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xafabd582e82042f4a8574f75c36409abea916ac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb51b76c73fb24f472e0dd63bb8195bd2170bc65d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbbb7f6c983cbaf7a88ec54f0090efbfb87f8060f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbc272d8640ccedb3d42f3757912c808792b8dc17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbd02e7b92874940620957fe17b42d3f30b39e237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbd78ebd20c723e6161c2beec19df8cc0ebdc0bc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd1a14c1ea65fefff77dda4e86fab76fb11c50b4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd55634a79e571dc4c7cdd2f2c0a5857bf7a8a782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd847b486fe612c51900f1da1a045741820dd5fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe47322baf24945bad1b77349114322625bf7051e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe6f1b0b0f59902b71c843f039a6ab6f7c15037d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe9266ae95bb637a7ad598cb0390d44262130f433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xe9391d8e1d5c970f7648852ffeda1a9f42833857` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf62dd5404d96bf9628a891c6fd2d62dcd4db8a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf92996ddc677a8dcb032ac5fe62bbf00f92ae2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf9b3b455f5d900f62bc1792a6ca6e1d47b989389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfb661cdcfcb62b4ed7bbef6f70068863e213cb6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xfff8fc176697d04607cf4e23e91c65aed1c3d3f5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 63
- Live contracts: 0
- Unknown liveness contracts: 63
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=63

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| blast | unverified unclassified | UnnamedContract<br>`0x005d2465168f03a00f2af52a5932fdc326ae86c4` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x0607cbbd0d1d7731e30ddcec31415485662f184f` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x190105892e1aa7a8350a46efc16fb858a459df9e` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x1f4f8ce285d0ab49da56aa3e06a50b532703e8b1` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x26d7b94b57e8de008920a23908f25bd1f6d223cd` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x273683ca19d9cf827628ee216e4a9604efb077a3` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x27a389b4cb1fbcc6be301076bfd5096e0b1ed679` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x305b6c6cba3d593542ac01b1c21da5936c40002b` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x34e1d9e215dba9ad79b8015e9bded770bbfc0403` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x354e7e957a931750d916e9988a2826c56e32ddb3` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x3571462bd9d4d4676a812b2b4f19d13fe67dca71` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x383ca24eeea9df7e1fea5951b03f04f9d606fe2a` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x38e6da25e91fe7fc023bf2689a5bd0154e2f810a` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x3f18024cff6d87a98f376642af12e71d5a524827` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x3fdd96567bce7e6bc6882ac96cd4b25056081a6d` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x4228465d92c26f2789a8b4db657bb4f5160fa391` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x43aa593813cc96ec81a54dd4fcb86e8a6e05b1d1` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x4991b902f397dc16b0bbd21b0057a20b4b357ae2` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x4adf85e2e760c9211894482df74ba535bcae50a4` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x4cda323c0a25cda37b63f85044b50c053e7abd40` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x4e41e9bde2b68a6af0ee96172cf325a2af4ebaa3` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x4fa9fc1c94de6297d70cfb787e0de4ed38eca1b3` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x530a8d3fdf61112f8a879d753fe02e9e37ec36aa` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x586abb06179535de9eb6c6d968a355128dd74511` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x5d74fca751aac4374e9deef07e066456e74ecbab` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x7073cc6afdb5b62e2684b1c697b1fff9d13524be` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x734c5ecc3a662c95b30a211377cce8367b2b74ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x769ea865b469d27f0b6a445ba9898ff30373a7e2` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x7732e29e35e8a8b26e7f026c0865c7c2d88cf853` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x7878c119f08052789f84cf4fdd3c3642fa291257` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x789a8ee0022a17d99f46c4bc03a74a047dc07a00` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x795dcd51eac6eb3123b7a4a1f906992eaa54cb0e` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x7f19e9764b913374aeca07b1e6d8bcbecb7b9d2a` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x7f4283b0f7a3109ff15fbd14d74f4f834d00ecbd` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x819b9be1b1bfabae83f351c1885297dbe66eb6bb` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x89766bc82e8cdcdc87bc2f862a2f72550bdcff8b` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x8c415331761063e5d6b1c8e700f996b13603fc2e` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x93cb44ba719459e445f3eec65f6c0fe449d71364` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x9abc74378d0bb733fd94a3f008ed6955fec590f5` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x9aecedcd6a82d26f2f86d331b17a1c1676442a87` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x9bbba6322fe5f3968c1f27c8b860727d683194c8` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0x9d9cef84006048e7e5501777a34acc1b952164b2` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xa1da0b72e04f7977f831b64e8764335d9bb46a8b` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xa3135b76c28b3971b703a5e6cd451531b187eb5a` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xa89bea4f0898910d561c642479ecb52400a8c64d` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xafabd582e82042f4a8574f75c36409abea916ac5` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xb51b76c73fb24f472e0dd63bb8195bd2170bc65d` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xbbb7f6c983cbaf7a88ec54f0090efbfb87f8060f` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xbc272d8640ccedb3d42f3757912c808792b8dc17` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xbd02e7b92874940620957fe17b42d3f30b39e237` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xbd78ebd20c723e6161c2beec19df8cc0ebdc0bc7` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xd1a14c1ea65fefff77dda4e86fab76fb11c50b4b` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xd55634a79e571dc4c7cdd2f2c0a5857bf7a8a782` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xd847b486fe612c51900f1da1a045741820dd5fa0` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xe47322baf24945bad1b77349114322625bf7051e` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xe6f1b0b0f59902b71c843f039a6ab6f7c15037d3` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xe9266ae95bb637a7ad598cb0390d44262130f433` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xe9391d8e1d5c970f7648852ffeda1a9f42833857` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xf62dd5404d96bf9628a891c6fd2d62dcd4db8a56` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xf92996ddc677a8dcb032ac5fe62bbf00f92ae2ec` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xf9b3b455f5d900f62bc1792a6ca6e1d47b989389` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xfb661cdcfcb62b4ed7bbef6f70068863e213cb6b` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |
| blast | unverified unclassified | UnnamedContract<br>`0xfff8fc176697d04607cf4e23e91c65aed1c3d3f5` | non_address_book | unknown | unknown | unverified | n/a | `0x6315f65843e7582508e4f0aac20a7203e7b09f02` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 63 |

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
