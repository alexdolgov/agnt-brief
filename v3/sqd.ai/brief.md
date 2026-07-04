# Agentic Audit Brief: SQD.ai

## Project Overview

- Project: SQD.ai (`sqd.ai`)
- Website: [https://www.sqd.ai/](https://www.sqd.ai/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.533Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 19 unique implementations (21 raw deployments)
- DeFi Llama TVL: $21,978,065.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Developer Tools. Structurally: 33 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 11 common project-authored base contract(s) (erc20basic, blacklistable, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 21 (18 live, 3 unknown).
- Excluded by liveness: 39 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/16 (0.0%)
- Deployed-live implementations: 16 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 19
- Raw deployments: 21
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DistributedRewardsDistribution | unknown | arbitrum | n/a | [`0x4de282...362aea`](./contracts/arbitrum-42161/0x4de282bd18ae4987b3070f4d5ef8c80756362aea/) | ⚠️ Unaudited |
| FeeRouterModule | adapter | arbitrum | n/a | [`0x59c074...92a787`](./contracts/arbitrum-42161/0x59c074ee3dd85125620b4a5b452c008bc792a787/) | ⚠️ Unaudited |
| FiatTokenV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x088247...57fe56`](./contracts/ethereum-1/0x0882477e7895bdc5cea7cb1552ed914ab157fe56/); ethereum `0x0fbbc6...49a77f` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | ethereum | n/a | [`0xb7277a...3778a2`](./contracts/ethereum-1/0xb7277a6e95992041568d9391d09d0122023778a2/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| NetworkController | governance | arbitrum | n/a | [`0xf5462e...82d68d`](./contracts/arbitrum-42161/0xf5462ef65ca8a9cca789c912bc8ada80b582d68d/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xd4554b...9b3e78`](./contracts/base-8453/0xd4554bea546efa83c1e6b389ecac40ea999b3e78/) | ⚠️ Unaudited |
| PeerToken | token | bsc | n/a | [`0xe50e3d...7fcc13`](./contracts/bsc-56/0xe50e3d1a46070444f44df911359033f2937fcc13/) | ⚠️ Unaudited |
| RewardTreasury | operational_periphery | arbitrum | n/a | [`0x237abf...a8a2a0`](./contracts/arbitrum-42161/0x237abf43bc51fd5c50d0d598a1a4c26e56a8a2a0/) | ⚠️ Unaudited |
| SQD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x133742...6f8ab1`](./contracts/ethereum-1/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/); arbitrum [`0x133742...6f8ab1`](./contracts/arbitrum-42161/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/) | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | [`0xb31a0d...ac9a51`](./contracts/arbitrum-42161/0xb31a0d39d2c69ed4b28d96e12cbf52c5f9ac9a51/) | ⚠️ Unaudited |
| V2_1Upgrader | unknown | ethereum | n/a | [`0xd13689...b5259b`](./contracts/ethereum-1/0xd13689e8da0ed95b55100e27b7dbc95c03b5259b/) | ⚠️ Unaudited |
| V2Upgrader | unknown | ethereum | n/a | [`0xed24bd...e272fc`](./contracts/ethereum-1/0xed24bd79a3f2ba4325e9c553164e299c65e272fc/) | ⚠️ Unaudited |
| VestingFactory | operational_periphery | arbitrum | n/a | [`0x1f8f83...4e4ece`](./contracts/arbitrum-42161/0x1f8f83cd76baeca1cb5c064ad59203c82b4e4ece/) | ⚠️ Unaudited |
| WorkerRegistration | unknown | arbitrum | n/a | [`0x36e2b1...fcae4e`](./contracts/arbitrum-42161/0x36e2b147db67e76ab67a4d07c293670ebefcae4e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa9d1e0...1d3e43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x365709...2d8306` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf7b057...7d8cc4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Subsquid_Subsquid_Audit.pdf (also discovered via alternate URL)](https://www.chainsecurity.com/reports/Subsquid/ChainSecurity_Subsquid_Subsquid_Audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://www.chainsecurity.com/security-audit/subsquid-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21283] ChainSecurity_Subsquid_Subsquid_Audit.pdf
- [24475] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
