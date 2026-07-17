# Agentic Audit Brief: Upheaval Finance

## Project Overview

- Project: Upheaval Finance (`upheaval-finance`)
- Website: [https://upheaval.fi/portfolio?ref=674574](https://upheaval.fi/portfolio?ref=674574)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.939Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: hyperliquid
- Contract surface: 15 unique implementations (15 raw deployments)
- DeFi Llama TVL: $443,418.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 15 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/13 (30.8%)
- Deployed-live implementations: 15 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/15
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 15
- Raw deployments: 15
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 4 | 26.7% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | unknown | hyperliquid | n/a | [`0x11f1ab4b3b60743762f8280a028cc6935acf2c69`](./contracts/hyperliquid-999/0x11f1ab4b3b60743762f8280a028cc6935acf2c69/) | ✅ Audited |
| SwapRouter | unknown | hyperliquid | n/a | [`0x0837dd08b036d31425593fa58e98b693b9b6eb2b`](./contracts/hyperliquid-999/0x0837dd08b036d31425593fa58e98b693b9b6eb2b/) | ✅ Audited |
| UpheavalV3Factory | unknown | hyperliquid | n/a | [`0x2566163ea012c9e67c1c7080e0a073f20b548030`](./contracts/hyperliquid-999/0x2566163ea012c9e67c1c7080e0a073f20b548030/) | ✅ Audited |
| UpheavalV3PoolDeployer | unknown | hyperliquid | n/a | [`0x1a20d37351f39116d2c14abd88ec55aaf85dc681`](./contracts/hyperliquid-999/0x1a20d37351f39116d2c14abd88ec55aaf85dc681/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HuskeyInterfaceMulticall | unknown | hyperliquid | n/a | [`0x2aa27d8ad0ec2bf129b2543ea8707d1cea499310`](./contracts/hyperliquid-999/0x2aa27d8ad0ec2bf129b2543ea8707d1cea499310/) | ⚠️ Unaudited |
| LinearVesting | unknown | hyperliquid | n/a | [`0xf9d6ab1d33e5ba1e1600ce499b684584b4f7dacb`](./contracts/hyperliquid-999/0xf9d6ab1d33e5ba1e1600ce499b684584b4f7dacb/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | hyperliquid | n/a | [`0xaf7fd5bb87e52b4631232b3460fc1f032202cb59`](./contracts/hyperliquid-999/0xaf7fd5bb87e52b4631232b3460fc1f032202cb59/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | hyperliquid | n/a | [`0xfbfdb83b5ddf3951261f3d75ca5c3a4dfdbecbd7`](./contracts/hyperliquid-999/0xfbfdb83b5ddf3951261f3d75ca5c3a4dfdbecbd7/) | ⚠️ Unaudited |
| QuoterV2 | unknown | hyperliquid | n/a | [`0x08443ba2bc5ab1dd5ba0d65f622ebb470ecf77e1`](./contracts/hyperliquid-999/0x08443ba2bc5ab1dd5ba0d65f622ebb470ecf77e1/) | ⚠️ Unaudited |
| SmartRouter | unknown | hyperliquid | n/a | [`0xd4ad13fd4f42d3f2e0945faa7a18dd043b3f9fb0`](./contracts/hyperliquid-999/0xd4ad13fd4f42d3f2e0945faa7a18dd043b3f9fb0/) | ⚠️ Unaudited |
| TickLens | unknown | hyperliquid | n/a | [`0x100f7dd3c3cff22108299193f8b937900f35ef93`](./contracts/hyperliquid-999/0x100f7dd3c3cff22108299193f8b937900f35ef93/) | ⚠️ Unaudited |
| TokenValidator | unknown | hyperliquid | n/a | [`0xb6bfe8ee4dcd579e760439140ad05d20f5dce552`](./contracts/hyperliquid-999/0xb6bfe8ee4dcd579e760439140ad05d20f5dce552/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x1dfdc0da670a25d62e651278edef66ee16723fd1`](./contracts/hyperliquid-999/0x1dfdc0da670a25d62e651278edef66ee16723fd1/) | ⚠️ Unaudited |
| UpheavalV3LmPoolDeployer | unknown | hyperliquid | n/a | [`0x6e3c4dd13a506aac276e531e9406c74ecf1067ca`](./contracts/hyperliquid-999/0x6e3c4dd13a506aac276e531e9406c74ecf1067ca/) | ⚠️ Unaudited |
| V3Migrator | unknown | hyperliquid | n/a | [`0x30816d58bd24e7abd7022d9c7cb996f20f15c4fb`](./contracts/hyperliquid-999/0x30816d58bd24e7abd7022d9c7cb996f20f15c4fb/) | ⚠️ Unaudited |

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
| [blocksec_upheaval_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_upheaval_v1.0-signed.pdf) | BlockSec | Audit | 2025-09 | fresh | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x2aa27d8ad0ec2bf129b2543ea8707d1cea499310`](./contracts/hyperliquid-999/0x2aa27d8ad0ec2bf129b2543ea8707d1cea499310/) | HuskeyInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xf9d6ab1d33e5ba1e1600ce499b684584b4f7dacb`](./contracts/hyperliquid-999/0xf9d6ab1d33e5ba1e1600ce499b684584b4f7dacb/) | LinearVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaf7fd5bb87e52b4631232b3460fc1f032202cb59`](./contracts/hyperliquid-999/0xaf7fd5bb87e52b4631232b3460fc1f032202cb59/) | MixedRouteQuoterV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x08443ba2bc5ab1dd5ba0d65f622ebb470ecf77e1`](./contracts/hyperliquid-999/0x08443ba2bc5ab1dd5ba0d65f622ebb470ecf77e1/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd4ad13fd4f42d3f2e0945faa7a18dd043b3f9fb0`](./contracts/hyperliquid-999/0xd4ad13fd4f42d3f2e0945faa7a18dd043b3f9fb0/) | SmartRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x100f7dd3c3cff22108299193f8b937900f35ef93`](./contracts/hyperliquid-999/0x100f7dd3c3cff22108299193f8b937900f35ef93/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xb6bfe8ee4dcd579e760439140ad05d20f5dce552`](./contracts/hyperliquid-999/0xb6bfe8ee4dcd579e760439140ad05d20f5dce552/) | TokenValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6e3c4dd13a506aac276e531e9406c74ecf1067ca`](./contracts/hyperliquid-999/0x6e3c4dd13a506aac276e531e9406c74ecf1067ca/) | UpheavalV3LmPoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x30816d58bd24e7abd7022d9c7cb996f20f15c4fb`](./contracts/hyperliquid-999/0x30816d58bd24e7abd7022d9c7cb996f20f15c4fb/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
