# Agentic Audit Brief: HyperSwap

## Project Overview

- Project: HyperSwap (`hyperswap`)
- Website: [https://app.hyperswap.exchange/#/swap?referral=defillama](https://app.hyperswap.exchange/#/swap?referral=defillama)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.808Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: hyperliquid
- Contract surface: 94 unique implementations (98 raw deployments)
- DeFi Llama TVL: $16,092,628.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Interface. Structurally: 13 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 5 common project-authored base contract(s) (hyperswapv3pooldeployer, nodelegatecall, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 102; live-surface contracts included: 98 (13 live, 85 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 9 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 85
- Unique implementations: 94
- Raw deployments: 98
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HuskeyInterfaceMulticall | periphery | hyperliquid | n/a | [`0xe8571f...9b97b4`](./contracts/hyperliquid-999/0xe8571fd6629da6e488f7bbd83e729c20fa9b97b4/) | ⚠️ Unaudited |
| HyperswapPair | unknown | hyperliquid | n/a | [`0xa19ea0...98a7ca`](./contracts/hyperliquid-999/0xa19ea099afed76d1cf5f84c6c863365e5798a7ca/) | ⚠️ Unaudited |
| HyperswapRouter | adapter | hyperliquid | n/a | [`0xb4a9c4...21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | ⚠️ Unaudited |
| HyperswapV3Factory | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x09109a...77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/); hyperliquid `0xa10298...5b50c3`; hyperliquid `0xb1c0fa...2602e3` | ⚠️ Unaudited |
| HyperswapV3Pool | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x337b56...070c30`](./contracts/hyperliquid-999/0x337b56d87a6185cd46af3ac2cdf03cbc37070c30/); hyperliquid `0x3a36b0...0b43e7`; hyperliquid `0xe712d5...0e23c9` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | hyperliquid | n/a | [`0xec8f3d...423516`](./contracts/hyperliquid-999/0xec8f3d08dd762e935fb914bd2b2e788e5e423516/) | ⚠️ Unaudited |
| Permit2 | unknown | hyperliquid | n/a | [`0x000000...c78ba3`](./contracts/hyperliquid-999/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0x4e2960...6b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (85)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x6d99e7f6747af2cdbb5164b6dd50e40d4fde1e77) | proxy | hyperliquid | n/a | `0x6d99e7...de1e77` | ❓ Unverified |
| Proxy (impl: 0x6eda206207c09e5428f281761ddc0d300851fbc8) | proxy | hyperliquid | n/a | `0x6eda20...51fbc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0089d5...2fdd26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x038327...cfadb8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x03a918...a45c7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x093de4...b53661` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x098370...11563f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0abe69...f80492` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0b7ce1...34c9fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x19967b...3ccf6e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x229eb9...652a06` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x26d71a...a7ad9d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2b9a42...cdce63` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2bef84...2898c6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2e9031...18e903` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x315092...a5c30f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x324126...7aa87b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x332d88...a07558` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x35b2b5...85b226` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38e305...9f0f18` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3f8f82...86effb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4a6907...9c8e98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4ef4d5...7b32f1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4f07de...3f33ae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51b77d...645e71` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51bafe...151563` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x540a32...b2df74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x56dee1...44bb15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c523a...deecd9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f4f17...dadea9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x604aac...86819a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x62046d...d889e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x656620...a86a16` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x657647...60b1c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x66e96c...d0315a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x69ebc7...e93894` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6d315c...7f86a9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x70f57e...2a8d65` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x724412...ea1c48` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x744c89...5c96dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x750db5...77b358` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x77b9e0...5f55ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7ba2cf...46d82a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c2025...8b7869` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87d658...a530b8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8e9fa9...3d2627` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9f35ae...76e28e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa3414d...5978e3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa7551a...d017f5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xad0d7d...cb10ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae22a0...9bbf7d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae3712...e75e61` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb4610e...b222e0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb58388...dcad46` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb90c1c...bc82a6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbbaf1c...79fa14` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbd90f3...a64353` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc3f845...76365b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6bcfb...a0781c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc7a0ec...e39646` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc8daa2...99babd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcba981...0dcc20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcbbdff...87711e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd064af...a9c9a3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd1c517...9b7bec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd461d0...1f6d63` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd86d0f...7da315` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd8b5ba...3ccd4d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd9ebc7...e8896c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc8be...8ae5ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe1c7c2...3958a9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe289f2...b7539a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe40b01...d4b009` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea92eb...4c814f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xead262...7c56dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xedc68b...0215df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xefabeb...afd229` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf535d7...ab01fe` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf56c59...6439c5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf5c62d...696efb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf86571...0b8139` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa052f...17aa03` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa84d1...2081f7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa909c...32c18d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfb04f2...a67fbb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/4EuEeIhLFXp6HBAjMQG5/uploads/4pNbf8mA0rmNGAHYnvV1/PeckShield-Audit-Report-HyperSwapX-V3-v1.0.pdf](https://3308851984-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4EuEeIhLFXp6HBAjMQG5%2Fuploads%2F4pNbf8mA0rmNGAHYnvV1%2FPeckShield-Audit-Report-HyperSwapX-V3-v1.0.pdf?alt=media&token=b72a08ea-2b62-46bc-be95-9f8cd6c6e41b) | peckshield | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/4EuEeIhLFXp6HBAjMQG5/uploads/h0ceiQ0YLlomWA0lvQm5/PeckShield-Audit-Report-HyperSwapX-V2-v1.0.pdf](https://3308851984-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4EuEeIhLFXp6HBAjMQG5%2Fuploads%2Fh0ceiQ0YLlomWA0lvQm5%2FPeckShield-Audit-Report-HyperSwapX-V2-v1.0.pdf?alt=media&token=006075ec-06f9-4ecd-9b24-c8547afb5c14) | peckshield | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/4EuEeIhLFXp6HBAjMQG5/uploads/r6TksVPyZO1QVyB1VR67/PeckShield-Audit-Report-DelegatedPositionVault-v1.0.pdf](https://3308851984-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4EuEeIhLFXp6HBAjMQG5%2Fuploads%2Fr6TksVPyZO1QVyB1VR67%2FPeckShield-Audit-Report-DelegatedPositionVault-v1.0.pdf?alt=media&token=ab435ee1-335e-4bc5-aa75-02f14814c7bb) | peckshield | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0xe8571f...9b97b4`](./contracts/hyperliquid-999/0xe8571fd6629da6e488f7bbd83e729c20fa9b97b4/) | HuskeyInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa19ea0...98a7ca`](./contracts/hyperliquid-999/0xa19ea099afed76d1cf5f84c6c863365e5798a7ca/) | HyperswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb4a9c4...21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | HyperswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x09109a...77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/) | HyperswapV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x337b56...070c30`](./contracts/hyperliquid-999/0x337b56d87a6185cd46af3ac2cdf03cbc37070c30/) | HyperswapV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xec8f3d...423516`](./contracts/hyperliquid-999/0xec8f3d08dd762e935fb914bd2b2e788e5e423516/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4e2960...6b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | WHYPE9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 85 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11495] spaces/4EuEeIhLFXp6HBAjMQG5/uploads/4pNbf8mA0rmNGAHYnvV1/PeckShield-Audit-Report-HyperSwapX-V3-v1.0.pdf
- [11496] spaces/4EuEeIhLFXp6HBAjMQG5/uploads/h0ceiQ0YLlomWA0lvQm5/PeckShield-Audit-Report-HyperSwapX-V2-v1.0.pdf
- [11497] spaces/4EuEeIhLFXp6HBAjMQG5/uploads/r6TksVPyZO1QVyB1VR67/PeckShield-Audit-Report-DelegatedPositionVault-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
