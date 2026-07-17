# Agentic Audit Brief: Upshift

## Project Overview

- Project: Upshift (`upshift`)
- Website: [https://app.upshift.finance](https://app.upshift.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.949Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $250,617,780.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 14 project-authored contract(s) across 1 chain(s); 5 ERC4626 vaults, 5 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (baseupgradeableerc20, basereentrancyguard, lightweightownable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (14 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 14 of 14 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GnosisSafe | unknown | ethereum | n/a | [`0x17ab7568cd5386df6c8e4552438e32794d057cc1`](./contracts/ethereum-1/0x17ab7568cd5386df6c8e4552438e32794d057cc1/) | ⚠️ Unaudited |
| LendingPool | unknown | ethereum | n/a | [`0x01630191978b6ade4e959054dcd4863a503ecce9`](./contracts/ethereum-1/0x01630191978b6ade4e959054dcd4863a503ecce9/) | ⚠️ Unaudited |
| LendingPoolUpgradeV3 | unknown | ethereum | n/a | [`0x5ee25efbb0102c5340fb40244a25f3bcf374cb0a`](./contracts/ethereum-1/0x5ee25efbb0102c5340fb40244a25f3bcf374cb0a/) | ⚠️ Unaudited |
| LendingPoolV1_1 | unknown | ethereum | n/a | [`0x795f271eb6b11fb21792290d4c3b6366a58b5063`](./contracts/ethereum-1/0x795f271eb6b11fb21792290d4c3b6366a58b5063/) | ⚠️ Unaudited |
| LendingPoolV2 | unknown | ethereum | n/a | [`0x25c3329b04c18427ce3bee741aeca603cf1b2b28`](./contracts/ethereum-1/0x25c3329b04c18427ce3bee741aeca603cf1b2b28/) | ⚠️ Unaudited |
| LendingPoolv3 | unknown | ethereum | n/a | [`0x4c85d60e612825e3e7c48db7f68c5b4c67c2eb16`](./contracts/ethereum-1/0x4c85d60e612825e3e7c48db7f68c5b4c67c2eb16/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xfa0713a8248876a9274a4c0ecebcd6d61d603463`](./contracts/ethereum-1/0xfa0713a8248876a9274a4c0ecebcd6d61d603463/) | ⚠️ Unaudited |
| ProxyFactory | unknown | ethereum | n/a | [`0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a`](./contracts/ethereum-1/0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x4107557d726933f0bca591a4218afc92978457f7`](./contracts/ethereum-1/0x4107557d726933f0bca591a4218afc92978457f7/) | ⚠️ Unaudited |
| ScheduledProxyAdmin | unknown | ethereum | n/a | [`0x20c30c93916fbb7b9f0a25f0de5b656d14511083`](./contracts/ethereum-1/0x20c30c93916fbb7b9f0a25f0de5b656d14511083/) | ⚠️ Unaudited |
| ScheduledProxyAdmin2 | unknown | ethereum | n/a | [`0x510441930b9799e1ae3851b6732e2a37fecb732f`](./contracts/ethereum-1/0x510441930b9799e1ae3851b6732e2a37fecb732f/) | ⚠️ Unaudited |
| StandalonePoolAdapter | unknown | ethereum | n/a | [`0x0784307d28f413d1bb7a36fd46809a726b5741d6`](./contracts/ethereum-1/0x0784307d28f413d1bb7a36fd46809a726b5741d6/) | ⚠️ Unaudited |
| TimelockedCall | unknown | ethereum | n/a | [`0x02e0976ef2a0e2c22b73862b2cfd0dafbb22d881`](./contracts/ethereum-1/0x02e0976ef2a0e2c22b73862b2cfd0dafbb22d881/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xe9b725010a9e419412ed67d0fa5f3a5f40159d32`](./contracts/ethereum-1/0xe9b725010a9e419412ed67d0fa5f3a5f40159d32/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x01630191978b6ade4e959054dcd4863a503ecce9`](./contracts/ethereum-1/0x01630191978b6ade4e959054dcd4863a503ecce9/) | LendingPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ee25efbb0102c5340fb40244a25f3bcf374cb0a`](./contracts/ethereum-1/0x5ee25efbb0102c5340fb40244a25f3bcf374cb0a/) | LendingPoolUpgradeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x795f271eb6b11fb21792290d4c3b6366a58b5063`](./contracts/ethereum-1/0x795f271eb6b11fb21792290d4c3b6366a58b5063/) | LendingPoolV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c3329b04c18427ce3bee741aeca603cf1b2b28`](./contracts/ethereum-1/0x25c3329b04c18427ce3bee741aeca603cf1b2b28/) | LendingPoolV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c85d60e612825e3e7c48db7f68c5b4c67c2eb16`](./contracts/ethereum-1/0x4c85d60e612825e3e7c48db7f68c5b4c67c2eb16/) | LendingPoolv3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a`](./contracts/ethereum-1/0x82ebd62aee6a50b63f1aa2dd377adcbc949a136a/) | ProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20c30c93916fbb7b9f0a25f0de5b656d14511083`](./contracts/ethereum-1/0x20c30c93916fbb7b9f0a25f0de5b656d14511083/) | ScheduledProxyAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x510441930b9799e1ae3851b6732e2a37fecb732f`](./contracts/ethereum-1/0x510441930b9799e1ae3851b6732e2a37fecb732f/) | ScheduledProxyAdmin2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0784307d28f413d1bb7a36fd46809a726b5741d6`](./contracts/ethereum-1/0x0784307d28f413d1bb7a36fd46809a726b5741d6/) | StandalonePoolAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02e0976ef2a0e2c22b73862b2cfd0dafbb22d881`](./contracts/ethereum-1/0x02e0976ef2a0e2c22b73862b2cfd0dafbb22d881/) | TimelockedCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
