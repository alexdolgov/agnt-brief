# Agentic Audit Brief: OkieSwap

## Project Overview

- Project: OkieSwap (`okieswap`)
- Website: [https://okiedokie.fun/](https://okiedokie.fun/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.921Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: hyperliquid
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $143,316.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 12 project-authored contract(s) across 1 chain(s); 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (peripheryimmutablestate, peripheryvalidation, blocktimestamp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/11 (9.1%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 1 | 8.3% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | unknown | hyperliquid | n/a | [`0x3f9eb64b6b785415333ad44430b8bd06413dc602`](./contracts/hyperliquid-999/0x3f9eb64b6b785415333ad44430b8bd06413dc602/) | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HuskeyInterfaceMulticall | unknown | hyperliquid | n/a | [`0x11943dbbbc24ad3dc3c63637b663b4c695de3db5`](./contracts/hyperliquid-999/0x11943dbbbc24ad3dc3c63637b663b4c695de3db5/) | ⚠️ Unaudited |
| Launchpad | unknown | hyperliquid | n/a | [`0x20d2d3ab7eb1d5003ce75f09187e9c056b3cab2c`](./contracts/hyperliquid-999/0x20d2d3ab7eb1d5003ce75f09187e9c056b3cab2c/) | ⚠️ Unaudited |
| PancakeFactory | unknown | hyperliquid | n/a | [`0x91dc3c1a01a5cc9dba1e42209a76c1b991994ad2`](./contracts/hyperliquid-999/0x91dc3c1a01a5cc9dba1e42209a76c1b991994ad2/) | ⚠️ Unaudited |
| PancakeRouter | unknown | hyperliquid | n/a | [`0x4edf0801b5e116a78bd635fb8d795a67ea70bab2`](./contracts/hyperliquid-999/0x4edf0801b5e116a78bd635fb8d795a67ea70bab2/) | ⚠️ Unaudited |
| QuoterV2 | unknown | hyperliquid | n/a | [`0x1e734302974dee933665e031c559db41ada54612`](./contracts/hyperliquid-999/0x1e734302974dee933665e031c559db41ada54612/) | ⚠️ Unaudited |
| SwapRouter | unknown | hyperliquid | n/a | [`0x34a733c3c86cb51838f3df476f993b87c71dda5a`](./contracts/hyperliquid-999/0x34a733c3c86cb51838f3df476f993b87c71dda5a/) | ⚠️ Unaudited |
| TickLens | unknown | hyperliquid | n/a | [`0x0bfde411ee921031b746966e06a79c1d2e6dea72`](./contracts/hyperliquid-999/0x0bfde411ee921031b746966e06a79c1d2e6dea72/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x2a01eb753a99537ce01c5af14f50a7073c39341b`](./contracts/hyperliquid-999/0x2a01eb753a99537ce01c5af14f50a7073c39341b/) | ⚠️ Unaudited |
| UpheavalV3Factory | unknown | hyperliquid | n/a | [`0x2089df8e5d0a63f732641cbafd8681e28c36e7e2`](./contracts/hyperliquid-999/0x2089df8e5d0a63f732641cbafd8681e28c36e7e2/) | ⚠️ Unaudited |
| UpheavalV3PoolDeployer | unknown | hyperliquid | n/a | [`0x128466c3a9d6df79cc4a1c5cabb629e767729adc`](./contracts/hyperliquid-999/0x128466c3a9d6df79cc4a1c5cabb629e767729adc/) | ⚠️ Unaudited |
| V3Migrator | unknown | hyperliquid | n/a | [`0x6e302340693cf2476c1daa2989c1e7ffb8a32e64`](./contracts/hyperliquid-999/0x6e302340693cf2476c1daa2989c1e7ffb8a32e64/) | ⚠️ Unaudited |

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
| [spaces/vKvMob18i8DCarDuTw5q/uploads/qWH9CWID5flBNHsZ0OuU/blocksec_okie_finance_okieswap_v1.0-signed.pdf (also discovered via alternate URL)](https://1843077255-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FvKvMob18i8DCarDuTw5q%2Fuploads%2FqWH9CWID5flBNHsZ0OuU%2Fblocksec_okie_finance_okieswap_v1.0-signed.pdf?alt=media&token=21d54b64-cbab-4a78-8fc7-6d3f34c65b0b) | BlockSec | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x11943dbbbc24ad3dc3c63637b663b4c695de3db5`](./contracts/hyperliquid-999/0x11943dbbbc24ad3dc3c63637b663b4c695de3db5/) | HuskeyInterfaceMulticall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x20d2d3ab7eb1d5003ce75f09187e9c056b3cab2c`](./contracts/hyperliquid-999/0x20d2d3ab7eb1d5003ce75f09187e9c056b3cab2c/) | Launchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x91dc3c1a01a5cc9dba1e42209a76c1b991994ad2`](./contracts/hyperliquid-999/0x91dc3c1a01a5cc9dba1e42209a76c1b991994ad2/) | PancakeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4edf0801b5e116a78bd635fb8d795a67ea70bab2`](./contracts/hyperliquid-999/0x4edf0801b5e116a78bd635fb8d795a67ea70bab2/) | PancakeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1e734302974dee933665e031c559db41ada54612`](./contracts/hyperliquid-999/0x1e734302974dee933665e031c559db41ada54612/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x34a733c3c86cb51838f3df476f993b87c71dda5a`](./contracts/hyperliquid-999/0x34a733c3c86cb51838f3df476f993b87c71dda5a/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0bfde411ee921031b746966e06a79c1d2e6dea72`](./contracts/hyperliquid-999/0x0bfde411ee921031b746966e06a79c1d2e6dea72/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2089df8e5d0a63f732641cbafd8681e28c36e7e2`](./contracts/hyperliquid-999/0x2089df8e5d0a63f732641cbafd8681e28c36e7e2/) | UpheavalV3Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x128466c3a9d6df79cc4a1c5cabb629e767729adc`](./contracts/hyperliquid-999/0x128466c3a9d6df79cc4a1c5cabb629e767729adc/) | UpheavalV3PoolDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6e302340693cf2476c1daa2989c1e7ffb8a32e64`](./contracts/hyperliquid-999/0x6e302340693cf2476c1daa2989c1e7ffb8a32e64/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
