# Agentic Audit Brief: Sturdy

## Project Overview

- Project: Sturdy (`sturdy`)
- Website: [https://sturdy.finance/](https://sturdy.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.960Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum, linea, mode, optimism, sei
- Contract surface: 88 unique implementations (155 raw deployments)
- DeFi Llama TVL: $364,659.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 73 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 7 common project-authored base contract(s) (basestrategy, sturdyleverage, baseleverage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 288; live-surface contracts included: 155 (44 live, 111 unknown).
- Excluded by liveness: 133 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/10 (20.0%)
- Deployed-live implementations: 10 of 88 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/25
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 63
- Unique implementations: 88
- Raw deployments: 155
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 20.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 8.0% | 2023-10 |
| Zellic | Tier 2 | 2 | 8.0% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DebtManager | unknown | ethereum | n/a | 12 deployments: ethereum [`0x09034a26478908572d279c4bbc7719f07ef249a9`](./contracts/ethereum-1/0x09034a26478908572d279c4bbc7719f07ef249a9/); ethereum `0x125144a17c2e0594b8a5950c46b475e93fffe2de`; ethereum `0x3f1e01c07539b9e4941ab58b1258cbb6c4066063`; ethereum `0x4c789eaac7d5cf7dcf8d267f6ca9f282348c74c8`; ethereum `0x5528c5da505eea1a419a1d96a9cdf22845423075`; ethereum `0x6481b119edd1e5f4a66baa30bf100be87c9a665c`; ethereum `0xa325cb5841c5f0d87d0490281790064900ef6f1e`; ethereum `0xa496c6d6738e12c00b66de698fa15f15b63c5139`; ethereum `0xcc06b025ab03ebddcc545912def1714b4da8f521`; ethereum `0xf2d6c582609f77166914de80b4485084e54bdade`; mode `0x31993d7b2620b77d410ff185e54535fd713459f3`; mode `0x96a1a3ce4b9cb36ad259c3066d583acd358dcca9` | ✅ Audited |
| SiloGateway | unknown | ethereum | n/a | 9 deployments: ethereum [`0x1c055119dd2c8898332de19cd61ac248c62116bd`](./contracts/ethereum-1/0x1c055119dd2c8898332de19cd61ac248c62116bd/); ethereum `0x31e9f9b698022813a58ca33e9864922481bddcb8`; ethereum `0x4d07a57a893ae8a4de536827582b374050f4bed3`; ethereum `0x53aef4c08672e357185d5ead5388957cbc7d06a2`; ethereum `0x987a70f5dc138c6316cabf648582a091866b8ae5`; ethereum `0xc7e66709dbc9a6fe99064e19b1a755c2d9354c1a`; ethereum `0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed`; mode `0x2040a9adcfa0adea197a6a466f5e259a27fd15a0`; mode `0x644b50951f974a63e028d67dd7aee520c0f1eb3b` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggregatorAccountant | operational_periphery | mode | n/a | [`0xd577429db653cd20effcd4977b2b41a6fd794a3b`](./contracts/mode-34443/0xd577429db653cd20effcd4977b2b41a6fd794a3b/) | ⚠️ Unaudited |
| AggregatorDataProvider | unknown | mode | n/a | 2 deployments: mode [`0xf0382a9eca5276d7b4bbcc503e4159c046c120ec`](./contracts/mode-34443/0xf0382a9eca5276d7b4bbcc503e4159c046c120ec/); mode `0xfb6113ccd6a20f235a3631876f2791fec66233e7` | ⚠️ Unaudited |
| API3BasedETHEZETHOracle | unknown | mode | n/a | [`0x6f7c66f09922c04218b54a04261fca2310c76adc`](./contracts/mode-34443/0x6f7c66f09922c04218b54a04261fca2310c76adc/) | ⚠️ Unaudited |
| AprOracle | unknown | mode | n/a | [`0xba4c10a7afa6376c47dabb9bedf349ea3a08170f`](./contracts/mode-34443/0xba4c10a7afa6376c47dabb9bedf349ea3a08170f/) | ⚠️ Unaudited |
| IncentiveDistributor | operational_periphery | ethereum | n/a | [`0x94c1201e12d5773410c35fe509dd0f4bb440d39d`](./contracts/ethereum-1/0x94c1201e12d5773410c35fe509dd0f4bb440d39d/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | ethereum | n/a | [`0x7a84460e6df989c258d31017bdddedd54cc88561`](./contracts/ethereum-1/0x7a84460e6df989c258d31017bdddedd54cc88561/) | ⚠️ Unaudited |
| PythBasedAssetOracle | unknown | mode | n/a | 4 deployments: mode [`0x0ebf145136acd214997c1ccaa6c686d1880bb532`](./contracts/mode-34443/0x0ebf145136acd214997c1ccaa6c686d1880bb532/); mode `0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7`; mode `0x46dd996be31a31483a3c5d8d513eb6536eae3bfa`; mode `0xd7d7d7075139ce8ce02f97bd113f3f89f60851c3` | ⚠️ Unaudited |
| RedstoneBasedAssetOracle | unknown | mode | n/a | 5 deployments: mode [`0x0c2f5023d2e9ec881234ebc167311e596a703faa`](./contracts/mode-34443/0x0c2f5023d2e9ec881234ebc167311e596a703faa/); mode `0x1ea0f1fcb10b58f5e43c4c764cab1a35ab6bc792`; mode `0x83c0217e1373afe161ca378e3a141fe340eb4b6c`; mode `0xde9e69a8ecc6e2cd410f186c53b677aca7a92aed`; mode `0xeff461778374f2bda7204e8ae366560deca73d16` | ⚠️ Unaudited |
| RewardConfig | unknown | mode | n/a | 2 deployments: mode [`0xb3d159d3c656925738e5733fb3aeb2a9cab92839`](./contracts/mode-34443/0xb3d159d3c656925738e5733fb3aeb2a9cab92839/); mode `0xd2bc9a2f722c0970cc9520a03b039a45da897787` | ⚠️ Unaudited |
| SiloHelper | periphery | mode | n/a | 2 deployments: mode [`0x5fad91704f52b173a5d9fb8cf83822a1d9848892`](./contracts/mode-34443/0x5fad91704f52b173a5d9fb8cf83822a1d9848892/); linea `0x9dc7b2130e478c5810dc0cdbd46b9d479b2e1ac4` | ⚠️ Unaudited |
| STRDYLocker | unknown | ethereum | n/a | [`0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18`](./contracts/ethereum-1/0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18/) | ⚠️ Unaudited |
| SturdyAllocator | operational_periphery | ethereum | n/a | [`0x17f960aedb1320358c9458b9fc71e7ac85922667`](./contracts/ethereum-1/0x17f960aedb1320358c9458b9fc71e7ac85922667/) | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan | unknown | mode | n/a | 2 deployments: mode [`0x6cb759c980c2922731fe13b2edce5d4ed47ad6fd`](./contracts/mode-34443/0x6cb759c980c2922731fe13b2edce5d4ed47ad6fd/); mode `0x9dc7b2130e478c5810dc0cdbd46b9d479b2e1ac4` | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan1 | unknown | mode | n/a | [`0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87`](./contracts/mode-34443/0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87/) | ⚠️ Unaudited |
| SturdyPairDeployer | unknown | mode | n/a | [`0x61eea4770d7e15e7036f8632f4bcb33af1af1e25`](./contracts/mode-34443/0x61eea4770d7e15e7036f8632f4bcb33af1af1e25/) | ⚠️ Unaudited |
| SturdyPairRegistry | unknown | mode | n/a | [`0x6605111929527485e418e7714d24fb72f5380e1f`](./contracts/mode-34443/0x6605111929527485e418e7714d24fb72f5380e1f/) | ⚠️ Unaudited |
| SturdySiloAprOracle | unknown | mode | n/a | [`0x83eb3cf482810e79e9f562d8de87fedf038be768`](./contracts/mode-34443/0x83eb3cf482810e79e9f562d8de87fedf038be768/) | ⚠️ Unaudited |
| SturdySiloStrategy | core_logic | mode | n/a | 10 deployments: mode [`0x168f6c2c46a58f4394924d14b9dc0a2b394519d9`](./contracts/mode-34443/0x168f6c2c46a58f4394924d14b9dc0a2b394519d9/); mode `0x4e72fcb2517ed90a3976dd8f50a387811ac4d883`; mode `0x56a1e840bfe18e82a412134ab6b0618ab1db406d`; mode `0x5829d7495110ccc36a48e35d58d3d840546ce690`; mode `0x63e3ca7f666c4923d2b1d0bb1c301ba9a57f9560`; mode `0x6cef966e111362ff22d8789b1fa886e4ef674c5a`; mode `0x797b173a2c31fd34b0bebf5f0c64ec70372b2d2f`; mode `0x9cf92c22c36fe62d789a489f40b136db345f414b`; mode `0xcdb88a11f4f825a9372f97010b7c762e3db9e1c6`; mode `0xf7be7370005896c720c2a84da870e041acf41a4d` | ⚠️ Unaudited |
| SturdyWhitelist | unknown | mode | n/a | 2 deployments: mode [`0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d`](./contracts/mode-34443/0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d/); mode `0xd8905400105358bab2eddcb78da3478368c343f1` | ⚠️ Unaudited |
| SwapBridgeAndCallFromMain | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x41d503c017223b981c4b4794281a732339d05367`](./contracts/ethereum-1/0x41d503c017223b981c4b4794281a732339d05367/); ethereum `0xdbe0365dcb4e0b35b36402546d58e0c1dac86aef` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | [`0xaeb3607ec434454ceb308f5cd540875efb54309a`](./contracts/ethereum-1/0xaeb3607ec434454ceb308f5cd540875efb54309a/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | n/a | 15 deployments: ethereum [`0x0669091f451142b3228171ae6ad794cf98288124`](./contracts/ethereum-1/0x0669091f451142b3228171ae6ad794cf98288124/); ethereum `0x076d2be066d5042f21d8512722209e5c54783cab`; ethereum `0x0dd49c449c788285f50b529145d6e6e76f02fd8f`; ethereum `0x200723063111f9f8f1d44c0f30afadf0c0b1a04b`; ethereum `0x26fe402a57d52c8a323bb6e09f06489c8216ac88`; ethereum `0x4e72fcb2517ed90a3976dd8f50a387811ac4d883`; ethereum `0x501bbbef60c407b36ea6b87af4964559c5229b11`; ethereum `0x6138973b2c34eb1178e8162bda8e12500975b52c`; ethereum `0x6311ff24fb15310ed3d2180d3d0507a21a8e5227`; ethereum `0x8dde9a50a91cc0a5dabdc5d3931c1af60408c84d`; ethereum `0xc8d4a8a7f593e73cd32cd6c5fb11fe20f23f9695`; ethereum `0xd002dc1c05fd7ff28c55eea3ddcb9051b2b81bd2`; ethereum `0xeef271a0071423ea56d38e4abe748165cc432e3f`; ethereum `0xf94b349d52c542abd8fb612c2854974e1d72223b`; ethereum `0xfa68707be4b58fb9f10748e30e25a15113edee1d` | ⚠️ Unaudited |
| VariableInterestRate | unknown | mode | n/a | 13 deployments: mode [`0x03aef503d5e5be4dfb02b3425b737006a9b390eb`](./contracts/mode-34443/0x03aef503d5e5be4dfb02b3425b737006a9b390eb/); mode `0x16343853f785dd24a93fe4040063abcbdc409441`; mode `0x1c278caeda6730a7dc1fe38450c521a43069b379`; mode `0x39d9dbebba50b8dc89c2819e863c1e146235bfef`; mode `0x5adac43234bd62818401a472c62e25c9a1142cfb`; mode `0x69ad3538049a8401ac162193c889bae9388cffa2`; mode `0x884b41145ae3816a0b1a3bae5d2f562be3d31cec`; mode `0x90832de4d1915c6e5906f4605babe7c84a08a0c2`; mode `0xae610460522f3e71c40ad6a2c70f486341b88daf`; mode `0xb06559a9b136b3bee486f4c16e5375b0edad4a80`; mode `0xcde573ee42c64e297a842eeef81eececa93a887c`; mode `0xe88c038cedd710a012aba286d56e2ef7441b0b42`; mode `0xfd364c4f8e03b76f4d8f0f8121a0a31d05f49372` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (63)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurveswapAdapter | unknown | ethereum | n/a | `0xef9e51d2ada9a4b1a2a7de9fff46465653ef7d53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03cdffa67145112254b8eb4128ad736d5e74510b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0acd9d715e354861fe68d3cf339b9427d09a77ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bc7eccc616c28503db1202baab2d2868ae495e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2140fa34b5a9dcd4b09d2c67e289d504349091a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21d1b4347846bc13f612259d84e4082f6948f696` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22333ed5be33ac1035a1274459bda6fdc432f889` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x248c25d005f1507cbff74f4a4b01fd9cb3cd7a01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39757318184eb155a378724fde34ca37123347df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4281addd25182ba50b7c41fdd5a7aa2b736003e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x599343201d7a3f87485f8f5a2ee373d90e24e12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69917c0cc4466e586646bcfeb1f8c1fa3b5d9a00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ab2d09f0daf65820a7270d9fc6802573fb8890d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3e10d45cae662c01ccb667243a0b8e3bd76a61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72d6b10b50a3b324fef712e543c4d296c932958a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777be575a3bbac469c668dd71663033c0295d558` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a9330b9a5f4d752ba3bfdfcec9b56082c450841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85db1a4ec3fc2dd880ae81464b1b946caa71c708` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9394bef0bcf9789caa0b48975c129bd009fe36f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c1737dd00927e6184d8e00168a68dbdf9dae537` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5317a2fa6d9a40b87151c5cbe4fc6c2221257b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf4c561fd7ef5ac764f2152cec55a15507637e23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf91fb39d56f2d6822930f5f940062f978a9877d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1cf3c78a62bb637ebebc253c8c9b4a559e37683` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6ad7ba0018e59deb947caf1398e6b6e843202f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6d69c5ebf8dac0de33af0d07c8ee451096b5561` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7a65e66ccba7499b3ced993195f3670dead97dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7f362e11ac1d6770e1cd2fc7a765ecd13f33b71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7754f7f445af23f265f9943e261cc6c76088d2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda4117b3e656d21b4f0fc3e0cad6d0129ca10547` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcc12c85539a801ac876f43b80ec72644cc43bb3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf04d03b444d777fde59ff9e6250431d31ef1a34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9642bfb5db0e8237a058420a610696b3a62f159` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9a802c78ca6dbc5832cccc92b5063ee610543a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef4b18839f99cc721ebd174d5062289fb089a8f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb1846ad3b1b078606e832c21bc4a27d563e79f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc8406ff12c9cfaa7067e5113647fe672000c4aa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x09cf3b20f56bc3461a828e9c167db4a33addf855` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x39d9dbebba50b8dc89c2819e863c1e146235bfef` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3b1e4e5e307207978e2e52ee92516bfe5de0f2e7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4534f53a81416a83f6baf5ac63c94aed1fea1303` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5c0801270b471311e3bf7bb3637a7d12b13d747c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x61eea4770d7e15e7036f8632f4bcb33af1af1e25` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x884b41145ae3816a0b1a3bae5d2f562be3d31cec` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x942c5b9502aab7ca792deb9a456d88efd31f7ecf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd67da8636ae87b0cecbda2e66db58d4839722b52` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd8905400105358bab2eddcb78da3478368c343f1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeb8c48d3e505da1113d8eef1c7cf587767c25591` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x49b50f508091b57dae0d072f21f5cc78d6d94903` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x09cf3b20f56bc3461a828e9c167db4a33addf855` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0dbcf6bf2fd41e8c88c88d74aa5df79def5218e7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1420e32b775443b10033e385e29fb60cb45d1434` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3044d8b97824a8f46259aee9a58ce81e4661e150` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3b5da26a2b806abb65c01f9891276ab2cc05c7ae` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x58f41238a3cc43162d89b35e13b0c5365e616df5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5ad20c0a415ca825a531711cf6be08d7d4f97dd4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5c0801270b471311e3bf7bb3637a7d12b13d747c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x95ea1478e9b9459b78cfc0c0c8d7b3d6b31a89fb` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xaa95e1ec73ace97c616f5f71b2f3431acb6cbc56` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1b05ce15c459e257a82ca5ea57c36dd8d148fbad` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1e946c01d7095b6d0925dfa27113b688889b65e0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1f9f2555bd85ed4d1ea7e3b59122e9964c502466` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/sturdy](https://skynet.certik.com/projects/sturdy) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sturdy - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Sturdy%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | 21 | high |
| [www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts](https://www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf](https://reports.chainsecurity.com/Sturdy/ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 21 | high |
| [code4rena.com/reports/2022-05-sturdy](https://code4rena.com/reports/2022-05-sturdy) | Code4rena | Contest | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [sturdy-aura-integration-and-leverage.pdf](https://certificate.quantstamp.com/full/sturdy-aura-integration-and-leverage.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32](https://cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mode | [`0xd577429db653cd20effcd4977b2b41a6fd794a3b`](./contracts/mode-34443/0xd577429db653cd20effcd4977b2b41a6fd794a3b/) | AggregatorAccountant | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf0382a9eca5276d7b4bbcc503e4159c046c120ec`](./contracts/mode-34443/0xf0382a9eca5276d7b4bbcc503e4159c046c120ec/) | AggregatorDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6f7c66f09922c04218b54a04261fca2310c76adc`](./contracts/mode-34443/0x6f7c66f09922c04218b54a04261fca2310c76adc/) | API3BasedETHEZETHOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xba4c10a7afa6376c47dabb9bedf349ea3a08170f`](./contracts/mode-34443/0xba4c10a7afa6376c47dabb9bedf349ea3a08170f/) | AprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c1201e12d5773410c35fe509dd0f4bb440d39d`](./contracts/ethereum-1/0x94c1201e12d5773410c35fe509dd0f4bb440d39d/) | IncentiveDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a84460e6df989c258d31017bdddedd54cc88561`](./contracts/ethereum-1/0x7a84460e6df989c258d31017bdddedd54cc88561/) | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x0ebf145136acd214997c1ccaa6c686d1880bb532`](./contracts/mode-34443/0x0ebf145136acd214997c1ccaa6c686d1880bb532/) | PythBasedAssetOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xb3d159d3c656925738e5733fb3aeb2a9cab92839`](./contracts/mode-34443/0xb3d159d3c656925738e5733fb3aeb2a9cab92839/) | RewardConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x5fad91704f52b173a5d9fb8cf83822a1d9848892`](./contracts/mode-34443/0x5fad91704f52b173a5d9fb8cf83822a1d9848892/) | SiloHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18`](./contracts/ethereum-1/0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18/) | STRDYLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17f960aedb1320358c9458b9fc71e7ac85922667`](./contracts/ethereum-1/0x17f960aedb1320358c9458b9fc71e7ac85922667/) | SturdyAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6cb759c980c2922731fe13b2edce5d4ed47ad6fd`](./contracts/mode-34443/0x6cb759c980c2922731fe13b2edce5d4ed47ad6fd/) | SturdyLeverageWihtoutFlashloan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87`](./contracts/mode-34443/0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87/) | SturdyLeverageWihtoutFlashloan1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x61eea4770d7e15e7036f8632f4bcb33af1af1e25`](./contracts/mode-34443/0x61eea4770d7e15e7036f8632f4bcb33af1af1e25/) | SturdyPairDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x6605111929527485e418e7714d24fb72f5380e1f`](./contracts/mode-34443/0x6605111929527485e418e7714d24fb72f5380e1f/) | SturdyPairRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x83eb3cf482810e79e9f562d8de87fedf038be768`](./contracts/mode-34443/0x83eb3cf482810e79e9f562d8de87fedf038be768/) | SturdySiloAprOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x168f6c2c46a58f4394924d14b9dc0a2b394519d9`](./contracts/mode-34443/0x168f6c2c46a58f4394924d14b9dc0a2b394519d9/) | SturdySiloStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d`](./contracts/mode-34443/0xae35858a62c3e6ded2945b76a2f08a0077e4ac8d/) | SturdyWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d503c017223b981c4b4794281a732339d05367`](./contracts/ethereum-1/0x41d503c017223b981c4b4794281a732339d05367/) | SwapBridgeAndCallFromMain | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaeb3607ec434454ceb308f5cd540875efb54309a`](./contracts/ethereum-1/0xaeb3607ec434454ceb308f5cd540875efb54309a/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0669091f451142b3228171ae6ad794cf98288124`](./contracts/ethereum-1/0x0669091f451142b3228171ae6ad794cf98288124/) | TokenizedStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x03aef503d5e5be4dfb02b3425b737006a9b390eb`](./contracts/mode-34443/0x03aef503d5e5be4dfb02b3425b737006a9b390eb/) | VariableInterestRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=42

Zero-match audit list:

- [13925] skynet.certik.com/projects/sturdy
- [13927] www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts
- [13930] code4rena.com/reports/2022-05-sturdy
- [13931] sturdy-aura-integration-and-leverage.pdf
- [13932] cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32

Fork inheritance lineage and inherited audits are included when available.
