# Agentic Audit Brief: SQD.ai

## Project Overview

- Project: SQD.ai (`sqd.ai`)
- Website: [https://www.sqd.ai/](https://www.sqd.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.569Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 26 unique implementations (42 raw deployments)
- DeFi Llama TVL: $21,978,065.61
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Developer Tools. Structurally: 33 project-authored contract(s) across 4 chain(s); 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 11 common project-authored base contract(s) (erc20basic, blacklistable, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 42 (39 live, 3 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 16/23 (69.6%)
- Deployed-live implementations: 23 of 26 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 16/23
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 26
- Raw deployments: 42
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 16 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 69.6% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 16 | 69.6% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AllocationsViewer | unknown | arbitrum | n/a | [`0xa99020...6d78f5`](./contracts/arbitrum-42161/0xa9902060b71a0040880aa038d22ddcfe3c6d78f5/) | ✅ Audited |
| EqualStrategy | unknown | arbitrum | n/a | [`0xa604f8...277f8b`](./contracts/arbitrum-42161/0xa604f84c9c59e223b12c831b35723aa0d7277f8b/) | ✅ Audited |
| GatewayRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x17776c...a2c7ca`](./contracts/arbitrum-42161/0x17776c473d94d6910d66ff69656825051ea2c7ca/); arbitrum `0x2cc72e...a3ce5f` | ✅ Audited |
| GatewayRegistry | unknown | arbitrum | n/a | [`0x259112...df2152`](./contracts/arbitrum-42161/0x2591121581d2a7022cd3f66f1a7ccc9560df2152/) | ✅ Audited |
| GatewayRegistry | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x8a90a1...eb8c4b`](./contracts/arbitrum-42161/0x8a90a1ce5fa8cf71de9e6f76b7d3c0b72feb8c4b/); arbitrum `0xa20ee6...5adc58` | ✅ Audited |
| NetworkController | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x159550...b88847`](./contracts/arbitrum-42161/0x159550d2589cff1ff604af715130642256b88847/); arbitrum `0x4cf580...4f0da7`; arbitrum `0xd03b4e...d5768b`; arbitrum `0xe57c18...ca7f99`; arbitrum `0xf5462e...82d68d` | ✅ Audited |
| RewardCalculation | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xd3d2c1...516eb5`](./contracts/arbitrum-42161/0xd3d2c185a30484641c07b60e7d952d7b85516eb5/); arbitrum `0xfa4727...aa2082` | ✅ Audited |
| RewardTreasury | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x237abf...a8a2a0`](./contracts/arbitrum-42161/0x237abf43bc51fd5c50d0d598a1a4c26e56a8a2a0/); arbitrum `0xce1f5a...9af27c` | ✅ Audited |
| Router | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0afe1d...867099`](./contracts/arbitrum-42161/0x0afe1dc5892eff2c7cc059479049f831e0867099/); arbitrum `0x3b88a5...67e492` | ✅ Audited |
| Router | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4a7c41...ae86aa`](./contracts/arbitrum-42161/0x4a7c41397f623ca04b60a59bcaa77346aeae86aa/); arbitrum `0x67f56d...9da941` | ✅ Audited |
| SoftCap | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x635143...cc5bad`](./contracts/arbitrum-42161/0x6351431fb7a55013daa5427d55ee09693ccc5bad/); arbitrum `0xde29d5...4c87d0` | ✅ Audited |
| Staking | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xb31a0d...ac9a51`](./contracts/arbitrum-42161/0xb31a0d39d2c69ed4b28d96e12cbf52c5f9ac9a51/); arbitrum `0xd2dcb9...f895f5` | ✅ Audited |
| SubequalStrategy | unknown | arbitrum | n/a | [`0xf19709...66ab62`](./contracts/arbitrum-42161/0xf197094d96f45325ee8bd2c43c5d25c05d66ab62/) | ✅ Audited |
| TemporaryHoldingFactory | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x14926e...4d8d0d`](./contracts/arbitrum-42161/0x14926ebf05a904b8e2e2bf05c10ecca9a54d8d0d/); arbitrum `0xf83ac4...f122c1` | ✅ Audited |
| VestingFactory | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x1f8f83...4e4ece`](./contracts/arbitrum-42161/0x1f8f83cd76baeca1cb5c064ad59203c82b4e4ece/); arbitrum `0x7508bc...25816c` | ✅ Audited |
| WorkerRegistration | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x36e2b1...fcae4e`](./contracts/arbitrum-42161/0x36e2b147db67e76ab67a4d07c293670ebefcae4e/); arbitrum `0x6a5659...971ad4` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DistributedRewardsDistribution | unknown | arbitrum | n/a | [`0x4de282...362aea`](./contracts/arbitrum-42161/0x4de282bd18ae4987b3070f4d5ef8c80756362aea/) | ⚠️ Unaudited |
| FeeRouterModule | adapter | arbitrum | n/a | [`0x59c074...92a787`](./contracts/arbitrum-42161/0x59c074ee3dd85125620b4a5b452c008bc792a787/) | ⚠️ Unaudited |
| FiatTokenV2_1 | token | ethereum | n/a | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | base | n/a | [`0xd4554b...9b3e78`](./contracts/base-8453/0xd4554bea546efa83c1e6b389ecac40ea999b3e78/) | ⚠️ Unaudited |
| PeerToken | token | bsc | n/a | [`0xe50e3d...7fcc13`](./contracts/bsc-56/0xe50e3d1a46070444f44df911359033f2937fcc13/) | ⚠️ Unaudited |
| SQD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x133742...6f8ab1`](./contracts/ethereum-1/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/); arbitrum [`0x133742...6f8ab1`](./contracts/arbitrum-42161/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/) | ⚠️ Unaudited |

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
| [ChainSecurity_Subsquid_Subsquid_Audit.pdf (also discovered via alternate URL)](https://www.chainsecurity.com/reports/Subsquid/ChainSecurity_Subsquid_Subsquid_Audit.pdf) | ChainSecurity | Audit | 2024-04 | stale | Direct | contract_name|n/a | 31 | high |
| [Manual audit seed](https://www.chainsecurity.com/security-audit/subsquid-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x4de282...362aea`](./contracts/arbitrum-42161/0x4de282bd18ae4987b3070f4d5ef8c80756362aea/) | DistributedRewardsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x59c074...92a787`](./contracts/arbitrum-42161/0x59c074ee3dd85125620b4a5b452c008bc792a787/) | FeeRouterModule | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2327a...4cbdcf`](./contracts/ethereum-1/0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd4554b...9b3e78`](./contracts/base-8453/0xd4554bea546efa83c1e6b389ecac40ea999b3e78/) | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe50e3d...7fcc13`](./contracts/bsc-56/0xe50e3d1a46070444f44df911359033f2937fcc13/) | PeerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x133742...6f8ab1`](./contracts/ethereum-1/0x1337420ded5adb9980cfc35f8f2b054ea86f8ab1/) | SQD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=31

Zero-match audit list:

- [24475] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
