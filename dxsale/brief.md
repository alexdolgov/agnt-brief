# Agentic Audit Brief: DxSale

## Project Overview

- Project: DxSale (`dxsale`)
- Website: [https://dx.app](https://dx.app)
- Lifecycle: active (Tier 0, 76% below peak)
- Generated: 2026-06-12T13:56:52.850Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: arbitrum, avalanche, base, bsc, celo, ethereum, fantom, gnosis, harmony, moonriver, polygon, zksync-era
- Contract surface: 358 unique implementations (404 raw deployments)
- DeFi Llama TVL: $17,936,534.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DX App, formerly DxSale, is a decentralized launchpad and token tooling platform that enables projects to create and manage token presales/IDOs, token minting, airdrops, liquidity locks, token distribution, and liquidity management across multiple blockchains without requiring coding skills.

### Architecture

The DxSale family includes token factories (DxStandardToken), presale management (PresaleOwnerFinalize), and liquidity lockers (DxLockLPDep) that work together to support the full lifecycle of a token launch. Supporting tokens like GGGTOKEN may serve as utility or fee tokens within the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 7
- Unverified implementations: 343
- Unique implementations: 358
- Raw deployments: 404
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BasicToken | token | ethereum | [`0x8acf43...78b184`](./contracts/ethereum-1/0x8acf43c8255918041e2b40995e614451ee78b184/) | ⚠️ Unaudited |
| DxCustomDividendToken | token | avalanche | [`0x2f1b52...6b0284`](./contracts/avalanche-43114/0x2f1b52419009f8ab9c934ba559897904dd6b0284/) | ⚠️ Unaudited |
| DxNativeDividendToken | token | avalanche | 2 deployments: avalanche [`0x4bf72a...4e3604`](./contracts/avalanche-43114/0x4bf72a0d761bc31dca243ca5ee572dedf34e3604/); avalanche `0xe1cd76...c74ed5` | ⚠️ Unaudited |
| DxStandardToken | token | ethereum | [`0x1d37fb...71589e`](./contracts/ethereum-1/0x1d37fb68b2679200844b57b2cf7a17260271589e/) | ⚠️ Unaudited |
| hashFinder | unknown | arbitrum | [`0x2ff131...16d20c`](./contracts/arbitrum-42161/0x2ff131d69698e56f073ec60ef00274ebe216d20c/) | ⚠️ Unaudited |
| RouterDeployer | adapter | avalanche | 2 deployments: avalanche [`0xa5da59...7cd7f9`](./contracts/avalanche-43114/0xa5da59f5126ee48ffd44e184c489ef8b2e7cd7f9/); avalanche `0xef8b07...ad2e25` | ⚠️ Unaudited |
| RouterInterface | adapter | avalanche | [`0xd50715...af47ff`](./contracts/avalanche-43114/0xd5071536d1a2aff6db130917b4c1fa7b8daf47ff/) | ⚠️ Unaudited |
| TestTimToken | token | arbitrum | [`0xfc4076...2ce378`](./contracts/arbitrum-42161/0xfc40767d0ae11c7f08e156b59fa2e54bba2ce378/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (7)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CUSTOMTOKENDAPP | token | gnosis | 3 deployments: gnosis [`0xa3abea...dae47b`](./contracts/gnosis-100/0xa3abeafa40ca4456c3fde2bad46d592515dae47b/); polygon [`0xa3abea...dae47b`](./contracts/polygon-137/0xa3abeafa40ca4456c3fde2bad46d592515dae47b/); avalanche `0xfafcea...9489c0` | ⚠️ Unaudited (bytecode match) |
| DxFire | unknown | celo | 5 deployments: ethereum `0x830cde...789db7`; gnosis `0xfbcbd0...6adbc5`; arbitrum `0xea8d06...5aafc1`; celo [`0x615c9e...960098`](./contracts/celo-42220/0x615c9ec24f2595528fe003782f6c706de0960098/); avalanche `0xf8f929...30f843` | ⚠️ Unaudited (bytecode match) |
| DxLockLPDep | unknown | polygon | 12 deployments: ethereum `0x1ba00c...310fbd`; ethereum `0xc68c52...2925d3`; bsc `0x5b5e94...6829b6`; bsc `0xeb3a9c...53e449`; gnosis `0x832ccf...620d37`; gnosis `0xea8d06...5aafc1`; polygon [`0x036063...899cde`](./contracts/polygon-137/0x036063706396ad5dc49241451e955fbe05899cde/); polygon `0x6fcc2e...687666`; arbitrum `0x51f411...e96df4`; celo `0xc1e3f4...0710f8`; celo `0xc7065e...f48b38`; avalanche `0x77d054...f57809` | ⚠️ Unaudited (bytecode match) |
| PresaleOwnerFinalize | unknown | ethereum | 16 deployments: ethereum [`0x10f485...817b95`](./contracts/ethereum-1/0x10f485b855be8e7d377fbe60e5d5676d88817b95/); ethereum `0x51f411...e96df4`; ethereum `0x694927...eae99a`; ethereum `0xaad287...bbfeb4`; gnosis `0x3917ae...6d5e73`; gnosis `0x554d52...4d199e`; gnosis `0x857b52...8b401e`; gnosis `0xdb6e6d...bd225d`; polygon `0x335a1f...af4db3`; polygon `0x554d52...4d199e`; polygon `0xb937c8...612dd4`; polygon `0xdb6e6d...bd225d`; avalanche `0x51f411...e96df4`; avalanche `0x603dd7...1d2b80`; avalanche `0x6cd69c...639b65`; avalanche `0xfcc9c5...d31cab` | ⚠️ Unaudited (bytecode match) |
| StandardGenerator | unknown | avalanche | 3 deployments: gnosis `0xfcc9c5...d31cab`; polygon `0xed85da...b1ea6c`; avalanche [`0x1c8ab2...eee4af`](./contracts/avalanche-43114/0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af/) | ⚠️ Unaudited (bytecode match) |
| TokenAuditVerify | token | gnosis | 6 deployments: ethereum `0x66e7ce...2bdc91`; gnosis [`0x52c498...150c81`](./contracts/gnosis-100/0x52c4986c4dba182270ab205502c084d290150c81/); polygon `0x9c47ff...d51b15`; arbitrum `0x974252...c7d9e9`; celo `0xce576f...4f8907`; avalanche `0xbd8c57...f341b9` | ⚠️ Unaudited (bytecode match) |
| TokenKYCVerify | token | polygon | 6 deployments: ethereum `0xb3d252...3c096a`; gnosis `0x7fb80f...3e3df0`; polygon [`0x04e21e...3cbf48`](./contracts/polygon-137/0x04e21e0c4749e77ba69b290df61de965233cbf48/); arbitrum `0x9aba45...58f755`; celo `0x126546...459b78`; avalanche `0xdad207...5b71fb` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (343)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x06d102...bf5de2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x07d4ca...3e91ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a600c...0aa1fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x103aa3...252682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x104d20...467c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x108c9d...bfe89e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x166aa0...4bd72e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x186031...979d0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1dcbc8...7d7fc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x340db9...99a365` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x346c11...12ce3f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38e73f...b923a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c71c8...8240b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ccbd3...8b77e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x522332...0b7333` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x581d18...18cdd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58c38b...1e447c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a6d17...fffcb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x612ab5...5e9113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f6fc1...2fdc8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x887631...28ce34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x897e54...474436` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8d8fea...86e953` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x916a8c...386b8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9aa3b2...bdaf2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa13bae...5cc2c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1e0b0...10819a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae84d0...3686a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0bfd6...8395d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb62b4a...439753` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7e516...874f38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbae21d...980d96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc08f20...ec40c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1d6ab...4b6559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3604b...dab30b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3ceaf...406c80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9a430...587280` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe26b11...ce7ca7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe74083...360bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb3a9c...53e449` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed85da...b1ea6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1a510...e7190a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf616fd...46346e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfcc9c5...d31cab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2d0454...fce677` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x81e0ef...70334d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8655e5...e4679a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa0f34d...7134f6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x0f358c...d47612` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x126546...459b78` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x21356b...bf7944` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x2370d8...f4b667` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x274f23...cf4a8f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x285c1f...ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x3052b6...74b656` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x4ee184...951514` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x67491c...919711` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x6fcc2e...687666` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x77d054...f57809` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x977109...77cf42` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0x9aba45...58f755` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xa49cb6...881985` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xadc6e0...46474c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xb525de...60032d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc1e3f4...0710f8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc20c3b...49e29a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xceb9e1...a5be25` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd49aa5...e983cb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xd960f7...717847` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe56143...167f2c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xe839d1...9c7d9f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xeb920a...7ed225` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | `0xeb9421...93cb52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x020b4f...33f3f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x03e466...a769d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x04c84c...ae51ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x05c8ea...aa22fb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0b1ac0...c0d8cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0f358c...d47612` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x10f485...817b95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x126546...459b78` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x13455d...3b95ae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1cbe3d...ddba8b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1e2e19...cf860c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x20f44e...7f5bbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x22365e...963656` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x227547...425445` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x227dd6...008a6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2370d8...f4b667` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x23eead...6f31ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2481d4...b71a82` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x274f23...cf4a8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2cc420...6f156c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2d0454...fce677` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x37bc23...a60172` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x387488...555825` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x410950...9365da` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4aa0ad...88aa25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4bf72a...4e3604` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4c022c...03305f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4cf8ec...2f0f14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x51919a...fbe751` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x56bef6...ef332d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5d206c...8bfbe5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5d7641...8768f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5de191...9f8e5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x656f4f...15cdd0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6805d1...63d48f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6aee7e...84ee28` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6b0ded...cb0a2e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6e3ef0...2eef10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6e573d...b21066` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7163df...1e7358` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x77d054...f57809` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ab684...99fd03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ac0e9...c322ea` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x80628b...d715b2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8144b1...639011` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x82b9f1...403782` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x883741...2f4eb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x930240...ae5ad5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x930abd...cff1d2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x983b00...ff6b9f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9c55c9...b39edf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa13bae...5cc2c0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xa17720...e5fae9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xadc6e0...46474c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb3e70e...78bed5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb41184...43a012` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb525de...60032d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb53459...055638` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb7e4d3...fc8381` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb917fe...bceee9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb965ba...bbfe95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbd0d5e...129c67` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbd30ce...2454d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbd8c57...f341b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbdce79...5a2931` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbf1545...4a75d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc20c3b...49e29a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce576f...4f8907` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd37231...e9ec69` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd5f159...75c6dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd66aec...0545fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd9786f...44d606` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe15ab3...4b5251` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe1cd76...c74ed5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe1e1dd...e84b23` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe1e5b7...863463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe4e760...355479` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe56143...167f2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe5bbf1...e32001` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe839d1...9c7d9f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xea8d06...5aafc1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xeb3a9c...53e449` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xee0c6d...9ff067` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xef8b07...ad2e25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf24d02...6dc58c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf388fa...33246d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbcbd0...6adbc5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfd03c0...697015` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfee2a3...624985` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x318aa1...b4132e` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x650fe4...c02623` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x832ccf...620d37` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb1f73e...215f35` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xbb7bef...9f907b` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc1e3f4...0710f8` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xe4d7b8...9b3e3c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x12e0eb...ff683a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x1ba542...032618` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x4b7b8c...3c2752` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x51919a...fbe751` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x6e573d...b21066` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x983b00...ff6b9f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0dddd8...b4ec8c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x17e8c8...f7f24f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3052b6...74b656` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x594e88...9db341` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x603dd7...1d2b80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x63d20b...f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x761d01...dede25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7cc708...b079b8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x832ccf...620d37` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9b7e14...d46f70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb525de...60032d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb80280...f417df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb937c8...612dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbb7da7...89c915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbdce79...5a2931` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbf1545...4a75d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcd5fd6...596b49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd5f159...75c6dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdb6e6d...bd225d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeb9421...93cb52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfcc9c5...d31cab` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x162106...570462` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1c8ab2...eee4af` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x285c1f...ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x335a1f...af4db3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3917ae...6d5e73` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4f9262...828a2e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x603dd7...1d2b80` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x67491c...919711` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6fcc2e...687666` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7163df...1e7358` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7561e8...281259` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x832ccf...620d37` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x83f73f...98df39` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa34824...56e1c8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa3abea...dae47b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa49cb6...881985` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb937c8...612dd4` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xcd5fd6...596b49` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xceb9e1...a5be25` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd5f159...75c6dd` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe56143...167f2c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xeb920a...7ed225` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfafcea...9489c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x03e466...a769d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x049194...ad6032` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x05a12a...0a1ef8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x05ab16...e6d6d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0b400f...ec45de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x104d20...467c44` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x10f485...817b95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x120c2b...ee3232` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x126546...459b78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1301aa...d7083f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x13455d...3b95ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x136b81...f38ade` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19641a...b931b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x22365e...963656` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x23cba2...4a0ea0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x253370...cfca56` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x285c1f...ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x28b859...20aa52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2b246b...dad596` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2f095d...f918c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x32a109...cef8e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x34650f...b0fcf4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x373186...6cb883` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x40e9a7...092aa2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x42dbb0...08696b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ece57...afe678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4f9262...828a2e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x502209...dbf299` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52fe73...679fa3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x55074e...f2e0ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x561564...1f8908` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5bd12c...3de2d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5c4f01...d49ef3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d7641...8768f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5ee6b7...78d35c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x61bd65...65ff8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x63b3c5...45c4e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x69275e...1cd359` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x694927...eae99a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6fb464...37b038` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6fcc2e...687666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6fdd28...d7a35b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7163df...1e7358` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7cc708...b079b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7ebf0d...c669ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7fb80f...3e3df0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8144b1...639011` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8510a7...c560dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x892340...7e4d73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8be139...fd2ee9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8cade7...c5ed37` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8e6384...a73d5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8fabff...dbf314` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x96ae40...3daaa1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9ddf20...88b2d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9eac8a...575493` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1350c...850023` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa267c3...7111ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaaa22e...468004` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xab6a25...b43b7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb07440...a4e341` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb3c0bc...4612cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5566a...7043cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb965ba...bbfe95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc7cac...ef9381` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc5fe28...3b9a40` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7065e...f48b38` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcd5fd6...596b49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce576f...4f8907` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce6372...cc9ce9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce6539...af20f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd37231...e9ec69` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd46371...f9417a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd66aec...0545fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd8c247...d50019` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xda1292...ea5f70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xda42e9...fbb052` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdf17ac...cec645` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe17ed5...e47548` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeb9697...07359d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xec6722...d19128` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xece4ee...523d8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xed85da...b1ea6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfcaa4d...bb95f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfec757...6d9e2a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x13455d...3b95ae` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x4b170b...554c9a` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0xadc5ca...19dcee` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0xb3c0bc...4612cd` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0xd5f159...75c6dd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/dxsale) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 358 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11578] DL audit link

Fork inheritance lineage and inherited audits are included when available.
