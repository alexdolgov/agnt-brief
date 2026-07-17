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
| HuskeyInterfaceMulticall | periphery | hyperliquid | n/a | [`0xe8571fd6629da6e488f7bbd83e729c20fa9b97b4`](./contracts/hyperliquid-999/0xe8571fd6629da6e488f7bbd83e729c20fa9b97b4/) | ⚠️ Unaudited |
| HyperswapPair | unknown | hyperliquid | n/a | [`0xa19ea099afed76d1cf5f84c6c863365e5798a7ca`](./contracts/hyperliquid-999/0xa19ea099afed76d1cf5f84c6c863365e5798a7ca/) | ⚠️ Unaudited |
| HyperswapRouter | adapter | hyperliquid | n/a | [`0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | ⚠️ Unaudited |
| HyperswapV3Factory | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x09109a5c4bdb616b7fc6d9f89d780a901e77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/); hyperliquid `0xa1029893c288470e990bb1c9e868457c6e5b50c3`; hyperliquid `0xb1c0fa0b789320044a6f623cfe5ebda9562602e3` | ⚠️ Unaudited |
| HyperswapV3Pool | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x337b56d87a6185cd46af3ac2cdf03cbc37070c30`](./contracts/hyperliquid-999/0x337b56d87a6185cd46af3ac2cdf03cbc37070c30/); hyperliquid `0x3a36b04bcc1d5e2e303981ef643d2668e00b43e7`; hyperliquid `0xe712d505572b3f84c1b4deb99e1beab9dd0e23c9` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | hyperliquid | n/a | [`0xec8f3d08dd762e935fb914bd2b2e788e5e423516`](./contracts/hyperliquid-999/0xec8f3d08dd762e935fb914bd2b2e788e5e423516/) | ⚠️ Unaudited |
| Permit2 | unknown | hyperliquid | n/a | [`0x000000000022d473030f116ddee9f6b43ac78ba3`](./contracts/hyperliquid-999/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0x4e2960a8cd19b467b82d26d83facb0fae26b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x5555555555555555555555555555555555555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x6d99e7f6747af2cdbb5164b6dd50e40d4fde1e77) | proxy | hyperliquid | n/a | `0x6d99e7f6747af2cdbb5164b6dd50e40d4fde1e77` | ❓ Unverified |
| Proxy (impl: 0x6eda206207c09e5428f281761ddc0d300851fbc8) | proxy | hyperliquid | n/a | `0x6eda206207c09e5428f281761ddc0d300851fbc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0089d5e0d8b5a7a180760aaea714c57bee2fdd26` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x03832767bdf9a8ef007449942125ad605acfadb8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x03a918028f22d9e1473b7959c927ad7425a45c7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x093de46c90bea4a730b1914748cc43d909b53661` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0983709e160cdc181df6073fe226e1b5d911563f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0abe69f24b22b82101d340680b07bb4298f80492` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0b7ce14cdc2b19e9b680dd1491350e1ccf34c9fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x19967b036baee9ae0a71e9b8611df8f1d23ccf6e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x229eb91a8da36d5f13cc1353bfa8d97758652a06` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x26d71a14662b9991fa54da88175cbe67d7a7ad9d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2b9a422fbff8fa7a72a1e36ab969af6c64cdce63` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2bef84cc99a6eed7853587b49e14ae9a112898c6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2e9031a8f2db201c242892c85fc6af8ee418e903` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x315092caf60b49d3c0d7b828762200bab2a5c30f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x324126250aae1572cb6649e3bec9142c2b7aa87b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x332d883b1736eb36fd187e6944dec888caa07558` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x35b2b5bbd27bfc4d65d69d8914f0c2646b85b226` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x38e3055f549167f298fbdb4fc28baed7bb9f0f18` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3f8f8284c383240ff80bfdc4e0b488e67b86effb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4a6907ae3c5bbcc54829fe64ba29ddb1a59c8e98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4ef4d520d0ca79a401a30e86ca9239ddc77b32f1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4f07dee7972f03dcb3ca097b0d8da205783f33ae` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51b77dae2bf04fe3e4e045ab9a5f8e30bc645e71` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x51bafe2054aeaa7291946b03dba17eb275151563` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x540a32ff49910bc0440713c2b1302f6849b2df74` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x56dee154ea6cd473ed76353f4045e92a5d44bb15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c523a1cd987181ca86f4e20aefa8a961cdeecd9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5f4f176e94320456f7b30e9419321d87f6dadea9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x604aace7c6171ee84113055e9a1d23dfcb86819a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x62046d9db4c25e92ed54e58d2c7a941843d889e4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6566202ef5bcb9848e2f4ab4cbe530c036a86a16` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x657647c41954a4aa30181d339f3240b21f60b1c8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x66e96c65bea6dc3e4c60f5d65a626e9decd0315a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x69ebc72344c8edc526d8a634e488cae682e93894` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6d315cd2a69ba2152a0ce945353179470c7f86a9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x70f57e2bf32632556c88f4f43c233c7a0f2a8d65` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x724412c00059bf7d6ee7d4a1d0d5cd4de3ea1c48` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x744c89b7b7f8cb1e955b1dcd842a5378d75c96dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x750db56b72bd932edf40d9206883d3962177b358` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x77b9e0551f8d87234fd9b6d30120128a465f55ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7ba2cfdfe0546dd3dffd465cf4ef78341c46d82a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7c2025af257d29fce61310d2b3d3a1541b8b7869` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x87d658dba144f60d0c38b998e4572a1eeea530b8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8e9fa9b03fd51781f6eaa7217fee3f05b13d2627` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9f35ae076010d7c3ba8602c4e9644ccc1576e28e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa3414d60c543732f1df893def045df22a05978e3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa7551a135f48832e205ca9dd622bee2ca0d017f5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xad0d7dc2ba4e8e9a84a1202a832b2917f1cb10ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae22a0f9361e5a02a76511aeabbadcce719bbf7d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xae3712dbf9847972b4f652c79373fb8d57e75e61` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb4610edafa43e37110d9b64d8ea5e58024b222e0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb583880c52aca242d04e7c626385d21c07dcad46` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb90c1c17de3d19138bc90e57c48890103cbc82a6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbbaf1c75b2e7eddb367a258ce99202d80a79fa14` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbd90f3f9e3538bf55fec5f935498298896a64353` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc3f84568e9c8e5aac009e49fa7f0363ff676365b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6bcfbcb67236d4c28ead502e2a0778bc5a0781c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc7a0ec2560bc8738c63df111c1afe090fae39646` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc8daa255d384a228eab2cb1200863221c499babd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcba9819563d6e361c5515ed285db82f3400dcc20` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcbbdffcd15d862d6c8793b51b775e81e8e87711e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd064afca46aa75d748e5757c84b26518c9a9c9a3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd1c5178fef74dc6ed30c639a03edc607639b7bec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd461d059a7acec291b87d49a7bbf9ea05d1f6d63` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd86d0f9419ffe3c81daa7621ec1809127e7da315` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd8b5ba80d39eb0663a570a0f5f02e4a5ad3ccd4d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd9ebc74d123d451f58c9e38af48baa716ee8896c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdfc8be0ad2171adece51272bc8bdcfc6088ae5ba` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe1c7c2779189ef8a862e293ac96b9b77913958a9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe289f20bdd8b55ee494aa240ed47b5d8f7b7539a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe40b0113d4b36d6170cb7cdb036540e2b2d4b009` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea92ebb37298131988b343adfe349faef24c814f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xead2627da15cc850d9aaed8cdd6e5055f67c56dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xedc68b21a42c12d311b2ddbb1833e12d250215df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xefabeb7a19bb848b359e5dd5a63b1a634aafd229` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf535d7406baf7322171142bb165643821cab01fe` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf56c59e9eabecaaf17e7e9b94f858e46816439c5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf5c62d54acfdf91f6815b583090838db27696efb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf865716b90f09268ff12b6b620e14bec390b8139` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa052faee11f109eaa5196c0936040c55b17aa03` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa84d18b592b9d25ba7623a6ea772f96cf2081f7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfa909ccdd144f6206e3826c1add67c9ecf32c18d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfb04f2679962484ef7bcec75598e169888a67fbb` | ❓ Unverified |

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
| hyperliquid | [`0xe8571fd6629da6e488f7bbd83e729c20fa9b97b4`](./contracts/hyperliquid-999/0xe8571fd6629da6e488f7bbd83e729c20fa9b97b4/) | HuskeyInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa19ea099afed76d1cf5f84c6c863365e5798a7ca`](./contracts/hyperliquid-999/0xa19ea099afed76d1cf5f84c6c863365e5798a7ca/) | HyperswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | HyperswapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x09109a5c4bdb616b7fc6d9f89d780a901e77162a`](./contracts/hyperliquid-999/0x09109a5c4bdb616b7fc6d9f89d780a901e77162a/) | HyperswapV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x337b56d87a6185cd46af3ac2cdf03cbc37070c30`](./contracts/hyperliquid-999/0x337b56d87a6185cd46af3ac2cdf03cbc37070c30/) | HyperswapV3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xec8f3d08dd762e935fb914bd2b2e788e5e423516`](./contracts/hyperliquid-999/0xec8f3d08dd762e935fb914bd2b2e788e5e423516/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4e2960a8cd19b467b82d26d83facb0fae26b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5555555555555555555555555555555555555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | WHYPE9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
