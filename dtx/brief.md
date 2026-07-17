# Agentic Audit Brief: DTX

## Project Overview

- Project: DTX (`dtx`)
- Website: [https://dtx.trade/](https://dtx.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.283Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: blast
- Contract surface: 50 unique implementations (50 raw deployments)
- DeFi Llama TVL: $5,181.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DTX is a decentralized derivatives and spot trading protocol on Blast, enabling users to trade perpetual futures and swap tokens through a unified liquidity and risk engine.

### Architecture

All contracts belong to a single product family, DTX Derivatives, with core contracts handling trading, liquidity, and risk, while supporting contracts likely provide auxiliary services such as configuration or access control, all deployed by two distinct deployer clusters.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 50 (0 live, 50 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 50
- Raw deployments: 50
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

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

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | blast | n/a | `0x037a168876d3027b1384fd1752feaa52407726db` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x045ecae5d25187f4c9fdfe20f6168d7777ae2cff` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0a08d6e2e911c728f10fa1a6a2fb633d7b94597c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0d862ca15f971e8f90439a352f581ba788816736` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x0e5b7ddbf37d92b21512ae5a6ce66aefa7a7828f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x11f2ab33369b87dc60029f55c68f72793c8be145` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x123b935c3d56c3c2c6d2a860c0ca706ffee0b21d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x151f1b018df0b91d24561a1e591a29863eb69cf9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x19d12ad44e9e89b816ac499bb2d296b058015ae8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1efc0f91d0a41c0061150466a59963733e673539` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x22fd966c71bfc740df930aa35d4ba11bbc3d46e6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2967114a8c407af535f0ac75bfee219c61379b27` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x33f8da4f83d1aa6e253fc6be9cad81a998fcd383` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x34b6865171210976e105fd2be159e6b068eab0e8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x38822f28b4c13ec4839f3ec7c66f0f8a25940d30` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3a730ee601c329c6b2067116eadcfc0a9cee0e70` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d4621fa5ff784dfb2fcdfd5b293224167f239db` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d93790e97fd08a9088ead721dfd186c1da71f07` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4baaaed127e6d6d9a58737ed68a4647cb87dcb36` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4dd3c43b29da1d2cae5a42f06ad153dc075f44d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5069fce62e7a1fd868c0f105cb5372cd0ab6c026` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x56e0f6df03883611c9762e78d4091e39ad9c420e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5f6293343e8986fc9a6e2e6cb40c5b5d4d4481cf` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x60ad78a3452e5f6f89f823cd96aea1dc33a2f152` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x642b8393b5c0ce926e45b5f2f28e1d684b7d4ca5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x65621a6a2cdb2180d3ff89d5dd28b19bb7dd200a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x69633b5ada326ba7a782a4c8ac69e812619414c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7016c64a65f03c5427a72fca5eac00e46bbbcb79` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x71704eb4566e2a1f4fd620200cf9dbb794d6d03f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7e3b1f7f55b023fe5977cee1382051718a8bfb02` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x802b1f8e092ac4469b30c7560266f9a6f8ca450f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x940e31fd3ee2bacd25adb8294daa7c5f0a789cf0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9adf2b330697c6816176491e1fd5503bb746d1d8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa020c5e9b8da8fc851bf98bda8105e95c7716f14` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa75e60d982496ca586f54b4a6de8c872b0e97904` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xabcc05bb95792bc4019b3ee8a2921283c8f73c7c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb1844386993199768da0b749c5933b314839a48e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb825060fa95cffa51da2c1f2f8f37a6ad758709d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xba95fce6c2683c29bd963dd201ca8ee8f3605801` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbaa9613e2dcf54c67eda0179debe94185c03c265` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc30508a610f87b515a9f31f4ea33a437666b301c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xca75253b43a3172d40407d1d09c753ed53b8d94b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd108fd9390f66de76068a1b95a9d8c86baa6b18d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd49b76872d87eb50733f35fc0804738c35833a2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd5b12c210e134a868e314e365eabcc4c4655f884` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xde0eec5d2f1f5041f2917cfaeed154e40d0e8d27` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe97d34e531e1b299047a94fc6854289830362d8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf9ee6d077d6aa2533e23b0767fb98511bb5712d5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfbc414e4367d9003b949734947cd50d173e56ad9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xff64d822cd7a0cb8af343d666214e2b73c5c8ec0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SlowMist Audit Report - DTX Protocol_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20DTX%20Protocol_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13051] SlowMist Audit Report - DTX Protocol_en-us.pdf

Fork inheritance lineage and inherited audits are included when available.
