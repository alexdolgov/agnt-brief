# Agentic Audit Brief: Xpanse

## Project Overview

- Project: Xpanse (`xpanse`)
- Website: [https://xpanse.trade/](https://xpanse.trade/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:16.502Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 38 unique implementations (82 raw deployments)
- DeFi Llama TVL: $240,059.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 82 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 14 common project-authored base contract(s) (state, mixinresolver, mixinsystemsettings). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 325; live-surface contracts included: 82 (57 live, 25 unknown).
- Excluded by liveness: 243 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/13 (46.2%)
- Deployed-live implementations: 13 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/13
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 38
- Raw deployments: 82
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 46.2% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressResolver | unknown | bsc | n/a | [`0xf505bf...1f2300`](./contracts/bsc-56/0xf505bfdb669412ef8543cc76798f497d011f2300/) | ✅ Audited |
| DelegateApprovals | unknown | bsc | n/a | [`0x9657a0...bfbfc8`](./contracts/bsc-56/0x9657a0fd98e88464e1159d98b517a4945dbfbfc8/) | ✅ Audited |
| Proxy | unknown | bsc | n/a | 3 deployments: bsc [`0x2d4dfd...f7589e`](./contracts/bsc-56/0x2d4dfd6c9b8081dd54a8fd7f6de06fdd5af7589e/); bsc `0x3c969c...810872`; bsc `0xfcf3af...d1367f` | ✅ Audited |
| ProxyERC20 | unknown | bsc | n/a | 27 deployments: bsc [`0x0bd9c6...312591`](./contracts/bsc-56/0x0bd9c670d7bb289d0b307e79e239382a22312591/); bsc `0x22879e...9cce3e`; bsc `0x25b012...e1cdb6`; bsc `0x2e4466...d3cf8b`; bsc `0x2fee19...bff3ee`; bsc `0x3a42e7...0229eb`; bsc `0x3d3c76...4ecb62`; bsc `0x49a7f0...a30e8c`; bsc `0x549d68...e8cb39`; bsc `0x57e2a4...4e77da`; bsc `0x5ad70d...d01e87`; bsc `0x6400d8...2b217c`; bsc `0x65678d...51f34c`; bsc `0x6d4e17...295c70`; bsc `0x6dedce...80b204`; bsc `0x6e9266...5f87fb`; bsc `0x82236c...224f77`; bsc `0x870d11...2fcdf3`; bsc `0x8a72d4...459be9`; bsc `0x8e044e...72f56b`; bsc `0x914510...4f4c30`; bsc `0x916fa4...4b0745`; bsc `0xab3f54...18d615`; bsc `0xc0eff7...a917cd`; bsc `0xd47663...2957f5`; bsc `0xf01864...4ae7b9`; bsc `0xf6c31f...cd9875` | ✅ Audited |
| StakingRewards | unknown | bsc | n/a | 5 deployments: bsc [`0x5646aa...959a85`](./contracts/bsc-56/0x5646aa2f9408c7c2ee1dc7db813c8b687a959a85/); bsc `0x67d5a9...65bf98`; bsc `0x84838d...cc1da8`; bsc `0xb9c6c9...e949b6`; bsc `0xd4552f...5caeec` | ✅ Audited |
| SystemStatus | unknown | bsc | n/a | [`0x344b08...d64209`](./contracts/bsc-56/0x344b085489f41fe9a60c6f4b3727b12447d64209/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20PHB | unknown | bsc | n/a | [`0x040963...87904d`](./contracts/bsc-56/0x0409633a72d846fc5bbe2f98d88564d35987904d/) | ⚠️ Unaudited |
| Liquidator | operational_periphery | bsc | n/a | [`0x2a7b78...79f44c`](./contracts/bsc-56/0x2a7b78b705ea48d278d673e80c880d7eb479f44c/) | ⚠️ Unaudited |
| LiquidatorRewards | operational_periphery | bsc | n/a | [`0x051782...124362`](./contracts/bsc-56/0x05178294edd61ba3f6a78ef419165ad4d0124362/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 2 deployments: bsc [`0xc3bf4e...c88bdf`](./contracts/bsc-56/0xc3bf4e0ea6b76c8edd838e14be2116c862c88bdf/); bsc `0xdc9a57...430e74` | ⚠️ Unaudited |
| PhbStaking | unknown | bsc | n/a | [`0xada58c...282285`](./contracts/bsc-56/0xada58cf32276ccd03a1c155688eff8b3bc282285/) | ⚠️ Unaudited |
| ProxyPerpsV2 | unknown | bsc | n/a | 12 deployments: bsc [`0x19ecf0...72f2ad`](./contracts/bsc-56/0x19ecf0fe49a30e310a2e1a78a65f43f16772f2ad/); bsc `0x743e69...cea876`; bsc `0x7a35c8...d509ff`; bsc `0x7e3743...fb7630`; bsc `0x863945...46fce2`; bsc `0x8d824c...750735`; bsc `0x92091f...815a92`; bsc `0xa1cf92...68293b`; bsc `0xada278...6d69a2`; bsc `0xaeaf40...e7024a`; bsc `0xb2dacf...a4b9e4`; bsc `0xd87a39...9d5139` | ⚠️ Unaudited |
| RewardEscrowV2 | operational_periphery | bsc | n/a | [`0x41b978...490474`](./contracts/bsc-56/0x41b9784e0541bf9d5324b3f265cfcd1170490474/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x02615d...408b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09567b...2e6d43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0aeedb...31de81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a61c1...76ff81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c3b0a...1e7eda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252b92...5c3334` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5064b0...d54154` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5338b0...e7b9f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60fccf...f3b7fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b0c95...88e916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x727075...3c72d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ada1b...3642e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83b9a5...0bc797` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bdc32...8d4f51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93c978...b9abe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2ff32...e7cff9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc09e3d...1b5bf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8df3c...f00264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc937d5...f1af0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4965b...6603db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc0a78...0bd0a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde1b3c...1f7286` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2d816...839978` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeca33...2cfede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc1b65...ad6dbc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Horizon-Protocol-Smart-Contract-Audit-Report.pdf](https://static.horizonprotocol.com/Horizon-Protocol-Smart-Contract-Audit-Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 38 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
