# Agentic Audit Brief: Wing Finance

⚠️ Lifecycle status: DECLINING - TVL changed 0.6% over 90 days

## Project Overview

- Project: Wing Finance (`wing-finance`)
- Website: [https://wing.finance](https://wing.finance)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-11T11:59:12.025Z
- Pipeline run: v2-pipeline-2026-06-11-9658c2-d9fc
- Chains: bsc, ethereum, klaytn
- Contract surface: 179 unique implementations (198 raw deployments)
- DeFi Llama TVL: $27,113,965.22
- On-chain TVL (included contracts): $20,266,638.25
- TVL by chain: Ethereum $20,266,638.25

## Project Description

Wing Finance is a credit-based cross-chain DeFi lending platform for supplying and borrowing crypto assets. Compound protocol contracts and balances should be treated only as external integrations or underlyings unless project-specific documentation or verified deployer evidence proves Wing ownership.

### Architecture

The Wing Token family provides the governance token used by the Governance Accounts family to manage protocol parameters and treasury. The Wing Finance lending market relies on the governance system for upgrades and parameter changes, and may distribute WING tokens as incentives.

## Audit Coverage Summary

- Verified implementations audited: 0/13 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 2
- Unverified implementations: 166
- Unique implementations: 179
- Raw deployments: 198
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $20,266,638.25
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $20,266,638.25 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CErc20Delegate | token | ethereum | 2 deployments: ethereum [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/); ethereum `0x70e36f...43e8e4` | ⚠️ Unaudited |
| CErc20 | token | ethereum | [`0x39aa39...5e7563`](./contracts/ethereum-1/0x39aa39c021dfbae8fac545936693ac917d5e7563/) | ⚠️ Unaudited |
| ERC20Template | token | ethereum | [`0xdb0f18...a86a1a`](./contracts/ethereum-1/0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a/) | ⚠️ Unaudited |
| AirdropDistribution | operational_periphery | ethereum | 2 deployments: ethereum [`0xa48f90...3897bd`](./contracts/ethereum-1/0xa48f90ea06a2c9d9a86067504fde2b8f1f3897bd/); ethereum `0xe783e7...6df886` | ⚠️ Unaudited |
| BendProxyAdmin | governance | ethereum | [`0x92a28f...13dbdc`](./contracts/ethereum-1/0x92a28fd877daf3a9f13c64e8d855279c9f13dbdc/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | 2 deployments: bsc [`0x3cb737...f1f969`](./contracts/bsc-56/0x3cb7378565718c64ab86970802140cc48ef1f969/); bsc `0xdfebae...0c3817` | ⚠️ Unaudited |
| BNFTRegistry | registry | ethereum | 2 deployments: ethereum [`0xbd1df6...e534a1`](./contracts/ethereum-1/0xbd1df6a8da9983578d6f0aaf2af4c9f564e534a1/); ethereum `0xed3eb0...20a6fd` | ⚠️ Unaudited |
| CEther | unknown | ethereum | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| LockProxy | unknown | ethereum | [`0x250e76...4cc906`](./contracts/ethereum-1/0x250e76987d838a75310c34bf422ea9f1ac4cc906/) | ⚠️ Unaudited |
| OSWAP | unknown | ethereum | [`0xe9b0db...95bcab`](./contracts/ethereum-1/0xe9b0db26a0085e5119757a5179a499abf595bcab/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x3d5754...e1dce9`](./contracts/ethereum-1/0x3d5754ebbf1220dac838d02fcdcfe729dee1dce9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BNFTRegistry | registry | ethereum | 8 deployments: ethereum [`0x11dd0d...5a9768`](./contracts/ethereum-1/0x11dd0d4a92d34ae3cdcd56998d68884d225a9768/); ethereum `0x3c3e28...40f2b1`; ethereum `0x452393...2519af`; ethereum `0x5304e9...05fadb`; ethereum `0x750b98...486bde`; ethereum `0xbb8166...bc7b24`; ethereum `0xeb9174...a9d6f1`; ethereum `0xf804ba...fa0445` | ⚠️ Unaudited (bytecode match) |
| TransparentUpgradeableProxy | proxy | ethereum | 9 deployments: ethereum [`0x1b5538...b44e5c`](./contracts/ethereum-1/0x1b553878f0ee707c59c140940be3b41b5bb44e5c/); ethereum `0x2103e3...25f13f`; ethereum `0x544189...443380`; ethereum `0x6f9e94...7ffc95`; ethereum `0x7b7c82...251ebb`; ethereum `0xa43a62...1c92ee`; ethereum `0xbebaad...491e0d`; ethereum `0xca04b6...348a61`; ethereum `0xcc80b8...dbde1c` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (166)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x120af5748207161cc539ee5878fef9e3a12ad11a) | proxy | bsc | `0xbc1109...2b224b` | ❓ Unverified |
| Proxy (impl: 0x17afa1eb1feede3ed791e1b5c4b32b544e6cbc0b) | proxy | bsc | `0x49620e...e60a69` | ❓ Unverified |
| Proxy (impl: 0x3c22f604cc8b422f43beca8d8cdef9922b96f454) | proxy | bsc | `0x65d999...433788` | ❓ Unverified |
| Proxy (impl: 0x3e7a502aa00317b470108ab1773289f57b487ed9) | proxy | ethereum | `0x2f9fa6...6f12c9` | ❓ Unverified |
| Proxy (impl: 0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9) | proxy | ethereum | `0x085552...f21989` | ❓ Unverified |
| Proxy (impl: 0x8e1c20f6a4b1756358d1d8f961b60fa458d55da9) | proxy | ethereum | `0xe4e525...27668b` | ❓ Unverified |
| Proxy (impl: 0xaf8ca43e6f422f06c2f2c9fecfb09035d70858e3) | proxy | ethereum | `0x091806...10ab56` | ❓ Unverified |
| Proxy (impl: 0xfdef1ab044b69785ae57be3395afc837efb07440) | proxy | ethereum | `0x0b3497...a9cecf` | ❓ Unverified |
| Proxy (impl: 0xfdef1ab044b69785ae57be3395afc837efb07440) | proxy | ethereum | `0x12ee9b...a066a4` | ❓ Unverified |
| Proxy (impl: 0xfdef1ab044b69785ae57be3395afc837efb07440) | proxy | ethereum | `0x3c22f6...96f454` | ❓ Unverified |
| Proxy (impl: 0xfdef1ab044b69785ae57be3395afc837efb07440) | proxy | ethereum | `0x47dac5...7f33db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x00e0a0...427c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03799d...2a4c99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x05a431...86e6b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x06c7b7...0d3ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x087c44...ae3199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08fa91...266086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a7058...eb894f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ba412...c781e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0e3ea0...59a711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1022d3...a5493e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x15595b...9478ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x17c0fa...52d3ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d4717...b74e1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x207fe8...c51f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2255e3...19e79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x22ada8...c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2437bb...bf21de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x252a7a...4f286c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2c4206...619f95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30061d...cb6df7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x304395...6dff98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x363838...6ee535` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x381225...e92503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d732a...fb43e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3db35c...936552` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x409b55...ad9d0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x411cb0...6a0b55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x433b57...895d4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x454f7b...19431d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47ddda...e801ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x49831f...7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e0530...b9b76e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ebb34...d3572a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f24ec...3fcdb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4fa242...c0afe4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x519020...596b68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53a13a...173bc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x53c5f7...f16728` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5409ff...f361f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54a69e...7213da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5577d3...738b93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5b433b...2d45d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c1bbf...f7aee5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e5003...433047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x620600...2894bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x634459...e848e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63644b...c0facb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6482d3...42e4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64ef12...c64b8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x65d999...433788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x674090...af23e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6a4c89...26f35c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d5058...ace36f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x729ef9...db6153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7300a4...3ecd50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x732771...cc0b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74e104...53f88f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77b3e3...5fc3f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bb823...cf6f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c7cb2...41142c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84815a...70445e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85ed5c...9d7dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8815e4...451ec6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dac0a...d222be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8dd5d5...e02869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8de319...90a41f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e1c20...d55da9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ea0c1...a2298e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f7535...56140c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9385fe...4ecee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x956eb7...aadf4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x968783...2dd486` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98fa88...dfe613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9bf292...5d76c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d5f04...1b43e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f895e...fd309d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa66fc8...b80c46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6b7fa...bb8b40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa7e576...28e071` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabcad7...812948` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabdead...7e9aff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xacbddf...bdcd8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xace336...12d40d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xafa9c4...7e8855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb2265a...a8bace` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb51d7a...71a724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb936e2...19b28c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb86f6...e8714f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb9de9...953fab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbf532...970f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc1109...2b224b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc6785...5dc12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbde7da...c05051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbeb5bc...09f0da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbee0e2...53e390` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc14893...bb73f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6061c...4b72c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc626be...9ab079` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc87578...4ea38c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc91857...e8e74d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb46c5...c727c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0fd93...76b22a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd114e3...ecdeda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd63284...0efcad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6701b...454afe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6c64e...5233f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd93f4c...eda796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb79f1...8a3b89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe014b8...ef61b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe21b61...0b51ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe2a1d3...e897e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe69762...014713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6dcf2...e15d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe7604d...4e24a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe8db15...18cb23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb063e...aa7ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xece74c...68ec4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed38db...a13d49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef40fd...d239ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf04d66...c00c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf14da7...40a751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf19923...911ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf19944...f6fb69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1f4a5...34d04d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5fbbd...92cf0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8e8dc...3e78ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa02a5...93a01c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfaaeaf...895c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfdef1a...b07440` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x120af5...2ad11a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x206e17...447a0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x22ada8...c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x252a7a...4f286c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x30061d...cb6df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c22f6...96f454` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3c43b7...731136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49831f...7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4ebb34...d3572a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5409ff...f361f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5e5003...433047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6575cf...98fc81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x683f5a...df7b96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6c75b6...cbea26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x730c1b...5e9076` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xab96cb...4f926f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb51701...4e2770` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb51d7a...71a724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd8f29...737cfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdf69e8...1d3d7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe21b61...0b51ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xef40fd...d239ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf0ee3d...6aa916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf78274...cefa34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xfabf6e...0b8718` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x7a47ab...c0e7d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [The WING protocol has been reviewed & audited by [**BEOSIN**]()**.**](https://lianantech.com/) | BEOSIN | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [The Wing Flash Pool (EVM) has been reviewed & audited by [**PeckShield**]().](https://peckshield.com/en) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/) | CErc20Delegate | token | $11,358,745.73 | Verified native implementation with $11,358,745.73 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39aa39...5e7563`](./contracts/ethereum-1/0x39aa39c021dfbae8fac545936693ac917d5e7563/) | CErc20 | token | $8,743,252.18 | Verified native implementation with $8,743,252.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdb0f18...a86a1a`](./contracts/ethereum-1/0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a/) | ERC20Template | token | $164,640.34 | Verified native implementation with $164,640.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa48f90...3897bd`](./contracts/ethereum-1/0xa48f90ea06a2c9d9a86067504fde2b8f1f3897bd/) | AirdropDistribution | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92a28f...13dbdc`](./contracts/ethereum-1/0x92a28fd877daf3a9f13c64e8d855279c9f13dbdc/) | BendProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3cb737...f1f969`](./contracts/bsc-56/0x3cb7378565718c64ab86970802140cc48ef1f969/) | BEP20TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd1df6...e534a1`](./contracts/ethereum-1/0xbd1df6a8da9983578d6f0aaf2af4c9f564e534a1/) | BNFTRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 166 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11717] The WING protocol has been reviewed & audited by [**BEOSIN**]()**.**
- [11718] The Wing Flash Pool (EVM) has been reviewed & audited by [**PeckShield**]().

Fork inheritance lineage and inherited audits are included when available.
