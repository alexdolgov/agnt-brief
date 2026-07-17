# Agentic Audit Brief: Kinza Finance

## Project Overview

- Project: Kinza Finance (`kinza-finance`)
- Website: [https://app.kinza.finance](https://app.kinza.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.247Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: bsc, ethereum, mantle, opbnb
- Contract surface: 115 unique implementations (126 raw deployments)
- DeFi Llama TVL: $6,547,336.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 51 project-authored contract(s) across 3 chain(s); 10 ERC20 tokens, 12 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 12 common project-authored base contract(s) (proxy, erc1967upgrade, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 238; live-surface contracts included: 126 (24 live, 102 unknown).
- Excluded by liveness: 112 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/10 (10.0%)
- Deployed-live implementations: 13 of 115 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/13
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 102
- Unique implementations: 115
- Raw deployments: 126
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 1 | 7.7% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProtectedNativeTokenGateway | unknown | bsc | n/a | [`0x88e6ee8bae18ebbc9a49f9627a0ea4ff94239337`](./contracts/bsc-56/0x88e6ee8bae18ebbc9a49f9627a0ea4ff94239337/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveOracle | operational_periphery | ethereum | n/a | [`0x39abeda13579fbb4effb31b5f38bdc91ae754a39`](./contracts/ethereum-1/0x39abeda13579fbb4effb31b5f38bdc91ae754a39/) | ⚠️ Unaudited |
| ACLManager | governance | ethereum | n/a | [`0x9074fca9c7a77c7078b5bbfec33f74191d095fdb`](./contracts/ethereum-1/0x9074fca9c7a77c7078b5bbfec33f74191d095fdb/) | ⚠️ Unaudited |
| AToken | token | bsc | n/a | 3 deployments: bsc [`0x26c8c9d74eae6182316b30de9ac60e2adc9f4a04`](./contracts/bsc-56/0x26c8c9d74eae6182316b30de9ac60e2adc9f4a04/); bsc `0xe48967b3ea41484cf70f171627948084cb796f5c`; bsc `0xf5e0adda6fb191a332a787deedfd2cffc72dba0c` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | bsc | n/a | 2 deployments: ethereum `0xd74d4495936b066218eb9bf20995bff93574bc8d`; bsc [`0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871`](./contracts/bsc-56/0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x8c99b0141849d8097309c8ea78f86b7bb65baa58`](./contracts/ethereum-1/0x8c99b0141849d8097309c8ea78f86b7bb65baa58/); ethereum `0xa3ec77d52696d249440c2d2466b917c5e3edfd16` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | mantle | n/a | 3 deployments: opbnb `0x55033063c7801eacfda99e97429f92523e9b1ed3`; mantle [`0x3cc8dc73aee77f787f3322e3ce61e14e58561d68`](./contracts/mantle-5000/0x3cc8dc73aee77f787f3322e3ce61e14e58561d68/); mantle `0xb00083e6c3c57c2443ad5d7b98314d98ea12ee28` | ⚠️ Unaudited |
| kBTC | unknown | bsc | n/a | [`0x9356f6d95b8e109f4b7ce3e49d672967d3b48383`](./contracts/bsc-56/0x9356f6d95b8e109f4b7ce3e49d672967d3b48383/) | ⚠️ Unaudited |
| Pool | core_logic | bsc | n/a | [`0xcb0620b181140e57d1c0d8b724cde623ca963c8c`](./contracts/bsc-56/0xcb0620b181140e57d1c0d8b724cde623ca963c8c/) | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0218890dd636c3a1cf0f98557ee2d3612c6bd953`](./contracts/ethereum-1/0x0218890dd636c3a1cf0f98557ee2d3612c6bd953/); bsc `0xca20a50ea454bd9f37a895182ff3309f251fd7ce` | ⚠️ Unaudited |
| PoolConfigurator | unknown | bsc | n/a | 2 deployments: ethereum `0x824a5b69e35ccee5d399461bf922fab5b11eabbd`; bsc [`0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb`](./contracts/bsc-56/0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb/) | ⚠️ Unaudited |
| ReservesSetupHelper | unknown | bsc | n/a | 3 deployments: bsc [`0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794`](./contracts/bsc-56/0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794/); bsc `0x2a81080e4fdba4e8cb28688a3162f3bc9e3b22b8`; bsc `0xd9c5bdf9c17934d480dfa47c3c1276458f788f57` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | n/a | 2 deployments: ethereum [`0xa4cd4b5004ab42758bcb8893a10c5b3532781087`](./contracts/ethereum-1/0xa4cd4b5004ab42758bcb8893a10c5b3532781087/); bsc `0xcc650b486f723c924370656b509a82bd69526739` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (102)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xd27b00d278c9c03b45c379ae9ac50364db3f83f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x209f07ce8e62c2709d2a63a6a39f315763d4d475` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x433958a0dd8b9040a10fc0f8a0e2d9cbcaa26027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x439e1327c014fbd3b57b446ff9f2640883adfcad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe26b3e738740cc099077fb183c0fdc0dce9cbb9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf01f3240145485edf267713df6dcc08ad36b98cf` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x004a9eac7ceaf27b4a1a7746d677bfa704d9cba6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x077893c85114aee560155af4eed61f717e8abc6f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0c2d7e456b0d0ab80dca148e60d23cf6304fe543` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x0df5a3c7f28514873ab3b2c11a76d30073d95eb5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1c40cea7870e2a561455d4aa8f30995ed7806836` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1e1a67d035113376cebcb11477bcf36aa229dffe` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x1f84bf932e1c60ee94bf04d1ab1c08dff9f0db11` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x209f07ce8e62c2709d2a63a6a39f315763d4d475` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x260a7f2ba4c52e341852cdb43b20c9bf0eeb0068` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x2a81080e4fdba4e8cb28688a3162f3bc9e3b22b8` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x30777a478886ecfca0dc8b023e4fd19b133d616f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x342019c99ea2869e1233bb461420078c149a00f1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x35d8d765fb0a15d8f7e75df0830d91e34df97c8a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x36be6c1ba1981238e4d2ebc281feb6370b15b9dc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x37d7eb561e189895e5c8601cd03eeab67c269189` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3f8860ee386c04406dc958e91c8ed3d380cab067` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x3fb65bc0cfcf1a72627788b5eda4a7c0b0031710` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x41822c45348358d612f8d4e3e1bc1aa2be92a85e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x4bacc3809c8a61420e89230cb8b6a34c5171c9d5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x52cf67173ada7d78be97a319f61fd3e39d7bc7ee` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x54c33c8669d52bb0cd6682db419483a1e86d8e67` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x54c547d42b16eb2b6ab84be94c2dec2bd810df4c` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x565ef2e769a63e9a61a19e9d4fec53885fc1a7bf` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x5ceb0eb4233e0949460ae03577d6433b0a546673` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x6e5b5c70e768f3b0c7df0338fe00b6e8d3f59046` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x722f6ef467f192d4c9006cc1ef02b114de59e1b5` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x75257e84a4fbc8c6b78a407db9b0314ea9f04bbc` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x763b2a4eba91c3667a74ba87a7142be3282fc1c2` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7954f3efe905d4f2690a05a594886706f424327f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x7ad8c5ac471b1cbb6b370904aa40aba90e1006b3` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x88e984b6b107691f1edfaf6eb360447b685fe4de` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8a845179d4b670f514b35368fc31e70ff58a1278` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x8c9c9544ff70dbf8a7303f4c6396b80935779013` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x947ad31106fcca664650dc5a69596964751f3669` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x993e9a7e2dec99b86f982deb0f37ade278949fa4` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0x9c580ccf9cf07f66f5c51c1535f62e2b5d781585` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xa6265a8ce6f89610d3f97851abcf7f8203b006fb` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xab98aea0af87c733259deb7a771a819f496f18c6` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xb62afd0f911af3ae28fb69a3eee3292b67fa8345` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xbb5f2d30c0fc9b0f71f7b19daf19e7cf3d23eb5e` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xbc4318a1b2af6970dd1c0ff20f78c3ec13357a2f` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc086e15c3c2557aaac1f7301e99b9386d090241a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc62cd18829b049b1dc5b98adb95c690225ad0aa1` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc7da75e3c5d15eb2002af72ce958cddc49a67e8a` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xc8cb15bc73b7f5f95af33aece738bc9b62cb28d9` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xca0edab0a260fae8b636d0125f0cc148081dd0e0` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xca20a50ea454bd9f37a895182ff3309f251fd7ce` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xcf46f77cd75a17900d59676fbe4b88aadcba9533` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd67ff7722f29c83bf828c35b0b2e807dbeeff410` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xd9c5bdf9c17934d480dfa47c3c1276458f788f57` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xdc68acff77e56194ae9ca90e907ed3af81065d8b` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xde451b696c99b7ce77b944e12abdcb34e3b69802` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xe8fcad9bc9b0d2740e027ebc79ecbd79355ceb4d` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xec95829b445112b07d7cb37bd4bf77480f9b9851` | ❓ Unverified |
| UnnamedContract | unknown | opbnb | n/a | `0xef31e788d4b2c3eae1c11e3b14886dadae24905d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x002618abf58a823369bf28733917c41dd22315b2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0536e70b23dae92e7cc258c69d03f341fd0051ea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0d4af5fa2e6351b94c837ef462884b3b678381b8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x18cc2c55b429ee08748951bbd33ff2e68c95ec38` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1c3a496aabcf25f4503c4f5b1e375020eb6b001a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x26b1646b78ec77a8694ada40cb61822ef97e87dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x28a3f4e09bea824ece94633062c11aac2f3f873c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2f31ac4e888ee9b23e1492be712e1cad80c2e608` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x34edc3ee8eab1233a6172c60a495a6480b972891` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3ab164b1f68c3717467002ec47e31246c76596dc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x51ff3652ae7a9bff32b368cf442c897bc9373d64` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x532ece6556c68685fd7f309c25b62efdb1757d72` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x58067dfe11546ed2b7962e2d7889e8bed9bc6d90` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x69424f1bd33571b91546e22360e2398a50f1ced7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6cf78ea908de00f29320166099f43334db9d5fc0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6f230ed5c4c5ab5b177dd7c41233718a732bf7e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x70fce74a7a0829a3fc48c8f4931936c8dd82e5ce` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7287d93f5a25968674445db354cfc24f54617f7f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x758fb1e27510c0ce0e88fafa23705081a6f61f13` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7ba63aac1f7f06687fc8614524ee496787aef8c5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7d345829eda07f25e61feefbed7a29306cf3bf9b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9be413a744461323f3e62d90e59adb1d7a612eb0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9cd978871423c7032006d71c89e402d810b01f71` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa4f75b62a40aae8bec6e1605cfb60e36b133bd4b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xad48812a9d81acf8de5bfc93c7d6d7165920abc2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbb0a4949090c3a468fcd0b2034d240951ac40153` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbdf463ce9156024a49edaab15e84b02aa20f4b09` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbf26028aee28d026e7d5e8c37430a729a87e51b6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc16ba9181ae4a88287b7aeab248df432280e6962` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd5e6a1d0eaec7f6020b705a7e86043393bc0b303` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd624345620293a0dbe12812fb3db93e6907a9438` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd7933c586406d5dde9d76c8c7df1ea86a9920d7a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe03379f5d19c055d5c2fe97e1490cdb172fd9bdb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe2fee99cc5274dd085859ccd66de285bf50583c0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe5ca433307c8e32e1358030785d9349dad283ffc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe5f5462b544f09425b4cc37de3fbc068b6661095` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xebf6871f682f7adf67d562bd7789afa3e7e05606` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xec63c5b01a7953bffe40e356a49fc0827a5e2c18` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf29d81decbde520258ff68662e0cbd05aa7a11ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf4f615a4c7470de8797343463c369b655be7df96` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513](https://omniscia.io/reports/kinza-finance-wrapper-contracts-64d2056905462d0014ff3513) | Omniscia | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [Salus-Kinza-1.0.pdf](https://github.com/Kinza-Finance/KZA-1.0/blob/main/audits/Salus-Kinza-1.0.pdf) | unknown | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9074fca9c7a77c7078b5bbfec33f74191d095fdb`](./contracts/ethereum-1/0x9074fca9c7a77c7078b5bbfec33f74191d095fdb/) | ACLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26c8c9d74eae6182316b30de9ac60e2adc9f4a04`](./contracts/bsc-56/0x26c8c9d74eae6182316b30de9ac60e2adc9f4a04/) | AToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871`](./contracts/bsc-56/0x306ca8e36c1dcc1e160f94d1eb5fd97cea889871/) | ConfiguratorLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9356f6d95b8e109f4b7ce3e49d672967d3b48383`](./contracts/bsc-56/0x9356f6d95b8e109f4b7ce3e49d672967d3b48383/) | kBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb0620b181140e57d1c0d8b724cde623ca963c8c`](./contracts/bsc-56/0xcb0620b181140e57d1c0d8b724cde623ca963c8c/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0218890dd636c3a1cf0f98557ee2d3612c6bd953`](./contracts/ethereum-1/0x0218890dd636c3a1cf0f98557ee2d3612c6bd953/) | PoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb`](./contracts/bsc-56/0x25b36ed1e5b5b2b2978d473ed42928d3b6e902bb/) | PoolConfigurator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794`](./contracts/bsc-56/0x1f0d4b5e45e9d471aa67e3a1eb0a786e82450794/) | ReservesSetupHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4cd4b5004ab42758bcb8893a10c5b3532781087`](./contracts/ethereum-1/0xa4cd4b5004ab42758bcb8893a10c5b3532781087/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 102 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [10238] Salus-Kinza-1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
