# Agentic Audit Brief: four.meme

## Project Overview

- Project: four.meme (`four.meme`)
- Website: [https://four.meme](https://four.meme)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.451Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 256 unique implementations (257 raw deployments)
- DeFi Llama TVL: $4,031,946.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 272; live-surface contracts included: 257 (1 live, 256 unknown).
- Excluded by liveness: 15 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 256 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 255
- Unique implementations: 256
- Raw deployments: 257
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | bsc | n/a | 2 deployments: bsc [`0xe8c2d6...e9240b`](./contracts/bsc-56/0xe8c2d68c4f491eedeff6d613ec013e3aa6e9240b/); bsc `0xf251f8...e46034` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (255)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x003d5d...245a9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x006221...e2d5e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0095f5...85eaa3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0120b2...4d2bfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0188a1...415326` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x052f0c...f04272` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d0a6...99e0d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09550d...a45468` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a6da1...c18bd0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0acd45...bff56c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b5b5b...877516` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0bbe7e...9bfe4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0cc782...cb43c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0da23f...a74eac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0daab7...6d7da0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e50b5...832538` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fed78...1919a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x134ad2...5c183d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1600ce...9f946c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16903f...e4aa1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x170665...0522e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x172b75...397266` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x172fda...c37b26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19b9b9...a2d22e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c8181...2e9fa0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cbbe1...363c4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1da2f0...e476c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20a08a...898e5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x220b69...4fee92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23e0d3...751886` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x244983...76b7d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x265369...915531` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x267667...cbef7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26b3c9...529dbd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26f2a7...95383e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x275d84...4980bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27ff89...e33d15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29d593...b4cc57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a1144...613f5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a57a0...7d36e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b6e6e...683b28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c249f...83baa9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d9844...a00774` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30038b...a7fc47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x306e93...0bbb22` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x315dab...1f968e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x328aee...74e8ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x339a38...a9c633` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x343086...e0757b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x350a94...3572b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35500b...f0a4c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35bfd6...0948a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x366ad0...79afdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x371952...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x385260...3c240d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3aec69...771f70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3eebc5...d6a63d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f0cd2...a5fb76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f4992...064e7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40f37d...a13bd7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40fe6c...2ebb58` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4111cc...39ac63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42d212...0ef30c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x432099...588c76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43e02c...22076e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44e971...63571b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x462631...03ba67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4874ed...d11887` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48c172...b7b926` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49548e...25171c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d46f7...354adc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4e4659...b32c9b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f183a...f421d4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5038a0...e1ee24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x520d18...c847d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x537e4a...ab0ae0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x544d59...80930a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5632a1...14bd64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b5b1...fd64a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x570199...ef39ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5799ee...205f3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57df49...8a90b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a5ecf...c9ff2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a7329...5ba422` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ba864...10f441` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c40af...5df7ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cbace...e5c991` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e9bc3...7161c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5f2fa0...5f081b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62ac9c...319c7f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65750e...fe5ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x65ffa4...e8ce36` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66be2f...f33d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67b4ac...f06364` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67b8e0...075a7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x687cfb...c13ac8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x689a29...ef97f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68ab18...eba29c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x693937...b85cb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c614d...91e14f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6e2e92...177026` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ef159...14582e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ff0ca...0dae42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7086be...083bf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71e1e3...146948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72c2f9...061079` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x732771...78203e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x735b9a...28f834` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x743e44...06e03c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x744c6d...8421c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x757eba...226f85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x75bb6e...3883bc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x794135...32623d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79bef4...3cf694` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79c790...1521a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ba85b...c31cb0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bafea...ea3c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7de72e...65ff80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7eca6d...9a01dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f9411...329bbf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x807dbd...cb526d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80d34a...4c0d0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81cd76...3b58bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8263a3...98e8a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x831e98...0ecae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8366e7...58cc89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8604e3...acb935` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x863147...31002e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86b383...abe347` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87ab95...276ea7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x87deff...5930f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x880037...33760b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x884879...12702e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x891373...b7e30b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a5add...a318b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8adffd...53eafb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bac70...4b14e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bc3f2...98b90d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d369b...cb2953` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e6aeb...8018c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ee95f...5405a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8fb176...b6e7ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x904065...307655` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x905e52...a0c54e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x912b60...46fc7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x924dd1...98878e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x939a20...5e6d48` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94241c...fcf210` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x958951...a2c652` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x959894...321dcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x97c933...d65d04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x982326...272444` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x999c6b...11f268` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99d409...b84396` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a4f80...1a6a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b8999...307e61` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bb4ec...411724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bc3a9...214c0e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cdfeb...dc2216` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9cf6c7...26b125` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ee36b...ca2c0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0e94c...d55715` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa143b7...b2694c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1b094...cc4343` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa22b23...1436c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa28535...378cf9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2cfe4...f9f078` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3e3ba...d323a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa74ab5...5c704e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7f3c7...d7980f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa91fc1...6c4680` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa94c1c...e8e1b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa1d6f...07f325` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaa22d...46332d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab7872...e1f2c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb11ad1...e81545` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1c2c5...217383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb28723...06682f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2b880...7aa50b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb2f8a2...027de5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3544b...23b9e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5f039...6d968b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb67834...35b028` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb80afc...fbe42b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb1b81...63646c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb6f3b...c24f0a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd17a5...28ce75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd17b1...a68bc1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4961d...8c10f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6496e...eab8b2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67e3a...ad3780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc797c3...fb4479` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7e591...5d6967` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7ec5e...d2814d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc83bfc...a9e148` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9d24f...eea30c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb1043...efe14a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdba21...81a64a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcdcf19...c3d7e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd01c17...8a84df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd2b81d...ca327c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd40cf1...9da44d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd40f61...161a29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5fbf0...9738cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd62bdb...7c1ed1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd63cbf...ebc6fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6dbe5...9addcf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd87627...5bb130` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd94ba4...726e79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd98738...efd600` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd9c69f...ca3aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb1888...b5ea20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd06e5...a2642d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xddfca9...d788b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf0b2c...b731ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf431c...b9463f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf7ed0...6548cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf8a07...70588c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdff35e...141a60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe060c0...95281f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe291ec...9de771` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe29895...c179f2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe31a40...e31e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3b51b...9170f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe3bf44...9408ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5dd1f...f55a5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe641c6...41e88b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe7b09a...c352ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe81a00...0eea17` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe84d98...299f8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe88085...cee646` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9ff29...e3ef33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeaf211...7a0609` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb7815...a48202` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeba1fd...f9eece` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec203b...c315b9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeca350...3b0b74` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xecd080...441103` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedd5a1...3bbc44` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeff54b...999df5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeff785...6dd763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf08e20...14b11b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf1c527...906ffd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2e197...935ede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf5c58f...c5dac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf67886...9478e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf7aa9d...734b5f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf814a4...777c37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8f374...cd690b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf99a67...42306b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf99d95...65b7a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbf8ed...9f2a07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd2358...1619c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd546a...8e0b07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfe682d...f0a254` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [easy-fight-6a5.notion.site/Salus-Audit-Report-294ce2c0b4e442cb81e090b0232ae243](https://easy-fight-6a5.notion.site/Salus-Audit-Report-294ce2c0b4e442cb81e090b0232ae243) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 256 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2522] easy-fight-6a5.notion.site/Salus-Audit-Report-294ce2c0b4e442cb81e090b0232ae243

Fork inheritance lineage and inherited audits are included when available.
