# Agentic Audit Brief: Shape Bridge

## Project Overview

- Project: Shape Bridge (`shape-bridge`)
- Website: [https://shape.network/bridge](https://shape.network/bridge)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.355Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 27 unique implementations (28 raw deployments)
- DeFi Llama TVL: $724,407.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 29 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 2 common project-authored base contract(s) (ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (24 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
- Deployed-live implementations: 23 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 27
- Raw deployments: 28
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0xcee784...fd7479`](./contracts/ethereum-1/0xcee78437ae9e15cee9c78e63757e0153c0fd7479/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | n/a | [`0x02987e...6222d1`](./contracts/ethereum-1/0x02987e7294379b9dda99d593b0c94c68266222d1/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0xc55f72...f3ed9b`](./contracts/ethereum-1/0xc55f722cf6e14907b844a8b8d3cfd0c04cf3ed9b/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | n/a | [`0x36b4f7...2bd706`](./contracts/ethereum-1/0x36b4f78990619fdd8f7e9cc7965326336f2bd706/) | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x2c03e8...4a5952`](./contracts/ethereum-1/0x2c03e8bf8b16af89079852be87f0e9ec674a5952/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0x575aec...0bd8b0`](./contracts/ethereum-1/0x575aecd84083f93877291901907698f7db0bd8b0/) | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | ethereum | n/a | [`0x000000...439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x2b1860...3788e3`](./contracts/ethereum-1/0x2b18602877181c3cb72c687e2a771e123a3788e3/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0xe9d3e4...9f15af`](./contracts/ethereum-1/0xe9d3e49b0636016c5fe9eaa2347948d0ba9f15af/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x62edd5...76b57b`](./contracts/ethereum-1/0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x6ef8c6...6e724d`](./contracts/ethereum-1/0x6ef8c69cfe4635d866e3e02732068022c06e724d/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0xd30c2c...e5c91f`](./contracts/ethereum-1/0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x319322...b1adc1`](./contracts/ethereum-1/0x319322906beadf69df5d4607169c63d692b1adc1/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0xeb06ff...741dd3`](./contracts/ethereum-1/0xeb06ffa16011b5628bab98e29776361c83741dd3/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0xdf6a16...448a5b` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0xa77995...a32ddd`](./contracts/ethereum-1/0xa77995e10b0a833cdd4fa414c26e869f7aa32ddd/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xfec786...1c2d57`](./contracts/ethereum-1/0xfec7865dac5139886585f03146ff61d9b31c2d57/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x11b190...db842e`](./contracts/ethereum-1/0x11b190ae661c6d6884dfee48e215691e0ddb842e/) | ⚠️ Unaudited |
| SuperchainConfig | unknown | ethereum | n/a | [`0x125664...ccde09`](./contracts/ethereum-1/0x125664bef08177ca43f6f301e63118b1e4ccde09/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | n/a | [`0xff11e4...8f7355`](./contracts/ethereum-1/0xff11e41d5c4f522e423ff6c064ff8d55af8f7355/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x000f3d...beac02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84e2fd...96467c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb7c77...df294a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-09-shapenetwork-buybackcontract-securityreview.pdf](https://raw.githubusercontent.com/trailofbits/publications/1c2295698d654066038156c206fb3dd5502fa1a5/reviews/2025-09-shapenetwork-buybackcontract-securityreview.pdf) | Trail of Bits | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-05-shapenetwork-token-securityreview.pdf](https://raw.githubusercontent.com/trailofbits/publications/1c2295698d654066038156c206fb3dd5502fa1a5/reviews/2025-05-shapenetwork-token-securityreview.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcee784...fd7479`](./contracts/ethereum-1/0xcee78437ae9e15cee9c78e63757e0153c0fd7479/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02987e...6222d1`](./contracts/ethereum-1/0x02987e7294379b9dda99d593b0c94c68266222d1/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc55f72...f3ed9b`](./contracts/ethereum-1/0xc55f722cf6e14907b844a8b8d3cfd0c04cf3ed9b/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36b4f7...2bd706`](./contracts/ethereum-1/0x36b4f78990619fdd8f7e9cc7965326336f2bd706/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c03e8...4a5952`](./contracts/ethereum-1/0x2c03e8bf8b16af89079852be87f0e9ec674a5952/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x575aec...0bd8b0`](./contracts/ethereum-1/0x575aecd84083f93877291901907698f7db0bd8b0/) | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/) | ImmutableCreate2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b1860...3788e3`](./contracts/ethereum-1/0x2b18602877181c3cb72c687e2a771e123a3788e3/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9d3e4...9f15af`](./contracts/ethereum-1/0xe9d3e49b0636016c5fe9eaa2347948d0ba9f15af/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62edd5...76b57b`](./contracts/ethereum-1/0x62edd5f4930ea92dca3fb81689bdd9b9d076b57b/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ef8c6...6e724d`](./contracts/ethereum-1/0x6ef8c69cfe4635d866e3e02732068022c06e724d/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd30c2c...e5c91f`](./contracts/ethereum-1/0xd30c2cd3cd6112e61fdfb03e4b232564d7e5c91f/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x319322...b1adc1`](./contracts/ethereum-1/0x319322906beadf69df5d4607169c63d692b1adc1/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb06ff...741dd3`](./contracts/ethereum-1/0xeb06ffa16011b5628bab98e29776361c83741dd3/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa77995...a32ddd`](./contracts/ethereum-1/0xa77995e10b0a833cdd4fa414c26e869f7aa32ddd/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x125664...ccde09`](./contracts/ethereum-1/0x125664bef08177ca43f6f301e63118b1e4ccde09/) | SuperchainConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff11e4...8f7355`](./contracts/ethereum-1/0xff11e41d5c4f522e423ff6c064ff8d55af8f7355/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11660] 2025-09-shapenetwork-buybackcontract-securityreview.pdf
- [11661] 2025-05-shapenetwork-token-securityreview.pdf

Fork inheritance lineage and inherited audits are included when available.
