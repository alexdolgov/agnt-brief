# Agentic Audit Brief: Pangea Swap

⚠️ Lifecycle status: DEAD - TVL dropped 17.6% over 90 days

## Project Overview

- Project: Pangea Swap (`pangea-swap`)
- Website: [https://pangeaswap.com](https://pangeaswap.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-22T13:29:11.902Z
- Pipeline run: v2-pipeline-2026-06-22-3875d1-de0f
- Chains: chain-1001, chain-31337, klaytn
- Contract surface: 200 unique implementations (200 raw deployments)
- DeFi Llama TVL: $6,398.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pangea Swap is a decentralized exchange (DEX) protocol deployed on Klaytn mainnet and testnet. It enables users to swap tokens, provide liquidity, and earn fees through automated market-making (AMM) pools. The protocol appears to use a factory model to create and manage liquidity pools for various token pairs.

### Architecture

The Klaytn Mainnet and Testnet families are separate deployments of the same AMM protocol, each containing their own factory, router, and pool contracts. The Pangea Swap Core family aggregates contracts from both environments, indicating a shared codebase and architecture. There is no cross-chain interaction; each network operates independently with its own set of liquidity pools.

## Contract Surface Quality

- Indexed contracts: 200; live-surface contracts included: 200 (0 live, 200 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 200
- Unique implementations: 200
- Raw deployments: 200
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (200)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | chain-1001 | n/a | `0x0339d5...98b106` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x06d18f...7367a5` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x1f7d55...6c2ca8` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x205f10...06868e` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x2569e9...79c555` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x288c46...c361f4` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x2be2c9...359c95` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x3135bb...34c7e4` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x37754c...41a628` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x3e0c0b...eba82c` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x422719...00cb5b` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x42ae0c...4ebdf7` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x44e5b9...ee9471` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x480bd3...19bcff` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x4fa1ed...69a86f` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x5385b0...fad107` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x56a0ef...55f2e2` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x6e66d3...6cc5f6` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x71bcb5...2a5c6c` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x7561db...9d64bd` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x7b1c9d...19d7c8` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x7bac70...7600ae` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x7e5f6a...db78b2` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x899d8f...01044b` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x8c4efe...36ee12` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x925e51...15c8f2` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x9503ce...4085f1` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x9a909d...582277` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0x9dbff8...eeb116` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xa08239...854cae` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xa1c559...74855f` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xa617e4...bb1df4` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xabaf9f...537375` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xb84f4c...e0f80a` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xba01d0...9f53e8` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xc0c4eb...8956ee` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xc6373f...4e5e79` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xc94ba1...f90c3f` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xcf8d84...b58515` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xd0e600...9e06dc` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xd428f4...790034` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xdea0c4...f55c35` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xe45fdc...04f197` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xedd00e...09d6db` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xf509cb...169e33` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xfd461b...4251cf` | ❓ Unverified |
| UnnamedContract | unknown | chain-1001 | n/a | `0xff8e5b...b95b3d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x002a42...2891bc` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x016587...42eb8f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x02d9bf...da7eb0` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x0339d5...98b106` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x09635f...8cebef` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x09d51b...9f4327` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x0b306b...b97016` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x0dcd1b...6bcd82` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x10cc45...9b25da` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x1613be...7f78e8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x17ac28...303e34` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x185f0e...76e9b2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x1a2931...a768c1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x1d246b...70aca6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x1f7d55...6c2ca8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2279b7...d2ebe6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x25df6a...33dcc3` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x27ac25...0c9048` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x29f80e...6a4c5d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2add2b...b15566` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2be2c9...359c95` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x322813...ce6c44` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x331617...c771fa` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x34ec60...309e9f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3aa5eb...71443c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3aade2...658659` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x3d94b5...dfad67` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x422719...00cb5b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x435f89...e8617d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x4a6792...295319` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x4ed7c7...b0e1c1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x50af1d...3a7cac` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5123f8...582321` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x519f88...03318e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x51a015...19cd5a` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x56e4f8...5b398a` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x59b670...70857b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5c74ba...c41cf4` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5d5cc7...ae5304` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5fbdb2...180aa3` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x5fc8d3...875707` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x610178...9ad788` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x67d269...f55933` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x68b1d8...de1aed` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x69ae78...207e79` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6a0d6c...94e258` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6c7fc3...01986d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6cc619...7ba0d9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6db1c7...255752` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6e1832...337da2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6e62ef...6a1be2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x6e66d3...6cc5f6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x743500...020eb4` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x74720e...63dba2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x789f57...12a315` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7a2088...cb814f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7a6f82...497ff4` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7b4a0d...e465e5` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7ee422...e5f9a8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x7f91f3...83a558` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x840173...7fb038` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x842c38...078f11` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x851356...60891c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x888b07...966732` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x899d8f...01044b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x8a7916...fdc318` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x8d8afb...8f04ca` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x94134f...693a73` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x95401d...113778` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x959922...2007b1` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x998abe...33613e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9a676e...607508` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9a9f2c...8863ae` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9db74c...2c07ca` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9e545e...373042` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x9fe467...7fa6e0` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa08239...854cae` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa1376f...a44621` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa1c559...74855f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa51c1f...ed91c0` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa82ff9...88cfc9` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa88955...2177fe` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xabaf9f...537375` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xacc9af...b3652c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xb49e75...99979e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xb7f8bc...f84f5e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xba63e8...6e52bf` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xbb7104...3eec17` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xbc2c32...4d382c` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc3e53f...e63690` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc5a5c4...f5c42d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc6e7df...4d4e7d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xc88b22...558997` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xcf8d84...b58515` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xd0a8eb...c6575f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xd32aef...282b96` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe45fdc...04f197` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe6e340...16e57e` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe7f172...3f0512` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xe80fe1...b08e7d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xeb4b1c...04178d` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xed52bd...f19c23` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xedd00e...09d6db` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf45222...461ffb` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xf5059a...206f36` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xfca13d...f0bcef` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xff3e7c...bc4121` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xffa7ca...ea0429` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x016587...42eb8f` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x09635f...8cebef` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x09d51b...9f4327` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x0b306b...b97016` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x0dcd1b...6bcd82` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x10cc45...9b25da` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x1613be...7f78e8` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x2279b7...d2ebe6` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x322813...ce6c44` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x331617...c771fa` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x3aa5eb...71443c` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x3aade2...658659` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x4a6792...295319` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x4ed7c7...b0e1c1` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x51a015...19cd5a` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x56e4f8...5b398a` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x59b670...70857b` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x5fbdb2...180aa3` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x5fc8d3...875707` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x610178...9ad788` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x67d269...f55933` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x68b1d8...de1aed` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x7a2088...cb814f` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x7b4a0d...e465e5` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x851356...60891c` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x8a7916...fdc318` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x95401d...113778` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x959922...2007b1` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x998abe...33613e` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x9a676e...607508` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x9a9f2c...8863ae` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x9e545e...373042` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0x9fe467...7fa6e0` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xa1376f...a44621` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xa51c1f...ed91c0` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xa82ff9...88cfc9` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xb7f8bc...f84f5e` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xc3e53f...e63690` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xc5a5c4...f5c42d` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xc6e7df...4d4e7d` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xe6e340...16e57e` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xe7f172...3f0512` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xf5059a...206f36` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xfca13d...f0bcef` | ❓ Unverified |
| UnnamedContract | unknown | chain-31337 | n/a | `0xffa7ca...ea0429` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[HAECHI AUDIT] Smart Contract Audit Reports for Pangea.pdf](https://github.com/pangea-protocol/pangea-core/blob/main/audits/%5BHAECHI%20AUDIT%5D%20Smart%20Contract%20Audit%20Reports%20for%20Pangea.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [- [보안 감사]() (also discovered via alternate URL)](https://pangeaswap.gitbook.io/pangeaswap/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 135 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13659] [HAECHI AUDIT] Smart Contract Audit Reports for Pangea.pdf
- [13660] - [보안 감사]()

Fork inheritance lineage and inherited audits are included when available.
