# Agentic Audit Brief: Gravity by Galxe

## Project Overview

- Project: Gravity by Galxe (`gravity-by-galxe`)
- Website: [https://gravity.xyz/](https://gravity.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.024Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 34 unique implementations (34 raw deployments)
- DeFi Llama TVL: $22,195,495.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 32 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 19 common project-authored base contract(s) (erc20basic, blacklistable, standardtoken). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Folks Finance** (`folks-finance`) in the OFTWrapper, TokenMessaging subsystem.
8 audits inherited from `folks-finance`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 34; live-surface contracts included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/34 (5.9%)
- Deployed-live implementations: 34 of 34 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/34
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 9 (1 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.9% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Adevar | Tier 2 | 2 | 5.9% | 2025-10 |
| CertiK | Tier 2 | 2 | 5.9% | 2022-12 |
| Coinspect | Tier 2 | 2 | 5.9% | 2024-08 |
| Trail of Bits | Tier 1 | 2 | 5.9% | 2022-12 |
| unknown | Tier 2 | 2 | 5.9% | 2024-05 |
| Vantage Point | Tier 2 | 2 | 5.9% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OFTWrapper | unknown | ethereum | n/a | [`0x1bf53b...908db4`](./contracts/ethereum-1/0x1bf53b4b70a6b40aa206a6a23e3cc8f6b5908db4/) | ✅ Audited |
| TokenMessaging | unknown | ethereum | n/a | [`0x4aff12...4f779c`](./contracts/ethereum-1/0x4aff12ce71afd06e7b20f50f2eaa365b8b4f779c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Controller | unknown | ethereum | n/a | [`0xca0641...febeb7`](./contracts/ethereum-1/0xca06411bd7a7296d7dbdd0050dfc846e95febeb7/) | ⚠️ Unaudited |
| CreateX | unknown | ethereum | n/a | [`0xba5ed0...8ba5ed`](./contracts/ethereum-1/0xba5ed099633d3b313e4d5f7bdc1305d3c28ba5ed/) | ⚠️ Unaudited |
| CreditMessaging | unknown | ethereum | n/a | [`0x5489dd...e7f97d`](./contracts/ethereum-1/0x5489ddab89609580835ee6d655cd9b3503e7f97d/) | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | [`0x6b1754...271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x000000...7da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0xe5a5f1...f2322b`](./contracts/ethereum-1/0xe5a5f138005e19a3e6d0fe68b039397eeef2322b/) | ⚠️ Unaudited |
| FeeLibV1 | unknown | ethereum | n/a | [`0x1a6437...c0f246`](./contracts/ethereum-1/0x1a6437bef5b8615ef523d00ef7c9d58d66c0f246/) | ⚠️ Unaudited |
| FiatToken | unknown | ethereum | n/a | [`0x8cbde2...77a91a`](./contracts/ethereum-1/0x8cbde23b1416cac07a52591bba744c744d77a91a/) | ⚠️ Unaudited |
| FiatTokenProxy | unknown | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenUtil | unknown | ethereum | n/a | [`0x6315aa...0355a6`](./contracts/ethereum-1/0x6315aa908c50376d1028412c028aa0629f0355a6/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/) | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| GBridgeSender | unknown | ethereum | n/a | [`0xe82c61...5dc876`](./contracts/ethereum-1/0xe82c61ac9ec2041b493118051afa4f18a55dc876/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xbd6e43...fbfb6d`](./contracts/ethereum-1/0xbd6e434db90fd8ad4e28d85c133ad34ca6fbfb6d/) | ⚠️ Unaudited |
| GravityPortal | unknown | ethereum | n/a | [`0x76cf85...5f6e53`](./contracts/ethereum-1/0x76cf8526fa9461e50b2c6702a7246ce6915f6e53/) | ⚠️ Unaudited |
| GravityTokenG | unknown | ethereum | n/a | [`0x9c7beb...260649`](./contracts/ethereum-1/0x9c7beba8f6ef6643abd725e45a4e8387ef260649/) | ⚠️ Unaudited |
| MasterMinter | unknown | ethereum | n/a | [`0x566c11...674335`](./contracts/ethereum-1/0x566c11b5c2201b69c9269fe924e4395873674335/) | ⚠️ Unaudited |
| Members | unknown | ethereum | n/a | [`0x3e8640...107ac5`](./contracts/ethereum-1/0x3e8640574aa764763291ed733672d3a105107ac5/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7...f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c0...b97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x8d5a41...05d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | ⚠️ Unaudited |
| Permit2 | unknown | ethereum | n/a | [`0x000000...c78ba3`](./contracts/ethereum-1/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| RewardLib | unknown | ethereum | n/a | [`0xfa5475...fcdcfd`](./contracts/ethereum-1/0xfa54751cda1f98947c524fd9701c9dad84fcdcfd/) | ⚠️ Unaudited |
| RewardRegistryLib | unknown | ethereum | n/a | [`0x9f22c4...9499ee`](./contracts/ethereum-1/0x9f22c4b3dbe693a34f2af61a16a022f87d9499ee/) | ⚠️ Unaudited |
| SenderCreator | unknown | ethereum | n/a | [`0x7fc984...088348`](./contracts/ethereum-1/0x7fc98430eaedbb6070b35b39d798725049088348/) | ⚠️ Unaudited |
| StargateStaking | unknown | ethereum | n/a | [`0xff551f...04a6bd`](./contracts/ethereum-1/0xff551feddbedc0aee764139ccd9cb644bb04a6bd/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db...fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| Treasurer | unknown | ethereum | n/a | [`0x1041d1...606918`](./contracts/ethereum-1/0x1041d127b2d4bc700f0f563883bc689502606918/) | ⚠️ Unaudited |
| WBTC | unknown | ethereum | n/a | [`0x2260fa...c2c599`](./contracts/ethereum-1/0x2260fac5e5542a773aa44fbcfedf7c193bc2c599/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e...f3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Adevar - Algorand Wormhole NTT - October 2025.pdf](https://github.com/Folks-Finance/audits/blob/main/Adevar%20-%20Algorand%20Wormhole%20NTT%20-%20October%202025.pdf) | Adevar | Audit | 2025-10 | fresh | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [Coinspect - Audit of Liquid Staking - August 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/Coinspect%20-%20Audit%20of%20Liquid%20Staking%20-%20August%202024.pdf) | Coinspect | Audit | 2024-08 | aging | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [OtterSec - Audit of XChain Lending - May 2024.pdf](https://github.com/Folks-Finance/audits/blob/main/OtterSec%20-%20Audit%20of%20XChain%20Lending%20-%20May%202024.pdf) | unknown | Audit | 2024-05 | stale | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [Vantage Point - Smart Contract Audit of xChain Liquid Governance - June 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20of%20xChain%20Liquid%20Governance%20-%20June%202023.pdf) | unknown | Audit | 2023-06 | stale | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [Vantage Point - Revision Audit of Liquid Governance V3 - March 2023.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Revision%20Audit%20of%20Liquid%20Governance%20V3%20-%20March%202023.pdf) | Vantage Point | Audit | 2023-03 | stale | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [Certik - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Certik%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | CertiK | Audit | 2022-12 | stale | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [Trail of Bits - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Trail%20of%20Bits%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Trail of Bits | Audit | 2022-12 | stale | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [Vantage Point - Smart Contract Audit - December 2022.pdf](https://github.com/Folks-Finance/audits/blob/main/Vantage%20Point%20-%20Smart%20Contract%20Audit%20-%20December%202022.pdf) | Vantage Point | Audit | 2022-12 | stale | Inherited from Folks Finance — forked code, scoped to OFTWrapper, TokenMessaging | inherited | 2 | n/a |
| [spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf](https://1664081133-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FZtdkwV6IW7ZSjaMZNmkU%2Fuploads%2FJ7wCsY4imFYBZcKBhMuO%2FSlowMist%20Audit%20Report%20Galxe%20G%20Token.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=16

Zero-match audit list:

- [20720] spaces/ZtdkwV6IW7ZSjaMZNmkU/uploads/J7wCsY4imFYBZcKBhMuO/SlowMist Audit Report Galxe G Token.pdf

Fork inheritance lineage and inherited audits are included when available.
