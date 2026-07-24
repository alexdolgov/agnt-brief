# Agentic Audit Brief: ChainGPT

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: ChainGPT (`chaingpt`)
- Website: [https://pad.chaingpt.org/staking-pools](https://pad.chaingpt.org/staking-pools)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, linea, mantle, opbnb, polygon, scroll, sepolia, skale-titan-ai, zksync-era
- Contract surface: 204 unique implementations (210 raw deployments)
- Coverage basis: 1/34 confirmed own live verified implementations (2.9%); conservative 2.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,846,519.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ChainGPT. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, mantle, opbnb, polygon, scroll, sepolia, skale-titan-ai. Structural roles: 3 supporting, 2 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: supporting (3), core (2)
- Contract kinds: contract (5)
- Detected standards: ownable (3), erc1967proxy (2), erc20 (1)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 42 contracts are derived from known codebases. 42 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf276bf68dde58904439f11f6ed1511e89a7f5a4a`, chain 1)
- UnnamedContract (`0xc263365d628568c23d61bdda24c8eb27cef4e917`, chain 56)
- UnnamedContract (`0xc6a52f207a99e0cb40b74fabcd0b91340d711911`, chain 56)
- UnnamedContract (`0xf276bf68dde58904439f11f6ed1511e89a7f5a4a`, chain 137)
- UnnamedContract (`0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb`, chain 204)
- UnnamedContract (`0xf276bf68dde58904439f11f6ed1511e89a7f5a4a`, chain 42161)
- UnnamedContract (`0xf276bf68dde58904439f11f6ed1511e89a7f5a4a`, chain 43114)
- BEP20Token (`0xe9e7cea3dedca5984780bafc599bd69add087d56`, chain 56)
- CGPTNFTBlacklist (`0xe1719a94f85754be182bfe9da2d2510e5dca57f6`, chain 1)
- CGPTNFTBlacklist (`0xe1719a94f85754be182bfe9da2d2510e5dca57f6`, chain 56)
- CGPTNFTBlacklist (`0xb2d64879e9108f49a4f8ecb8f508f19a7e8d5430`, chain 137)
- CGPTNFTBlacklist (`0xb2d64879e9108f49a4f8ecb8f508f19a7e8d5430`, chain 43114)
- CGPTNFTFactory (`0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb`, chain 1)
- CGPTNFTFactory (`0x18b5121db23b849759400196f2a16fbdf931a5af`, chain 56)
- CGPTNFTFactory (`0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb`, chain 56)
- CGPTNFTFactory (`0x63591849f61183cc9d8556cb27b81ffa8a0ed920`, chain 137)
- CGPTNFTFactory (`0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb`, chain 137)
- CGPTNFTFactory (`0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb`, chain 43114)
- CGPTNFTFactory (`0xfe6bf2e4e66df7d0db36c8983031db77c306e158`, chain 43114)
- ChainGPT (`0x9840652dc04fb9db2c43853633f0f62be6f00f98`, chain 56)
- create nfts (`0x4f132eb3c7508c6394c3a1a7cf9440630b920d37`, chain 1350216234)
- DecubateVestingV2 (`0x3a53269cae3281155e51d06ffe14fde8dc3662f7`, chain 56)
- ERC1967Proxy (`0x6b7ea17914f925da6e52b5db987655052521b84e`, chain 1)
- ERC1967Proxy (`0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d`, chain 1)
- ERC1967Proxy (`0x94e917739bdce53a522b690c9edf187f04a8ff03`, chain 56)
- ERC1967Proxy (`0xb8c49c78c4d3bae228c1bdc2df829275303ffe95`, chain 56)
- ERC1967Proxy (`0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d`, chain 56)
- ERC1967Proxy (`0xf28c740b03243dfa832bad5348d5f23bfbf89c04`, chain 56)
- ERC1967Proxy (`0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d`, chain 137)
- ERC1967Proxy (`0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d`, chain 204)
- ERC1967Proxy (`0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d`, chain 5000)
- ERC1967Proxy (`0xdaa9c9f58068151d20abab41b72ebb81e25e39ee`, chain 42161)
- ERC1967Proxy (`0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d`, chain 43114)
- ERC1967Proxy (`0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d`, chain 534352)
- Membership (`0xdb6ab8f90d5724257db9d69b02818239d5ae726a`, chain 1)
- Receiver (`0xe8c730f7dd7918aa7f28ea74b90d3e6b0c9b1242`, chain 1)
- Sender (`0x3da0fa01e07ebffbaffbf976e8bbe9bd802a6af4`, chain 137)
- TransparentUpgradeableProxy (`0x25931894a86d47441213199621f1f2994e1c39aa`, chain 1)
- TransparentUpgradeableProxy (`0x5b1e724b79087dae13517612a1e6575e9d340cfb`, chain 56)
- TransparentUpgradeableProxy (`0x62a402def6ca37e9ca7a544be34954748088ccee`, chain 56)
- TransparentUpgradeableProxy (`0x765a6ee976137801f2661c3644e1fde369a8ed18`, chain 56)
- VoteContract (`0xb70af6e8d9cdf49b506bb176de1a245e96eab54c`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/45 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/34 (2.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 161 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 41 of 204 unique; 163 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/38
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 166
- Unique implementations: 204
- Raw deployments: 210
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 2.6% | 2026-01 |
| yAudit | Tier 2 | 1 | 2.6% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChainGPT | unknown | project_anchor | own_supporting | 0 | bsc | unit-381785 | `0x9840652dc04fb9db2c43853633f0f62be6f00f98` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | unknown | project_anchor | own_supporting | 0 | bsc | unit-381789 | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ⚠️ Unaudited |
| BridgeMintableTokenV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381791 | `0x25931894a86d47441213199621f1f2994e1c39aa` | ⚠️ Unaudited |
| CGPTBurn | unknown | project_anchor | own_supporting | 1 | bsc | unit-381799 | `0x94e917739bdce53a522b690c9edf187f04a8ff03` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381762 | `0xe1719a94f85754be182bfe9da2d2510e5dca57f6` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | bsc | unit-381788 | `0xe1719a94f85754be182bfe9da2d2510e5dca57f6` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | polygon | unit-381770 | `0xb2d64879e9108f49a4f8ecb8f508f19a7e8d5430` | ⚠️ Unaudited |
| CGPTNFTBlacklist | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381777 | `0xb2d64879e9108f49a4f8ecb8f508f19a7e8d5430` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381793 | `0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381764 | `0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-381782 | `0x18b5121db23b849759400196f2a16fbdf931a5af` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | bsc | unit-381801 | `0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-381790 | `0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-381769 | `0x63591849f61183cc9d8556cb27b81ffa8a0ed920` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | polygon | unit-381794 | `0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | polygon | unit-381771 | `0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-381796 | `0xdaa9c9f58068151d20abab41b72ebb81e25e39ee` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381778 | `0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb` | ⚠️ Unaudited |
| CGPTNFTFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381780 | `0xfe6bf2e4e66df7d0db36c8983031db77c306e158` | ⚠️ Unaudited |
| DCBLiqLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x6ee8d743eb8bec665aacdb535f2f100f040ca6c5` | ⚠️ Unaudited |
| DCBVault | core_logic | project_anchor | own_supporting | 1 | bsc | unit-381802 | `0x5b1e724b79087dae13517612a1e6575e9d340cfb` | ⚠️ Unaudited |
| DecubateMasterChef | unknown | project_anchor | own_supporting | 1 | bsc | unit-381803 | `0x765a6ee976137801f2661c3644e1fde369a8ed18` | ⚠️ Unaudited |
| DecubateVestingV2 | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-381783 | `0x3a53269cae3281155e51d06ffe14fde8dc3662f7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | opbnb | unit-381795 | `0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | mantle | unit-381798 | `0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-381797 | `0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 0 | scroll | unit-381781 | `0xe7bcb5bedaf6585ee737e6d05c25f8050b11d74d` | ⚠️ Unaudited |
| Membership | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381761 | `0xdb6ab8f90d5724257db9d69b02818239d5ae726a` | ⚠️ Unaudited |
| Membership | unknown | project_anchor | own_supporting | 1 | bsc | unit-381800 | `0xf28c740b03243dfa832bad5348d5f23bfbf89c04` | ⚠️ Unaudited |
| PaymentBsc | unknown | project_anchor | own_supporting | 1 | bsc | unit-381804 | `0xb8c49c78c4d3bae228c1bdc2df829275303ffe95` | ⚠️ Unaudited |
| PaymentEth | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381792 | `0x6b7ea17914f925da6e52b5db987655052521b84e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf276bf68dde58904439f11f6ed1511e89a7f5a4a` | ⚠️ Unaudited |
| Receiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381763 | `0xe8c730f7dd7918aa7f28ea74b90d3e6b0c9b1242` | ⚠️ Unaudited |
| Sender | unknown | project_anchor | own_supporting | 0 | polygon | unit-381768 | `0x3da0fa01e07ebffbaffbf976e8bbe9bd802a6af4` | ⚠️ Unaudited |
| TokenSaleFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: bsc `0x8c0ccc1a481ecddd368dbc97110f4baf88017139`; bsc `0xb13adc62601879e2abf02d34c9fc2aeb4fa9aa0e`; bsc `0xc0b58952ce4b2d0c9dc9ae70ef462621fd4fc82b`; base `0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9`; base `0x2c75445a19aa00ceee2098f9263408b9b59eede9`; base `0x9670f62a59f68ddd52496f09f6ab90a96c0669fa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-381805 | 2 deployments: bsc `0x62a402def6ca37e9ca7a544be34954748088ccee`; bsc `0xc6a52f207a99e0cb40b74fabcd0b91340d711911` | ⚠️ Unaudited |
| VoteContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381786 | `0xb70af6e8d9cdf49b506bb176de1a245e96eab54c` | ⚠️ Unaudited |
| Web3CheckIn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde3204c79ed43a0c282e10664a27ad285bd1416b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (166)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| create nfts | unknown | project_anchor | own_supporting | 0 | skale-titan-ai | unit-381767 | `0x4f132eb3c7508c6394c3a1a7cf9440630b920d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0422415decaf2e0633046fa96ab877e0be10d125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x056e45a795458229222838e8e169d355d7f57ca5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d0153df6b97aa7835dd208cc9d9f5d9455d7bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36cff981fc8d365284939fd985b2a406e289f1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4206a4c6a6353aaf374c79e5d495c988c2ba8417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6226b6e6620168e89ff71489d44971298e75ce44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f1e49d62ab4df5dc2831e9b41d7d01276739830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f2969d652dd6a41732a56e029d9c7cf8ba94baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x799bba2b5a7f7231a0edd835c2eb19fd6111988c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e92d5b01c89e71c395fb6729b133e0e417b840c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f96dee34766f12a753a463af668b163a5449fd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa433b2748d718108323316f460f449453c36420e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb988eae6f5892606c84a40a5ce6b143875c604ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce290d44d9ef37c0dcf6be06c21bdda8a73204d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecb4fcb5d1b2803260d4d55a3b3bc2ae8dd691cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381765 | `0xf276bf68dde58904439f11f6ed1511e89a7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f1a7e25323d82d58c948f30bfbf565bfe002f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02715f055f3e1cd5e5c5da050bc5306deabd728b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02e5561d4cce41d10e573f8eb84660ab8f9178e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x047656bfd9a1aa8a34209f68fa5c29e480610758` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04d6088645b16a83cc72af309c3ba0251bce3bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x074ee0c01957e0776d51592bc62579fa2a0ac9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07b904ccc97acb75ea86981feec9daf7cbbf09a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08a5d36e9bb319505293519d5f621936f6c63820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bb670b01d0055cfab20776e6fc3c80bf4cbcb0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d2238f162ab6fb7c68d889b689022d7fe9c8407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d512357e9f28146c999777bcfcc7b3979766a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ed8f6b529c549e54d3ab3f4407f74a8454354bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x133b18d68ea1aa07412d97fb7b50b16440fb7666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x164410b0df65620e21964f81fa32110d5aa0be02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x19f17632184fcf59f69c330688bdac853fd60312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a58969a2297f8a4e90d40c76b283f16767dbf2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c9c5b548685e9e93fcd426aea74f1ebd0bd04d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d58d25951c6a6c208e5b1e826faa781f278f67d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1daa6fee8152d07b9ed0a8bba9cb403fa54acbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2befe2dab0e41f705bf739f1d643bc0177e6bbcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c45f20e41f1ff77fd30d9c2b264b599e22a36b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c5c9a9208b64a7c5c480d12a7de8a0b4fc15479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c8061981f586c7448602cd73d7a5d72e4ef25ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x350e8641cd4c8d3825965a42a5032a08bd16b249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x359993ad6a9ff0e6ad327ad6d32448defbd0c001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40ffa8643ae05775322d8636d653a9a4284d94c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46e9ded7b61b642f7859d3c517edb4c2f78a37a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48efa329cc1f09fe7903853462298e93468f6afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4baf0f58f43f58e94296d5a45d8b4228bfeff4bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x539f5349d2c556781bef9e1c5ce5f463fa056acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x570182f4a0ee6bc4748436076e37714fc3552b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5861561184edefcf7bde928a0f0c83bf093aebca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a087025a3cb08eb6a50734ab7cbb449c0e395ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ae752de27655b8bd313d913b4498cb8464b5256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b6b1c33d0ecc0cda24b4e7ee18bc8205f044b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fc22396a063cabb5e09ba6ba449c9646155ed3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64ef89cea9129501604650a32d7515816e7e023f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65307cc6a13fc70ce694a1bec4f778951cfd2d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65ad2718806bcc6f8a7967d3edd010dd0b7339d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ee231441fb391860f45faa9cbd14e09e226035e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f21bc5b237cbb1db7a6375d28d956b794708aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x710814039f8441ddc9b9f84800ed20161f96b748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71d2e518cbab9d9ab0f81d3893399777457943f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x733ad4ebed96bd3f827cd0cd409bca2640e09d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73c2443f0177741695604f09bfb44854caf882ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a8452ca13af2c4f7d91ee9f0351cd9896fef91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e61e620138395fc0b0b378c0dd45aa64601955a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fedc89ff7475a15ff9ff81de4c4dbda49d82e7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8120df5cd8c2d7e3641f4bda442c268eac3d3d43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x892bb413248144c1369ced7e7d33b3fda43fbc3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8b3b2febd084b5703c34df5cd74f194f74b67ce8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8dca8fd543822ef9e24f464dee83ec6109a8a373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x949d09faaf25cf6cad8359ef1ee1479e4c564614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d49dde3d555dee66919d252eaa36a92db0c40bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0fb7f722d9be6f98feb7ea21efb536ae1655b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa237c4546610100a8fd78c6e9b16cac04dd8f885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2aadde8bf7f2b4ee3dd9e012dfbaf366a81de99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa58b13b29af0bf744e5502f26112d37b4c216f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa622e907dcecac945c03b595e807f764dde369ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabc831f8da7773ee1fb6b3fd362af9583b1b173b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4d0ce2e9f6d93cddcf07f582a2dc56da810b30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb82a0aa41ba3465240d535915850e4ad890fc82f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbae4a73f353581a524a5bbe3ef54736e3ad6d4ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381787 | `0xc263365d628568c23d61bdda24c8eb27cef4e917` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc33fe629761fa35cb47008ca0d3342c05b1af3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3db53ea00050738f5a2e2e38a17efa74ba97901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca896fd8a0de0765a730187aff7e8a7f24d40738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb5787786d954b253cac257515681a4565c76c2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfab58a47421e10397e8a057e1c5dcde1097a6a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdaa38673f02c01379dfb5745a1685f48d852b280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdafb8f6f1122ff01164c2510891d7da4dafa4556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea22b1dec8eddab57178a659bee8c886f29f122e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefea91fa6038c85dcd7ab7c5a773e6173bb3a4f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3eda518e7bfe7b58a491aaf9cfaaecb7c64e3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf84403ad7ac26665092b84aa11776b17f5b81339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8d0a7301db2e48dff510025e5f233a15c1c12f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf97f22eddcaf2e891f0d528bda6113874f292b91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfcb4da83c5edc915d45a42ea21705a9a5f001945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdc70a6cb9ec8211eb8ec44fa954ab2643da0324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x29d6a07b0f4f3daf3ef9677c197725fd9ef6d7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c75445a19aa00ceee2098f9263408b9b59eede9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x32496c27872117208ea4fc34e488a3df60d8f411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x94054198451827e35a67ac71117813ba5c325e99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9670f62a59f68ddd52496f09f6ab90a96c0669fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a6f649e421398eeab450b164d9b81cc4a55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ed70f9bb21db354441c55c3703a5109634a2b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa44b38ce42b1aff4fbb94941c85d502d3f89b777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6ac05240df85dd34fc8ca8f91562ed509b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa89eae18d1eb371c15e4a61848c31eb3dc32b796` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5df66f5f94f324475df9083f38e8d1983f1a02b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe09c2b6ce23c666d21205665fbdf7d55b4e42e46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-381772 | `0xf276bf68dde58904439f11f6ed1511e89a7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4c785cec624cc6619a6bcc71191ed3294be6b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4d3032c2be3f39488bfcd502ef1d09143e9d71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | opbnb | unit-381773 | `0xae41ef00a339f9cc3725d55d79c74a157f8bd8d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-381775 | `0xecbf91477f158e4ed32a4eb72291cd7ee61c07cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cd66d345220887f487ed312b6e5a6ea19318193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x291889f889b9d245e7c100a1b087c0d56c2375f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32496c27872117208ea4fc34e488a3df60d8f411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3255bdc555d3e5996b15c5e44df4c85e09fbea83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x76de829480ba7815b77e9c896b5cd2afafee4d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87307c1802e0edb633868b16a0601147ae6aa68c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x96420f4e63cbc1cd9841ccf256a5727f1353db1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9a6f649e421398eeab450b164d9b81cc4a55a0ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa6ac05240df85dd34fc8ca8f91562ed509b5c38e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd8affb6f722b059d1744fd52c53b31d92c4601d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe9349e46b558d127af69e725d6517c1ccd2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf967a49f87a6f264581e5843f341d2528f2651d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfb5cd8426fbc3b1f2ea4b113a5a37752b3098c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cd66d345220887f487ed312b6e5a6ea19318193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x291889f889b9d245e7c100a1b087c0d56c2375f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d47310bb0c6a9d4ae2a1d6625ec0bee4f473bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacaff3d8fcf67f4a67d8c0d9b146e32cb4a2eec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb9667bcbd04bd4f2c1f2fcd14995bd3d00c5655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce87100a1dbaf576ebd063eb0890840346338689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8affb6f722b059d1744fd52c53b31d92c4601d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe9349e46b558d127af69e725d6517c1ccd2f41fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381776 | `0xf276bf68dde58904439f11f6ed1511e89a7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb5cd8426fbc3b1f2ea4b113a5a37752b3098c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d47310bb0c6a9d4ae2a1d6625ec0bee4f473bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3255bdc555d3e5996b15c5e44df4c85e09fbea83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacaff3d8fcf67f4a67d8c0d9b146e32cb4a2eec7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381779 | `0xf276bf68dde58904439f11f6ed1511e89a7f5a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x06966b5b1131b273290478c50f7ce70dfbfa4cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x0a9ed9b39613850819a5f80857395bfea434c22a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x117a1e15467297aec37ae5f0e9c53b295762b544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x57ed3599a1cc5586e6cd9872eb87b94b45f3eb1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x624e2d60f2c886e51d65d3f480392e332588f5c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x6fe9a48ac564bc39570346e2600ff487e0f759ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x7ad9ada9fa2f636efac8259ace0ccf89773274f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0x91b35b2f90f283a093e14b2d8578afcd67c18876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xb57dd582598ebefb631dae727fe25278659f61ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xc2a24063f2c50f6eabcc0d1ae4b3b62e3a6f0353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xdbfd8aabe170b352e9370749a7b8ebeca541db84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sepolia | n/a | `0xe8c4c8621ee04102c640820f9ba0d88a14ce1af9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-381766 | `0xf814211a3b46dbb90430ca57e801890b15da9ea5` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 134
- Live contracts: 2
- Unknown liveness contracts: 132
- Source-verified contracts: 2
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=1, contamination review=1, exact address book overlap=1, unverified unclassified=131

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0xce87100a1dbaf576ebd063eb0890840346338689` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d47310bb0c6a9d4ae2a1d6625ec0bee4f473bb6` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbb9667bcbd04bd4f2c1f2fcd14995bd3d00c5655` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd8affb6f722b059d1744fd52c53b31d92c4601d3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | non_address_book | unknown | unknown | unverified | n/a | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | non_address_book | unknown | unknown | unverified | n/a | `0xaad17649d7e96119ae3ab9968ab8db207732b6f6` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3255bdc555d3e5996b15c5e44df4c85e09fbea83` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xacaff3d8fcf67f4a67d8c0d9b146e32cb4a2eec7` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | non_address_book | unknown | unknown | unverified | n/a | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| base | unverified unclassified | UnnamedContract<br>`0x32496c27872117208ea4fc34e488a3df60d8f411` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| base | unverified unclassified | UnnamedContract<br>`0x3255bdc555d3e5996b15c5e44df4c85e09fbea83` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| base | unverified unclassified | UnnamedContract<br>`0x76de829480ba7815b77e9c896b5cd2afafee4d35` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| base | unverified unclassified | UnnamedContract<br>`0x9a6f649e421398eeab450b164d9b81cc4a55a0ea` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| base | unverified unclassified | UnnamedContract<br>`0xa6ac05240df85dd34fc8ca8f91562ed509b5c38e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| base | unverified unclassified | UnnamedContract<br>`0xd8affb6f722b059d1744fd52c53b31d92c4601d3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| base | unverified unclassified | UnnamedContract<br>`0xe9349e46b558d127af69e725d6517c1ccd2f41fe` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x074ee0c01957e0776d51592bc62579fa2a0ac9df` | non_address_book | unknown | unknown | unverified | n/a | `0x1a804838b3ccd066faca7ebf10dd9e2f656c053e` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c5c9a9208b64a7c5c480d12a7de8a0b4fc15479` | non_address_book | unknown | unknown | unverified | n/a | `0x1a804838b3ccd066faca7ebf10dd9e2f656c053e` |
| bsc | unverified unclassified | UnnamedContract<br>`0x539f5349d2c556781bef9e1c5ce5f463fa056acf` | non_address_book | unknown | unknown | unverified | n/a | `0x1a804838b3ccd066faca7ebf10dd9e2f656c053e` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf97f22eddcaf2e891f0d528bda6113874f292b91` | non_address_book | unknown | unknown | unverified | n/a | `0x1a804838b3ccd066faca7ebf10dd9e2f656c053e` |
| bsc | unverified unclassified | UnnamedContract<br>`0x02715f055f3e1cd5e5c5da050bc5306deabd728b` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x02e5561d4cce41d10e573f8eb84660ab8f9178e8` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08a5d36e9bb319505293519d5f621936f6c63820` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0d512357e9f28146c999777bcfcc7b3979766a19` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x19f17632184fcf59f69c330688bdac853fd60312` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a58969a2297f8a4e90d40c76b283f16767dbf2a` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d58d25951c6a6c208e5b1e826faa781f278f67d` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1daa6fee8152d07b9ed0a8bba9cb403fa54acbed` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2befe2dab0e41f705bf739f1d643bc0177e6bbcc` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c8061981f586c7448602cd73d7a5d72e4ef25ee` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x350e8641cd4c8d3825965a42a5032a08bd16b249` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x40ffa8643ae05775322d8636d653a9a4284d94c4` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x48efa329cc1f09fe7903853462298e93468f6afe` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5861561184edefcf7bde928a0f0c83bf093aebca` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5a087025a3cb08eb6a50734ab7cbb449c0e395ab` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x64ef89cea9129501604650a32d7515816e7e023f` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ee231441fb391860f45faa9cbd14e09e226035e` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f21bc5b237cbb1db7a6375d28d956b794708aef` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a8452ca13af2c4f7d91ee9f0351cd9896fef91f` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7e61e620138395fc0b0b378c0dd45aa64601955a` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8120df5cd8c2d7e3641f4bda442c268eac3d3d43` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x892bb413248144c1369ced7e7d33b3fda43fbc3a` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8b3b2febd084b5703c34df5cd74f194f74b67ce8` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x949d09faaf25cf6cad8359ef1ee1479e4c564614` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9d49dde3d555dee66919d252eaa36a92db0c40bc` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa237c4546610100a8fd78c6e9b16cac04dd8f885` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb82a0aa41ba3465240d535915850e4ad890fc82f` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbae4a73f353581a524a5bbe3ef54736e3ad6d4ea` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc33fe629761fa35cb47008ca0d3342c05b1af3c1` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3db53ea00050738f5a2e2e38a17efa74ba97901` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xca896fd8a0de0765a730187aff7e8a7f24d40738` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdafb8f6f1122ff01164c2510891d7da4dafa4556` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xefea91fa6038c85dcd7ab7c5a773e6173bb3a4f8` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf3eda518e7bfe7b58a491aaf9cfaaecb7c64e3dd` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf8d0a7301db2e48dff510025e5f233a15c1c12f9` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfcb4da83c5edc915d45a42ea21705a9a5f001945` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x164410b0df65620e21964f81fa32110d5aa0be02` | non_address_book | unknown | unknown | unverified | n/a | `0xa924d224178cd40bc4d7bb93e8b0b72622246a68` |
| bsc | unverified unclassified | UnnamedContract<br>`0x733ad4ebed96bd3f827cd0cd409bca2640e09d37` | non_address_book | unknown | unknown | unverified | n/a | `0xa924d224178cd40bc4d7bb93e8b0b72622246a68` |
| bsc | unverified unclassified | UnnamedContract<br>`0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | non_address_book | unknown | unknown | unverified | n/a | `0xaad17649d7e96119ae3ab9968ab8db207732b6f6` |
| bsc | contamination review | Web3CheckIn<br>`0xde3204c79ed43a0c282e10664a27ad285bd1416b` | non_address_book | unknown | unknown | verified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x047656bfd9a1aa8a34209f68fa5c29e480610758` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0bb670b01d0055cfab20776e6fc3c80bf4cbcb0b` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0ed8f6b529c549e54d3ab3f4407f74a8454354bb` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x133b18d68ea1aa07412d97fb7b50b16440fb7666` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1c9c5b548685e9e93fcd426aea74f1ebd0bd04d9` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2c45f20e41f1ff77fd30d9c2b264b599e22a36b1` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x359993ad6a9ff0e6ad327ad6d32448defbd0c001` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x46e9ded7b61b642f7859d3c517edb4c2f78a37a8` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x570182f4a0ee6bc4748436076e37714fc3552b21` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5ae752de27655b8bd313d913b4498cb8464b5256` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b6b1c33d0ecc0cda24b4e7ee18bc8205f044b44` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x65307cc6a13fc70ce694a1bec4f778951cfd2d82` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x65ad2718806bcc6f8a7967d3edd010dd0b7339d6` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x710814039f8441ddc9b9f84800ed20161f96b748` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71d2e518cbab9d9ab0f81d3893399777457943f3` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x73c2443f0177741695604f09bfb44854caf882ae` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7fedc89ff7475a15ff9ff81de4c4dbda49d82e7e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8dca8fd543822ef9e24f464dee83ec6109a8a373` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa0fb7f722d9be6f98feb7ea21efb536ae1655b3c` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa58b13b29af0bf744e5502f26112d37b4c216f97` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xabc831f8da7773ee1fb6b3fd362af9583b1b173b` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb4d0ce2e9f6d93cddcf07f582a2dc56da810b30f` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcfab58a47421e10397e8a057e1c5dcde1097a6a7` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdaa38673f02c01379dfb5745a1685f48d852b280` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xea22b1dec8eddab57178a659bee8c886f29f122e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf84403ad7ac26665092b84aa11776b17f5b81339` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfdc70a6cb9ec8211eb8ec44fa954ab2643da0324` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c` | non_address_book | unknown | unknown | unverified | n/a | `0xf07c30e4cd6cfff525791b4b601bd345bded7f47` |
| bsc | candidate review | ProxyAdmin<br>`0xf276bf68dde58904439f11f6ed1511e89a7f5a4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| bsc | exact address book overlap | UnnamedContract<br>`0xc263365d628568c23d61bdda24c8eb27cef4e917` | project_anchor | unknown | live | unverified | n/a | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | non_address_book | unknown | unknown | unverified | n/a | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc6a52f207a99e0cb40b74fabcd0b91340d711911` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0422415decaf2e0633046fa96ab877e0be10d125` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x056e45a795458229222838e8e169d355d7f57ca5` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28d0153df6b97aa7835dd208cc9d9f5d9455d7bf` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36cff981fc8d365284939fd985b2a406e289f1b5` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4206a4c6a6353aaf374c79e5d495c988c2ba8417` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6226b6e6620168e89ff71489d44971298e75ce44` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f1e49d62ab4df5dc2831e9b41d7d01276739830` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f2969d652dd6a41732a56e029d9c7cf8ba94baf` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x799bba2b5a7f7231a0edd835c2eb19fd6111988c` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e92d5b01c89e71c395fb6729b133e0e417b840c` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f96dee34766f12a753a463af668b163a5449fd0` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb988eae6f5892606c84a40a5ce6b143875c604ea` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce290d44d9ef37c0dcf6be06c21bdda8a73204d2` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xecb4fcb5d1b2803260d4d55a3b3bc2ae8dd691cf` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf2f1a7e25323d82d58c948f30bfbf565bfe002f5` | non_address_book | unknown | unknown | unverified | n/a | `0x4cff83d5b7aacf090edc60d6d7be07f2c2bbf34f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | non_address_book | unknown | unknown | unverified | n/a | `0xaad17649d7e96119ae3ab9968ab8db207732b6f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | non_address_book | unknown | unknown | unverified | n/a | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| mantle | unverified unclassified | UnnamedContract<br>`0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | non_address_book | unknown | unknown | unverified | n/a | `0xaad17649d7e96119ae3ab9968ab8db207732b6f6` |
| opbnb | unverified unclassified | UnnamedContract<br>`0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | non_address_book | unknown | unknown | unverified | n/a | `0xaad17649d7e96119ae3ab9968ab8db207732b6f6` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf4c785cec624cc6619a6bcc71191ed3294be6b7c` | non_address_book | unknown | unknown | unverified | n/a | `0x55a72165e86e2732a03ad5fedc46aee8ed7ed01c` |
| polygon | unverified unclassified | UnnamedContract<br>`0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | non_address_book | unknown | unknown | unverified | n/a | `0xaad17649d7e96119ae3ab9968ab8db207732b6f6` |
| polygon | unverified unclassified | UnnamedContract<br>`0x32496c27872117208ea4fc34e488a3df60d8f411` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9a6f649e421398eeab450b164d9b81cc4a55a0ea` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9ed70f9bb21db354441c55c3703a5109634a2b38` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa6ac05240df85dd34fc8ca8f91562ed509b5c38e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa89eae18d1eb371c15e4a61848c31eb3dc32b796` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd5df66f5f94f324475df9083f38e8d1983f1a02b` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf4d3032c2be3f39488bfcd502ef1d09143e9d71e` | non_address_book | unknown | unknown | unverified | n/a | `0xd9b4753cd798bc2f24f6fb6c325a7aee89d46cb3` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9fc1a3fc1ad58896fb57a7c6903d646ce3506573` | non_address_book | unknown | unknown | unverified | n/a | `0xf753b220fb1fcfd18f65d5ffc968205cdfd83ba5` |
| scroll | unverified unclassified | UnnamedContract<br>`0x79f59fd26bce9fdd2c37b814ea2ae87a0f3f296e` | non_address_book | unknown | unknown | unverified | n/a | `0xaad17649d7e96119ae3ab9968ab8db207732b6f6` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x06966b5b1131b273290478c50f7ce70dfbfa4cdc` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x0a9ed9b39613850819a5f80857395bfea434c22a` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x117a1e15467297aec37ae5f0e9c53b295762b544` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x57ed3599a1cc5586e6cd9872eb87b94b45f3eb1c` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x624e2d60f2c886e51d65d3f480392e332588f5c7` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x6fe9a48ac564bc39570346e2600ff487e0f759ae` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x7ad9ada9fa2f636efac8259ace0ccf89773274f9` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0x91b35b2f90f283a093e14b2d8578afcd67c18876` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xb57dd582598ebefb631dae727fe25278659f61ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xc2a24063f2c50f6eabcc0d1ae4b3b62e3a6f0353` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xdbfd8aabe170b352e9370749a7b8ebeca541db84` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |
| sepolia | unverified unclassified | UnnamedContract<br>`0xe8c4c8621ee04102c640820f9ba0d88a14ce1af9` | non_address_book | unknown | unknown | unverified | n/a | `0xc8c3ac919f43b8aa875da490610fc4ad7f74d396` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sample of Audit Report](https://app.chaingpt.org/assets/files/ExampleAudit.pdf) | yAudit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |
| [Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/).](https://skynet.certik.com/projects/chaingpt) | CertiK | Audit | 2026-01 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19636] Sample of Audit Report — matched: Only one contract (ChainGPT) is audited; no explicit scope section but contract name and file are clearly identified.
- [19637] Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/). — matched: Only one contract file (ChainGPT.sol) is explicitly listed in the audited files section. The report is from CertiK Skynet and the audit date is derived from 'Last Audit was delivered on 1/15/2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sample of Audit Report | ChainGPT | own contract | ChainGPT (selected) `0x9840652dc04fb9db2c43853633f0f62be6f00f98` — deployed 2023-03-30 21:51:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yes, $CGPT has dual audits from [Certik]() and [Hacken](https://hacken.io/audits/chaingpt/). | ChainGPT | own contract | ChainGPT (selected) `0x9840652dc04fb9db2c43853633f0f62be6f00f98` — deployed 2023-03-30 21:51:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x5b1e724b79087dae13517612a1e6575e9d340cfb` | DCBVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3a53269cae3281155e51d06ffe14fde8dc3662f7` | DecubateVestingV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 196 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
