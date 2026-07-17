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
| AddressManager | unknown | ethereum | n/a | [`0xe064b565cf2a312a3e66fe4118890583727380c0`](./contracts/ethereum-1/0xe064b565cf2a312a3e66fe4118890583727380c0/) | ✅ Audited |
| ETHYieldManager | bridge_template | ethereum | n/a | [`0x98078db053902644191f93988341e31289e1c8fe`](./contracts/ethereum-1/0x98078db053902644191f93988341e31289e1c8fe/) | ✅ Audited |
| Gas | unknown | blast | n/a | [`0x4300000000000000000000000000000000000001`](./contracts/blast-81457/0x4300000000000000000000000000000000000001/) | ✅ Audited |
| Insurance | unknown | ethereum | n/a | [`0xbbe2cd60bd30ef2aacefd74c3199282ee35fbba6`](./contracts/ethereum-1/0xbbe2cd60bd30ef2aacefd74c3199282ee35fbba6/) | ✅ Audited |
| Insurance | unknown | ethereum | n/a | [`0xcff70d7f37b1ebee89c08e485f08acab5f6ff873`](./contracts/ethereum-1/0xcff70d7f37b1ebee89c08e485f08acab5f6ff873/) | ✅ Audited |
| L1BlastBridge | bridge_template | ethereum | n/a | [`0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115`](./contracts/ethereum-1/0x3a05e5d33d7ab3864d53aaec93c8301c1fa49115/) | ✅ Audited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x5d4472f31bd9385709ec61305afc749f0fa8e9d0`](./contracts/ethereum-1/0x5d4472f31bd9385709ec61305afc749f0fa8e9d0/) | ✅ Audited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975`](./contracts/ethereum-1/0xa45a0c7c47db8c6e99b2d7c4939f7f7cf69c8975/) | ✅ Audited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x697402166fbf2f22e970df8a6486ef171dbfc524`](./contracts/ethereum-1/0x697402166fbf2f22e970df8a6486ef171dbfc524/) | ✅ Audited |
| L2BlastBridge | operational_periphery | blast | n/a | [`0x4300000000000000000000000000000000000005`](./contracts/blast-81457/0x4300000000000000000000000000000000000005/) | ✅ Audited |
| L2CrossDomainMessenger | unknown | blast | n/a | [`0x4200000000000000000000000000000000000007`](./contracts/blast-81457/0x4200000000000000000000000000000000000007/) | ✅ Audited |
| L2OutputOracle | operational_periphery | ethereum | n/a | [`0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76`](./contracts/ethereum-1/0x826d1b0d4111ad9146eb8941d7ca2b6a44215c76/) | ✅ Audited |
| L2StandardBridge | operational_periphery | blast | n/a | [`0x4200000000000000000000000000000000000010`](./contracts/blast-81457/0x4200000000000000000000000000000000000010/) | ✅ Audited |
| L2ToL1MessagePasser | unknown | blast | n/a | [`0x4200000000000000000000000000000000000016`](./contracts/blast-81457/0x4200000000000000000000000000000000000016/) | ✅ Audited |
| OptimismMintableERC20 | bridge_template | blast | n/a | [`0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692`](./contracts/blast-81457/0xf7bc58b8d8f97adc129cfc4c9f45ce3c0e1d2692/) | ✅ Audited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x6b916dcca661d23794e78509723a6f4348564847`](./contracts/ethereum-1/0x6b916dcca661d23794e78509723a6f4348564847/) | ✅ Audited |
| OptimismMintableERC20Factory | registry | blast | n/a | [`0x4200000000000000000000000000000000000012`](./contracts/blast-81457/0x4200000000000000000000000000000000000012/) | ✅ Audited |
| OptimismPortal | unknown | ethereum | n/a | [`0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb`](./contracts/ethereum-1/0x0ec68c5b10f21effb74f2a5c61dfe6b08c0db6cb/) | ✅ Audited |
| ProtocolVersions | unknown | ethereum | n/a | [`0x2241b38558957060c0fe9760794f1b49c535e5f7`](./contracts/ethereum-1/0x2241b38558957060c0fe9760794f1b49c535e5f7/) | ✅ Audited |
| Proxy | proxy | blast | n/a | [`0x4200000000000000000000000000000000000015`](./contracts/blast-81457/0x4200000000000000000000000000000000000015/) | ✅ Audited |
| Proxy | proxy | blast | n/a | [`0x4200000000000000000000000000000000000023`](./contracts/blast-81457/0x4200000000000000000000000000000000000023/) | ✅ Audited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x364289230b8cc7d9120ef962af37ebcfe23ce883`](./contracts/ethereum-1/0x364289230b8cc7d9120ef962af37ebcfe23ce883/) | ✅ Audited |
| Shares | unknown | blast | n/a | [`0x4300000000000000000000000000000000000000`](./contracts/blast-81457/0x4300000000000000000000000000000000000000/) | ✅ Audited |
| SystemConfig | unknown | ethereum | n/a | [`0x5531dcff39ec1ec727c4c5d2fc49835368f805a9`](./contracts/ethereum-1/0x5531dcff39ec1ec727c4c5d2fc49835368f805a9/) | ✅ Audited |
| USDYieldManager | bridge_template | ethereum | n/a | [`0xa230285d5683c74935ad14c446e137c8c8828438`](./contracts/ethereum-1/0xa230285d5683c74935ad14c446e137c8c8828438/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceToken | token | blast | n/a | [`0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | ⚠️ Unaudited |
| Create2Deployer | unknown | ethereum | n/a | [`0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2`](./contracts/ethereum-1/0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/); blast [`0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed`](./contracts/blast-81457/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| DsrManager | governance | ethereum | n/a | [`0x373238337bfe1146fb49989fc222523f83081ddb`](./contracts/ethereum-1/0x373238337bfe1146fb49989fc222523f83081ddb/) | ⚠️ Unaudited |
| GemJoin | unknown | ethereum | n/a | [`0x2f0b23f53734252bda2277357e97e1517d6b042a`](./contracts/ethereum-1/0x2f0b23f53734252bda2277357e97e1517d6b042a/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x4f72ee94b8ba3be7f886565d3583a7f636c58b05`](./contracts/ethereum-1/0x4f72ee94b8ba3be7f886565d3583a7f636c58b05/); ethereum `0x67ca7ca75b69711cfd48b44ec3f64e469baf608c` | ⚠️ Unaudited |
| ImmutableCreate2Factory | registry | ethereum | n/a | 3 deployments: ethereum [`0x0000000000ffe8b47b3e2130213b802212439497`](./contracts/ethereum-1/0x0000000000ffe8b47b3e2130213b802212439497/); ethereum `0xcfa3a7637547094ff06246817a35b8333c315196`; blast [`0x0000000000ffe8b47b3e2130213b802212439497`](./contracts/blast-81457/0x0000000000ffe8b47b3e2130213b802212439497/) | ⚠️ Unaudited |
| LaunchBridge | operational_periphery | ethereum | n/a | [`0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d`](./contracts/ethereum-1/0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d/) | ⚠️ Unaudited |
| MintManager | unknown | blast | n/a | [`0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f`](./contracts/blast-81457/0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | n/a | [`0x5e227ad1969ea493b43f840cff78d08a6fc17796`](./contracts/ethereum-1/0x5e227ad1969ea493b43f840cff78d08a6fc17796/) | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | n/a | 2 deployments: ethereum [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/); blast [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/blast-81457/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x004b750a71f1aa80150b18ecd510e6abf7e25480` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00efe35880071c16832b3ad135885e7746adf889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01792e085cd935ffcf3046ee61cd4e45c3cb8cd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0256c29e4f68dea65154e62dc098607913599ad5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02b3fa2bb8c17146187650a9879248a286404a83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x034f643a42aa11fb67f403f3f0703198d4ac780e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03b030b04ab614310f725ddb3f453fd2dacfbd74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03cba5da6c502aa574b65735a90c68a74ffcec62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04ad28c7cace4dba6ab1bb2ec6519dfae1a5b796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04e76b7d4b585bcaaef8a2f032fa479456de4a6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x055353984cd0030530efd40c62c9112f33e0d6e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0560328fdbf78edeba4ea13cfb1467e1fb44d2ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0620d80ffb33742a58639ff1daffb6969ef68204` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x065b863c43278321b6d78f19ca75c4f6d1f3c213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06895ea93547312da6a3285465f32e03c90865c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0740c777941bc338f1230471dcd69d9198e575fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0780e9d22ed8c5108f92f0384d7de0bf98078aab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07cc6a7a14275a8e78483e82976459d27e89a2c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x082c9b03a7f54aeb2c64c98f76ee3379b9acc306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a8ec3ceb616d4b99253977439c37894192e2237` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0aa2ebfeaf69aac878ebeb763d8aea93d389d356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c6032bee59b34786448d7147d3ba5138526cc9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ca1c8eb3e3bfd6cc829122478cd034bac5f5ca9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d62918a63292f38bcf516226d47002c8364619f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1152f27ec19397ccf471329f998d4c0425ce23e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11539dce2d28b4454ac7982e47e478db30264205` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x117b9083cf19296472c6e8751d3296d4ce48296c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15d786b4e2a1e05af579107834202e37c51a6ce6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1610ccaf7a5b79f0467cbe9393a3f7acc944002e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16f4c0acb65a9b9b1b98f8bad783f7ed8d8af74d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1765d5fd35ad56a60163e424fd75c1baea638c6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1863c0163bccfce8e979366f25db08f01bc052f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1978da8325a6f41a5880cf76e38cd921aeb77a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19a361b2b9a226c45b9267ccc1cb21dd5b30fc3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a5ee7c64cf874c735968e3a42fa13f1c03427f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fb6e6edb8d6a35ba137c7a96b6fd2804635a8b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x201c006c4556863533158855eca3878b28e6e85b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2099bc293bf63ce24fc606776627ba4982ac5078` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x210851bfa22af6bbc08074f5ba4ec631b690c23f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21f33c95eda474832ad977c8a497bf97ea29d08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22d94dc2cda95ae1f5ffbf7959683f9935c09e95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24fe4af7a96db316c0721be371fa1ec1d93991dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2546c3a50591b57f4fd328fc4ab10f84a9aa45b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2569023f9e39ed5987093da3b5409be363a85266` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26fad8718270a5a146d681b6570a1564ec909d80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2955e2a9a5c3d286517ca74d22a62f4f55da3264` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29bd95ccb7ec9ae1704dac0bb72dd73d0d50d268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a35fa541a8481b3a05609f01096d546c26b4a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a3b28430b7b4a8ff90072cdd7ac892fb268f93d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a7dec53b6ae8c1a48355296cd016cd7477d08c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d76bb07626b52ed16114a02e080f597c45bedd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e278c5fb9231581f4284a253cc5728b6acd372d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fadcf4cd048dd77f821434a785a892181834c8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32021687b5fa850db968769ec208f254f5738817` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x322932b118a2ef29d8eafe380dfd1b7f3c41d328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3417a5882fabcee3d1a461ef1a7b5102f8c1ef82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34247b933a0d0c4c9ddcd379f2730217a5f564f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36bccd28b0d1ea5d22685467075f9deb0f59f507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3778e388a5cf2778e0fe5fc6205738bece9cb99d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c7926b241355b66d66e4eeff2f33f452b2f8338` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3deeb4f172f9474041c25c06c5eeb25df6c9c274` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x403689148fa98a5a6fdcc0b984914ae968d788e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4249f949f7a57166bbe83dec59ddf64bea17c51e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x428b703efd0c3917ff0cd9955c60eeec7839f385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4447a29574e8ef8253fa26f04c724714c5e5e577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45f0a929889ec8cc2d5b8cd79ab55e3279945cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483ce5db3e3438e16770bd887beb39221a02aae3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aa05235b3b492e6892c7de733d372d84f5308ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dbe5f316b0694310cbcdcc7b5b20eb3ab6d9c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f0232ce5224f2d77d76051b94e0e7d7895f8674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f8834369f0767c6410034cd2f4d2bbc38e80458` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53e5a089b8d64ab328dbd16b1aa7d92642a65daa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57843b34765a9bbbe9ca4234bd4b481a53ed077c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5887dc1a04eabcfb5c8cbc9882091669af129547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x599dbc54fe460d8ac3bb571b10fe5461ddbe11fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b0c7ced5e486b8e40dd5072d8161a8061cf7e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b79eeef441c55ff53eab84530f0711ba4edd190` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b9579b9a3255f7cdebd4ae335e0707f7f646615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x610165592586dd351e124a6058542afb60afeaae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6157f64a2ceeeab76872ee384e4f26c9c8470aa4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x618b9f83e7ae7bae6ed741c585e47a203fb7d3af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61cc202c52c43d1a59c458431f5c43eae2666e34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x624f4e1548f2e725a636da71b84ce6b778840c00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6374dcfc57bfd406addb546045a1cce61288b94d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x638242bac58698f619ef4dd966689f5cd0301f12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63a4b95b50ed9fe6507002fbb45f2139137af934` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x656540aacf75b1c20da899fdf99f9a5865efa7bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68322ca1a9aeb8c1d610b5fc8a8920aa0fba423b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x683ee6fc52f014555b7d7e79d3c8984b51a81adf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6897ecc2fe455a1cf2d3763fd75e1d282caff0f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x697f01f5e10c43f13fef9eb796f7670e9f5f616d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69be6c6abb7781fa731cc2f257a748efcd35fb59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6a94dc9c2e4ae3a199d148e13682b1243999681e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b872127c273e54e847c8b67e8a8bfe07b7f0553` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c42e62af5503bffdb7fe517f160d1c3a9edd885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6df6b05d7cde27eda97abde556e03c3fb04d5caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e29817b2034862a12580908903da3c4373fd20d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e38f59445efc88916c2318743aa841b7fccb3bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7013111f9eff306fc3712f40d9642ca484914e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x718df12ebde73fb54b5946ef91c419ab56d7322f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72f7da16eafd000b65ec192f4889f141003fe0fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7456695d6904c37f9fb3ab3e088d277c00f61c58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75a6a842bbf2a23e60dd1c57694b6e0c6f28d501` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77bef2e8bb81bbc2535ae4846b225c58457348e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78604eace67744c4a19fb84a4ef42dfe06e9f8b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a0d94f55792c434d74a40883c6ed8545e406d12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7af1cf2c29629fd4072b2a0b9be41a6ae8a8de22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b21c3ffe61ce504fc2494add0447162d6e031db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8123253ed418ac5e448f33c90a606d9e02841ec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81576ca61608b9c591c7a1c279ced3b5e70922c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x822d49cc3e88897637697f0ccb569bf7acc06557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8269f07d159a5a2a39ba6b6deba0fde0d2f8bca4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842c99972150671f88fb78a95940ad9a7c2e81c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8487f0509e6d023fa2c4defcbf55e1a066722a22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8491862ae4109dfe98fc20e0dce7468e64cfc056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84f2b4648990d93c0f478d5d82d3c38d98a4ee91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x877fd5d58eed3c4804b9acd1458f0a6ee48c3ec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8782289b33361ee1e207ba667e1be61a608956ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d7b9c943220394b569bf8382609f06d9f55617` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b50dde72fa07205e0f8b9bb82b24c5efb931c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c9edffa39b7b65dee91e6bd3c7a32895dab0e2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cc0016a54fb4ce75c94339d2853f9e23d1f7273` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cd9697e7143e4d059c5e09026bdea9d59b039be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x901473b80248e284caa2f056ba6d1e37a4403961` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90365c14bd705d9115dadf1892fd3dbcfec6d906` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90bb56053ef91129f94a2888dd468e3e72c2f8bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x920f55f2b2188981a8a8965c3de0f343d668ce06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x942e30879de5bae58aba51aa38fc18c4a37ea1a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x962d55a5e43dc67b643c468b724271ca799aa468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x966ab3b8d797cb874ab94e342f75b8d6548d3ada` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c226cb68bb32a14693ac8015311513ab6b001e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c4adf4dd022e1f110ece0215b165656080b61bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c89c854f981801e50e363e0343386cfb893a7c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d3ad15b44a909d4de00a81ea8e8c7d22c726825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f2944f631db13e98a2ec0e78c60416f5f321d03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fef11c6bd14708b72fb9ce7da4af20f0bc72d32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e99254a451eced7adf11142c5c643bb8013ca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa38a892975b6c3e45190fa517c4425b45203ec94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4b041f7b7f78a3185b275628335a2bc90b99596` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5a786ef947b5c00d5fed8666c00f4aa841facdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa80e8158d69ea262c3f40e03228fd8455ae29036` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa85b2afcc7b75bd828df05346b23918f147c36f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9ee75d81d78c36c4163004e6cc7a988eec9433e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab5683e6367867729e707fdbb53a9db836095c7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf9478afb898a716e40203bdd695b3267bcd0bb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf9993f95b701d4deb4bd2e77ccfe8690a2b0b3a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb45c64311127207643913fd83516f4a089c4e5fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5327f25169fc2fea5afea721be90f3bfaf97ff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5b06a16621616875a6c2637948bf98ea57c58fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5c3db264d713f0f9675bdc5f6b7922c1cd5185a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5cca0f0b8fe5ae4a95043b713bb6e908c4daabb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb80df2bf515cbef0e62b31ba67b288fd9cc164e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc4f05709a02d134ae4c6f7c4849c18aa6595c1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdd1af032a7d3ff453c27bce27a4b432e6f3621b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe23edc9807f6cc7207120dcf2f7ecc1577927e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe28735baafd8d438cedeb671717faf661565466` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe350580fd440698dd7578c5977f73b2cc662f59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe7e4e577fa5b7907df2c6cd4ea3f23c0b86c8cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf29e40da385d83274ca3adfb5439adef7ae301c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc41c4759f67ff54c7a7314d155f40fc6504f5d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc456c0cfe0c288ffe1705896ad6cc2f9b677cb2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc687ad721f6dd1e08bf8bb1517fa95be93da962c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc907305be32123aebd8ccf1fe84791f17b2abd6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a7a6e2c27c663a40ed65b58d0e4dd69cfe632f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb0e6b2ad5f6f53157bc710d23917508da6e2288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd5c1a2423256ddc29510ed83d057de6586627d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcef92c70a2eaad20cb500e128037724462fef6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf0fa7fadcfcef8c211f73cc52eb46700a387e08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1f8f69f89bbb70a95968821d08c829959054aa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd27a5f3416d8791fc238c148c93630d9e3c882e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3757287bf2db4eaf5150299ce57061681eb4cef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3abc8238a18331763e08b2f0c8fbbd0e3a766e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59fa5bad750d78f121422cce026bb868194adc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd886dc2d36cfb6657ce70139112e9f80b0f071af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9d3274595436980ef66d714cd81d8f235514dd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb7d2557be1aaad888ba6a401adbf08f95b4511c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc202ba51f3b8f2ba1986832993af29d6980d2cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde1069b89b246201d57aa5c3143c1433733847e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdedd12bcb045c02b2fe11031c2b269bcde457410` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdfda046b60be09aeeffe15a5125606bb63840d0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe02db86b72be0d0f8da9dcf32d3cb66f1a85b4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe32c45e8312818a271c94ee9ba828ed512e38dd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5401e2658edaa2f69d737e4e3ad423baa478c22` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f57f5bf520c96f98571f910e74569ed265120f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe82a8053602180dc9ea708cee5200fd931cfc169` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe865e6e81394238f0ba5c91a1d5486e781a03a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8b6f2f91aa88f1b9c36267f8fa2e49054976fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedcbe799f1b7f5155f9435401d99d6f594106b4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8f2469268464a912c311de09e352b9e9132c6b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0ffd597e45ecf511957892355402957321b396a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf15ca840ac8bb8f4c0670b335e5cedf0a0af4f82` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf204fdf9dac645a463777000d3e3a8b0a41c82fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf238e4665da058275d11c75e9548aa65a96e03b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf28d718656aa38607eadaac974e79ede986ac226` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2fb8463cc55137a9a05b5f3d6af4d729173a2b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbf89b7ed68081cb040e15cf07064c7378f5d73b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcd64760ed7fa34fafa09d87927a9b8dd83d0470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd34e2c588a519f173d54be539a56fed4830ba53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfdaeb1d201e91c885d9597f901c056d8b29a91b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe622cb3424dbbadf933d56208eb487fb16eabdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff7bb16c5767694c767422912b516d9c8e94e392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffd852569b533a64a5f1457a8561509b8ca900cc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x13b0d85ccb8bf860b6b79af3029fca081ae9bef2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |

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
| blast | [`0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad`](./contracts/blast-81457/0xb1a5700fa2358173fe465e6ea4ff52e36e88e2ad/) | GovernanceToken | token | $569.61 | Verified native implementation with $569.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f`](./contracts/blast-81457/0xca2e5b987f345e5c3cc9d987029a6e19ea44af4f/) | MintManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
