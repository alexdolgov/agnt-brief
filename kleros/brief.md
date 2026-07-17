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
| AmbGreeterReceiver | unknown | ethereum | n/a | [`0x800643d341068e60c29c3d0fea2a2a6642b7225e`](./contracts/ethereum-1/0x800643d341068e60c29c3d0fea2a2a6642b7225e/) | ⚠️ Unaudited |
| BetNFTDescriptor | unknown | gnosis | n/a | [`0x43c9e4ba77aedff42679d41f27dbd1f1647ed35c`](./contracts/gnosis-100/0x43c9e4ba77aedff42679d41f27dbd1f1647ed35c/) | ⚠️ Unaudited |
| BlockHashRNG | unknown | arbitrum | n/a | [`0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b`](./contracts/arbitrum-42161/0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b/) | ⚠️ Unaudited |
| CurateProxy | unknown | gnosis | n/a | 4 deployments: gnosis [`0x45b01141ed201a37cb83b04add7d85ba0014d37c`](./contracts/gnosis-100/0x45b01141ed201a37cb83b04add7d85ba0014d37c/); gnosis `0x5a53e5cea02df6db9ed57b9fd34b8f0badc0f5e2`; gnosis `0x6767bcc090cc6208e01805d66b96a5d8bde386ec`; gnosis `0xc0aa0d435b07a0d9d6219cdc68db215314fa5a33` | ⚠️ Unaudited |
| CurateProxySVG | unknown | gnosis | n/a | 5 deployments: gnosis [`0x3d03a8e805b913f973fe3c126b6a32592425bc96`](./contracts/gnosis-100/0x3d03a8e805b913f973fe3c126b6a32592425bc96/); gnosis `0x726584e6b2d41f21ebc607610229e56b78e60f7d`; gnosis `0x8167f4bf6f39c178be68536c290e44e49925ce5f`; gnosis `0xaee2f2b8e3e20c70070ad3816dc51f3041a184f4`; gnosis `0xda86232029a048c9aa0f642239a002b481283ba9` | ⚠️ Unaudited |
| DisputeKitGated | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xcc811de3fbeee3a34b765804cf9ff339c26c3078`](./contracts/arbitrum-42161/0xcc811de3fbeee3a34b765804cf9ff339c26c3078/); arbitrum `0xea7863e6de863e8e6d037d8693ad5da45db7790a` | ⚠️ Unaudited |
| DisputeResolver | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3645f9e08d80e47c82ad9e33fcb4ea703822c831`](./contracts/arbitrum-42161/0x3645f9e08d80e47c82ad9e33fcb4ea703822c831/); arbitrum `0x95ece455bd817d6adb92f2383617d36ebe10d6eb`; arbitrum `0xb5526d022962a1fff6ed32c93e8b714c901f4323` | ⚠️ Unaudited |
| DisputeResolverRuler | unknown | arbitrum | n/a | [`0xb3a5fdeaf461c42cace148e978e6fbca97be6140`](./contracts/arbitrum-42161/0xb3a5fdeaf461c42cace148e978e6fbca97be6140/) | ⚠️ Unaudited |
| EscrowUniversal | operational_periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x5d64cb92c351e46615ce427015a2f1e0823a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/); arbitrum `0x79530e7bb3950a3a4b5a167816154715681f2f6c`; arbitrum `0x7f1ffe4eff5ce426758540f53881f45eeed3b132`; arbitrum `0xdf62a032c7187bf68bc48c3bcf24b17a6d4a63d1` | ⚠️ Unaudited |
| EscrowView | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3fed94ee4fa1b5665db84489f913e2c7e1290459`](./contracts/arbitrum-42161/0x3fed94ee4fa1b5665db84489f913e2c7e1290459/); arbitrum `0x85ee33070e8ddc92d60828f775d9e7a3528cf70d`; arbitrum `0xaf36da891c03b8a3a675f08f59355c8ff877330d` | ⚠️ Unaudited |
| FirstPriceAuction | unknown | gnosis | n/a | [`0xdcdb82e595b3c80e569ebb52c08b05f053ad7478`](./contracts/gnosis-100/0xdcdb82e595b3c80e569ebb52c08b05f053ad7478/) | ⚠️ Unaudited |
| GnosisChainReceiver | unknown | gnosis | n/a | 3 deployments: gnosis [`0x0bd46dafe85d2ff65c1505ed6f5bc9130228ad9b`](./contracts/gnosis-100/0x0bd46dafe85d2ff65c1505ed6f5bc9130228ad9b/); gnosis `0x348f2706ae7d647461ce90f9e3569014e7d135dc`; gnosis `0x44aced22add33374f851e679420235e00b32e3ad` | ⚠️ Unaudited |
| GnosisChainReceiverV2 | unknown | gnosis | n/a | 3 deployments: gnosis [`0x0db38fd51525cb4d7d2814ccd3fee3acee391137`](./contracts/gnosis-100/0x0db38fd51525cb4d7d2814ccd3fee3acee391137/); gnosis `0x78fe89e1eeeb73edbc45091aee59cd18303efaf2`; gnosis `0xc73f83b515dfceec3496890fb4644d7463f7da4a` | ⚠️ Unaudited |
| Kleros | unknown | ethereum | n/a | 2 deployments: ethereum [`0x211f01e59b425253c0a0e9a7bf612605b42ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/); ethereum `0xd6d29815329bc0b31c5b3ce13683441afabf0ef6` | ⚠️ Unaudited |
| KlerosGovernor | governance | ethereum | n/a | 2 deployments: ethereum [`0x327a29fce0a6490e4236240be176daa282eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/); ethereum `0xe5bcea6f87aaee4a81f64dfdb4d30d400e0e5cf4` | ⚠️ Unaudited |
| LightGeneralizedTCR | unknown | gnosis | n/a | 2 deployments: gnosis [`0x66260c69d03837016d88c9877e61e08ef74c59f2`](./contracts/gnosis-100/0x66260c69d03837016d88c9877e61e08ef74c59f2/); gnosis `0x957a53a994860be4750810131d9c876b2f52d6e1` | ⚠️ Unaudited |
| LiquidityPool | unknown | gnosis | n/a | 2 deployments: gnosis [`0x012791f389d54a882952926a2d4349679083ab56`](./contracts/gnosis-100/0x012791f389d54a882952926a2d4349679083ab56/); gnosis `0x097b814e6c299a8b2348ee96774c0a0820783850` | ⚠️ Unaudited |
| Market | unknown | gnosis | n/a | 14 deployments: gnosis [`0x23ac77dde48eefaab344ef9de372fd40e0d782c8`](./contracts/gnosis-100/0x23ac77dde48eefaab344ef9de372fd40e0d782c8/); gnosis `0x49c53ebbca0bd728895b6c5c0671ff7c1ca4a56d`; gnosis `0x4af550e1a9befd646fe8c886ac0aed0bafccf996`; gnosis `0x4d20acd5b1d9d3065ccc53d5285095d32c3520b0`; gnosis `0x6d65f6975e7175e3bdff8ee84f1d95e71b34cd59`; gnosis `0x77c60805deb7f4ae102d442d367bd3ff7ebb737f`; gnosis `0x8114633ddb61a5c7f04d6b3c4a3b981796e88ca6`; gnosis `0x96f3cce0eb9e2891bea984c45ff9d725786eea9d`; gnosis `0x9b8559f64a96e3ecb6e607af6a1a5036777808af`; gnosis `0xb4cd0456e7094d80ecd2e18dad3868542a35eeca`; gnosis `0xbb19d8eb1ae3169919b959c0e611f59250e0e40a`; gnosis `0xc7021e446bac263142bb485474e32fd828bb1445`; gnosis `0xeb4938abb8db78a6a18540bd7bf25aa5997b249a`; gnosis `0xf11d01506731cc293d78f749bcfae08d9d83841c` | ⚠️ Unaudited |
| MarketFactory | registry | gnosis | n/a | [`0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | ⚠️ Unaudited |
| MiniMeToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x395df49c20e34a7ea995cbf546e54f66172992ea`](./contracts/ethereum-1/0x395df49c20e34a7ea995cbf546e54f66172992ea/); ethereum `0x87c260900c391559fd2816c9fbf078de37e2f520`; ethereum `0x93ed3fbe21207ec2e8f2d3c3de6e058cb73bc04d`; ethereum `0xadaac4cb430f4f4aa0d60741bc263f3dfec0790a` | ⚠️ Unaudited |
| MultipleArbitrableTransaction | unknown | ethereum | n/a | [`0x0d67440946949fe293b45c52efd8a9b3d51e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/) | ⚠️ Unaudited |
| MultiSigWallet | governance | ethereum | n/a | [`0x67a57535b11445506a9e340662cd0c9755e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | ⚠️ Unaudited |
| ProofOfHumanity | unknown | ethereum | n/a | [`0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb`](./contracts/ethereum-1/0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb/) | ⚠️ Unaudited |
| Realitio_v2_1_ArbitratorWithAppeals | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1c2811550551d84030cd1b608e6fe3fd6fd5fc0d`](./contracts/ethereum-1/0x1c2811550551d84030cd1b608e6fe3fd6fd5fc0d/); ethereum `0x7837638b3b1546c70dfcbfbd1ce55ac88758d517`; ethereum `0xf72cfd1b34a91a64f9a98537fe63fbab7530adca` | ⚠️ Unaudited |
| RealitioForeignArbitrationProxyWithAppeals | unknown | ethereum | n/a | [`0xfe0eb5fc686f929eb26d541d75bb59f816c0aa68`](./contracts/ethereum-1/0xfe0eb5fc686f929eb26d541d75bb59f816c0aa68/) | ⚠️ Unaudited |
| RealitioForeignProxyArbitrum | unknown | ethereum | n/a | [`0x4fa89d1e6dbe4eb05cf542da841d5778629779e9`](./contracts/ethereum-1/0x4fa89d1e6dbe4eb05cf542da841d5778629779e9/) | ⚠️ Unaudited |
| RealitioForeignProxyOptimism | unknown | ethereum | n/a | 7 deployments: ethereum [`0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb`](./contracts/ethereum-1/0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb/); ethereum `0x54811e1157ccc2be68ce4cc850e5ab3382fe627f`; ethereum `0x890deb4111f92fe9447e83abef1b754372d6770e`; ethereum `0xa353a70c8b3c7d38a869436d4cdebe8e5611681a`; ethereum `0xd8b33e3f5426db753d1c6c78b43d5151970cd928`; ethereum `0xeafb9c157b24535ccdb150555edfe6ee66239a2d`; ethereum `0xf0b37feda6cdf5f78b37e1fbccc24969059f2044` | ⚠️ Unaudited |
| RealitioForeignProxyPolygon | unknown | ethereum | n/a | 3 deployments: ethereum [`0x412c0617f357e640406ff0b4ee55f547c3692ba7`](./contracts/ethereum-1/0x412c0617f357e640406ff0b4ee55f547c3692ba7/); ethereum `0xbbb9a4ddbbcc89d2428002bec854f8d99af60d36`; ethereum `0xd6bf90e1daaa5cdec82235d2db1b93a9d50c6046` | ⚠️ Unaudited |
| RealitioHomeProxyPolygon | unknown | polygon | n/a | 4 deployments: polygon [`0x6116e64366a1d70a270235f31c8ff29012e58812`](./contracts/polygon-137/0x6116e64366a1d70a270235f31c8ff29012e58812/); polygon `0xb4fc64c6ffe0b04ea1ec9bf27fb2e8696c82b2ef`; polygon `0xbc966489400c7d0322f2e93cf75345360f080799`; polygon `0xe69a359f5fb27c12e6cf4e75e326329d13e0d7f6` | ⚠️ Unaudited |
| SBT | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/); arbitrum `0x0d41cb0c9da123a7554c5eee87ad289874e85e48`; arbitrum `0x2a2f1fbbf07c1372371cf4a65cb28c2df681850b`; arbitrum `0x4249564a17ee0143819a109fab241f55b1a5e9b4`; arbitrum `0x650ed9cc0c7a83aefdf4a293b53748b790cf7922`; arbitrum `0xb80fb682dc65db6b8bec19ae2fd47abfbb6adf43`; arbitrum `0xbcf80cb53f173ff8be96813a40be20efab2b59ed`; arbitrum `0xcf468c129fefbd9d25a140ba7ccce24ea7c78b0b` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x330bd769382cfc6d50175903434ccc8d206dcae5`](./contracts/arbitrum-42161/0x330bd769382cfc6d50175903434ccc8d206dcae5/) | ⚠️ Unaudited |
| SVG | unknown | gnosis | n/a | 2 deployments: gnosis [`0x65d546a32d8063bb4b2a1bfe9013a66c89e14298`](./contracts/gnosis-100/0x65d546a32d8063bb4b2a1bfe9013a66c89e14298/); gnosis `0xe71ee4d1ac550eddf20c21e394405353ef80c994` | ⚠️ Unaudited |
| TransactionBatcher | periphery | gnosis | n/a | 4 deployments: ethereum `0x82458d1c812d7c930bb3229c9e159cbabd9aa8cb`; gnosis [`0x6426800f8508b15aed271337498fa5e7d0794d46`](./contracts/gnosis-100/0x6426800f8508b15aed271337498fa5e7d0794d46/); gnosis `0xa73a872efd768bb23efb24ceeb9e330bcca259d6`; arbitrum `0xbc5ef8d9ad307154447ae148c088f083d2dea4ef` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x07576f4e1b3105059bb54cb45b78ffcb89430155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07ff0358a19cce1b10f4f8ffcbaf46a7646cab15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a65b33ef9f42f5ad6fb725db4235a12bd159bc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b734b30eea48927274d10227f8b264c27f4f4fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e7ee6d6d2e8715843644de0f85da5e0653ecfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f581adb848c8a5f7760bfdc407394731c1b3e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10985464a528ad60fb0fb044ff7f84b9568d053f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1174dafa29d62011020594e87321934cad2ab97c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11c0286d07ee10ba0bd4fbea0889e20905f84c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14fd11f300aa2025a67a8a05fb892b296c81d620` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1775239dbd793dbafdb4f41862bebe929794c9c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19887ec810bb8504e604ed7610fb11c5ca7fdb06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a378b92180618846e163b278d50bf425cdcefa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a7fe2ed538229b2bda1130f95299d5f81713f92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ce0721ab1642bf7764a3181b63319f0e61653a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f2854974f687dfec35c5f13993dfaa58d54f9d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1facf9f2e1bcb29ee207089552ef7725c9af6cec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21ade91830de2dc4ef35baef8eb0c4a1f55f2a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25054be94f8bdd1139b93b8235aecb55de47a85d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d5addd4827234745e81e6bfae35880512bd392` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x283f8c84c2d49fc2d00aa71076cde9a380b7caee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28a03f1e8523ba2a50271bf76e35a1945ce12233` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b76f72bffcbe386ee6bd5f801f24f472dc9f633` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2bf5989036f752245ceb9671ec40637b4c5db87b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e69e84ca13942857b130b55fed37f4265042898` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31c45cc66623a90db781ac0ab2abba7ccc5a761f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35aa65098bf66c401017b8e157698905dab386ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x361be285254a7201fdcf9583a7dd28dafe42efa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3da44c27ac9f439b2ecc483098095fe3d18704ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3df1cf86971bbc24e00efeca0658651daf6cfd5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ec9d0f2fa90e0ec35ff75e1532b0110f46e0658` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41c64f7600c5a3296caf442375b96ff49d254793` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x425160b4352254d9124d4b01c71c4503eff34b1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4279d13e92379c31689bf1a655fbfe18d353716b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43649d3f2effbe8f9f2aaac79e586af4050f25e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46dd53f330d4bb6e4883d30588ba4b2d5ff4b7b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47e30de1ca8696e1b1d70dd50c150540de0bd1b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4839640e996fc2787691f7fe5ffac2f06abf7623` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b306f42193ab66a22c976cfa94c84730c4ecba4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c0d9e35ad2c952bcd58a6d255c9dc2784ac6f08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c7094ba9e096dc08644eeb5ce692bd321d9f4a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4dfbbb24eddbd42dcc98c37db08f9af0e8bd3cd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7628e1a275994d2c6d48824693328aac793559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52ed777ed6e4693e088866d1a75c82c202f8ab04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55a3812c61ef7c1b32cb7d5b561fe858167d31f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x580962a2e3c68e33318e825c96e0594392796769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x585f3a24d95258ad9cfba98f4f526b06b048eeeb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x593ec8f82ab1e48b936b07babd9128cbc0bf1d98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a67fe7f14a79e2c61edf740252018453ed2ee73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d0a07e58c12b1ab4024297c01a2fcc690f3e8a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e6a186c5cad9e0febbb46f5adecf5b58933e4aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67126a2cefd8c58b07989279d03ea7ee12a77bfa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dba765ac81c3fc6ca6e76717e37a917429f490a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dec89ed7c059862640c9b1365c1f1602bb0ae92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x707e47553fd4740c1ff451162ec33e2624b97af7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7316ac0099e03236cc48e3fd34bde085649b2de6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777c2f31e3605555f7063585fe4bc7da32a6ceec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7878f42234a984b74250d05e55a01cd4fda9afea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7893347d18ea707405850b9a6021b7c3598157c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78ab7076059e2a6e71f308de541aeed326e3634c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aaa3c98af4726abf9b5a3ce3e556fc04d87cec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c5f034913359aee3658dc29dd0bf7d8adfe9884` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d5fb1e0f2a8db6997a61546d4a40e04b072dc32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d762a6a83c3cb3f6e20c3100058b671706732ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e57a7da742417f36ec1d7adea3161723d85ee46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7eb6f3605e04ddd133d1b299ff9a6ac135410bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ec9ad6e8eba632310f7256c4fca6e403ba1ff59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f33dfe964bde3965f39b4e87761a4eb88a55269` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7fe3a627b9bee0c823dde65fb71a88c69f76eb1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82032757ad34cdaa572b05c980b4c245c1dc959d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x829fe02606c8a4de4961bcfe045dd5960de73b58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x833470cdea820d322e5411e3bb0b7835855a901d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83774e83e889ec979ae84cd604a763a9fe029f0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83b06101f44e19d1a58a7e1190750db2faa9b4cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x840446b0ca6f37e46f10ac4586d42aa7cb57a8ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8529766f467c806623e237d092f435ef1c716d05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8655a87e6bb72c71bc1be14f20d9847c5765aff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87fd227701f343000bb128b104439203aa6ef80d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88257f6c494d88c19288a4688ae7b61cb4b7f979` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ae48daf5bbfc1bfe757aff12ad86cb50af096bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f77d850c6f8bd64b9509082bc5a2741d0248cf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x903b0383d8df3ce4d56d4581dc1c2d8bba04fe21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90571e7f2915cae84a8e2e5b38c759f2110c7aa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x90a5025eaaea52d7e2242f120092a6d8d3a93293` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9354a650cb638c435d9c5adc505a73540e8394be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9463cfc221de1f670e1c0862986fd06851dd7145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951e43c85fc59787d7b9fbeac2180fff0ff412f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x958eacf9f26f8aab6e59e6a94ca736d20c8e8cc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x965aa01f5f74e867aa416ad2a50f7596a3759caf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9725a9b4d54742b9c03c505ade4beeed00ddb73b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9740a74b2073d5e45d1eae5a5f9bcdba15af938f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97f239ea69b50a02edc4d239ea8bb0ce5270e8f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bab15700136c56b532566ead0105ed93077024e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1262165194d287779f59b51482309b86f3c0575` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa17c8911402f1d2dac88739fafb9d6715c0df95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2076408a6b3b1765f960bbc44ea331dd01c72f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa324cf8f323739aadc0df1b754bef15f6e2e06b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4352b0610caa515d1cdd3191321e6ce0d453132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5215cc4e541bd2a823afe083dec7a28dc9c102e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6c17db784c9301f3843a9f101dafba5f373f8be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa842a25c479e26b651ef15480e56dcaa8671954a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa593ba37d2b29fbd0d7cb5619ede963303d82aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xacfd1e563eb739abd6a4dac07dccf6545d1584d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadb78132ab82b1f12ca7f987a089dd0ff41b2a8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaef591be0783d23c0d194442b071957d11d7735a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf3b9caeaf9d808a9874f6fa6930a96a6daa9767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0a54b5f82487cb6b9de0467d8c80c319553dec7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1c5bf4e3e212d855f241e7e05e6a0931204b525` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2c821a2785ac1f258693d14bc51ebd5b039df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb32bb31877ebcbf81d507942a0d6dc50cc153f5a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb452b9c1948283ce3e6af717ee2fd74ccb5fa965` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6f272f5da0bf38946d053b715a48d4d4ed07acd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb83dfa9fe74e4c975457b61753f2d076c67e9cf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb84da7af79f48cee578ca3e2b8a51da3fb77e689` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb75a91a9b5d97d0a13d43e2fb5eb55db9572ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbcf85fc158494e8a53275354cfc2405169079bf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbecf190adc935b866ff4c5743dd2e347886be129` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbff7be94a9a4c869aabbd9949f4a59c9f6d311e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc04cc943356d926f9dd87465061a3d3a2b1d4f94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1745045e7b35727fb8be5381f9723a884fbb238` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2090bf628ffdc51216642edcd9bef30b8f67922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2fb95a64cd7c19205778a2aefbdaae9e39a20c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6a387a26827cfa1e5d91c5dbddde0d328c179cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8a460b4d3e50d306ba1c5966b356c15d0ebcd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a4307458af1cdf502158b37065d647c2a61797` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca063e33d070e0a88578f58b6cfe640472d2548c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbca7868471f77c4950dd9de8f7e504d87510bef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd04f24364687dbd6db67d2101fae59e91a6e605b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9137bb7134e7624f98ccc0757d936eb97a80540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdadf4f48edfcc4a005949642037b427dc139d145` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdebea9351f4f3b964cce3c6913ccaf418dbb0ca2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe27768bdb76a9b742b7ddcfe1539fadaf3b89bc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4ba04dc6dfb87d20c7d91961cdae3fe000e7e2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4c0d96f5432be10b0b1358e30d67b7264ca031d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe69338b26a6fc4ad211470c686999d35eb91569f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9509a8d4cf226f6b12f7c2b276d2e0082ce2104` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea09bdeb7d0ce27c39e73251fccdb0a081fece05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec558bebcc64b91512d0933fe88b5619c440e88c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedb83fc20365cc4a17ce3b711da74dd79330175f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeec71d947e6df64e63acf2feb312d872e14c668d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef3d1084e239400a73d165a616eb46cb3841c3c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1188e3082ea373e68941471745f05d5c453911b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf12705ed27b224f16b05330e9f9ee5da53ce99cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1b2fd2ab35048232525696d0db51b8d725c9fe2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2dcbda729be66f6bd723157ea853ea3878be6cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf70b6a4fb5ec06deb83a95aeeb3098cdd4f8f768` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7fd92906b0b669f90cb4e690e81edbbfd589c81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfde22b6445b900991d704058e5adb71e14cba43e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe85e8ea3cb9870cd70279866e6bac74dc5730b8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x006de54b1fad871f6489e7359eb78842a355a23a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x00a85425e3b34db15ec22184db6a5a21c0c0a7ac` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x00af4408200da4aa99d098515d2ced4c73ecd89b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x00fe083d9cf1d2ac22596090958a399d1b2dc8e4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x03b827e1b93532c2f672af7e15de12bc58c459bc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x04be1cbec5a46ac5e311cfa23450b51f24e4df5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0767e762ca8e0cec6421523ca14e1115944963b6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x089c1d8c755a73481b008c9181dfaa43ee29f6f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x08d71c1aaa720e55a0282ce3b9e5a309222923a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x09a83040907a600e87b5541e7fbb7d6b83ef9f2b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x09e1111c6ea451ec2b4dbb549d7c26d90740f5df` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0fc21f4c0887243f2bc72a4dd6d39bff8642c97e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1078cf81e4e3814e0c791e850b72ff48e9c40e49` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x118b6171a8b5a86884fc76b0fe2258191ee5f5bf` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x11f4cb5ee2c874833db5b608149ac32ab8abfb79` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x13da11e2f88bb7693aa81da7ff6c3935dc2650eb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x160ffaa1a4c3406c66669315b4640913bef60185` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x18a6a8b8aaba0a15103504dceba946d3a903e03d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x18ea9e0fe18ea2cb2e0d65ffdb46eb744701157e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x19060ffbb5bfe535acb95e5435dc6489ed85abc4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1909de31a04bb6e23614ce78c3456135ee3dee88` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1957565ac4e777fbf085ac44cae0cf69d7c85b35` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1964892b9dc7ab6d62147567a5c38b6c96686bf4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1f73b777d8170e9ab4ba3d75eaeecfaf2fde0c06` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x205a8e6756cc6338ce227567ea29e81402d32096` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x21981d23842ca434db151e7b0bb0adbc12c6c37f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x23c85d7276f73497f5d6b90ad61c9948463e53e6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x24c93b506768110a45fd1a221ecd8bd6b93dc15c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x25d1d2f02b49e47d6c0902c6235466916b7f4662` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x28fc1bbc9578da8c41bb6279bbcce5eab892eb74` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x298e71cc0245f896f994d1cd2581a4a6b8ca6679` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2b562ea613ad2f58746935c842d09eb147e1e940` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2cff9703414cb5948e055c601b8cfbf0043efa40` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2e17ea68b712d95d7615eaa4003f568c1743e530` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x33011131b27be6745481534e674c0b6ee5eebb77` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3917d5cdbb69b7b4b15aac4c4662e0584365a1ec` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3d9be45c9a2cbcd9eac0de743519e2dcc10ff03f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3dd7138c3ae3fb01b92e5504627eb110aff32732` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3e80d3d2cfb17fde7bce0ef75983adb8a1b2c012` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x457df30823050ed505b95eb22b6e3e0bb84cc693` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x48b2279a06740985d859dec3ccd9eef42b4b3ffa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4ea501361b87844bb235655b2c657959986d63a3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x506dbe416310df09166a17a1e1dd3837b4dbf528` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5618199db94d70e3ff052761ccc24ac21eb8e5d6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5688fde73edf6c3a37ab1e9f3dcae41661a2f694` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x578833301022ed93216a201e2499cf2e65288cc9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x59b5d03e5f961546d077eb493232fef70adaa282` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5b584a087414ba5d49cc9c5c11205778d9d604b7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5bb6e33d235fb534e5bab0a34f0e6761fe0f4d2e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x604693c412cfd35524f200475b0cbae62c21410d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x64ab34d8cb33f8b8bb3d4b38426896297a3e7f81` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x67ec838150363d10daf9643c87824f47856e2ce8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6944816d8aa4b681626e12df821aa3ef590a3a3b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x69aa642837c41c747a8ec9fa5fe6cabec2a5a801` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6d1cfc772af106584b7c4f7025a5692f7fab4517` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6de7bfa18c0db99005178fe43ae0dfc62f7dcf10` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x727000dc2639d84cf9d78e7a07c9a3729b5840f2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x76c5c0ceaa740243dd0d40f1d433240e5b41c89b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x79107f6d9a297fbd578b94fd6949515eceaeb4ad` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7978449042b12751ca9e431f2fa49ae528928329` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7b492155be5459dc601b94bb9e232bec4f9604c0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7bfff68d70da08dc7dacbac33fc48d2166d8e320` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7ec1941a0e15327d92ce848fe37a98d47a7cbfe0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7ff6ff85779848f92ba849926c29655bc0529bf0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x808c7bfaf9ed18d46113a430aa7717971e1dd644` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x82b16d56e1f18396f93e0e74b8b006b6d8ec6476` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x897dfff28b4fffcf49ef8e1e117451b93b58d8d7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8a72014c2802e1dd39551dc37a4b8eb16b33111a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8c8fbb36b31be29df85eaf7487cfceaffdf22f85` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9444245c2c7ac2c1d25798478f700d26a2d244a0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x98d0207a4a8157fba7f9deecb0225a9c311c28cd` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9bc20ab04aa35fbe91101bc6beea11cdb4641802` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9c6ab54014ed995745bb65db69fbcbac9e1453de` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9dfc84ce593125b6b59838d13ac320a32f7d1fcb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9ffdd42bbe7da317975d60f8eecf72a5dcdd01ec` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa24695a282f47941f06e7e06323739975f022b38` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa2c572b8e8693c603d6d8bba32c85ae1cb26422f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa3954b4adb7caca9c188c325cf9f2991abb3cf71` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa52b5986ae5d571ef742e428ebfbd062eadd42ca` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa5ec295910ccfc357beaf1f62f9e05dc1fbcdc7e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa8c4312b06646bdad96f7a4db0f38bf69681c444` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xadad0fc24668a8a8d7393ca4e90b4a682106c7c8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xadfbb3629c90177c6a4fc75899a652bf439068d4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xae1c5342e7d3b4ac2ad5780f7bcd547a5bacb2f8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb7cb5b1957b10372ce0ec85cdb9be5500034e64e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbbb4c071f03d3e1563c8fb06321d99e498fbddff` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbc72416006cf67671ae7c9102805444123fa7d1c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbca74372c17597fa9da905c7c2b530766768027c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbe7adaecd587638b06b06a666d36c4279655f7f1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xbe94dc54be5730309e1da29eddf512236e57ed63` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc090e450a0472fd9c9750600dcfe2f8109f0d4c7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc344f4b9b368279c736ee317a7a4f09efbd0190c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc6a4f91e436c53ee077787d4b721b007128b2be2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc9358c997bf146d7285b09ba6cf0018e817921b4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc9672bb899968b54f22f2c6d92658ed674d4c85f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xce4b27f1903024ce0fc55ad698b3805f6fd81491` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd1c4a1c379dac4c61281b78d1e04cec68ec22579` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd2617f2c636789ecc18d389e68361e259133bde1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd55e916e0ca64728c89360a9f05390cbf2b2260f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd5af613aa995abd3971c9016639f111996b469a6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd7eb807b66d047a0a91668a81f5944ccc26fef5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd804e270fd6bbab2e02023f4afc7bf4716d4ea2d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd99a7db09b91eb20f4ccf2462dd09b690395ab94` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xddfe2223867e42caa5dc64faaeaca7969a138cc3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe0ed01b57920d51c5421b3dbadec8e5fb5c64faa` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe14f79b70277effb9db6ec95512ab2eac0642a0f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe3c7c8ebe459d5911159dec1a000f5b339f8dbe4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe78256cbcd7fc022cbccf609e3398374f28ef15e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeb6ab5e434d536be2c710f375c9056c74810f42c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xee135263637e4a012168002f8e4f8b4dcee6036a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xee31c6cf48f429b3077a5eabea433f8198f19696` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeebb8018141e9f06c28b732d6d5d1d486f4b3ba9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xef2b2f6409f39a5c63fd79fafd5038b47113191a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf02c42530db903eff53cbd815ec4b45112901af7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf1404d34905caff47f7c621d806978cb25389c14` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf811c2895b4cff1d7a63ea7c04f60eb11335f146` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf8a2d8d4b6303bcccf0e0d7e020340baa7f843a8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfaef9b2a7b76f9e058a0e8ceafaad1cc8b6a0360` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfb00ff7422c6b62ab677b76c4aa48123b15086f5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xfcc7fe3b04ad4720e67b5d723dabcce6b9459994` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x371aa4b1ae5b5f9422f3ff1d105029aad1d319bc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4066ae16685f66e30fb22e932b67e49220095c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x800643d341068e60c29c3d0fea2a2a6642b7225e`](./contracts/ethereum-1/0x800643d341068e60c29c3d0fea2a2a6642b7225e/) | AmbGreeterReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x43c9e4ba77aedff42679d41f27dbd1f1647ed35c`](./contracts/gnosis-100/0x43c9e4ba77aedff42679d41f27dbd1f1647ed35c/) | BetNFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b`](./contracts/arbitrum-42161/0x39d123fc4cfd24ea5bb76195f9ecfe1f0df35b0b/) | BlockHashRNG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x45b01141ed201a37cb83b04add7d85ba0014d37c`](./contracts/gnosis-100/0x45b01141ed201a37cb83b04add7d85ba0014d37c/) | CurateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3d03a8e805b913f973fe3c126b6a32592425bc96`](./contracts/gnosis-100/0x3d03a8e805b913f973fe3c126b6a32592425bc96/) | CurateProxySVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xcc811de3fbeee3a34b765804cf9ff339c26c3078`](./contracts/arbitrum-42161/0xcc811de3fbeee3a34b765804cf9ff339c26c3078/) | DisputeKitGated | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3645f9e08d80e47c82ad9e33fcb4ea703822c831`](./contracts/arbitrum-42161/0x3645f9e08d80e47c82ad9e33fcb4ea703822c831/) | DisputeResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb3a5fdeaf461c42cace148e978e6fbca97be6140`](./contracts/arbitrum-42161/0xb3a5fdeaf461c42cace148e978e6fbca97be6140/) | DisputeResolverRuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5d64cb92c351e46615ce427015a2f1e0823a2402`](./contracts/arbitrum-42161/0x5d64cb92c351e46615ce427015a2f1e0823a2402/) | EscrowUniversal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3fed94ee4fa1b5665db84489f913e2c7e1290459`](./contracts/arbitrum-42161/0x3fed94ee4fa1b5665db84489f913e2c7e1290459/) | EscrowView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xdcdb82e595b3c80e569ebb52c08b05f053ad7478`](./contracts/gnosis-100/0xdcdb82e595b3c80e569ebb52c08b05f053ad7478/) | FirstPriceAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0bd46dafe85d2ff65c1505ed6f5bc9130228ad9b`](./contracts/gnosis-100/0x0bd46dafe85d2ff65c1505ed6f5bc9130228ad9b/) | GnosisChainReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0db38fd51525cb4d7d2814ccd3fee3acee391137`](./contracts/gnosis-100/0x0db38fd51525cb4d7d2814ccd3fee3acee391137/) | GnosisChainReceiverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x211f01e59b425253c0a0e9a7bf612605b42ce82c`](./contracts/ethereum-1/0x211f01e59b425253c0a0e9a7bf612605b42ce82c/) | Kleros | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x327a29fce0a6490e4236240be176daa282eccfdf`](./contracts/ethereum-1/0x327a29fce0a6490e4236240be176daa282eccfdf/) | KlerosGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x66260c69d03837016d88c9877e61e08ef74c59f2`](./contracts/gnosis-100/0x66260c69d03837016d88c9877e61e08ef74c59f2/) | LightGeneralizedTCR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x012791f389d54a882952926a2d4349679083ab56`](./contracts/gnosis-100/0x012791f389d54a882952926a2d4349679083ab56/) | LiquidityPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x23ac77dde48eefaab344ef9de372fd40e0d782c8`](./contracts/gnosis-100/0x23ac77dde48eefaab344ef9de372fd40e0d782c8/) | Market | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b`](./contracts/gnosis-100/0x67d3673cf19a6b0ad70d76b4e9c6f715177eb48b/) | MarketFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x395df49c20e34a7ea995cbf546e54f66172992ea`](./contracts/ethereum-1/0x395df49c20e34a7ea995cbf546e54f66172992ea/) | MiniMeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d67440946949fe293b45c52efd8a9b3d51e2522`](./contracts/ethereum-1/0x0d67440946949fe293b45c52efd8a9b3d51e2522/) | MultipleArbitrableTransaction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a57535b11445506a9e340662cd0c9755e5b1b4`](./contracts/ethereum-1/0x67a57535b11445506a9e340662cd0c9755e5b1b4/) | MultiSigWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb`](./contracts/ethereum-1/0xc5e9ddebb09cd64dfacab4011a0d5cedaf7c9bdb/) | ProofOfHumanity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c2811550551d84030cd1b608e6fe3fd6fd5fc0d`](./contracts/ethereum-1/0x1c2811550551d84030cd1b608e6fe3fd6fd5fc0d/) | Realitio_v2_1_ArbitratorWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe0eb5fc686f929eb26d541d75bb59f816c0aa68`](./contracts/ethereum-1/0xfe0eb5fc686f929eb26d541d75bb59f816c0aa68/) | RealitioForeignArbitrationProxyWithAppeals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fa89d1e6dbe4eb05cf542da841d5778629779e9`](./contracts/ethereum-1/0x4fa89d1e6dbe4eb05cf542da841d5778629779e9/) | RealitioForeignProxyArbitrum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb`](./contracts/ethereum-1/0x46bf687bb3eb392d2667ee37b4ad96addb7f09bb/) | RealitioForeignProxyOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x412c0617f357e640406ff0b4ee55f547c3692ba7`](./contracts/ethereum-1/0x412c0617f357e640406ff0b4ee55f547c3692ba7/) | RealitioForeignProxyPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6116e64366a1d70a270235f31c8ff29012e58812`](./contracts/polygon-137/0x6116e64366a1d70a270235f31c8ff29012e58812/) | RealitioHomeProxyPolygon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc`](./contracts/arbitrum-42161/0x091ba21a03aab5b4cfee5a770667cc53ef2cb1bc/) | SBT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x330bd769382cfc6d50175903434ccc8d206dcae5`](./contracts/arbitrum-42161/0x330bd769382cfc6d50175903434ccc8d206dcae5/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x65d546a32d8063bb4b2a1bfe9013a66c89e14298`](./contracts/gnosis-100/0x65d546a32d8063bb4b2a1bfe9013a66c89e14298/) | SVG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x6426800f8508b15aed271337498fa5e7d0794d46`](./contracts/gnosis-100/0x6426800f8508b15aed271337498fa5e7d0794d46/) | TransactionBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
