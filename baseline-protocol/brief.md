# Agentic Audit Brief: Baseline Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 30.5% over 90 days

## Project Overview

- Project: Baseline Protocol (`baseline-protocol`)
- Website: [https://www.baseline.markets/](https://www.baseline.markets/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:05.295Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: base, blast, ethereum
- Contract surface: 121 unique implementations (121 raw deployments)
- DeFi Llama TVL: $102,316,796.84
- On-chain TVL (included contracts): $48,164,252.97
- TVL by chain: Ethereum $47,395,333.95 | Blast $768,896.86 | Base $22.15

## Project Description

Liquidity Manager. Structurally: 13 project-authored contract(s) across 3 chain(s); built on solmate.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (nodelegatecall). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 121 (7 live, 114 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/3 (66.7%)
- Deployed-live implementations: 7 of 121 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/7
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 114
- Unique implementations: 121
- Raw deployments: 121
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $768,919.01
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $768,919.01 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian Audits | Tier 2 | 1 | 14.3% | 2025-02 |
| Trust Security | Tier 2 | 1 | 14.3% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BToken | token | ethereum | n/a | [`0x9fdbde76236998dc2836fe67a9954ede456a1d63`](./contracts/ethereum-1/0x9fdbde76236998dc2836fe67a9954ede456a1d63/) | ✅ Audited |
| PreAsset | unknown | blast | n/a | [`0x60bf64ccaa52da304d456892dc0a8f1c5b159f61`](./contracts/blast-81457/0x60bf64ccaa52da304d456892dc0a8f1c5b159f61/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ThrusterPool | core_logic | blast | n/a | [`0x1d16788b97edb7d9a6ae66d5c5c16469037faa00`](./contracts/blast-81457/0x1d16788b97edb7d9a6ae66d5c5c16469037faa00/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | base | n/a | [`0xdfcfdf5dd0569d591e0bce28b5da3b13de09e3cb`](./contracts/base-8453/0xdfcfdf5dd0569d591e0bce28b5da3b13de09e3cb/) | ⚠️ Unaudited |
| BaselineClankerExtension | adapter | ethereum | n/a | [`0x4795ce4ed9292a9ca74e88389b97d50123e98035`](./contracts/ethereum-1/0x4795ce4ed9292a9ca74e88389b97d50123e98035/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | ethereum | n/a | [`0x8044f710c58b6ea6a178cc540f9f1cd758f7d1b2`](./contracts/ethereum-1/0x8044f710c58b6ea6a178cc540f9f1cd758f7d1b2/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xff0034bbf2a92d0e27717387f3f829f37241ee5a`](./contracts/ethereum-1/0xff0034bbf2a92d0e27717387f3f829f37241ee5a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (114)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x10ad8d2cb53db87454d2baf6d66a514f6f838083` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1117c9c13d152e2c84504533066676163b3b7470` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15b28f4c93dc3c91dfd8a898e52fd5ee24606b45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c52067485d90e71e89434419362ca621ea3bc4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30dba569a6f7bcf5218e244b8545b3065d36b615` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x312a20416a946ad188ce69659a9f45fb14eed1b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4488f733ebf9566ea862a0cd5e8efce26301bba0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52b8a6d3141538f544cca0aca51dae471f3542bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5375ea1824a18fedf975bbcdadc21d77fb8c838f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6271632aa27121dfd5c73090178d70e2ae4527cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66d6004c06c8b2dfd3e50013a61a73e993eb6f8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71addf26e40fe05ca3aa57cdf10430c70ab75f05` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77225498e13744e3b656156e21d0e4932cf239cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e0353b6014d0b04de0c495f7720e2110fd53cd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91d947028107300dfbcc16fb4a6ef65e516b6fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6f49dfca6668e1d520c8594452c6945eee596f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafaa95adb26fcd9094b46055a485f1fd6127c058` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2a9f3886134e5f6a19a1a87bd62343fe2685c64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2f8e94d0fd1fb4fa917c0d075f4a3f40b266d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb47a287d35c30cd4c2ee7d66cd32f47d8e1d879d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb54cb9833420114d60a04422c9f524dd10a851ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc1449f645926b497b3a402ac9a5d167e7d2d895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc44cc65d94aa096feb69f7f3fe2a4e654e189682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf36a13227295a6c051d8276868cd47dd58741bba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c056b34f2afa70ee1351e3659dfbd2097765275` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x143eba17f64c773f542e7bf126c9254c5160208e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a7190897282f9163dd49d057e8a821c7b9560cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b68244b100a6713ca7f540697b1be12148a8bf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a6f1b4e47f64eccdce0b91d237ed74718e11377` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b9a90b04f3f089cef0dd2648426c72e12f92b22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60bf64ccaa52da304d456892dc0a8f1c5b159f61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b129c94ee04ff4d989b0a0b2784fc8bcfe777ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ba0fc5542fad1931a5b765c220db2ecf3e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x831b6859167e5f2ccee37314ccee571529353fb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x92c567e67c42fc9c2df46d4fa944bd62c166d661` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fdbde76236998dc2836fe67a9954ede456a1d63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa35e4ac9565fb006812755c30c369314be3511d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc81fd894c0ace037d133af4886550ac8133568e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9329cb681d1338219b9e21e5e99754853436c8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9b2fa00e24310f712affd9c00ec8c2c42c0c34f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf57fe82572022deb88fb35c63775e29852df219c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0028389a3421263ba269a0850342c129326a330a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x028916068996c336e816518c01635a328ab12b31` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x058fc2e45f744a8f21e8642eab3c7d8569b6511e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0863109fd9a3162cd4bdbf10dbfbd40af2372c3d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0c056b34f2afa70ee1351e3659dfbd2097765275` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0d65a93740c5b0a2e0db3a070b5903789b01a8c9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0daf256d89b8c8ab257eaa8f0ec95f73022e4958` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0fb90e00840a7b7d8404876bae0325f96b8d344d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0fcadaedbebb5e1f318e1e39857712d02a77bed3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x143eba17f64c773f542e7bf126c9254c5160208e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x14cf81ecabce096428d7c2d4c08d90b0691c5075` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x158d9270f7931d0eb48efd72e62c0e9fffe0e67b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1a49351bdb4be48c0009b661765d01ed58e8c2d8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1d5232b55ce742dd5af1860b609446562fc16966` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x20fe91f17ec9080e3cac2d688b4ecb48c5ac3a9c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2273ec46ac8653f1c177d2e5feb92268cd9ca74a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x23fdf4b305fe715001ed55abaa0688097a96d87f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x25380d7baa0c3d77ef1379c0bbe58a1faf90f8ed` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x257a590b45675c0396662c8478a8c3b17dc21dde` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2782e79979d1ed23456f1ef30bc5e2f5ce1eb9de` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x278490c6be25e300d4332e188aadb9d220042903` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2c5adfe40d3cbf712ac1ec4a27203600a65347b9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x304d95be2802eb59a06743857e2f7ceb70e7a42e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x38d287c18f61e69d8f897bbb66faa8353f4f1ca2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x397f4df857bc30e6e9c2ee2b0650067aa030b59c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3c94420fa2524166721cb34e28ba2004654f967f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d5dab0d597f159f1fc3f8b277fdb73a338999d3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3e01c235bd346713a83fe64b62a2223610bc7b67` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3f29e21fb1d31700079da9583e5f239330167056` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x461fb138eb44194f3c26507f16c8f71d1b432443` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4d9a5d121e67e8c6a492864cf59144cc8cea343d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x592b8c3b3b23770117fcc82a1e5004fa5d36851f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x61b563659a3a6e5f01147a7a357a11fe266c2ef5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6435219b5d67769bd4e9804536c07e3eea825a2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x677106b51c025391f7c5c0ccc7c37f15e95f1a32` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6978db60da0b90696d11420deca24e5d9b78d5c0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7208dd341579f2e72142a3fbc13c20ecde64664b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x72c76816c42f07e669bdd6e13ea8c0f972fac683` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x76b7a24381044e7e8a726704f0919704aeabec04` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7ba0fc5542fad1931a5b765c220db2ecf3e09a4f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7c400a29f78aefb74d20b24454c002aa9472c0c9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7d88d9932a7d40e8de88dbabb170d2dda3e89c84` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x831b6859167e5f2ccee37314ccee571529353fb0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x882fcf3a336ba25e4756be0af7e323f5882b6147` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8b8728bd6ea273185d5bd8bdae594f1cd8fde38d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8c6e309f15c782b269b05a37acc1b81cf864ccd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8e85f498982a79e4335b067b5631c2d3c6b2d0a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9092a444a92e38f28f28de49da3ff6c760d9e568` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x92c567e67c42fc9c2df46d4fa944bd62c166d661` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x96c72dd7ec4e80773bb66c52cc535755af78515b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x99509b99e6f2624b57326b1cf48c052b3e0d3788` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9b4fbb3b201b2d38730bf3b968be4f6c0f436d2f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c628cf83b5c797b2de3519242277ef31b5d6fd1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9efbd1ffa09c80df0bc5bd035be1aec73f1cda34` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaabde74e61f43c342fc333fbf5dd765e20f088b5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xab5ece6582506277cd64f0aa2d72c323806cf65f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xac866e4e676f860e18b16ade9e393859b774ff87` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb87950b5d490b4315b7a69eca6d75e654f915ccb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd7e83767777d92adcfee05f78c06fd2c27622ff` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd85fca270418b611afd7ef898931443a5c93852` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbe341f437387d312d59fa35dea896fa13466bbec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbe660e6f31d5dc102147cd09c4696cc8e6a161fc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3831b4dd70f941757b2c4eb30a5d44e2ee1c8ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3c85d5fceb53e4a6a48e076af7ec857bbe86796` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc944a7c1d4f44ca5e1713acbae4fe1bf073ce145` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd7e6ad255b3ca48b2e15705cc66fda21eb58745a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xda9909bf00beca3e59164715d80664e2cf3b2f93` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe931f5dd03d08a4eed53a039f0f4f8a8faa8925c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeca6a69f8dfc49547cfade8992600ceaad9cc83d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf370a17a3dfadc6e768bf51dc41c24cd887ecdc6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf4c2b8a0f7bd6492a3a4ba66edc8db894620ffd0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf9d9a93e4ae01904a612ecc1f5740ee101ac3e52` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe49b8f38130d3b3fb0a2ad0697d81df4f18dd84` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-02-27_Baseline_Fixed_Supply.pdf](https://www.baseline.markets/assets/2025-02-27_Baseline_Fixed_Supply.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [2025-02-03_Baseline_MM_Looping_2.pdf](https://www.baseline.markets/assets/2025-02-03_Baseline_MM_Looping_2.pdf) | Guardian Audits | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [2025-01-22_Baseline_MM_Looping.pdf](https://www.baseline.markets/assets/2025-01-22_Baseline_MM_Looping.pdf) | Guardian Audits | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [2024-11-28_Baseline_Credit_Migrator.pdf](https://www.baseline.markets/assets/2024-11-28_Baseline_Credit_Migrator.pdf) | Guardian Audits | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [2024-10-27_Baseline_BToken.pdf](https://www.baseline.markets/assets/2024-10-27_Baseline_BToken.pdf) | Guardian Audits | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [2024-08-23_Baseline_Loops.pdf](https://www.baseline.markets/assets/2024-08-23_Baseline_Loops.pdf) | Guardian Audits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [guardian_v2.pdf](https://www.baseline.markets/assets/guardian_v2.pdf) | Guardian | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [audit_trust_security.pdf](https://www.baseline.markets/assets/audit_trust_security.pdf) | Trust Security | Audit | 2024-02 | stale | Direct | contract_name | 1 | high |
| [trustsec.xyz](https://trustsec.xyz/) | Guardian | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4795ce4ed9292a9ca74e88389b97d50123e98035`](./contracts/ethereum-1/0x4795ce4ed9292a9ca74e88389b97d50123e98035/) | BaselineClankerExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 114 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=3

Zero-match audit list:

- [4655] 2025-02-03_Baseline_MM_Looping_2.pdf
- [4656] 2025-01-22_Baseline_MM_Looping.pdf
- [4657] 2024-11-28_Baseline_Credit_Migrator.pdf
- [4659] 2024-08-23_Baseline_Loops.pdf
- [4660] guardian_v2.pdf
- [14627] trustsec.xyz

Fork inheritance lineage and inherited audits are included when available.
