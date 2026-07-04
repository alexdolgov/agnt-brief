# Agentic Audit Brief: DxSale

## Project Overview

- Project: DxSale (`dxsale`)
- Website: [https://dx.app](https://dx.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.298Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, avalanche, bsc, celo, ethereum, fantom, gnosis, harmony, moonriver, polygon
- Contract surface: 349 unique implementations (379 raw deployments)
- DeFi Llama TVL: $15,243,348.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 17 project-authored contract(s) across 7 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (consts, variables). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 394; live-surface contracts included: 379 (3 live, 376 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 349 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 339
- Unique implementations: 349
- Raw deployments: 379
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CUSTOMTOKENDAPP | unknown | polygon | n/a | [`0xa3abea...dae47b`](./contracts/polygon-137/0xa3abeafa40ca4456c3fde2bad46d592515dae47b/) | ⚠️ Unaudited |
| DxFire | unknown | ethereum | n/a | 2 deployments: ethereum [`0x830cde...789db7`](./contracts/ethereum-1/0x830cdef017761cc1db7214a4dd86f357ce789db7/); avalanche `0xf8f929...30f843` | ⚠️ Unaudited |
| DxLockLPDep | unknown | bsc | n/a | 3 deployments: bsc [`0x5b5e94...6829b6`](./contracts/bsc-56/0x5b5e94485c9628793b01a38762921dc37b6829b6/); bsc `0xeb3a9c...53e449`; polygon `0x6fcc2e...687666` | ⚠️ Unaudited |
| DxStandardToken | token | ethereum | n/a | [`0x1d37fb...71589e`](./contracts/ethereum-1/0x1d37fb68b2679200844b57b2cf7a17260271589e/) | ⚠️ Unaudited |
| PresaleOwnerFinalize | unknown | ethereum | n/a | 11 deployments: ethereum [`0x10f485...817b95`](./contracts/ethereum-1/0x10f485b855be8e7d377fbe60e5d5676d88817b95/); ethereum `0x51f411...e96df4`; ethereum `0xaad287...bbfeb4`; gnosis `0x3917ae...6d5e73`; gnosis `0x554d52...4d199e`; gnosis `0x857b52...8b401e`; gnosis `0xdb6e6d...bd225d`; polygon `0x335a1f...af4db3`; polygon `0x554d52...4d199e`; polygon `0xb937c8...612dd4`; polygon `0xdb6e6d...bd225d` | ⚠️ Unaudited |
| RouterDeployer | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa5da59...7cd7f9`](./contracts/avalanche-43114/0xa5da59f5126ee48ffd44e184c489ef8b2e7cd7f9/); avalanche `0xef8b07...ad2e25` | ⚠️ Unaudited |
| RouterInterface | unknown | avalanche | n/a | [`0xd50715...af47ff`](./contracts/avalanche-43114/0xd5071536d1a2aff6db130917b4c1fa7b8daf47ff/) | ⚠️ Unaudited |
| StandardGenerator | unknown | polygon | n/a | [`0xed85da...b1ea6c`](./contracts/polygon-137/0xed85dae67ff56335136beea446ad2aaf04b1ea6c/) | ⚠️ Unaudited |
| TokenAuditVerify | unknown | ethereum | n/a | 3 deployments: ethereum [`0x66e7ce...2bdc91`](./contracts/ethereum-1/0x66e7ce03cd45b41077814850b2c57e28142bdc91/); polygon `0x9c47ff...d51b15`; avalanche `0xbd8c57...f341b9` | ⚠️ Unaudited |
| TokenKYCVerify | unknown | polygon | n/a | 2 deployments: polygon [`0x04e21e...3cbf48`](./contracts/polygon-137/0x04e21e0c4749e77ba69b290df61de965233cbf48/); avalanche `0xdad207...5b71fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (339)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x06d102...bf5de2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x07d4ca...3e91ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a600c...0aa1fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x103aa3...252682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x104d20...467c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x108c9d...bfe89e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x166aa0...4bd72e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x186031...979d0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ba00c...310fbd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dcbc8...7d7fc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x340db9...99a365` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x346c11...12ce3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38e73f...b923a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c71c8...8240b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ccbd3...8b77e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x522332...0b7333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x581d18...18cdd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58c38b...1e447c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a6d17...fffcb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612ab5...5e9113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x694927...eae99a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f6fc1...2fdc8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x887631...28ce34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x897e54...474436` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d8fea...86e953` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x916a8c...386b8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aa3b2...bdaf2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa13bae...5cc2c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae84d0...3686a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0bfd6...8395d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3d252...3c096a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb62b4a...439753` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7e516...874f38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbae21d...980d96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc08f20...ec40c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1d6ab...4b6559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc68c52...2925d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3604b...dab30b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3ceaf...406c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9a430...587280` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe26b11...ce7ca7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe74083...360bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb3a9c...53e449` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed85da...b1ea6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1a510...e7190a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf616fd...46346e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc9c5...d31cab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20f44e...7f5bbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d0454...fce677` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e0ef...70334d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8655e5...e4679a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x930240...ae5ad5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c55c9...b39edf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd0d5e...129c67` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x0f358c...d47612` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x126546...459b78` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x21356b...bf7944` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2370d8...f4b667` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x274f23...cf4a8f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x285c1f...ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3052b6...74b656` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4ee184...951514` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x67491c...919711` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6fcc2e...687666` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x77d054...f57809` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x977109...77cf42` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9aba45...58f755` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa49cb6...881985` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xadc6e0...46474c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb525de...60032d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc1e3f4...0710f8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc20c3b...49e29a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xceb9e1...a5be25` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd49aa5...e983cb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd960f7...717847` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe56143...167f2c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe839d1...9c7d9f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xea8d06...5aafc1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeb920a...7ed225` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xeb9421...93cb52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x020b4f...33f3f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x036063...899cde` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03e466...a769d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04c84c...ae51ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x05c8ea...aa22fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0b1ac0...c0d8cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0f358c...d47612` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x10f485...817b95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x126546...459b78` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13455d...3b95ae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cbe3d...ddba8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e2e19...cf860c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20f44e...7f5bbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22365e...963656` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x227547...425445` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x227dd6...008a6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2370d8...f4b667` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23eead...6f31ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2481d4...b71a82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x274f23...cf4a8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2cc420...6f156c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d0454...fce677` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37bc23...a60172` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x387488...555825` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x410950...9365da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4aa0ad...88aa25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4bf72a...4e3604` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c022c...03305f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4cf8ec...2f0f14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x56bef6...ef332d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d206c...8bfbe5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5d7641...8768f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5de191...9f8e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x656f4f...15cdd0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6805d1...63d48f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b0ded...cb0a2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6e3ef0...2eef10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7163df...1e7358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77d054...f57809` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ab684...99fd03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ac0e9...c322ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x80628b...d715b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8144b1...639011` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x82b9f1...403782` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x883741...2f4eb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x930240...ae5ad5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x930abd...cff1d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c55c9...b39edf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa13bae...5cc2c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa17720...e5fae9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadc6e0...46474c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb3e70e...78bed5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb41184...43a012` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb525de...60032d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb53459...055638` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb917fe...bceee9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb965ba...bbfe95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd0d5e...129c67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd30ce...2454d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd8c57...f341b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbdce79...5a2931` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf1545...4a75d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc20c3b...49e29a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce576f...4f8907` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd37231...e9ec69` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5f159...75c6dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd66aec...0545fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd9786f...44d606` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe15ab3...4b5251` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1cd76...c74ed5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1e1dd...e84b23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1e5b7...863463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4e760...355479` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe56143...167f2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5bbf1...e32001` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe839d1...9c7d9f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea8d06...5aafc1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb3a9c...53e449` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xef8b07...ad2e25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf388fa...33246d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbcbd0...6adbc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfd03c0...697015` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4b7b8c...3c2752` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x51919a...fbe751` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6e573d...b21066` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x983b00...ff6b9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3052b6...74b656` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x51f411...e96df4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x594e88...9db341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x603dd7...1d2b80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x761d01...dede25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cc708...b079b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x832ccf...620d37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x974252...c7d9e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9aba45...58f755` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b7e14...d46f70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb525de...60032d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb80280...f417df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb937c8...612dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb7da7...89c915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbdce79...5a2931` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf1545...4a75d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd5fd6...596b49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5f159...75c6dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdb6e6d...bd225d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea8d06...5aafc1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb9421...93cb52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcc9c5...d31cab` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x162106...570462` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x285c1f...ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x335a1f...af4db3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3917ae...6d5e73` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4f9262...828a2e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x603dd7...1d2b80` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x67491c...919711` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6fcc2e...687666` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7163df...1e7358` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7561e8...281259` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x832ccf...620d37` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x83f73f...98df39` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa34824...56e1c8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa3abea...dae47b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa49cb6...881985` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb937c8...612dd4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc1e3f4...0710f8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xcd5fd6...596b49` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xceb9e1...a5be25` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd5f159...75c6dd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe56143...167f2c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xeb920a...7ed225` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfafcea...9489c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x03e466...a769d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x049194...ad6032` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05a12a...0a1ef8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05ab16...e6d6d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b400f...ec45de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x104d20...467c44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10f485...817b95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x120c2b...ee3232` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x126546...459b78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1301aa...d7083f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x13455d...3b95ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x136b81...f38ade` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22365e...963656` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23cba2...4a0ea0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x253370...cfca56` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x285c1f...ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28b859...20aa52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b246b...dad596` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f095d...f918c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32a109...cef8e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34650f...b0fcf4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x373186...6cb883` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x40e9a7...092aa2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x42dbb0...08696b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ece57...afe678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f9262...828a2e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x502209...dbf299` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x51f411...e96df4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52fe73...679fa3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55074e...f2e0ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x561564...1f8908` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bd12c...3de2d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c4f01...d49ef3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d7641...8768f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5ee6b7...78d35c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x603dd7...1d2b80` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61bd65...65ff8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63b3c5...45c4e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69275e...1cd359` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x694927...eae99a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6cd69c...639b65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6fb464...37b038` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6fcc2e...687666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6fdd28...d7a35b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7163df...1e7358` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x77d054...f57809` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cc708...b079b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7fb80f...3e3df0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8144b1...639011` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8510a7...c560dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x892340...7e4d73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8be139...fd2ee9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8cade7...c5ed37` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e6384...a73d5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8fabff...dbf314` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96ae40...3daaa1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ddf20...88b2d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9eac8a...575493` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1350c...850023` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa267c3...7111ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaaa22e...468004` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab6a25...b43b7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb07440...a4e341` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3c0bc...4612cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb965ba...bbfe95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc7cac...ef9381` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5fe28...3b9a40` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd5fd6...596b49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce576f...4f8907` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce6372...cc9ce9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce6539...af20f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd37231...e9ec69` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd46371...f9417a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd66aec...0545fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8c247...d50019` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda1292...ea5f70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda42e9...fbb052` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb9697...07359d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec6722...d19128` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xece4ee...523d8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed85da...b1ea6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfafcea...9489c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfcaa4d...bb95f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfcc9c5...d31cab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfec757...6d9e2a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | 14 deployments: fantom `0x1c8ab2...eee4af`; fantom `0x318aa1...b4132e`; fantom `0x650fe4...c02623`; fantom `0x832ccf...620d37`; fantom `0xb1f73e...215f35`; fantom `0xb5566a...7043cd`; fantom `0xbb7bef...9f907b`; fantom `0xc1e3f4...0710f8`; fantom `0xe4d7b8...9b3e3c`; harmony `0x13455d...3b95ae`; harmony `0x4b170b...554c9a`; harmony `0xadc5ca...19dcee`; harmony `0xb3c0bc...4612cd`; harmony `0xd5f159...75c6dd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/dxsale](https://skynet.certik.com/projects/dxsale) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xa3abea...dae47b`](./contracts/polygon-137/0xa3abeafa40ca4456c3fde2bad46d592515dae47b/) | CUSTOMTOKENDAPP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x830cde...789db7`](./contracts/ethereum-1/0x830cdef017761cc1db7214a4dd86f357ce789db7/) | DxFire | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b5e94...6829b6`](./contracts/bsc-56/0x5b5e94485c9628793b01a38762921dc37b6829b6/) | DxLockLPDep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d37fb...71589e`](./contracts/ethereum-1/0x1d37fb68b2679200844b57b2cf7a17260271589e/) | DxStandardToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f485...817b95`](./contracts/ethereum-1/0x10f485b855be8e7d377fbe60e5d5676d88817b95/) | PresaleOwnerFinalize | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa5da59...7cd7f9`](./contracts/avalanche-43114/0xa5da59f5126ee48ffd44e184c489ef8b2e7cd7f9/) | RouterDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd50715...af47ff`](./contracts/avalanche-43114/0xd5071536d1a2aff6db130917b4c1fa7b8daf47ff/) | RouterInterface | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xed85da...b1ea6c`](./contracts/polygon-137/0xed85dae67ff56335136beea446ad2aaf04b1ea6c/) | StandardGenerator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66e7ce...2bdc91`](./contracts/ethereum-1/0x66e7ce03cd45b41077814850b2c57e28142bdc91/) | TokenAuditVerify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04e21e...3cbf48`](./contracts/polygon-137/0x04e21e0c4749e77ba69b290df61de965233cbf48/) | TokenKYCVerify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 339 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11578] skynet.certik.com/projects/dxsale

Fork inheritance lineage and inherited audits are included when available.
