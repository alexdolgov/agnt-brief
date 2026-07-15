# Agentic Audit Brief: Summer.fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Summer.fi (`summer.fi`)
- Website: [https://summer.fi/](https://summer.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, hyperliquid, sepolia, sonic
- Contract surface: 69 unique implementations (69 raw deployments)
- Coverage basis: 0/47 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $30,827,097.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Summer.fi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 47 contract row(s) across arbitrum, base, ethereum, hyperliquid, sepolia, sonic. Structural roles: 24 core, 19 unclassified, 4 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 47
- Structural roles: core (24), unclassified (19), supporting (4)
- Contract kinds: contract (47)
- Detected standards: erc20 (14), erc4626 (11), pausable (11), erc165 (5), accesscontrol (4), ownable (4), erc20permit (3)
- Frameworks: openzeppelin (28), layerzero (4), prb-math (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

21 of 42 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

**BufferArk** (`0x106cbb...f6dd2b`, chain 1)
Origin: block-analitica (`0x809a0c...2562af`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0x88e7b6...0073a2`, chain 1)
Origin: block-analitica (`0x8faf71...69db53`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0x8b43a5...329b0e`, chain 1)
Origin: block-analitica (`0x809a0c...2562af`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0xde1f07...c778f0`, chain 1)
Origin: block-analitica (`0x809a0c...2562af`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0xeb60a8...0c0d9d`, chain 1)
Origin: block-analitica (`0x8faf71...69db53`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0x809a0c...2562af`, chain 146)
Origin: block-analitica (`0x809a0c...2562af`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0x106cbb...f6dd2b`, chain 8453)
Origin: block-analitica (`0x809a0c...2562af`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0x72d417...8bd302`, chain 8453)
Origin: block-analitica (`0x8faf71...69db53`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BufferArk** (`0xc65b7e...e4b3ec`, chain 8453)
Origin: block-analitica (`0x809a0c...2562af`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x17ee2d...54ad8d`, chain 1)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x2e6abc...a88e10`, chain 1)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x67e536...0ab506`, chain 1)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x98c49e...9ecf17`, chain 1)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0xe9cda4...70cb06`, chain 1)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x507a2d...7964f8`, chain 146)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x2bb9ad...f834af`, chain 8453)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x64db8f...48e0f0`, chain 8453)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x98c49e...9ecf17`, chain 8453)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x4f63cf...34bb58`, chain 42161)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**FleetCommander** (`0x98c49e...9ecf17`, chain 42161)
Origin: block-analitica (`0x17ee2d...54ad8d`)
Containment: 100.0% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SummerToken** (`0x194f36...ea1624`, chain 1)
Origin: block-analitica (`0x4e0037...6099e3`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- LazyVault Lower Risk USDC Fleet (`0x252e5a...1232ba`, chain 999)
- LazyVault Lower Risk USDC Fleet BufferArk (`0xbb7924...9b1419`, chain 42161)
- LazyVault Lower Risk USDT Fleet (`0x2cc190...74d346`, chain 999)
- LazyVault Lower Risk USDt0 Fleet BufferArk (`0x106cbb...f6dd2b`, chain 42161)
- ProtocolAccessManager (`0x38fb5a...fe755f`, chain 999)
- ProtocolAccessManager (`0xf389bc...e39694`, chain 42161)
- SummerGovernor (`0xbe5a4d...01e9fa`, chain 8453)
- SummerGovernor (`0xbe5a4d...01e9fa`, chain 42161)
- SummerGovernorV2 (`0x0398da...12233b`, chain 999)
- SummerRewardsRedeemer (`0x54a2ea...80b8dd`, chain 8453)
- SummerRewardsRedeemer (`0x54a2ea...80b8dd`, chain 42161)
- SummerTimelockController (`0x447bf9...4c3796`, chain 1)
- SummerTimelockController (`0x4c32a2...721ed9`, chain 146)
- SummerTimelockController (`0x244c6e...5be86c`, chain 999)
- SummerTimelockController (`0x447bf9...4c3796`, chain 8453)
- SummerTimelockController (`0x447bf9...4c3796`, chain 42161)
- SummerToken (`0x4e0037...6099e3`, chain 146)
- SummerToken (`0x72c527...125d21`, chain 999)
- SummerToken (`0x194f36...ea1624`, chain 8453)
- SummerToken (`0x194f36...ea1624`, chain 42161)
- SummerVestingWalletFactory (`0x47de09...446f21`, chain 999)

## Contract Surface Quality

- Indexed contracts: 47; live-surface contracts included: 47 (47 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 49/69 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/47 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 49 own, 20 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 49 of 69 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/47
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 69
- Raw deployments: 69
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BufferArk | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393292 | `0x106cbb...f6dd2b` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393299 | `0x88e7b6...0073a2` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393300 | `0x8b43a5...329b0e` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393303 | `0xde1f07...c778f0` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393305 | `0xeb60a8...0c0d9d` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | sonic | unit-393330 | `0x809a0c...2562af` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | base | unit-393341 | `0x106cbb...f6dd2b` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | base | unit-393347 | `0x72d417...8bd302` | ⚠️ Unaudited |
| BufferArk | unknown | project_anchor | own_supporting | 0 | base | unit-393350 | `0xc65b7e...e4b3ec` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393293 | `0x17ee2d...54ad8d` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393295 | `0x2e6abc...a88e10` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393298 | `0x67e536...0ab506` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393301 | `0x98c49e...9ecf17` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393304 | `0xe9cda4...70cb06` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | sonic | unit-393328 | `0x507a2d...7964f8` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | base | unit-393343 | `0x2bb9ad...f834af` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | base | unit-393346 | `0x64db8f...48e0f0` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | base | unit-393348 | `0x98c49e...9ecf17` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393335 | `0x4f63cf...34bb58` | ⚠️ Unaudited |
| FleetCommander | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393337 | `0x98c49e...9ecf17` | ⚠️ Unaudited |
| LazyVault Lower Risk USDC Fleet | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-393355 | `0x252e5a...1232ba` | ⚠️ Unaudited |
| LazyVault Lower Risk USDT Fleet | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-393357 | `0x2cc190...74d346` | ⚠️ Unaudited |
| ProtocolAccessManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393306 | `0xf389bc...e39694` | ⚠️ Unaudited |
| ProtocolAccessManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-393331 | `0xafb8a8...270bc6` | ⚠️ Unaudited |
| ProtocolAccessManager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-393358 | `0x38fb5a...fe755f` | ⚠️ Unaudited |
| ProtocolAccessManager | unknown | project_anchor | own_supporting | 0 | base | unit-393351 | `0xf389bc...e39694` | ⚠️ Unaudited |
| ProtocolAccessManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393340 | `0xf389bc...e39694` | ⚠️ Unaudited |
| SummerGovernor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393302 | `0xbe5a4d...01e9fa` | ⚠️ Unaudited |
| SummerGovernor | unknown | project_anchor | own_supporting | 0 | sonic | unit-393329 | `0x59485a...3770af` | ⚠️ Unaudited |
| SummerGovernor | governance | project_anchor | own_supporting | 0 | base | unit-393349 | `0xbe5a4d...01e9fa` | ⚠️ Unaudited |
| SummerGovernor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393339 | `0xbe5a4d...01e9fa` | ⚠️ Unaudited |
| SummerGovernorV2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-393353 | `0x0398da...12233b` | ⚠️ Unaudited |
| SummerRewardsRedeemer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393297 | `0x54a2ea...80b8dd` | ⚠️ Unaudited |
| SummerRewardsRedeemer | unknown | project_anchor | own_supporting | 0 | sonic | unit-393325 | `0x08543e...a16326` | ⚠️ Unaudited |
| SummerRewardsRedeemer | unknown | project_anchor | own_supporting | 0 | base | unit-393345 | `0x54a2ea...80b8dd` | ⚠️ Unaudited |
| SummerRewardsRedeemer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393336 | `0x54a2ea...80b8dd` | ⚠️ Unaudited |
| SummerTimelockController | governance | project_anchor | own_supporting | 0 | ethereum | unit-393296 | `0x447bf9...4c3796` | ⚠️ Unaudited |
| SummerTimelockController | governance | project_anchor | own_supporting | 0 | sonic | unit-393326 | `0x4c32a2...721ed9` | ⚠️ Unaudited |
| SummerTimelockController | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-393354 | `0x244c6e...5be86c` | ⚠️ Unaudited |
| SummerTimelockController | governance | project_anchor | own_supporting | 0 | base | unit-393344 | `0x447bf9...4c3796` | ⚠️ Unaudited |
| SummerTimelockController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393334 | `0x447bf9...4c3796` | ⚠️ Unaudited |
| SummerToken | token | project_anchor | own_supporting | 0 | ethereum | unit-393294 | `0x194f36...ea1624` | ⚠️ Unaudited |
| SummerToken | token | project_anchor | own_supporting | 0 | sonic | unit-393327 | `0x4e0037...6099e3` | ⚠️ Unaudited |
| SummerToken | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-393360 | `0x72c527...125d21` | ⚠️ Unaudited |
| SummerToken | token | project_anchor | own_supporting | 0 | base | unit-393342 | `0x194f36...ea1624` | ⚠️ Unaudited |
| SummerToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393333 | `0x194f36...ea1624` | ⚠️ Unaudited |
| SummerVestingWalletFactory | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-393359 | `0x47de09...446f21` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LazyVault Lower Risk USDC Fleet BufferArk | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393338 | `0xbb7924...9b1419` | ❓ Unverified |
| LazyVault Lower Risk USDt0 Fleet BufferArk | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393332 | `0x106cbb...f6dd2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-393352 | `0x015e60...97c15d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-393356 | `0x26ce19...4a6d4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393307 | `0x021983...5540d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393308 | `0x0a06c8...575988` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393309 | `0x0e060a...15e25c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393310 | `0x19c04f...f73f1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393311 | `0x212dc9...bd91fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393312 | `0x279125...2ee568` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393313 | `0x292725...e11cce` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393314 | `0x3024fb...e42032` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393315 | `0x3ca3e4...a5b38a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393316 | `0x438cdd...10c602` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393317 | `0x48b6e2...e55659` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393318 | `0x496ad0...ee7ed7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393319 | `0x568003...ad81d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393320 | `0x687b6d...895a27` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393321 | `0xb909f4...5ef260` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393322 | `0xc4cd9c...aa2fb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393323 | `0xee40eb...1bf819` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393324 | `0xfa104a...2bb9db` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit.pdf](https://github.com/phoenixlabsresearch/spark-docs/blob/main/deployed-contracts/ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit.pdf) | ChainSecurity | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [www.chainsecurity.com/security-audit/oasis-automation-consultancy-smart-contracts](https://www.chainsecurity.com/security-audit/oasis-automation-consultancy-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [www.chainsecurity.com/security-audit/oasis-multiply-fmm-extension](https://www.chainsecurity.com/security-audit/oasis-multiply-fmm-extension) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/oasis-app-modular-proxy-actions](https://www.chainsecurity.com/security-audit/oasis-app-modular-proxy-actions) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/summer-fi-defi-modular-actions-v2](https://www.chainsecurity.com/security-audit/summer-fi-defi-modular-actions-v2) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [www.chainsecurity.com/security-audit/summer-fi-automation-v2-smart-contracts](https://www.chainsecurity.com/security-audit/summer-fi-automation-v2-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11695] ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit.pdf — no match: Only one contract in scope: SavingsDai.sol
- [11696] www.chainsecurity.com/security-audit/oasis-automation-consultancy-smart-contracts — no match: Only one contract name 'Automation' is explicitly mentioned as being audited. No file paths or detailed scope table provided.
- [11697] www.chainsecurity.com/security-audit/oasis-multiply-fmm-extension — no match: No explicit contract names or file paths found in the provided text. The report mentions 'multiply smart contracts' and 'flashloan provider' but does not list specific contract names or source files in scope.
- [11698] www.chainsecurity.com/security-audit/oasis-app-modular-proxy-actions — no match: No contract names or scope section found in the provided text.
- [11699] www.chainsecurity.com/security-audit/summer-fi-defi-modular-actions-v2 — no match: No explicit scope section or file listing found. Only 'UserProxy' is mentioned as part of the system description.
- [11700] www.chainsecurity.com/security-audit/summer-fi-automation-v2-smart-contracts — no match: No scope section or contract names found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit.pdf | SavingsDai | unmatched — not counted | — | listed in scope section | no |
| www.chainsecurity.com/security-audit/oasis-automation-consultancy-smart-contracts | Automation | unmatched — not counted | — | mentioned as 'Automation smart contract' in summary | no |
| www.chainsecurity.com/security-audit/summer-fi-defi-modular-actions-v2 | UserProxy | unmatched — not counted | — | mentioned as part of the system: 'multiple actions to be executed from a UserProxy' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x106cbb...f6dd2b` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x88e7b6...0073a2` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8b43a5...329b0e` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde1f07...c778f0` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb60a8...0c0d9d` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x809a0c...2562af` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x106cbb...f6dd2b` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x72d417...8bd302` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc65b7e...e4b3ec` | BufferArk | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17ee2d...54ad8d` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2e6abc...a88e10` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x67e536...0ab506` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98c49e...9ecf17` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9cda4...70cb06` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x507a2d...7964f8` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2bb9ad...f834af` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x64db8f...48e0f0` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x98c49e...9ecf17` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4f63cf...34bb58` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x98c49e...9ecf17` | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbe5a4d...01e9fa` | SummerGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x54a2ea...80b8dd` | SummerRewardsRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x447bf9...4c3796` | SummerTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4c32a2...721ed9` | SummerTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x447bf9...4c3796` | SummerTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x194f36...ea1624` | SummerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x4e0037...6099e3` | SummerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x194f36...ea1624` | SummerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 41 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 3 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=5
- Match method counts: n/a

Zero-match audit list:

- [11695] ChainSecurity_Oazo_Apps_Limited_Savings_Dai_audit.pdf
- [11696] www.chainsecurity.com/security-audit/oasis-automation-consultancy-smart-contracts
- [11697] www.chainsecurity.com/security-audit/oasis-multiply-fmm-extension
- [11698] www.chainsecurity.com/security-audit/oasis-app-modular-proxy-actions
- [11699] www.chainsecurity.com/security-audit/summer-fi-defi-modular-actions-v2
- [11700] www.chainsecurity.com/security-audit/summer-fi-automation-v2-smart-contracts

Fork inheritance lineage and inherited audits are included when available.
