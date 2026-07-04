# Agentic Audit Brief: MoneyFi

## Project Overview

- Project: MoneyFi (`moneyfi`)
- Website: [https://app.moneyfi.fund/](https://app.moneyfi.fund/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:35.077Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, base, bsc, ethereum, optimism
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $357,150.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 16 project-authored contract(s) across 5 chain(s); 2 ERC4626 vaults, 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (defaultaccesscontrolenumerable, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/12 (8.3%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/21
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Beosin | Tier 2 | 1 | 4.8% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MoneyFiFundVault | unknown | arbitrum | n/a | [`0x0228a8...c197b7`](./contracts/arbitrum-42161/0x0228a82cdae89fe94d6ba7c5e1c8404d68c197b7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | ethereum | n/a | [`0x3e5248...c300fd`](./contracts/ethereum-1/0x3e5248390072df19b4a292e8ce6fe65c0fc300fd/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xc5224b...ba1c07`](./contracts/ethereum-1/0xc5224ba06a932b65909b6fa53b263d5b84ba1c07/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x0f93ea...f131db`](./contracts/bsc-56/0x0f93ea942eff599298c75e941e068badb7f131db/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | bsc | n/a | [`0x1efa94...c71832`](./contracts/bsc-56/0x1efa94587d929f61ae5c2c21adcbe853b6c71832/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0x0ccbcd...cc9f6e`](./contracts/base-8453/0x0ccbcd220d94344f0ae7346d2a6276c404cc9f6e/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0x16fe43...e916a2`](./contracts/base-8453/0x16fe43a853883842bfc13bf8c96596a287e916a2/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | [`0xd9ec31...064fc2`](./contracts/base-8453/0xd9ec31efcdb4d98e6578ecb70b970ec60a064fc2/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x0f92f5...f1e1e4`](./contracts/arbitrum-42161/0x0f92f50532c6c4d7d7d95cda3474177794f1e1e4/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0x322d52...d20d4d`](./contracts/arbitrum-42161/0x322d521a9319bf9388419dd53a73ea4605d20d4d/) | ⚠️ Unaudited |
| MoneyFiAerodromeSwap | unknown | base | n/a | [`0x85affe...37293d`](./contracts/base-8453/0x85affe800e3d5098cf9aed4749e765a4a137293d/) | ⚠️ Unaudited |
| MoneyFiCCTPV1CrossChain | unknown | arbitrum | n/a | [`0x103f24...0ebcdb`](./contracts/arbitrum-42161/0x103f2454a7941f07d5661669bd6eed0d1e0ebcdb/) | ⚠️ Unaudited |
| MoneyFiCCTPV1Utils | unknown | arbitrum | n/a | [`0x0cda33...f4c8df`](./contracts/arbitrum-42161/0x0cda33f268e4456cd5d8b6b212c912bacdf4c8df/) | ⚠️ Unaudited |
| MoneyFiController | unknown | bsc | n/a | [`0x1b37b5...cb3164`](./contracts/bsc-56/0x1b37b54d38421e7bdbd3d886a395a87167cb3164/) | ⚠️ Unaudited |
| MoneyFiCrossChainRouter | unknown | arbitrum | n/a | [`0x067430...6bad05`](./contracts/arbitrum-42161/0x067430eca3e7a947afc99345552627e4b46bad05/) | ⚠️ Unaudited |
| MoneyFiPancakeSwap | unknown | bsc | n/a | [`0xf5d465...5dbed1`](./contracts/bsc-56/0xf5d4650902cb5df6cee4f21e3763bc6a0a5dbed1/) | ⚠️ Unaudited |
| MoneyFiReferral | unknown | base | n/a | [`0x39a183...d684a5`](./contracts/base-8453/0x39a18374b0357572e23c17f3057a2b0d8ed684a5/) | ⚠️ Unaudited |
| MoneyFiRouter | unknown | arbitrum | n/a | [`0x034c02...6da85f`](./contracts/arbitrum-42161/0x034c02b3f961258b743af776f72a53b6976da85f/) | ⚠️ Unaudited |
| MoneyFiStartegyUpgradeableAllBridge | unknown | base | n/a | [`0x477101...37b1cc`](./contracts/base-8453/0x477101fd75df7f58d04d71144f56e38ab637b1cc/) | ⚠️ Unaudited |
| MoneyFiStrategyUpgradeableAllBridge | unknown | ethereum | n/a | [`0x03afbc...f42593`](./contracts/ethereum-1/0x03afbc04c44d648dd59fc9cafb2b00730bf42593/) | ⚠️ Unaudited |
| MoneyFiTokenLp | unknown | optimism | n/a | [`0x0f3347...7b7181`](./contracts/optimism-10/0x0f33473b45df316aa410d7060faf2ace2b7b7181/) | ⚠️ Unaudited |

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
| [spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf (also discovered via alternate URL)](https://2898747492-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fam6xzGQtSU5N7yZGyGed%2Fuploads%2FLA452vR32YgoDQOejJWc%2F20250919-MoneyFI-Final-Audit-Report.pdf?alt=media&token=70d0fa74-85a7-44d7-bd9f-b5a33786c766) | MoveBit | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [spaces/am6xzGQtSU5N7yZGyGed/uploads/qRjyhPQBZHT9D7TXDcAt/202507111748-MoneyFI-Final-Audit-Report.pdf (also discovered via alternate URL)](https://2898747492-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fam6xzGQtSU5N7yZGyGed%2Fuploads%2FqRjyhPQBZHT9D7TXDcAt%2F202507111748-MoneyFI-Final-Audit-Report.pdf?alt=media&token=b84e2cde-9577-4725-a354-64209d034455) | Beosin | Audit | 2025-07 | aging | Direct | contract_name | 1 | high |
| [MoneyFi Aptos](https://moneyfi-1.gitbook.io/docs/security-and-risks/security-audits/moneyfi-aptos.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MoneyFi Universal (EVM)](https://moneyfi-1.gitbook.io/docs/security-and-risks/security-audits/moneyfi-universal-evm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x85affe...37293d`](./contracts/base-8453/0x85affe800e3d5098cf9aed4749e765a4a137293d/) | MoneyFiAerodromeSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x103f24...0ebcdb`](./contracts/arbitrum-42161/0x103f2454a7941f07d5661669bd6eed0d1e0ebcdb/) | MoneyFiCCTPV1CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0cda33...f4c8df`](./contracts/arbitrum-42161/0x0cda33f268e4456cd5d8b6b212c912bacdf4c8df/) | MoneyFiCCTPV1Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b37b5...cb3164`](./contracts/bsc-56/0x1b37b54d38421e7bdbd3d886a395a87167cb3164/) | MoneyFiController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x067430...6bad05`](./contracts/arbitrum-42161/0x067430eca3e7a947afc99345552627e4b46bad05/) | MoneyFiCrossChainRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf5d465...5dbed1`](./contracts/bsc-56/0xf5d4650902cb5df6cee4f21e3763bc6a0a5dbed1/) | MoneyFiPancakeSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x39a183...d684a5`](./contracts/base-8453/0x39a18374b0357572e23c17f3057a2b0d8ed684a5/) | MoneyFiReferral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x034c02...6da85f`](./contracts/arbitrum-42161/0x034c02b3f961258b743af776f72a53b6976da85f/) | MoneyFiRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x477101...37b1cc`](./contracts/base-8453/0x477101fd75df7f58d04d71144f56e38ab637b1cc/) | MoneyFiStartegyUpgradeableAllBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03afbc...f42593`](./contracts/ethereum-1/0x03afbc04c44d648dd59fc9cafb2b00730bf42593/) | MoneyFiStrategyUpgradeableAllBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0f3347...7b7181`](./contracts/optimism-10/0x0f33473b45df316aa410d7060faf2ace2b7b7181/) | MoneyFiTokenLp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [21400] spaces/am6xzGQtSU5N7yZGyGed/uploads/LA452vR32YgoDQOejJWc/20250919-MoneyFI-Final-Audit-Report.pdf
- [24246] MoneyFi Aptos
- [24247] MoneyFi Universal (EVM)

Fork inheritance lineage and inherited audits are included when available.
