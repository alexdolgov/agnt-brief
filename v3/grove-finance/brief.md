# Agentic Audit Brief: Grove Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 4 audit(s)
- Eligible audit results: 23 (4 matched; 19 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Grove Finance (`grove-finance`)
- Website: [https://data.grove.finance/](https://data.grove.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, ethereum
- Contract surface: 86 unique implementations (86 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,501,151,858.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Grove Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1369f7...1891ba`, chain 1)
- UnnamedContract (`0x5c40dc...0d946f`, chain 1)
- UnnamedContract (`0x5f5cfc...2df19a`, chain 1)
- UnnamedContract (`0xa3931d...c27fbd`, chain 1)
- UnnamedContract (`0xb30fe1...5e9406`, chain 1)
- UnnamedContract (`0xdc035d...07384f`, chain 1)
- UnnamedContract (`0xfd9dea...92a9f5`, chain 1)
- ALMProxy (`0x491edf...f3a44e`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 78 discovered implementations excluded (0 third-party/infra; 14 standard proxy/library)
- Proxy deployments represented within implementation groups: 24
- Deployed-live implementations: 8 of 86 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 86
- Raw deployments: 86
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 11 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 100.0% | 2026-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ALMProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387093 | `0x491edf...f3a44e` | ✅ Audited |

### ⚠️ Verified + Unaudited (78)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AllowanceAssetProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb743c5...1e6b39` | ⚠️ Unaudited |
| AllowanceLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa5dc...6f0ec3` | ⚠️ Unaudited |
| AllowanceLiquiditySource | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a6282...69c493` | ⚠️ Unaudited |
| BulkBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a9431...fdc922` | ⚠️ Unaudited |
| CCTPReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26e951...d8c23f` | ⚠️ Unaudited |
| CCTPv2Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54e39b...49d9b2` | ⚠️ Unaudited |
| ComplianceServiceLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a49ee...ed528c` | ⚠️ Unaudited |
| ComplianceServiceRegulated | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x15023f...400f4c` | ⚠️ Unaudited |
| CurveStableSwapNG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe79c1c...c04662` | ⚠️ Unaudited |
| DelegateCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3146c3...091977` | ⚠️ Unaudited |
| Disperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63866e...0bd31b` | ⚠️ Unaudited |
| DSTokenClassSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1e5d83...e37021` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x021840...b0c6aa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0490a0...61f814` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x04fb23...ff8e66` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x05dae9...f5385d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x065674...8511a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x068d79...1492b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06ac06...a780a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x06d4bc...e8c565` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x078646...210d91` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x07952f...76a561` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0885f3...cd4aa3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x189fd4...b97229` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x1ea550...68ad4f` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x491edf...f3a44e` | ⚠️ Unaudited |
| ForeignController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x08b045...1ba539` | ⚠️ Unaudited |
| GalaxyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c0adf...24b901` | ⚠️ Unaudited |
| GalaxyToken1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x301dd3...7a2d05` | ⚠️ Unaudited |
| GlobalRegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1d95f6...3e8c75` | ⚠️ Unaudited |
| GroveAvalanche_20250807 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ac086...9f919f` | ⚠️ Unaudited |
| GroveAvalanche_20250821 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde73d4...a3ae4a` | ⚠️ Unaudited |
| GroveBase_20251113 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7cea53...a90dd1` | ⚠️ Unaudited |
| GroveEthereum_20250724 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8afc2c...acd9ff` | ⚠️ Unaudited |
| GroveEthereum_20250807 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25127...4d1550` | ⚠️ Unaudited |
| GroveEthereum_20250821 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa533f...302bed` | ⚠️ Unaudited |
| GroveEthereum_20251002 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67e7b3...6b4e9b` | ⚠️ Unaudited |
| GroveEthereum_20251016 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2a28f...b42ece` | ⚠️ Unaudited |
| GroveEthereum_20251030 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4a92...7c656b` | ⚠️ Unaudited |
| GroveEthereum_20251113 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d711e...35a819` | ⚠️ Unaudited |
| GroveEthereum_20251211 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6772d7...a790ab` | ⚠️ Unaudited |
| GroveEthereum_20260326 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78e187...4ecd53` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xe31901...7a77eb` | ⚠️ Unaudited |
| InvestorLockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e4d0f...c29fda` | ⚠️ Unaudited |
| IssuerMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02658c...e57b7d` | ⚠️ Unaudited |
| LZReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68705b...033936` | ⚠️ Unaudited |
| MainnetController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d142e...ddf683` | ⚠️ Unaudited |
| MbpsFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x184cb1...ec649d` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbeef2b...b1b709` | ⚠️ Unaudited |
| MonadSpellConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a4084...bb4266` | ⚠️ Unaudited |
| MonadSpellNoSetup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c1bcc...2ab26a` | ⚠️ Unaudited |
| OmnibusTBEController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1cf534...d8035f` | ⚠️ Unaudited |
| OptimismReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5f5cfc...2df19a` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x063803...c63070` | ⚠️ Unaudited |
| PublicStockOffRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x226b44...c7c66f` | ⚠️ Unaudited |
| PublicStockOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d0051...373c0c` | ⚠️ Unaudited |
| PullTokenWrapperAllowImmutable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x202369...69a31e` | ⚠️ Unaudited |
| RateLimits | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a4ba6...bd39a0` | ⚠️ Unaudited |
| Redemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4580d3...1ee0a0` | ⚠️ Unaudited |
| RedStoneNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12263b...169db8` | ⚠️ Unaudited |
| RegistryService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ef785...49f2e4` | ⚠️ Unaudited |
| SandboxToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e9eb1...22c6b7` | ⚠️ Unaudited |
| SecuritizeAmmNavProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1b9aaf...5d06a5` | ⚠️ Unaudited |
| SecuritizeOnRamp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0db0dd...84b9a3` | ⚠️ Unaudited |
| SecuritizeSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4a107b...bee141` | ⚠️ Unaudited |
| SecuritizeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4535b3...723dea` | ⚠️ Unaudited |
| Settlement | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c97c9...ac5fbb` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x58f93d...ed3b6b` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6e0e...12ffb0` | ⚠️ Unaudited |
| TestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3146c3...091977` | ⚠️ Unaudited |
| TokenLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x550bca...bc97e5` | ⚠️ Unaudited |
| TokenReallocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0002fc...507cf8` | ⚠️ Unaudited |
| Tranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0f93...7dcf64` | ⚠️ Unaudited |
| TransferRestrictions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b3890...de0503` | ⚠️ Unaudited |
| USDCBridgeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x466513...cd66ab` | ⚠️ Unaudited |
| VaultRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x121d63...79711d` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbeef0e...6873c9` | ⚠️ Unaudited |
| WalletRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04c360...194a6f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387092 | `0x1369f7...1891ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387094 | `0x5c40dc...0d946f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387095 | `0x5f5cfc...2df19a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387096 | `0xa3931d...c27fbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387097 | `0xb30fe1...5e9406` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387098 | `0xdc035d...07384f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387099 | `0xfd9dea...92a9f5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Grove Basin Cantina Audit](https://cantina.xyz/portfolio/71794706-b078-4579-8f50-a9bd25d732d3) | Spearbit | Audit | 2026-04 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Grove Basin ChainSecurity Audit](https://reports.chainsecurity.com/GroveLabs/ChainSecurity_GroveLabs_Basin_Audit.pdf) | ChainSecurity | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [v160-cantina-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-cantina-audit.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [v160-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v160-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-08 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [v180-certora-audit.pdf](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [v180-chainsecurity-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-alm-controller/blob/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 25 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/grove-labs/grove-alm-controller/36bf0fc559a623931fbeb22aabc7b57911173526/audits/v180-certora-audit.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/grove-labs/grove-gov-relay/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v110-cantina-audit.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/grove-labs/grove-gov-relay/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v120-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [v120-certora-audit.pdf (also discovered via alternate URL)](https://github.com/grove-labs/grove-gov-relay/blob/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v120-certora-audit.pdf) | Certora | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [v110-chainsecurity-audit.pdf](https://github.com/grove-labs/xchain-helpers/blob/d7bf92cd6182da577c5ff9912507997b7a516561/audits/v110-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [v100-chainsecurity-audit.pdf](https://github.com/grove-labs/grove-gov-relay/blob/76b6fcae9df7da5d93800b4d215a779e612f1c32/audits/v100-chainsecurity-audit.pdf) | ChainSecurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20449] Grove Basin Cantina Audit — no match: No scope section or contract names found in the provided text.
- [20450] Grove Basin ChainSecurity Audit — no match: Extracted 27 contract names from the scope table and additional files added in later versions. Audit date from cover page.
- [20451] v160-cantina-audit.pdf — no match: The report does not have a dedicated scope section. Contract names were extracted from findings context. The audit date is from the cover page.
- [20452] v160-chainsecurity-audit.pdf — matched: All contracts listed in the scope table (Section 2.1) are extracted. The audit date is from the cover page.
- [20453] v180-certora-audit.pdf — no match: Extracted contracts from scope table and findings. Libraries are included as they are explicitly in scope (src/libraries/*). Audit date is the end date of the engagement (December 5, 2025).
- [20454] v180-chainsecurity-audit.pdf — matched: Extracted 26 contract names from the scope table and version additions. Audit date from cover page.
- [20456] Rendered PDF capture — no match: Extracted contracts from scope table and findings. Libraries UniswapV3Lib, CurveLib, PendleLib, CCTPLib are in scope as part of src/libraries/*. Audit date from 'December 5, 2025' in project scope section.
- [20458] Rendered PDF capture — no match: No explicit scope section; contracts inferred from findings and deployment scripts. Audit date from cover page.
- [20459] Rendered PDF capture — no match: Two contracts in scope: Executor.sol and IExecutor.sol. Audit date from cover page.
- [20462] v120-certora-audit.pdf — no match: Extracted contracts from scope table and findings. Libraries UniswapV3Lib, CurveLib, PendleLib, CCTPLib are in scope via src/libraries/*. Audit date from work period end date.
- [20465] v110-chainsecurity-audit.pdf — no match: Only one contract in scope: ArbitrumERC20Forwarder.sol. Audit date from cover page and version table.
- [20485] v100-chainsecurity-audit.pdf — no match: Two contracts in scope: Executor and IExecutor. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Grove Basin ChainSecurity Audit | GroveBasin | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | GroveBasinFactory | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IAaveV3PoolLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IAsyncVaultLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IChronicleOracleLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IERC4626VaultLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IGroveBasin | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IGroveBasinPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IGroveRateProvider | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IPSMLike | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | ITokenRedeemer | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | AaveV3UsdtPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | BasePocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | MorphoUsdtPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | UsdsUsdcPocket | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | ChronicleRateProvider | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | FixedRateProvider | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | BUIDLTokenRedeemer | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | JTRSYTokenRedeemer | unmatched — not counted | — | listed in scope table | no |
| Grove Basin ChainSecurity Audit | IATokenLike | unmatched — not counted | — | added in Version 2 scope | no |
| Grove Basin ChainSecurity Audit | DeployChronicleRateProvider | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | DeployFixedRateProvider | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | DeployTimelockController | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | BasinSetup | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | SetupBUIDLUsdsUsdcBasin | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | SetupJTRSYMorphoUsdtBasin | unmatched — not counted | — | added in Version 5 scope | no |
| Grove Basin ChainSecurity Audit | SetupJTRSYUsdsUsdcBasin | unmatched — not counted | — | added in Version 5 scope | no |
| v160-cantina-audit.pdf | MainnetController | unmatched — not counted | — | mentioned in findings context | no |
| v160-cantina-audit.pdf | ForeignController | unmatched — not counted | — | mentioned in findings context | no |
| v160-cantina-audit.pdf | CentrifugeInterfaces | unmatched — not counted | — | mentioned in findings context | no |
| v160-chainsecurity-audit.pdf | ALMProxy | own contract | ALMProxy (selected) `0x491edf...f3a44e` — deployed 2025-04-01 12:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| v160-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CentrifugeInterfaces | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ILayerZero | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CCTPLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CentrifugeLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | listed in scope table | no |
| v160-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | Deploy | unmatched — not counted | — | listed in scope table | no |
| v180-certora-audit.pdf | UniswapV3Lib | unmatched — not counted | — | mentioned in findings H-01, L-03 | no |
| v180-certora-audit.pdf | CurveLib | unmatched — not counted | — | mentioned in finding M-01 | no |
| v180-certora-audit.pdf | PendleLib | unmatched — not counted | — | mentioned in finding L-02 | no |
| v180-certora-audit.pdf | CCTPLib | unmatched — not counted | — | mentioned in finding L-01 | no |
| v180-chainsecurity-audit.pdf | ALMProxy | own contract | ALMProxy (selected) `0x491edf...f3a44e` — deployed 2025-04-01 12:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| v180-chainsecurity-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | RateLimitHelpers | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | RateLimits | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | IALMProxy | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | IRateLimits | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CCTPInterfaces | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CentrifugeInterfaces | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ILayerZero | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CCTPLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CentrifugeLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | CurveLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | PSMLib | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ControllerDeploy | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ControllerInstance | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | ForeignControllerInit | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | MainnetControllerInit | unmatched — not counted | — | listed in scope table | no |
| v180-chainsecurity-audit.pdf | PendleInterfaces | unmatched — not counted | — | added in Version 2 scope | no |
| v180-chainsecurity-audit.pdf | PendleLib | unmatched — not counted | — | added in Version 2 scope | no |
| v180-chainsecurity-audit.pdf | MerklInterfaces | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | UniswapV3Interfaces | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | MerklLib | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | UniswapV3Lib | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | ERC20Lib | unmatched — not counted | — | added in Version 5 scope | no |
| v180-chainsecurity-audit.pdf | MathLib | unmatched — not counted | — | added in Version 5 scope | no |
| Rendered PDF capture | MainnetController | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | ForeignController | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | Deploy | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | UniswapV3Lib | unmatched — not counted | — | mentioned in findings and scope | no |
| Rendered PDF capture | CurveLib | unmatched — not counted | — | mentioned in findings and scope | no |
| Rendered PDF capture | PendleLib | unmatched — not counted | — | mentioned in findings | no |
| Rendered PDF capture | CCTPLib | unmatched — not counted | — | mentioned in findings | no |
| Rendered PDF capture | ArbitrumERC20Forwarder | unmatched — not counted | — | mentioned in findings context | no |
| Rendered PDF capture | ArbitrumERC20ForwarderExecutor | unmatched — not counted | — | mentioned in finding 3.1.4 | no |
| Rendered PDF capture | Executor | unmatched — not counted | — | mentioned in deployment scripts and findings | no |
| Rendered PDF capture | ArbitrumReceiver | unmatched — not counted | — | mentioned in deployment scripts and findings | no |
| Rendered PDF capture | MessageOrdering | unmatched — not counted | — | mentioned in test code in findings | no |
| Rendered PDF capture | Executor | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | IExecutor | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | ArbitrumERC20Forwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| Rendered PDF capture | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | MainnetController | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | ForeignController | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | CCTPv2Forwarder | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | LZForwarder | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | CCTPv2Receiver | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | LZReceiver | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | Deploy | unmatched — not counted | — | listed in scope table | no |
| v120-certora-audit.pdf | UniswapV3Lib | unmatched — not counted | — | mentioned in findings H-01, L-03 | no |
| v120-certora-audit.pdf | CurveLib | unmatched — not counted | — | mentioned in finding M-01 | no |
| v120-certora-audit.pdf | PendleLib | unmatched — not counted | — | mentioned in finding L-02 | no |
| v120-certora-audit.pdf | CCTPLib | unmatched — not counted | — | mentioned in finding L-01 | no |
| v110-chainsecurity-audit.pdf | ArbitrumERC20Forwarder | unmatched — not counted | — | listed in scope table and section 2.1 | no |
| v100-chainsecurity-audit.pdf | Executor | unmatched — not counted | — | listed in scope table | no |
| v100-chainsecurity-audit.pdf | IExecutor | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 31 |
| standard_library | 15 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 120 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=9, low=1, medium=2
- Match method counts: unique_name=4

Zero-match audit list:

- [20449] Grove Basin Cantina Audit
- [20450] Grove Basin ChainSecurity Audit
- [20451] v160-cantina-audit.pdf
- [20453] v180-certora-audit.pdf
- [20456] Rendered PDF capture
- [20458] Rendered PDF capture
- [20459] Rendered PDF capture
- [20462] v120-certora-audit.pdf
- [20465] v110-chainsecurity-audit.pdf
- [20485] v100-chainsecurity-audit.pdf

Fork inheritance lineage and inherited audits are included when available.
