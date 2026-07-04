# Agentic Audit Brief: Blast L2

⚠️ Lifecycle status: DECLINING - TVL dropped 38.8% over 90 days

## Project Overview

- Project: Blast L2 (`blast-l2`)
- Website: [https://blast.io/](https://blast.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:07.568Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: blast, ethereum
- Contract surface: 241 unique implementations (246 raw deployments)
- DeFi Llama TVL: $47,965,904.00
- On-chain TVL (included contracts): $569.61
- TVL by chain: Blast $569.61

## Project Description

Canonical Bridge. Structurally: 83 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 9 common project-authored base contract(s) (common, semver, libnote). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 390; live-surface contracts included: 246 (41 live, 205 unknown).
- Excluded by liveness: 144 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 23/27 (85.2%)
- Deployed-live implementations: 36 of 241 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 25/36
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 205
- Unique implementations: 241
- Raw deployments: 246
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $569.61
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 11 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 25 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 85.2% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $569.61 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 25 | 69.4% | 2022-09 |
| Trail of Bits | Tier 1 | 4 | 11.1% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0xe064b5...7380c0`](./contracts/ethereum-1/0xe064b565cf2a312a3e66fe4118890583727380c0/) | ✅ Audited |
| ETHYieldManager | bridge_template | ethereum | n/a | [`0x98078d...e1c8fe`](./contracts/ethereum-1/0x98078db053902644191f93988341e31289e1c8fe/) | ✅ Audited |
| Gas | unknown | blast | n/a | [`0x430000...000001`](./contracts/blast-81457/0x4300000000000000000000000000000000000001/) | ✅ Audited |
| Insurance | unknown | ethereum | n/a | [`0xbbe2cd...5fbba6`](./contracts/ethereum-1/0xbbe2cd60bd30ef2aacefd74c3199282ee35fbba6/) | ✅ Audited |
| Insurance | unknown | ethereum | n/a | [`0xcff70d...6ff873`](./contracts/ethereum-1/0xcff70d7f37b1ebee89c08e485f08acab5f6ff873/) | ✅ Audited |
| L1BlastBridge | bridge_template | ethereum | n/a | [`0x3a05e5...a49115`](./contracts/ethereum-1/0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115/) | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x5d4472...a8e9d0`](./contracts/ethereum-1/0x5d4472f31bd9385709ec61305afc749f0fa8e9d0/) | ✅ Audited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0xa45a0c...9c8975`](./contracts/ethereum-1/0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975/) | ✅ Audited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x697402...bfc524`](./contracts/ethereum-1/0x697402166fbf2f22e970df8a6486ef171dbfc524/) | ✅ Audited |
| L2BlastBridge | operational_periphery | blast | n/a | [`0x430000...000005`](./contracts/blast-81457/0x4300000000000000000000000000000000000005/) | ✅ Audited |
| L2CrossDomainMessenger | unknown | blast | n/a | [`0x420000...000007`](./contracts/blast-81457/0x4200000000000000000000000000000000000007/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x826d1b...215c76`](./contracts/ethereum-1/0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76/) | ✅ Audited |
| L2StandardBridge | operational_periphery | blast | n/a | [`0x420000...000010`](./contracts/blast-81457/0x4200000000000000000000000000000000000010/) | ✅ Audited |
| L2ToL1MessagePasser | unknown | blast | n/a | [`0x420000...000016`](./contracts/blast-81457/0x4200000000000000000000000000000000000016/) | ✅ Audited |
| OptimismMintableERC20 | bridge_template | blast | n/a | [`0xf7bc58...1d2692`](./contracts/blast-81457/0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692/) | ✅ Audited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x6b916d...564847`](./contracts/ethereum-1/0x6b916dcca661d23794e78509723a6f4348564847/) | ✅ Audited |
| OptimismMintableERC20Factory | registry | blast | n/a | [`0x420000...000012`](./contracts/blast-81457/0x4200000000000000000000000000000000000012/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0x0ec68c...0db6cb`](./contracts/ethereum-1/0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb/) | ✅ Audited |
| ProtocolVersions | unknown | ethereum | n/a | [`0x2241b3...35e5f7`](./contracts/ethereum-1/0x2241b38558957060c0fe9760794f1b49c535e5f7/) | ✅ Audited |
| Proxy | proxy | blast | n/a | [`0x420000...000015`](./contracts/blast-81457/0x4200000000000000000000000000000000000015/) | ✅ Audited |
| Proxy | proxy | blast | n/a | [`0x420000...000023`](./contracts/blast-81457/0x4200000000000000000000000000000000000023/) | ✅ Audited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x364289...3ce883`](./contracts/ethereum-1/0x364289230b8cc7d9120ef962af37ebcfe23ce883/) | ✅ Audited |
| Shares | unknown | blast | n/a | [`0x430000...000000`](./contracts/blast-81457/0x4300000000000000000000000000000000000000/) | ✅ Audited |
| SystemConfig | unknown | ethereum | n/a | [`0x5531dc...f805a9`](./contracts/ethereum-1/0x5531dcff39ec1ec727c4c5d2fc49835368f805a9/) | ✅ Audited |
| USDYieldManager | bridge_template | ethereum | n/a | [`0xa23028...828438`](./contracts/ethereum-1/0xa230285d5683c74935ad14c446e137c8c8828438/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceToken | token | blast | n/a | [`0xb1a570...88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d8...e9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/); blast [`0xba5ed0...8ba5ed`](./contracts/blast-81457/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DsrManager | governance | ethereum | n/a | [`0x373238...081ddb`](./contracts/ethereum-1/0x373238337bfe1146fb49989fc222523f83081ddb/) | ⚠️ Unaudited |
| GemJoin | unknown | ethereum | n/a | [`0x2f0b23...6b042a`](./contracts/ethereum-1/0x2f0b23f53734252bda2277357e97e1517d6b042a/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x4f72ee...c58b05`](./contracts/ethereum-1/0x4f72ee94b8ba3be7f886565d3583a7f636c58b05/); ethereum `0x67ca7c...af608c` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | ethereum | n/a | 3 deployments: ethereum [`0x000000...439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/); ethereum `0xcfa3a7...315196`; blast [`0x000000...439497`](./contracts/blast-81457/0x0000000000ffe8b47b3e2130213b802212439497/) | ⚠️ Unaudited |
| LaunchBridge | operational_periphery | ethereum | n/a | [`0x5f6ae0...1da47d`](./contracts/ethereum-1/0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d/) | ⚠️ Unaudited |
| MintManager | unknown | blast | n/a | [`0xca2e5b...44af4f`](./contracts/blast-81457/0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0x5e227a...c17796`](./contracts/ethereum-1/0x5e227ad1969ea493b43f840cff78d08a6fc17796/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | 2 deployments: ethereum [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/); blast [`0xca11bd...76ca11`](./contracts/blast-81457/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (205)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x004b75...e25480` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00efe3...adf889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01792e...cb8cd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0256c2...599ad5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02b3fa...404a83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x034f64...ac780e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03b030...cfbd74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03cba5...fcec62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04ad28...a5b796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04e76b...de4a6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x055353...e0d6e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x056032...44d2ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0620d8...f68204` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x065b86...f3c213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06895e...0865c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0740c7...e575fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0780e9...078aab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07cc6a...89a2c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x082c9b...acc306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a8ec3...2e2237` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0aa2eb...89d356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c6032...26cc9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ca1c8...5f5ca9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d6291...64619f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1152f2...ce23e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11539d...264205` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x117b90...48296c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15d786...1a6ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1610cc...44002e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16f4c0...8af74d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1765d5...638c6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1863c0...c052f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1978da...b77a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19a361...30fc3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a5ee7...3427f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fb6e6...35a8b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x201c00...e6e85b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2099bc...ac5078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x210851...90c23f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21f33c...29d08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d94d...c09e95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24fe4a...3991dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2546c3...aa45b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x256902...a85266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26fad8...909d80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2955e2...da3264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29bd95...50d268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a35fa...6b4a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a3b28...68f93d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a7dec...7d08c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d76bb...5bedd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e278c...cd372d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fadcf...834c8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x320216...738817` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x322932...41d328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3417a5...c1ef82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34247b...f564f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36bccd...59f507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3778e3...9cb99d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c7926...2f8338` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3deeb4...c9c274` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x403689...d788e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4249f9...17c51e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x428b70...39f385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4447a2...e5e577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45f0a9...945cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483ce5...02aae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aa052...5308ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dbe5f...6d9c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f0232...5f8674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f8834...e80458` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53e5a0...a65daa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57843b...ed077c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5887dc...129547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x599dbc...be11fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b0c7c...cf7e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b79ee...edd190` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b9579...646615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x610165...afeaae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6157f6...470aa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x618b9f...b7d3af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61cc20...666e34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x624f4e...840c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6374dc...88b94d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x638242...301f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63a4b9...7af934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x656540...efa7bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68322c...ba423b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x683ee6...a81adf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6897ec...aff0f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x697f01...5f616d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69be6c...35fb59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a94dc...99681e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b8721...7f0553` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c42e6...edd885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6df6b0...4d5caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e2981...3fd20d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e38f5...ccb3bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x701311...914e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x718df1...d7322f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72f7da...3fe0fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x745669...f61c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75a6a8...28d501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77bef2...7348e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78604e...e9f8b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a0d94...406d12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7af1cf...a8de22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b21c3...e031db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x812325...841ec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81576c...0922c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x822d49...c06557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8269f0...f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842c99...2e81c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8487f0...722a22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x849186...cfc056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f2b4...a4ee91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x877fd5...8c3ec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x878228...8956ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d7b9...f55617` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b50dd...931c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c9edf...ab0e2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cc001...1f7273` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cd969...b039be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901473...403961` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90365c...c6d906` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90bb56...c2f8bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x920f55...68ce06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x942e30...7ea1a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x962d55...9aa468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x966ab3...8d3ada` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c226c...b001e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c4adf...0b61bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c89c8...93a7c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d3ad1...726825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f2944...321d03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fef11...c72d32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e992...013ca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa38a89...03ec94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4b041...b99596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5a786...1facdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa80e81...e29036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa85b2a...7c36f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9ee75...c9433e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab5683...095c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf9478...cd0bb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf9993...2b0b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb45c64...c4e5fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5327f...f97ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5b06a...7c58fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5c3db...d5185a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5cca0...4daabb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb80df2...c164e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc4f05...595c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdd1af...f3621b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe23ed...7927e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe2873...565466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe3505...662f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe7e4e...86c8cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf29e4...ae301c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc41c47...4f5d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc456c0...77cb2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc687ad...da962c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc90730...2abd6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a7a6...fe632f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb0e6b...6e2288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd5c1a...6627d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcef92c...fef6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0fa7...387e08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1f8f6...054aa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd27a5f...c882e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd37572...eb4cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3abc8...a766e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59fa5...94adc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd886dc...f071af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9d327...514dd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb7d25...b4511c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc202b...80d2cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde1069...3847e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdedd12...457410` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfda04...840d0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe02db8...85b4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe32c45...e38dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5401e...478c22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f57f...65120f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe82a80...cfc169` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe865e6...a03a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8b6f2...976fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedcbe7...106b4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8f24...132c6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0ffd5...1b396a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf15ca8...af4f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf204fd...1c82fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf238e4...6e03b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf28d71...6ac226` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2fb84...73a2b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbf89b...f5d73b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcd647...3d0470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd34e2...30ba53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfdaeb1...9a91b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe622c...6eabdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff7bb1...94e392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffd852...a900cc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x13b0d8...e9bef2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4e59b4...b4956c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2020_10-Rollup-TrailOfBits.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2020_10-Rollup-TrailOfBits.pdf) | Trail of Bits | Audit | 2020-10 | stale | Direct | n/a | 0 | n/a |
| [2020_11-Dapphub-ECDSA_Wallet.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2020_11-Dapphub-ECDSA_Wallet.pdf) | Dapphub | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [2021_03-OVM_and_Rollup-OpenZeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2021_03-OVM_and_Rollup-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [2021_03-SafetyChecker-ConsenSysDiligence.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2021_03-SafetyChecker-ConsenSysDiligence.pdf) | Consensys Diligence | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [2022_05-Bedrock_Contracts-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_05-Bedrock_Contracts-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-05 | stale | Direct | contract_name | 12 | low |
| [2022_05-OpNode-TrailOfBits.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_05-OpNode-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [2022_08-Bedrock_GoLang-SigmaPrime.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_08-Bedrock_GoLang-SigmaPrime.pdf) | Sigma Prime | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [2022_09-Bedrock_and_Periphery-Zeppelin.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_09-Bedrock_and_Periphery-Zeppelin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | 23 | high |
| [2022_10-Drippie-Spearbit.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_10-Drippie-Spearbit.pdf) | Spearbit | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022_11-Invariant_Testing-TrailOfBits.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2022_11-Invariant_Testing-TrailOfBits.pdf) | Trail of Bits | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [2023_01-Bedrock_Updates-TrailOfBits.pdf](https://github.com/BLASTchain/blast/blob/master/docs/security-reviews/2023_01-Bedrock_Updates-TrailOfBits.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xb1a570...88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | GovernanceToken | token | $569.61 | Verified native implementation with $569.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xca2e5b...44af4f`](./contracts/blast-81457/0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f/) | MintManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 1 |
| standard_library | 11 |
| needs_review | 204 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, low=1
- Match method counts: extraction_exact=39

Zero-match audit list:

- [20651] 2020_10-Rollup-TrailOfBits.pdf
- [20652] 2020_11-Dapphub-ECDSA_Wallet.pdf
- [20653] 2021_03-OVM_and_Rollup-OpenZeppelin.pdf
- [20654] 2021_03-SafetyChecker-ConsenSysDiligence.pdf
- [20656] 2022_05-OpNode-TrailOfBits.pdf
- [20657] 2022_08-Bedrock_GoLang-SigmaPrime.pdf
- [20659] 2022_10-Drippie-Spearbit.pdf
- [20660] 2022_11-Invariant_Testing-TrailOfBits.pdf

Fork inheritance lineage and inherited audits are included when available.
