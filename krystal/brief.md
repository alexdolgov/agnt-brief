# Agentic Audit Brief: Krystal

## Project Overview

- Project: Krystal (`krystal`)
- Website: [https://krystal.app](https://krystal.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.330Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 11 unique implementations (11 raw deployments)
- DeFi Llama TVL: $195,491.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 10 project-authored contract(s) across 1 chain(s); 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (peripherypayments, peripheryimmutablestate, peripherypaymentswithfee). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 11; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/10 (10.0%)
- Deployed-live implementations: 11 of 11 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/11
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 11
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Verichains | Tier 2 | 1 | 9.1% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultFactory | unknown | ethereum | n/a | [`0x3a35f9...922cf3`](./contracts/ethereum-1/0x3a35f9fef2ba83702b6e20d79fff96f77c922cf3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NFTDescriptor | unknown | ethereum | n/a | [`0x42b24a...0a48ec`](./contracts/ethereum-1/0x42b24a95702b9986e82d421cc3568932790a48ec/) | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | ethereum | n/a | [`0xc36442...11fe88`](./contracts/ethereum-1/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | ethereum | n/a | [`0x91ae84...9294f3`](./contracts/ethereum-1/0x91ae842a5ffd8d12023116943e72a606179294f3/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xb75354...e90cf2`](./contracts/ethereum-1/0xb753548f6e010e7e680ba186f9ca1bdab2e90cf2/) | ⚠️ Unaudited |
| Quoter | unknown | ethereum | n/a | [`0xb27308...ce5ab6`](./contracts/ethereum-1/0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6/) | ⚠️ Unaudited |
| QuoterV2 | unknown | ethereum | n/a | [`0x61ffe0...30b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/) | ⚠️ Unaudited |
| SwapRouter | unknown | ethereum | n/a | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | ⚠️ Unaudited |
| SwapRouter02 | unknown | ethereum | n/a | [`0x075b36...aa8a60`](./contracts/ethereum-1/0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60/) | ⚠️ Unaudited |
| TickLens | unknown | ethereum | n/a | [`0xbfd813...47f573`](./contracts/ethereum-1/0xbfd8137f7d1516d3ea5ca83523914859ec47f573/) | ⚠️ Unaudited |
| V3Migrator | unknown | ethereum | n/a | [`0xa5644e...f92b34`](./contracts/ethereum-1/0xa5644e29708357803b5a882d272c41cc0df92b34/) | ⚠️ Unaudited |

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
| [code4rena.com/reports/2024-06-krystal-defi](https://code4rena.com/reports/2024-06-krystal-defi) | Code4rena | Contest | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [Verichains Public Report - Krystal.pdf](https://github.com/KrystalDeFi/krystal-vault-contracts-v2/blob/5e618a9c958cec32df9bb83d35a3bea78446287e/audit/Verichains%20Public%20Report%20-%20Krystal.pdf) | Verichains | Audit | 2025-06 | aging | Direct | contract_name | 1 | high |
| [Verichains Public Audit Report - Krystal - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Krystal%20-%20v1.1.pdf) | Verichains | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [4naly3er-report.md](https://github.com/code-423n4/2024-06-krystal-defi/blob/main/4naly3er-report.md) | 4naly3er | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [bot-report.md](https://github.com/code-423n4/2024-06-krystal-defi/blob/main/bot-report.md) | unknown | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf](https://github.com/code-423n4/2024-06-krystal-defi/blob/main/audit/PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf) | PeckShield | Contest | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf](https://github.com/code-423n4/2024-06-krystal-defi/blob/main/audit/Revert_Finance_Audit_Report_%20Auto-Exit_Auto-Move_Range.pdf) | Revert Finance | Contest | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x42b24a...0a48ec`](./contracts/ethereum-1/0x42b24a95702b9986e82d421cc3568932790a48ec/) | NFTDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc36442...11fe88`](./contracts/ethereum-1/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | NonfungiblePositionManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91ae84...9294f3`](./contracts/ethereum-1/0x91ae842a5ffd8d12023116943e72a606179294f3/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb27308...ce5ab6`](./contracts/ethereum-1/0xb27308f9f90d607463bb33ea1bebb41c27ce5ab6/) | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61ffe0...30b21e`](./contracts/ethereum-1/0x61ffe014ba17989e743c5f6cb21bf9697530b21e/) | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe59242...861564`](./contracts/ethereum-1/0xe592427a0aece92de3edee1f18e0157c05861564/) | SwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x075b36...aa8a60`](./contracts/ethereum-1/0x075b36de1bd11cb361c5b3b1e80a9ab0e7aa8a60/) | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbfd813...47f573`](./contracts/ethereum-1/0xbfd8137f7d1516d3ea5ca83523914859ec47f573/) | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5644e...f92b34`](./contracts/ethereum-1/0xa5644e29708357803b5a882d272c41cc0df92b34/) | V3Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [21391] code4rena.com/reports/2024-06-krystal-defi
- [21393] Verichains Public Audit Report - Krystal - v1.1.pdf
- [24113] 4naly3er-report.md
- [24114] bot-report.md
- [24115] PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf
- [24116] Revert_Finance_Audit_Report_ Auto-Exit_Auto-Move_Range.pdf

Fork inheritance lineage and inherited audits are included when available.
