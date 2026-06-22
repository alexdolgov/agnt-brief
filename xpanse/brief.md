# Agentic Audit Brief: Xpanse

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: Xpanse (`xpanse`)
- Website: [https://xpanse.trade/](https://xpanse.trade/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T10:42:10.210Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 13 unique implementations (31 raw deployments)
- DeFi Llama TVL: $240,059.00
- On-chain TVL (included contracts): $136,435.07
- TVL by chain: Bsc $136,435.07

## Project Description

Xpanse (Horizon Protocol) is a DeFi derivatives platform on BSC that enables trading of synthetic assets and perpetual futures. It provides staking rewards to incentivize liquidity and participation in its synthetic asset ecosystem.

### Architecture

The Horizon Protocol family uses ProxyERC20 as the main synthetic token, BEP20PHB as the protocol token, and StakingRewards contracts to distribute incentives. PancakePair contracts provide liquidity pools for these tokens, enabling trading and yield generation.

## Contract Surface Quality

- Indexed contracts: 348; live-surface contracts included: 31 (31 live, 0 unknown).
- Excluded by liveness: 317 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 7/83.

## Audit Coverage Summary

- Verified implementations audited: 6/13 (46.2%)
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 31
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 46.2% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyERC20 | token | bsc | n/a | 3 deployments: bsc [`0x6dedce...80b204`](./contracts/bsc-56/0x6dedceee04795061478031b1dfb3c1ddca80b204/); bsc `0xc0eff7...a917cd`; bsc `0xf01864...4ae7b9` | ✅ Audited |
| AddressResolver | unknown | bsc | n/a | [`0xf505bf...1f2300`](./contracts/bsc-56/0xf505bfdb669412ef8543cc76798f497d011f2300/) | ✅ Audited |
| DelegateApprovals | unknown | bsc | n/a | [`0x9657a0...bfbfc8`](./contracts/bsc-56/0x9657a0fd98e88464e1159d98b517a4945dbfbfc8/) | ✅ Audited |
| Proxy | proxy | bsc | n/a | [`0xfcf3af...d1367f`](./contracts/bsc-56/0xfcf3afa6cda14b438aeeb8ffed433d196cd1367f/) | ✅ Audited |
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

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://static.horizonprotocol.com/Horizon-Protocol-Smart-Contract-Audit-Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x040963...87904d`](./contracts/bsc-56/0x0409633a72d846fc5bbe2f98d88564d35987904d/) | BEP20PHB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a7b78...79f44c`](./contracts/bsc-56/0x2a7b78b705ea48d278d673e80c880d7eb479f44c/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x051782...124362`](./contracts/bsc-56/0x05178294edd61ba3f6a78ef419165ad4d0124362/) | LiquidatorRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xada58c...282285`](./contracts/bsc-56/0xada58cf32276ccd03a1c155688eff8b3bc282285/) | PhbStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19ecf0...72f2ad`](./contracts/bsc-56/0x19ecf0fe49a30e310a2e1a78a65f43f16772f2ad/) | ProxyPerpsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x41b978...490474`](./contracts/bsc-56/0x41b9784e0541bf9d5324b3f265cfcd1170490474/) | RewardEscrowV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=188

Fork inheritance lineage and inherited audits are included when available.
