# Agentic Audit Brief: Wing Finance

## Project Overview

- Project: Wing Finance (`wing-finance`)
- Website: [https://wing.finance](https://wing.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:47.806Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc, ethereum, klaytn
- Contract surface: 171 unique implementations (196 raw deployments)
- DeFi Llama TVL: $25,592,668.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 34 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 21 common project-authored base contract(s) (ctoken, exponential, carefulmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 241; live-surface contracts included: 196 (22 live, 174 unknown).
- Excluded by liveness: 45 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 171 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 160
- Unique implementations: 171
- Raw deployments: 196
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CCompLikeDelegate | unknown | ethereum | n/a | [`0xa18498...ae10e0`](./contracts/ethereum-1/0xa1849880593e96d2f7df77d0d38a7f2372ae10e0/) | ⚠️ Unaudited |
| CErc20 | unknown | ethereum | n/a | 7 deployments: ethereum [`0x158079...ac95c1`](./contracts/ethereum-1/0x158079ee67fce2f58472a96584a73c7ab9ac95c1/); ethereum `0x39aa39...5e7563`; ethereum `0x6c8c6b...d90e4e`; ethereum `0xa4c993...eecd47`; ethereum `0xb3319f...66d407`; ethereum `0xc11b12...a3a7f4`; ethereum `0xf5dce5...c444dc` | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | n/a | 2 deployments: ethereum [`0x5d3a53...8e3643`](./contracts/ethereum-1/0x5d3a536e4d6dbd6114cc1ead35777bab948e3643/); ethereum `0x70e36f...43e8e4` | ⚠️ Unaudited |
| CErc20Delegate | unknown | ethereum | n/a | [`0x99ee77...d521ec`](./contracts/ethereum-1/0x99ee778b9a6205657dd03b2b91415c8646d521ec/) | ⚠️ Unaudited |
| CEther | unknown | ethereum | n/a | [`0x4ddc2d...270ed5`](./contracts/ethereum-1/0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 6 deployments: ethereum [`0x178053...63df29`](./contracts/ethereum-1/0x178053c06006e67e09879c09ff012ff9d263df29/); ethereum `0x62f18c...bb8fcc`; ethereum `0x707b50...a30607`; ethereum `0x7b5e35...3c113c`; ethereum `0xf592ef...56132c`; ethereum `0xf88c7e...6b0be0` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x3d9819...c9cd3b`](./contracts/ethereum-1/0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b/) | ⚠️ Unaudited |
| ComptrollerSweeper | unknown | ethereum | n/a | [`0xff3c81...62df82`](./contracts/ethereum-1/0xff3c813559127d60da732a0e8ec836f4c162df82/) | ⚠️ Unaudited |
| ERC20Template | token | ethereum | n/a | [`0xdb0f18...a86a1a`](./contracts/ethereum-1/0xdb0f18081b505a7de20b18ac41856bcb4ba86a1a/) | ⚠️ Unaudited |
| NFTOracle | unknown | ethereum | n/a | [`0x452393...2519af`](./contracts/ethereum-1/0x45239322a846578294eb9b2155d5cdb98d2519af/) | ⚠️ Unaudited |
| pONT | unknown | ethereum | n/a | [`0xcb46c5...c727c2`](./contracts/ethereum-1/0xcb46c550539ac3db72dc7af7c89b11c306c727c2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (160)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BNFTRegistry | unknown | ethereum | n/a | `0x11dd0d...5a9768` | ❓ Unverified |
| Proxy (impl: 0x3e7a502aa00317b470108ab1773289f57b487ed9) | proxy | ethereum | n/a | `0x2f9fa6...6f12c9` | ❓ Unverified |
| Proxy (impl: 0x4f24ec178c862497aa4519c18f9462c8dc3fcdb9) | unknown | ethereum | n/a | 2 deployments: ethereum `0x085552...f21989`; ethereum `0x4f24ec...3fcdb9` | ❓ Unverified |
| Proxy (impl: 0x84815a3738aef9aa81d7bc3a6dbfa8d26970445e) | unknown | ethereum | n/a | 2 deployments: ethereum `0x5304e9...05fadb`; ethereum `0x84815a...70445e` | ❓ Unverified |
| Proxy (impl: 0xaf8ca43e6f422f06c2f2c9fecfb09035d70858e3) | proxy | ethereum | n/a | `0x091806...10ab56` | ❓ Unverified |
| Proxy (impl: 0xfdef1ab044b69785ae57be3395afc837efb07440) | unknown | ethereum | n/a | 5 deployments: ethereum `0x0b3497...a9cecf`; ethereum `0x12ee9b...a066a4`; ethereum `0x3c22f6...96f454`; ethereum `0x47dac5...7f33db`; ethereum `0xfdef1a...b07440` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00e0a0...427c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03799d...2a4c99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05a431...86e6b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06c7b7...0d3ee9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x087c44...ae3199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08fa91...266086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a7058...eb894f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ba412...c781e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e3ea0...59a711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1022d3...a5493e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15595b...9478ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17c0fa...52d3ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d4717...b74e1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x207fe8...c51f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2255e3...19e79a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22ada8...c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2437bb...bf21de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x252a7a...4f286c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c4206...619f95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30061d...cb6df7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x304395...6dff98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x363838...6ee535` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x381225...e92503` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d732a...fb43e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x3db35c...936552`; ethereum `0x750b98...486bde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x409b55...ad9d0b`; ethereum `0xbb8166...bc7b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x411cb0...6a0b55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x433b57...895d4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x454f7b...19431d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47ddda...e801ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49831f...7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e0530...b9b76e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ebb34...d3572a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fa242...c0afe4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x519020...596b68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53a13a...173bc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53c5f7...f16728` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5409ff...f361f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54a69e...7213da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5577d3...738b93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b433b...2d45d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c1bbf...f7aee5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e5003...433047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x620600...2894bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x634459...e848e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63644b...c0facb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6482d3...42e4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64ef12...c64b8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65d999...433788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x674090...af23e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a4c89...26f35c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5058...ace36f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x729ef9...db6153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7300a4...3ecd50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x732771...cc0b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74e104...53f88f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77b3e3...5fc3f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bb823...cf6f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c7cb2...41142c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85ed5c...9d7dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8815e4...451ec6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dac0a...d222be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dd5d5...e02869` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8de319...90a41f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x8e1c20...d55da9`; ethereum `0xe4e525...27668b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ea0c1...a2298e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f7535...56140c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9385fe...4ecee7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x956eb7...aadf4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x968783...2dd486`; ethereum `0xf804ba...fa0445` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98fa88...dfe613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bf292...5d76c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d5f04...1b43e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f895e...fd309d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa66fc8...b80c46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6b7fa...bb8b40` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7e576...28e071` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabcad7...812948` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabdead...7e9aff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacbddf...bdcd8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xace336...12d40d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafa9c4...7e8855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2265a...a8bace` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb51d7a...71a724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb936e2...19b28c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb86f6...e8714f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb9de9...953fab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbf532...970f78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc1109...2b224b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc6785...5dc12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbde7da...c05051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeb5bc...09f0da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbee0e2...53e390` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc14893...bb73f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6061c...4b72c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc626be...9ab079` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc87578...4ea38c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc91857...e8e74d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0fd93...76b22a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd114e3...ecdeda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd63284...0efcad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6701b...454afe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6c64e...5233f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd93f4c...eda796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb79f1...8a3b89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe014b8...ef61b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe21b61...0b51ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2a1d3...e897e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe69762...014713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6dcf2...e15d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7604d...4e24a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8db15...18cb23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb063e...aa7ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xece74c...68ec4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed38db...a13d49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef40fd...d239ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf04d66...c00c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf14da7...40a751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf19923...911ffd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf19944...f6fb69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1f4a5...34d04d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5fbbd...92cf0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e8dc...3e78ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa02a5...93a01c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfaaeaf...895c44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x120af5...2ad11a`; bsc `0xbc1109...2b224b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x17afa1...6cbc0b`; bsc `0x49620e...e60a69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x206e17...447a0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22ada8...c7e28b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252a7a...4f286c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30061d...cb6df7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x3c22f6...96f454`; bsc `0x65d999...433788` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c43b7...731136` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49831f...7ae8f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ebb34...d3572a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5409ff...f361f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e5003...433047` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6575cf...98fc81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x683f5a...df7b96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c75b6...cbea26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x730c1b...5e9076` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ab3a7...7db84f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8dfb95...80f549` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab96cb...4f926f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb51701...4e2770` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb51d7a...71a724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd8f29...737cfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf69e8...1d3d7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe21b61...0b51ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xef40fd...d239ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0ee3d...6aa916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf78274...cefa34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfabf6e...0b8718` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7a47ab...c0e7d4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [lianantech.com](https://lianantech.com/) | BEOSIN | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [peckshield.com/en](https://peckshield.com/en) | PeckShield | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 171 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11717] lianantech.com
- [11718] peckshield.com/en

Fork inheritance lineage and inherited audits are included when available.
