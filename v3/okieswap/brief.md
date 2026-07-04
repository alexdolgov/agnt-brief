# Agentic Audit Brief: OkieSwap

## Project Overview

- Project: OkieSwap (`okieswap`)
- Website: [https://okiedokie.fun/](https://okiedokie.fun/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:37.509Z
- Pipeline run: v2-2026-07-03-59f8b9
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

- Coverage of deployed-live implementations: 0/12 (0.0%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/12
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HuskeyInterfaceMulticall | unknown | hyperliquid | n/a | [`0x11943d...de3db5`](./contracts/hyperliquid-999/0x11943dbbbc24ad3dc3c63637b663b4c695de3db5/) | ⚠️ Unaudited |
| Launchpad | unknown | hyperliquid | n/a | [`0x20d2d3...3cab2c`](./contracts/hyperliquid-999/0x20d2d3ab7eb1d5003ce75f09187e9c056b3cab2c/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | hyperliquid | n/a | [`0x3f9eb6...3dc602`](./contracts/hyperliquid-999/0x3f9eb64b6b785415333ad44430b8bd06413dc602/) | ⚠️ Unaudited |
| PancakeFactory | unknown | hyperliquid | n/a | [`0x91dc3c...994ad2`](./contracts/hyperliquid-999/0x91dc3c1a01a5cc9dba1e42209a76c1b991994ad2/) | ⚠️ Unaudited |
| PancakeRouter | unknown | hyperliquid | n/a | [`0x4edf08...70bab2`](./contracts/hyperliquid-999/0x4edf0801b5e116a78bd635fb8d795a67ea70bab2/) | ⚠️ Unaudited |
| QuoterV2 | unknown | hyperliquid | n/a | [`0x1e7343...a54612`](./contracts/hyperliquid-999/0x1e734302974dee933665e031c559db41ada54612/) | ⚠️ Unaudited |
| SwapRouter | unknown | hyperliquid | n/a | [`0x34a733...1dda5a`](./contracts/hyperliquid-999/0x34a733c3c86cb51838f3df476f993b87c71dda5a/) | ⚠️ Unaudited |
| TickLens | unknown | hyperliquid | n/a | [`0x0bfde4...6dea72`](./contracts/hyperliquid-999/0x0bfde411ee921031b746966e06a79c1d2e6dea72/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | [`0x2a01eb...39341b`](./contracts/hyperliquid-999/0x2a01eb753a99537ce01c5af14f50a7073c39341b/) | ⚠️ Unaudited |
| UpheavalV3Factory | unknown | hyperliquid | n/a | [`0x2089df...36e7e2`](./contracts/hyperliquid-999/0x2089df8e5d0a63f732641cbafd8681e28c36e7e2/) | ⚠️ Unaudited |
| UpheavalV3PoolDeployer | unknown | hyperliquid | n/a | [`0x128466...729adc`](./contracts/hyperliquid-999/0x128466c3a9d6df79cc4a1c5cabb629e767729adc/) | ⚠️ Unaudited |
| V3Migrator | unknown | hyperliquid | n/a | [`0x6e3023...a32e64`](./contracts/hyperliquid-999/0x6e302340693cf2476c1daa2989c1e7ffb8a32e64/) | ⚠️ Unaudited |

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
| [spaces/vKvMob18i8DCarDuTw5q/uploads/qWH9CWID5flBNHsZ0OuU/blocksec_okie_finance_okieswap_v1.0-signed.pdf (also discovered via alternate URL)](https://1843077255-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FvKvMob18i8DCarDuTw5q%2Fuploads%2FqWH9CWID5flBNHsZ0OuU%2Fblocksec_okie_finance_okieswap_v1.0-signed.pdf?alt=media&token=21d54b64-cbab-4a78-8fc7-6d3f34c65b0b) | BlockSec | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21415] spaces/vKvMob18i8DCarDuTw5q/uploads/qWH9CWID5flBNHsZ0OuU/blocksec_okie_finance_okieswap_v1.0-signed.pdf

Fork inheritance lineage and inherited audits are included when available.
