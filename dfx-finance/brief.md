# Agentic Audit Brief: DFX Finance

## Project Overview

- Project: DFX Finance (`dfx-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.103Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, base, ethereum, polygon
- Contract surface: 45 unique implementations (156 raw deployments)
- DeFi Llama TVL: $106,814.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 29 project-authored contract(s) across 3 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 3 common project-authored base contract(s) (storage, nodelegatecall, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 210; live-surface contracts included: 156 (125 live, 31 unknown).
- Excluded by liveness: 54 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/12 (8.3%)
- Deployed-live implementations: 14 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/14
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 45
- Raw deployments: 156
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 14.3% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Curve | unknown | base | n/a | 3 deployments: base [`0x3fb5e30d3ce5f3f194c90a2689b1fd20c82f1637`](./contracts/base-8453/0x3fb5e30d3ce5f3f194c90a2689b1fd20c82f1637/); base `0x86fffd464875581a0f4b7b2ea1187c74c6fb9fba`; base `0xc015f66ad7780df4d73f99c5cee415eb6b26acb0` | ✅ Audited |
| Router | adapter | ethereum | n/a | 14 deployments: ethereum [`0x0bf90521ebd840947845f4466018456aab08bb09`](./contracts/ethereum-1/0x0bf90521ebd840947845f4466018456aab08bb09/); ethereum `0x9bba6805f25b35bdf65e50a42015369e7825428e`; ethereum `0x9d0950c595786aba7c26dfddf270d66a8b18b4fa`; ethereum `0xa557373168c1914422b669cbaf9145b225066a7f`; ethereum `0xc7da9f5bda76e2c62d3455bc18e836032fe87945`; ethereum `0xf04d98dbb50884250be010f25c2650579552b51b`; polygon `0x142e17a35ebdda78ac86ce5c0ae4a85d5c2dc1e6`; polygon `0x5131dac921a133f8a297dcb1a7545b2db8d6370a`; polygon `0x575f1ed1e14ac1152bf2f1cdfb2c1865ca246f51`; polygon `0x5cf6d43e4cd920fc7754926a267d46e096baa168`; polygon `0x911073ad69875090152b3fd767d750cf5002193f`; polygon `0xb4802e1805558dac082eba2771f93bbb981e5549`; polygon `0xe325dc2c5968105b63c2db75333126a66fdf7345`; arbitrum `0xbc3011980ff3462980a8ebc49d8c6585e4624406` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssimilatorFactory | unknown | polygon | n/a | 19 deployments: ethereum `0x14684c1139c7238d9fb4f9a16019d45ee7ef753d`; ethereum `0x275757b9d16f20a8bb776828e2b6b9eea1fa2300`; ethereum `0x583ef72807095cd68ffde9a764cf73df401cb772`; ethereum `0x65071363538824f18a0261200843f03f7293757a`; ethereum `0x74caafa85447d893b08c4f5bf0a722561f380687`; ethereum `0xde9c71503648c03f529305e03d259f2eba9c8fde`; polygon [`0x03df87a207a73e9f4e96c7f3546d25e187babd97`](./contracts/polygon-137/0x03df87a207a73e9f4e96c7f3546d25e187babd97/); polygon `0x1134daeaa652e11360631e3cc93e688204d9354b`; polygon `0x3a3f59467880bd9cabe680e46b23e456b8d903ff`; polygon `0x3eba4ae4699cf5518bfc8f8401ed94c4a95444c6`; polygon `0x5c690559a6a4d2fd1c7fd18442423e078e6da105`; polygon `0x60d9dacc26280c79b14739a141819f641681d03a`; polygon `0x6df563d3cb5ba31e6ff2f753ecd60c52e61b7e38`; polygon `0x6fa11a01c00d62bf0ab8aa76bec9105bf952cded`; polygon `0x749e13d4c04d98292174e5006c85186b9e9f6628`; polygon `0x7e5739244940cd3c8137ba90b6eb0c139da5f35c`; polygon `0xfb20d3c2dd6cf44c2c1e6d8c8bd9b353257e4e50`; polygon `0xff6ab33c1ab250e030fbec45a6ac0a017864818e`; arbitrum `0x1134daeaa652e11360631e3cc93e688204d9354b` | ⚠️ Unaudited |
| AssimilatorV2 | unknown | ethereum | n/a | [`0x2cd18405163f6c928a1508b442b76a5135883024`](./contracts/ethereum-1/0x2cd18405163f6c928a1508b442b76a5135883024/) | ⚠️ Unaudited |
| Curves | unknown | ethereum | n/a | [`0xb397946634f30c51da0d38e7dcbb10363e50961e`](./contracts/ethereum-1/0xb397946634f30c51da0d38e7dcbb10363e50961e/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | ⚠️ Unaudited |
| OFTAdapterV1Decimal2 | adapter | base | n/a | [`0xf75f1e19912352e1ad8c8ce9577381c277d232d0`](./contracts/base-8453/0xf75f1e19912352e1ad8c8ce9577381c277d232d0/) | ⚠️ Unaudited |
| Orchestrator | unknown | polygon | n/a | 14 deployments: ethereum `0x1190da269ffe6f4567fed0c3c9bba01f88372254`; ethereum `0x5c690559a6a4d2fd1c7fd18442423e078e6da105`; ethereum `0xa0f599414c0f66e372200b16e9533c9c9e777fdd`; ethereum `0xbc875fac17a1334a340e8ea7035368d6c8d8222e`; polygon [`0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7`](./contracts/polygon-137/0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7/); polygon `0x11654bb1e4bc79894e4447545af6c1630b56921f`; polygon `0x3bd0e9716bfa3bc0e755046f6893fcf78d34fe3c`; polygon `0x425fa6974dcad050e401f795ac1332c5f8ce94a9`; polygon `0x6b5debc22960ece445f787f9cddb0508fc3f2bf4`; polygon `0x74caafa85447d893b08c4f5bf0a722561f380687`; polygon `0x876bb32f32b4fcd3bf7a83af04340c6ec0cc3409`; polygon `0xd0562cd2af6d1d2c78fc5a52e57620c41b517277`; polygon `0xd3773e7ccdc2fa9aafdffb741544248af5bfe1e1`; arbitrum [`0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7`](./contracts/arbitrum-42161/0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7/) | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | ethereum | n/a | 15 deployments: ethereum [`0x03416eed4ecd6ecdf95ac106ca0572469d18b5cb`](./contracts/ethereum-1/0x03416eed4ecd6ecdf95ac106ca0572469d18b5cb/); ethereum `0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0`; ethereum `0x809423ef4e30f58a9334e695cc3815ae706182f3`; ethereum `0xc706884898f9ffd13c204dc8d9af2a87c647c13b`; ethereum `0xc7f49e9b4991663cb3d216de351843dbd12eb7ca`; polygon `0x1fa99c42775db6f4829fae22e24772bee7116323`; polygon `0x3a2f9e9cdc6791c52dbb79dd271bd02817082379`; polygon `0x3f9414fb09f9ab3de99606ac20c4eb64786d0d21`; polygon `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157`; polygon `0x85fa8b9df88cbfbeada955bff4a7337b27151dbd`; polygon `0x8baf5fea3a13c2702bbb4491333132d80fc45cea`; polygon `0xc7da9f5bda76e2c62d3455bc18e836032fe87945`; polygon `0xcd743a1cbeda7e6606215689e8ab2ee283a5c58c`; polygon `0xf524f967fa5d9f46c29f4bc3cf2c7f338ff26f4f`; arbitrum `0x85e9690c2d4c6cae31d96f9b5afe6d111d165157` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32`](./contracts/ethereum-1/0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32/) | ⚠️ Unaudited |
| Swaps | unknown | ethereum | n/a | 14 deployments: ethereum [`0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4`](./contracts/ethereum-1/0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4/); ethereum `0x2b2bfe80547f50e1a67bbf0d52c24e0683f67b6d`; ethereum `0x74982d2fd25ca0e0dee702e40affd93bae04d3a6`; ethereum `0xe35d0d2d4e0cba78c31806998a3af1862a681c26`; polygon `0x1190da269ffe6f4567fed0c3c9bba01f88372254`; polygon `0x29364aadb9e70ad603e6f677f06b28cf696fce4e`; polygon `0x2cd18405163f6c928a1508b442b76a5135883024`; polygon `0x47fa06909bc39739201591e20523a52e4142dd2b`; polygon `0x50e5f616598c8eae1fea9c4337987d2fc1723636`; polygon `0x5a0b0b891aeec2afbefd094938b40eab5ae2db61`; polygon `0x6d0ac92ca8dc4a76f1d7d98e702bb2f7d08543ec`; polygon `0x9bba6805f25b35bdf65e50a42015369e7825428e`; polygon `0xa49bf76606a82e75b9d6769ced0aa1b4cd8e5ecd`; arbitrum `0x1190da269ffe6f4567fed0c3c9bba01f88372254` | ⚠️ Unaudited |
| TimeLock | governance | base | n/a | [`0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d`](./contracts/base-8453/0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d/) | ⚠️ Unaudited |
| ViewLiquidity | unknown | polygon | n/a | 14 deployments: ethereum `0x1134daeaa652e11360631e3cc93e688204d9354b`; ethereum `0x2633652933e6318edec9a510bcaeb6f47150284b`; ethereum `0xe553c6c9e3c8bf66f396a3bfe88e4ff4c8ef2fbb`; ethereum `0xf825968d6b6160fdf40d0e178d81c2c3db4190b2`; polygon [`0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0`](./contracts/polygon-137/0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0/); polygon `0x1123e6b7dd33beafbaeaaabd0a5f920113284d2e`; polygon `0x2e28f70b3ac5932c82623145481a3662928c6b14`; polygon `0x7c799d864ab0ed9a30f4bc0f66884602aae1d7bb`; polygon `0x9166d82e2d3c2c25850c3df0bb21518db44ab9c6`; polygon `0xd3f216db1e43ebae3c1d3fe35853e81fbc845cbc`; polygon `0xd6af8d8bf04104f9b0f9f20b863e60d8f9b3e6f0`; polygon `0xe0e43558b4d0f71d16f4f5cd9e11e026bba48f95`; polygon `0xf3cc0702493d394323187f330830b7bf0a9b545d`; arbitrum [`0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0`](./contracts/arbitrum-42161/0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0/) | ⚠️ Unaudited |
| Zap | unknown | ethereum | n/a | 26 deployments: ethereum [`0x0c84e1265aec391ce7f867573d9cc2ae1314d0af`](./contracts/ethereum-1/0x0c84e1265aec391ce7f867573d9cc2ae1314d0af/); ethereum `0x0e1532173120b81226eaf012c553267c0f5346ff`; ethereum `0x3c380dc5bb35d095972d0d6ca7c302f915d1d080`; ethereum `0x607690f749fadb8fb87fc01f6dbdee277eea5fdf`; ethereum `0x64d65e3d70ba0f8812a9d1d7b8b5c51dab78cd15`; ethereum `0x6fa11a01c00d62bf0ab8aa76bec9105bf952cded`; ethereum `0x7c1f74c9dd441e5954d25096693ae6e67050d308`; ethereum `0x8955300082645728e2c2e5c75d8ceb82e51adf56`; ethereum `0xbb3aef24b2dd80ecfc866f381ce3f2a4a5a4e399`; ethereum `0xc470d3bd46e1fb0536714b7141bd122d132e5ec7`; ethereum `0xefe8f6ba38ca707ce0aca62f00596314d64a6e74`; ethereum `0xf0572e2bf615911656616170b8d12436abfece0e`; ethereum `0xf3cc0702493d394323187f330830b7bf0a9b545d`; polygon `0x1687f015321eacd48606db96d2895eac36523a18`; polygon `0x18c751767e0e7cb1fce69fff77700b06e441c304`; polygon `0x2420d5b50c268c20f6edb34df93ced68f57cf493`; polygon `0x659b4ca6e603a19dd20434bccf79a5f36473a9a4`; polygon `0x77527e4450236d2e429d667c23cda4a88c304f21`; polygon `0x81c1f4739ad6a5d44fa17e88aeec563bed9fe958`; polygon `0xa070fb11969a50aacc885b7b5245cbc84de2214c`; polygon `0xb6c42f1dd6fdd0f44ed669f6c14c05cab0bf482b`; polygon `0xfcb58a28017530aa40a43719184a026fc82a648f`; polygon `0xfd2c0ed6326130d1923d81674c8cfd7034435f29`; arbitrum `0x17ff40a68fe98aaafe199931888bffb692a25320`; arbitrum `0x3e1941aa6d077262373c9fc1f29775e8e01bf083`; arbitrum `0x60b818c16795ac1caee5f555f64891e896757771` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (31)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0f0accbc8e386a40ebab5bf376101367e6f9d64e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2635eac0197638d0534f9db6aaf439dffe7cff4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a22a524337c7fa74a121471834981e4fd6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4600c103c1db1eabcf7342209b3f258011215885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50d076204d4cca465ccc97f976b295bea450d887` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e5739244940cd3c8137ba90b6eb0c139da5f35c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dc15673477fc356db21ad8224db41123d3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f36313af9cb9547672cc555ce2c6e77c9ed8222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9544995b5312b26acdf09e66e699c34310b7c856` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x984b4c1fae2b8952cf063a8eb2e80f02641ff49d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xccf12d3a5b6eafe47c5ca9b23091d86db5878129` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6c74a83d2b8d1b6a1b46d499cf274dfba647ad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf599de56f0dd387cabd49c80c16bcc7528e6a63f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1451a2c13624ed7a9bbc85b15be8668ef862788f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14684c1139c7238d9fb4f9a16019d45ee7ef753d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23368c25af4f88f4b20ac559cec7f7fbe1a45560` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a22a524337c7fa74a121471834981e4fd6e6a5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a5bb820a07ed593839e305ec5d315cd7facc480` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x538f00dd2daa8a76367ef77ea2672fac26ee8273` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x583ef72807095cd68ffde9a764cf73df401cb772` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7d3d69c14497a1cbc01f79fff71426a6e6993c17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x80e9f62371063574f6e0889874d3f24416c49c7a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8dc15673477fc356db21ad8224db41123d3f8ce8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99063f5da142be6763967a752d53a85232391943` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9e9f4ce3604ea21c7232ac0d1891f842cecfb74d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa51c0b378c044c44415ad8f00c2e1152eafe9c31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa5a3ae034bdda0364cf4a00ea1aee0396467ff2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe6c74a83d2b8d1b6a1b46d499cf274dfba647ad3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xec7df682c3bf69c66e368bccba9632da41e4107f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6a1775ccfdfe2c37b3375798a3cf3b7ded4532d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-05-03-Trail_of_Bits.pdf](https://github.com/dfx-finance/protocol/blob/main/audits/2021-05-03-Trail_of_Bits.pdf) | unknown | Audit | 2021-05 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x03df87a207a73e9f4e96c7f3546d25e187babd97`](./contracts/polygon-137/0x03df87a207a73e9f4e96c7f3546d25e187babd97/) | AssimilatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd18405163f6c928a1508b442b76a5135883024`](./contracts/ethereum-1/0x2cd18405163f6c928a1508b442b76a5135883024/) | AssimilatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf75f1e19912352e1ad8c8ce9577381c277d232d0`](./contracts/base-8453/0xf75f1e19912352e1ad8c8ce9577381c277d232d0/) | OFTAdapterV1Decimal2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7`](./contracts/polygon-137/0x1020e08935e9f8ee963356f4c47d7fe8a024c8a7/) | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03416eed4ecd6ecdf95ac106ca0572469d18b5cb`](./contracts/ethereum-1/0x03416eed4ecd6ecdf95ac106ca0572469d18b5cb/) | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32`](./contracts/ethereum-1/0xd52d48db08e8224ef6e2be8f54f3c84e790b1c32/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4`](./contracts/ethereum-1/0x0dc8c87340fb9cf95ba687852e04bddf08d07ed4/) | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d`](./contracts/base-8453/0x30d940c7b4a21e10f3fcaf4faabe8fe826a5b92d/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0`](./contracts/polygon-137/0x0a7e79b7a4912ea42f82e25b9c033919b97f6fb0/) | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c84e1265aec391ce7f867573d9cc2ae1314d0af`](./contracts/ethereum-1/0x0c84e1265aec391ce7f867573d9cc2ae1314d0af/) | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
