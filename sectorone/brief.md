# Agentic Audit Brief: SectorOne

## Project Overview

- Project: SectorOne (`sectorone`)
- Website: [https://sectorone.xyz](https://sectorone.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:54.713Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum
- Contract surface: 19 unique implementations (19 raw deployments)
- DeFi Llama TVL: $286,558.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 19 project-authored contract(s) across 2 chain(s); 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 7 common project-authored base contract(s) (safeaccesscontrolenumerable, safeownable, clone). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Pharaoh Exchange** (`pharaoh-exchange`) in the DLMMPool subsystem.
3 audits inherited from `pharaoh-exchange`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 19; live-surface contracts included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 19 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 19
- Audits discovered: 3 (0 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DexLens | unknown | ethereum | n/a | [`0x0b7e78...a4e17c`](./contracts/ethereum-1/0x0b7e780982be01fcb55a1e56cee1842ec0a4e17c/) | ⚠️ Unaudited |
| Factory | unknown | ethereum | n/a | [`0x70b52d...6a713e`](./contracts/ethereum-1/0x70b52dbf8794cdc2026da5bfea31647a4e6a713e/) | ⚠️ Unaudited |
| JoeDexLens | unknown | base | n/a | [`0x2d5246...81bf3a`](./contracts/base-8453/0x2d52467d074b3590760831af816046471a81bf3a/) | ⚠️ Unaudited |
| JoeV21LegacyDexLens | unknown | base | n/a | [`0x69298f...42206b`](./contracts/base-8453/0x69298ffe05627268d32dd32762e364bfeb42206b/) | ⚠️ Unaudited |
| LBFactory | unknown | base | n/a | [`0x1bbbbc...f0497d`](./contracts/base-8453/0x1bbbbcc3bc3f8c6beb174e772930e64ba7f0497d/) | ⚠️ Unaudited |
| LBPair | unknown | base | n/a | [`0x25b320...1588bb`](./contracts/base-8453/0x25b320a7c69e66515d7f6c044ec9af49fa1588bb/) | ⚠️ Unaudited |
| LBQuoter | unknown | base | n/a | [`0x04682d...45ed40`](./contracts/base-8453/0x04682d6c443c48245a0eb52a0a015f9bfe45ed40/) | ⚠️ Unaudited |
| LBRouter | unknown | ethereum | n/a | [`0x035a4a...80ae7d`](./contracts/ethereum-1/0x035a4a069f8949845eef57fcd697d0196a80ae7d/) | ⚠️ Unaudited |
| LBSwaplineQuoter | unknown | base | n/a | [`0xe3b015...475742`](./contracts/base-8453/0xe3b015e2f379019d42ed7427825acaa0a0475742/) | ⚠️ Unaudited |
| LiquidityAmountsContract | unknown | base | n/a | [`0x3cf9c2...b1a2c0`](./contracts/base-8453/0x3cf9c2eedf007cf428b67219dcfb2fd700b1a2c0/) | ⚠️ Unaudited |
| LiquidityHelperContract | unknown | base | n/a | [`0x17e6bf...6773a8`](./contracts/base-8453/0x17e6bfd8b8f8ac6981c9c786137d2d592c6773a8/) | ⚠️ Unaudited |
| OracleRewardVault | unknown | base | n/a | [`0x0e4f2f...bc8f6c`](./contracts/base-8453/0x0e4f2fa76a308d80ff0aba8857ef83555fbc8f6c/) | ⚠️ Unaudited |
| OracleVault | unknown | base | n/a | [`0x221789...ebafdc`](./contracts/base-8453/0x22178951866a9b9768ea3d563c061bff19ebafdc/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x00879e...aeb16b`](./contracts/base-8453/0x00879e6b688c7d317301b461258895be5baeb16b/) | ⚠️ Unaudited |
| Router | unknown | base | n/a | [`0xddf902...284c38`](./contracts/base-8453/0xddf9025cf1fc3a7945ea54a53d856c81b9284c38/) | ⚠️ Unaudited |
| SimpleVault | unknown | base | n/a | [`0x4baa24...3ed6ef`](./contracts/base-8453/0x4baa24c3d50108cdf8d85fda023eda1d933ed6ef/) | ⚠️ Unaudited |
| Strategy | unknown | base | n/a | [`0x2807f5...616c6f`](./contracts/base-8453/0x2807f5fd3f8fb2810a351bfe0255527103616c6f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | [`0x6e6577...deb09e`](./contracts/base-8453/0x6e6577ae563d28c6fd0b5d1f2f32361339deb09e/) | ⚠️ Unaudited |
| VaultFactory | unknown | base | n/a | [`0x057fd3...165f92`](./contracts/base-8453/0x057fd3822cf566ccdc021a910b47b4656f165f92/) | ⚠️ Unaudited |

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
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Inherited from Pharaoh Exchange — forked code, scoped to DLMMPool | n/a | 0 | n/a |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Inherited from Pharaoh Exchange — forked code, scoped to DLMMPool | n/a | 0 | n/a |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | n/a | unknown | Inherited from Pharaoh Exchange — forked code, scoped to DLMMPool | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0b7e78...a4e17c`](./contracts/ethereum-1/0x0b7e780982be01fcb55a1e56cee1842ec0a4e17c/) | DexLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70b52d...6a713e`](./contracts/ethereum-1/0x70b52dbf8794cdc2026da5bfea31647a4e6a713e/) | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d5246...81bf3a`](./contracts/base-8453/0x2d52467d074b3590760831af816046471a81bf3a/) | JoeDexLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x69298f...42206b`](./contracts/base-8453/0x69298ffe05627268d32dd32762e364bfeb42206b/) | JoeV21LegacyDexLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1bbbbc...f0497d`](./contracts/base-8453/0x1bbbbcc3bc3f8c6beb174e772930e64ba7f0497d/) | LBFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25b320...1588bb`](./contracts/base-8453/0x25b320a7c69e66515d7f6c044ec9af49fa1588bb/) | LBPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x04682d...45ed40`](./contracts/base-8453/0x04682d6c443c48245a0eb52a0a015f9bfe45ed40/) | LBQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x035a4a...80ae7d`](./contracts/ethereum-1/0x035a4a069f8949845eef57fcd697d0196a80ae7d/) | LBRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe3b015...475742`](./contracts/base-8453/0xe3b015e2f379019d42ed7427825acaa0a0475742/) | LBSwaplineQuoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3cf9c2...b1a2c0`](./contracts/base-8453/0x3cf9c2eedf007cf428b67219dcfb2fd700b1a2c0/) | LiquidityAmountsContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17e6bf...6773a8`](./contracts/base-8453/0x17e6bfd8b8f8ac6981c9c786137d2d592c6773a8/) | LiquidityHelperContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e4f2f...bc8f6c`](./contracts/base-8453/0x0e4f2fa76a308d80ff0aba8857ef83555fbc8f6c/) | OracleRewardVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x221789...ebafdc`](./contracts/base-8453/0x22178951866a9b9768ea3d563c061bff19ebafdc/) | OracleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xddf902...284c38`](./contracts/base-8453/0xddf9025cf1fc3a7945ea54a53d856c81b9284c38/) | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4baa24...3ed6ef`](./contracts/base-8453/0x4baa24c3d50108cdf8d85fda023eda1d933ed6ef/) | SimpleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2807f5...616c6f`](./contracts/base-8453/0x2807f5fd3f8fb2810a351bfe0255527103616c6f/) | Strategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x057fd3...165f92`](./contracts/base-8453/0x057fd3822cf566ccdc021a910b47b4656f165f92/) | VaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19173] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c
- [19174] code4rena.com/reports/2024-10-ramses-exchange
- [19175] diligence.security/audits/2024/08/ramses-v3

Fork inheritance lineage and inherited audits are included when available.
