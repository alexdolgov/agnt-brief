# Agentic Audit Brief: Kleros

## Project Overview

- Project: Kleros (`kleros`)
- Website: [https://kleros.io](https://kleros.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.283Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 304 unique implementations (367 raw deployments)
- DeFi Llama TVL: $5,469,062.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 85 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 8 common project-authored base contract(s) (arbitrable, realitioarbitratorwithappealsbase, idisputeresolver). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 564; live-surface contracts included: 367 (76 live, 291 unknown).
- Excluded by liveness: 197 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/26 (0.0%)
- Deployed-live implementations: 26 of 304 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 271
- Unique implementations: 304
- Raw deployments: 367
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

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmbGreeterReceiver | unknown | ethereum | n/a | [`0x800643...b7225e`](./contracts/ethereum-1/0x800643d341068e60c29c3d0fea2a2a6642b7225e/) | ⚠️ Unaudited |
| BetNFTDescriptor | unknown | gnosis | n/a | [`0x43c9e4...7ed35c`](./contracts/gnosis-100/0x43c9e4ba77aedff42679d41f27dbd1f1647ed35c/) | ⚠️ Unaudited |
| BlockHashRNG | unknown | arbitrum | n/a | [`0x39d123...f35b0b`](./contracts/arbitrum-42161/0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b/) | ⚠️ Unaudited |
| CurateProxy | unknown | gnosis | n/a | 4 deployments: gnosis [`0x45b011...14d37c`](./contracts/gnosis-100/0x45b01141ed201a37cb83b04add7d85ba0014d37c/); gnosis `0x5a53e5...c0f5e2`; gnosis `0x6767bc...e386ec`; gnosis `0xc0aa0d...fa5a33` | ⚠️ Unaudited |
| CurateProxySVG | unknown | gnosis | n/a | 5 deployments: gnosis [`0x3d03a8...25bc96`](./contracts/gnosis-100/0x3d03a8e805b913f973fe3c126b6a32592425bc96/); gnosis `0x726584...e60f7d`; gnosis `0x8167f4...25ce5f`; gnosis `0xaee2f2...a184f4`; gnosis `0xda8623...283ba9` | ⚠️ Unaudited |
| DisputeKitGated | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcc811d...6c3078`](./contracts/arbitrum-42161/0xcc811de3fbeee3a34b765804cf9ff339c26c3078/); arbitrum `0xea7863...b7790a` | ⚠️ Unaudited |
| DisputeResolver | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3645f9...22c831`](./contracts/arbitrum-42161/0x3645f9e08d80e47c82ad9e33fcb4ea703822c831/); arbitrum `0x95ece4...10d6eb`; arbitrum `0xb5526d...1f4323` | ⚠️ Unaudited |
| DisputeResolverRuler | unknown | arbitrum | n/a | [`0xb3a5fd...be6140`](./contracts/arbitrum-42161/0xb3a5fdeaf461c42cace148e978e6fbca97be6140/) | ⚠️ Unaudited |
| EscrowUniversal | operational_periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x5d64cb...3a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/); arbitrum `0x79530e...1f2f6c`; arbitrum `0x7f1ffe...d3b132`; arbitrum `0xdf62a0...4a63d1` | ⚠️ Unaudited |
| EscrowView | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3fed94...290459`](./contracts/arbitrum-42161/0x3fed94ee4fa1b5665db84489f913e2c7e1290459/); arbitrum `0x85ee33...8cf70d`; arbitrum `0xaf36da...77330d` | ⚠️ Unaudited |
| FirstPriceAuction | unknown | gnosis | n/a | [`0xdcdb82...ad7478`](./contracts/gnosis-100/0xdcdb82e595b3c80e569ebb52c08b05f053ad7478/) | ⚠️ Unaudited |
| GnosisChainReceiver | unknown | gnosis | n/a | 3 deployments: gnosis [`0x0bd46d...28ad9b`](./contracts/gnosis-100/0x0bd46dafe85d2ff65c1505ed6f5bc9130228ad9b/); gnosis `0x348f27...d135dc`; gnosis `0x44aced...32e3ad` | ⚠️ Unaudited |
| GnosisChainReceiverV2 | unknown | gnosis | n/a | 3 deployments: gnosis [`0x0db38f...391137`](./contracts/gnosis-100/0x0db38fd51525cb4d7d2814ccd3fee3acee391137/); gnosis `0x78fe89...3efaf2`; gnosis `0xc73f83...f7da4a` | ⚠️ Unaudited |
| Kleros | unknown | ethereum | n/a | 2 deployments: ethereum [`0x211f01...2ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/); ethereum `0xd6d298...bf0ef6` | ⚠️ Unaudited |
| KlerosGovernor | governance | ethereum | n/a | 2 deployments: ethereum [`0x327a29...eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/); ethereum `0xe5bcea...0e5cf4` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | gnosis | n/a | 2 deployments: gnosis [`0x66260c...4c59f2`](./contracts/gnosis-100/0x66260c69d03837016d88c9877e61e08ef74c59f2/); gnosis `0x957a53...52d6e1` | ⚠️ Unaudited |
| LiquidityPool | unknown | gnosis | n/a | 2 deployments: gnosis [`0x012791...83ab56`](./contracts/gnosis-100/0x012791f389d54a882952926a2d4349679083ab56/); gnosis `0x097b81...783850` | ⚠️ Unaudited |
| Market | unknown | gnosis | n/a | 14 deployments: gnosis [`0x23ac77...d782c8`](./contracts/gnosis-100/0x23ac77dde48eefaab344ef9de372fd40e0d782c8/); gnosis `0x49c53e...a4a56d`; gnosis `0x4af550...ccf996`; gnosis `0x4d20ac...3520b0`; gnosis `0x6d65f6...34cd59`; gnosis `0x77c608...bb737f`; gnosis `0x811463...e88ca6`; gnosis `0x96f3cc...6eea9d`; gnosis `0x9b8559...7808af`; gnosis `0xb4cd04...35eeca`; gnosis `0xbb19d8...e0e40a`; gnosis `0xc7021e...bb1445`; gnosis `0xeb4938...7b249a`; gnosis `0xf11d01...83841c` | ⚠️ Unaudited |
| MarketFactory | registry | gnosis | n/a | [`0x67d367...7eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | ⚠️ Unaudited |
| MiniMeToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x395df4...2992ea`](./contracts/ethereum-1/0x395df49c20e34a7ea995cbf546e54f66172992ea/); ethereum `0x87c260...e2f520`; ethereum `0x93ed3f...3bc04d`; ethereum `0xadaac4...c0790a` | ⚠️ Unaudited |
| MultipleArbitrableTransaction | unknown | ethereum | n/a | [`0x0d6744...1e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | [`0x67a575...e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | ⚠️ Unaudited |
| ProofOfHumanity | unknown | ethereum | n/a | [`0xc5e9dd...7c9bdb`](./contracts/ethereum-1/0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb/) | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1c2811...d5fc0d`](./contracts/ethereum-1/0x1c2811550551d84030cd1b608e6fe3fd6fd5fc0d/); ethereum `0x783763...58d517`; ethereum `0xf72cfd...30adca` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | ethereum | n/a | [`0xfe0eb5...c0aa68`](./contracts/ethereum-1/0xfe0eb5fc686f929eb26d541d75bb59f816c0aa68/) | ⚠️ Unaudited |
| RealitioForeignProxyArbitrum | unknown | ethereum | n/a | [`0x4fa89d...9779e9`](./contracts/ethereum-1/0x4fa89d1e6dbe4eb05cf542da841d5778629779e9/) | ⚠️ Unaudited |
| RealitioForeignProxyOptimism | unknown | ethereum | n/a | 7 deployments: ethereum [`0x46bf68...7f09bb`](./contracts/ethereum-1/0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb/); ethereum `0x54811e...fe627f`; ethereum `0x890deb...d6770e`; ethereum `0xa353a7...11681a`; ethereum `0xd8b33e...0cd928`; ethereum `0xeafb9c...239a2d`; ethereum `0xf0b37f...9f2044` | ⚠️ Unaudited |
| RealitioForeignProxyPolygon | unknown | ethereum | n/a | 3 deployments: ethereum [`0x412c06...692ba7`](./contracts/ethereum-1/0x412c0617f357e640406ff0b4ee55f547c3692ba7/); ethereum `0xbbb9a4...f60d36`; ethereum `0xd6bf90...0c6046` | ⚠️ Unaudited |
| RealitioHomeProxyPolygon | unknown | polygon | n/a | 4 deployments: polygon [`0x6116e6...e58812`](./contracts/polygon-137/0x6116e64366a1d70a270235f31c8ff29012e58812/); polygon `0xb4fc64...82b2ef`; polygon `0xbc9664...080799`; polygon `0xe69a35...e0d7f6` | ⚠️ Unaudited |
| SBT | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x091ba2...2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/); arbitrum `0x0d41cb...e85e48`; arbitrum `0x2a2f1f...81850b`; arbitrum `0x424956...a5e9b4`; arbitrum `0x650ed9...cf7922`; arbitrum `0xb80fb6...6adf43`; arbitrum `0xbcf80c...2b59ed`; arbitrum `0xcf468c...c78b0b` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x330bd7...6dcae5`](./contracts/arbitrum-42161/0x330bd769382cfc6d50175903434ccc8d206dcae5/) | ⚠️ Unaudited |
| SVG | unknown | gnosis | n/a | 2 deployments: gnosis [`0x65d546...e14298`](./contracts/gnosis-100/0x65d546a32d8063bb4b2a1bfe9013a66c89e14298/); gnosis `0xe71ee4...80c994` | ⚠️ Unaudited |
| TransactionBatcher | periphery | gnosis | n/a | 4 deployments: ethereum `0x82458d...9aa8cb`; gnosis [`0x642680...794d46`](./contracts/gnosis-100/0x6426800f8508b15aed271337498fa5e7d0794d46/); gnosis `0xa73a87...a259d6`; arbitrum `0xbc5ef8...dea4ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (271)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x07576f...430155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07ff03...6cab15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a65b3...159bc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b734b...f4f4fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e7ee6...3ecfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f581a...1b3e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x109854...8d053f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1174da...2ab97c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11c028...f84c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14fd11...81d620` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x177523...94c9c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19887e...7fdb06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a378b...dcefa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a7fe2...713f92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ce072...1653a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f2854...54f9d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1facf9...af6cec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21ade9...5f2a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25054b...47a85d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d5ad...2bd392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x283f8c...b7caee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28a03f...e12233` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b76f7...c9f633` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bf598...5db87b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e69e8...042898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31c45c...5a761f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35aa65...b386ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x361be2...42efa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3da44c...8704ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3df1cf...6cfd5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ec9d0...6e0658` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41c64f...254793` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x425160...f34b1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4279d1...53716b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43649d...0f25e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46dd53...f4b7b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47e30d...0bd1b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483964...bf7623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b306f...4ecba4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c0d9e...ac6f08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c7094...d9f4a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dfbbb...bd3cd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7628...793559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52ed77...f8ab04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55a381...7d31f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x580962...796769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x585f3a...48eeeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593ec8...bf1d98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a67fe...d2ee73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d0a07...f3e8a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e6a18...33e4aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67126a...a77bfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dba76...9f490a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dec89...b0ae92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x707e47...b97af7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7316ac...9b2de6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777c2f...a6ceec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7878f4...a9afea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x789334...8157c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ab70...e3634c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aaa3c...87cec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c5f03...fe9884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d5fb1...72dc32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d762a...6732ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e57a7...85ee46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eb6f3...410bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ec9ad...a1ff59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f33df...a55269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fe3a6...76eb1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x820327...dc959d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829fe0...e73b58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x833470...5a901d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83774e...029f0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83b061...a9b4cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x840446...57a8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x852976...716d05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8655a8...65aff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87fd22...6ef80d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88257f...b7f979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ae48d...f096bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f77d8...248cf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x903b03...04fe21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90571e...0c7aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90a502...a93293` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9354a6...8394be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9463cf...dd7145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951e43...f412f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x958eac...8e8cc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x965aa0...759caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9725a9...ddb73b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9740a7...af938f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97f239...70e8f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bab15...77024e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa12621...3c0575` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa17c89...0df95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa20764...1c72f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa324cf...2e06b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4352b...453132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5215c...9c102e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6c17d...73f8be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa842a2...71954a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa593b...3d82aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacfd1e...1584d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadb781...1b2a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef591...d7735a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf3b9c...aa9767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0a54b...53dec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1c5bf...04b525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2c821...39df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb32bb3...153f5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb452b9...5fa965` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6f272...d07acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb83dfa...7e9cf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb84da7...77e689` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb75a9...572ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcf85f...079bf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbecf19...6be129` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbff7be...d311e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc04cc9...1d4f94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc17450...fbb238` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2090b...f67922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2fb95...9a20c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6a387...c179cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8a460...ebcd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a430...a61797` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca063e...d2548c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbca78...510bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd04f24...6e605b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9137b...a80540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdadf4f...39d145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdebea9...bb0ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe27768...b89bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4ba04...0e7e2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4c0d9...ca031d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe69338...91569f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9509a...ce2104` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea09bd...fece05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec558b...40e88c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb83f...30175f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeec71d...4c668d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3d10...41c3c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1188e...53911b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf12705...ce99cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1b2fd...5c9fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2dcbd...8be6cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf70b6a...f8f768` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7fd92...589c81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfde22b...cba43e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe85e8...5730b8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x006de5...55a23a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x00a854...c0a7ac` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x00af44...ecd89b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x00fe08...2dc8e4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x03b827...c459bc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x04be1c...e4df5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0767e7...4963b6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x089c1d...29f6f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x08d71c...2923a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x09a830...ef9f2b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x09e111...40f5df` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0fc21f...42c97e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1078cf...c40e49` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x118b61...e5f5bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x11f4cb...abfb79` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x13da11...2650eb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x160ffa...f60185` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x18a6a8...03e03d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x18ea9e...01157e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x19060f...85abc4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1909de...3dee88` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x195756...c85b35` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x196489...686bf4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1f73b7...de0c06` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x205a8e...d32096` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x21981d...c6c37f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x23c85d...3e53e6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x24c93b...3dc15c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x25d1d2...7f4662` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x28fc1b...92eb74` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x298e71...ca6679` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2b562e...e1e940` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2cff97...3efa40` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2e17ea...43e530` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x330111...eebb77` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3917d5...65a1ec` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3d9be4...0ff03f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3dd713...f32732` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3e80d3...b2c012` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x457df3...4cc693` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x48b227...4b3ffa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4ea501...6d63a3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x506dbe...dbf528` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x561819...b8e5d6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5688fd...a2f694` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x578833...288cc9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x59b5d0...daa282` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5b584a...d604b7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5bb6e3...0f4d2e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x604693...21410d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x64ab34...3e7f81` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x67ec83...6e2ce8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x694481...0a3a3b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x69aa64...a5a801` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6d1cfc...ab4517` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6de7bf...7dcf10` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x727000...5840f2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x76c5c0...41c89b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x79107f...aeb4ad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x797844...928329` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7b4921...9604c0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7bfff6...d8e320` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7ec194...7cbfe0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7ff6ff...529bf0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x808c7b...1dd644` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x82b16d...ec6476` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x897dff...58d8d7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8a7201...33111a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8c8fbb...f22f85` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x944424...d244a0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x98d020...1c28cd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9bc20a...641802` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9c6ab5...1453de` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9dfc84...7d1fcb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9ffdd4...dd01ec` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa24695...022b38` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa2c572...26422f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa3954b...b3cf71` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa52b59...dd42ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa5ec29...bcdc7e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa8c431...81c444` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xadad0f...06c7c8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xadfbb3...9068d4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xae1c53...acb2f8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb7cb5b...34e64e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbbb4c0...fbddff` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbc7241...fa7d1c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbca743...68027c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbe7ada...55f7f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbe94dc...57ed63` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc090e4...f0d4c7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc344f4...d0190c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc6a4f9...8b2be2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc9358c...7921b4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc9672b...d4c85f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xce4b27...d81491` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd1c4a1...c22579` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd2617f...33bde1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd55e91...b2260f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd5af61...b469a6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd7eb80...6fef5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd804e2...d4ea2d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd99a7d...95ab94` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xddfe22...138cc3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe0ed01...c64faa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe14f79...642a0f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe3c7c8...f8dbe4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe78256...8ef15e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeb6ab5...10f42c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xee1352...e6036a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xee31c6...f19696` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeebb80...4b3ba9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xef2b2f...13191a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf02c42...901af7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf1404d...389c14` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf811c2...35f146` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf8a2d8...f843a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfaef9b...6a0360` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfb00ff...5086f5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfcc7fe...459994` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x371aa4...d319bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4066a...0095c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x800643...b7225e`](./contracts/ethereum-1/0x800643d341068e60c29c3d0fea2a2a6642b7225e/) | AmbGreeterReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x43c9e4...7ed35c`](./contracts/gnosis-100/0x43c9e4ba77aedff42679d41f27dbd1f1647ed35c/) | BetNFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39d123...f35b0b`](./contracts/arbitrum-42161/0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b/) | BlockHashRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x45b011...14d37c`](./contracts/gnosis-100/0x45b01141ed201a37cb83b04add7d85ba0014d37c/) | CurateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3d03a8...25bc96`](./contracts/gnosis-100/0x3d03a8e805b913f973fe3c126b6a32592425bc96/) | CurateProxySVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcc811d...6c3078`](./contracts/arbitrum-42161/0xcc811de3fbeee3a34b765804cf9ff339c26c3078/) | DisputeKitGated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3645f9...22c831`](./contracts/arbitrum-42161/0x3645f9e08d80e47c82ad9e33fcb4ea703822c831/) | DisputeResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb3a5fd...be6140`](./contracts/arbitrum-42161/0xb3a5fdeaf461c42cace148e978e6fbca97be6140/) | DisputeResolverRuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d64cb...3a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/) | EscrowUniversal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fed94...290459`](./contracts/arbitrum-42161/0x3fed94ee4fa1b5665db84489f913e2c7e1290459/) | EscrowView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xdcdb82...ad7478`](./contracts/gnosis-100/0xdcdb82e595b3c80e569ebb52c08b05f053ad7478/) | FirstPriceAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0bd46d...28ad9b`](./contracts/gnosis-100/0x0bd46dafe85d2ff65c1505ed6f5bc9130228ad9b/) | GnosisChainReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0db38f...391137`](./contracts/gnosis-100/0x0db38fd51525cb4d7d2814ccd3fee3acee391137/) | GnosisChainReceiverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211f01...2ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/) | Kleros | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x327a29...eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/) | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x66260c...4c59f2`](./contracts/gnosis-100/0x66260c69d03837016d88c9877e61e08ef74c59f2/) | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x012791...83ab56`](./contracts/gnosis-100/0x012791f389d54a882952926a2d4349679083ab56/) | LiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x23ac77...d782c8`](./contracts/gnosis-100/0x23ac77dde48eefaab344ef9de372fd40e0d782c8/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x67d367...7eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395df4...2992ea`](./contracts/ethereum-1/0x395df49c20e34a7ea995cbf546e54f66172992ea/) | MiniMeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6744...1e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/) | MultipleArbitrableTransaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a575...e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5e9dd...7c9bdb`](./contracts/ethereum-1/0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb/) | ProofOfHumanity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c2811...d5fc0d`](./contracts/ethereum-1/0x1c2811550551d84030cd1b608e6fe3fd6fd5fc0d/) | Realitio_v2_1_ArbitratorWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe0eb5...c0aa68`](./contracts/ethereum-1/0xfe0eb5fc686f929eb26d541d75bb59f816c0aa68/) | RealitioForeignArbitrationProxyWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fa89d...9779e9`](./contracts/ethereum-1/0x4fa89d1e6dbe4eb05cf542da841d5778629779e9/) | RealitioForeignProxyArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46bf68...7f09bb`](./contracts/ethereum-1/0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb/) | RealitioForeignProxyOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412c06...692ba7`](./contracts/ethereum-1/0x412c0617f357e640406ff0b4ee55f547c3692ba7/) | RealitioForeignProxyPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6116e6...e58812`](./contracts/polygon-137/0x6116e64366a1d70a270235f31c8ff29012e58812/) | RealitioHomeProxyPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x091ba2...2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/) | SBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x330bd7...6dcae5`](./contracts/arbitrum-42161/0x330bd769382cfc6d50175903434ccc8d206dcae5/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x65d546...e14298`](./contracts/gnosis-100/0x65d546a32d8063bb4b2a1bfe9013a66c89e14298/) | SVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x642680...794d46`](./contracts/gnosis-100/0x6426800f8508b15aed271337498fa5e7d0794d46/) | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 271 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
