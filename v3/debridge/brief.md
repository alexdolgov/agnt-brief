# Agentic Audit Brief: deBridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 16 across 6 audit(s)
- Eligible audit results: 34 (6 matched; 28 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: deBridge (`debridge`)
- Website: [https://app.debridge.com](https://app.debridge.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, hyperliquid, linea, megaeth, monad, optimism, polygon, sei
- Contract surface: 113 unique implementations (113 raw deployments)
- Coverage basis: 6/95 confirmed own live verified implementations (6.3%); conservative 6.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,249,833.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for deBridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 122 contract row(s) across arbitrum, avalanche, base, bsc, cronos, ethereum, hyperliquid, linea, megaeth, monad, optimism, polygon, sei. Structural roles: 91 unclassified, 16 supporting, 13 infra, 2 core. 29 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 122
- Structural roles: unclassified (91), supporting (16), infra (13), core (2)
- Contract kinds: contract (122)
- Detected standards: erc1967proxy (28), accesscontrol (2), erc165 (2), erc20 (1), pausable (1)
- Frameworks: openzeppelin (29), openzeppelin-upgradeable (17)
- Upgradeable-pattern rows: 29

## Fork Analysis

0 of 56 contracts are derived from known codebases. 56 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xae0361...4c7974`, chain 1)
- UnnamedContract (`0xae0361...4c7974`, chain 137)
- UnnamedContract (`0x8a0c79...28a824`, chain 143)
- UnnamedContract (`0x8a0c79...28a824`, chain 4326)
- UnnamedContract (`0xae0361...4c7974`, chain 8453)
- UnnamedContract (`0xae0361...4c7974`, chain 42161)
- UnnamedContract (`0x55c93b...91654a`, chain 59144)
- UnnamedContract (`0xae0361...4c7974`, chain 59144)
- CrosschainForwarderProxy (`0x663dc1...83c251`, chain 10)
- CrosschainForwarderProxy (`0x663dc1...83c251`, chain 8453)
- CrosschainForwarderProxy (`0x663dc1...83c251`, chain 59144)
- DeBridgeToken (`0x0e4add...d5504d`, chain 8453)
- ExternalCallExecutor (`0xae0361...4c7974`, chain 10)
- ExternalCallExecutor (`0xae0361...4c7974`, chain 56)
- Subscription (`0xf46b9e...4f5e35`, chain 1)
- TransparentUpgradeableProxy (`0x2328ee...0c91a7`, chain 1)
- TransparentUpgradeableProxy (`0x43de2d...8398aa`, chain 1)
- TransparentUpgradeableProxy (`0x663dc1...83c251`, chain 1)
- TransparentUpgradeableProxy (`0xe7351f...d6dd7f`, chain 1)
- TransparentUpgradeableProxy (`0xef4fb2...30eb66`, chain 1)
- TransparentUpgradeableProxy (`0xe7351f...d6dd7f`, chain 10)
- TransparentUpgradeableProxy (`0xef4fb2...30eb66`, chain 10)
- TransparentUpgradeableProxy (`0x43de2d...8398aa`, chain 56)
- TransparentUpgradeableProxy (`0x61ef2e...8f6cf9`, chain 56)
- TransparentUpgradeableProxy (`0x663dc1...83c251`, chain 56)
- TransparentUpgradeableProxy (`0xe7351f...d6dd7f`, chain 56)
- TransparentUpgradeableProxy (`0xef4fb2...30eb66`, chain 56)
- TransparentUpgradeableProxy (`0x43de2d...8398aa`, chain 137)
- TransparentUpgradeableProxy (`0x663dc1...83c251`, chain 137)
- TransparentUpgradeableProxy (`0xe7351f...d6dd7f`, chain 137)
- TransparentUpgradeableProxy (`0xef4fb2...30eb66`, chain 137)
- TransparentUpgradeableProxy (`0x663dc1...83c251`, chain 999)
- TransparentUpgradeableProxy (`0x663dc1...83c251`, chain 1329)
- TransparentUpgradeableProxy (`0xe7351f...d6dd7f`, chain 8453)
- TransparentUpgradeableProxy (`0xef4fb2...30eb66`, chain 8453)
- TransparentUpgradeableProxy (`0x43de2d...8398aa`, chain 42161)
- TransparentUpgradeableProxy (`0x663dc1...83c251`, chain 42161)
- TransparentUpgradeableProxy (`0xe7351f...d6dd7f`, chain 42161)
- TransparentUpgradeableProxy (`0xef4fb2...30eb66`, chain 42161)
- TransparentUpgradeableProxy (`0x43de2d...8398aa`, chain 43114)
- TransparentUpgradeableProxy (`0xe7351f...d6dd7f`, chain 59144)
- TransparentUpgradeableProxy (`0xef4fb2...30eb66`, chain 59144)
- UnnamedContract (`0x05bd82...10ebea`, chain 25)
- UnnamedContract (`0x43de2d...8398aa`, chain 25)
- UnnamedContract (`0x663dc1...83c251`, chain 25)
- UnnamedContract (`0x8244d6...4ea464`, chain 25)
- UnnamedContract (`0x8a0c79...28a824`, chain 25)
- UnnamedContract (`0x949b3b...9c8a8c`, chain 25)
- UnnamedContract (`0xc1656b...e5bcbf`, chain 25)
- UnnamedContract (`0xe7351f...d6dd7f`, chain 25)
- UnnamedContract (`0xe93356...cb624a`, chain 25)
- UnnamedContract (`0xef4fb2...30eb66`, chain 25)
- WethGate (`0xfcf836...4d6a59`, chain 1)
- WethGate (`0xfcf836...4d6a59`, chain 56)
- WethGate (`0xfcf836...4d6a59`, chain 137)
- WethGate (`0xfcf836...4d6a59`, chain 43114)

## Contract Surface Quality

- Indexed contracts: 122; live-surface contracts included: 122 (95 live, 27 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 113/113 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/95 (6.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 113 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 77
- Deployed-live implementations: 113 of 113 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/95
- Verified + Unaudited implementations: 89
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 113
- Raw deployments: 113
- Audits discovered: 34 (34 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/debridge/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 27 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 5 | 5.3% | 2023-10 |
| unknown | Tier 2 | 1 | 1.1% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DeBridgeGate | operational_periphery | project_anchor | own_supporting | 1 | avalanche | unit-235018 | `0x43de2d...8398aa` | ✅ Audited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234963 | `0xc1656b...e5bcbf` | ✅ Audited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | avalanche | unit-235017 | `0x8244d6...4ea464` | ✅ Audited |
| DlnExternalCallAdapter | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234979 | `0x61ef2e...8f6cf9` | ✅ Audited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | avalanche | unit-235016 | `0x949b3b...9c8a8c` | ✅ Audited |
| WethGate | unknown | project_anchor | own_supporting | 0 | avalanche | unit-234964 | `0xfcf836...4d6a59` | ✅ Audited |

### ⚠️ Verified + Unaudited (89)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CallProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234980 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| CallProxy | unknown | project_anchor | own_supporting | 1 | optimism | unit-234988 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| CallProxy | unknown | project_anchor | own_supporting | 1 | bsc | unit-235025 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| CallProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-235005 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| CallProxy | unknown | project_anchor | own_supporting | 1 | base | unit-235040 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| CallProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-235013 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| CallProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-235019 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| CallProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-235032 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| DeBridgeGate | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-234978 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| DeBridgeGate | unknown | project_anchor | own_supporting | 1 | optimism | unit-234990 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| DeBridgeGate | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-235023 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| DeBridgeGate | operational_periphery | project_anchor | own_supporting | 1 | polygon | unit-235003 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| DeBridgeGate | unknown | project_anchor | own_supporting | 1 | base | unit-235042 | `0xc1656b...e5bcbf` | ⚠️ Unaudited |
| DeBridgeGate | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-235011 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| DeBridgeGate | unknown | project_anchor | own_supporting | 1 | linea | unit-235034 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | project_anchor | own_supporting | 1 | ethereum | unit-234976 | `0x663dc1...83c251` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | project_anchor | own_supporting | 1 | optimism | unit-234986 | `0x663dc1...83c251` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | project_anchor | own_supporting | 1 | bsc | unit-235021 | `0x663dc1...83c251` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | project_anchor | own_supporting | 1 | polygon | unit-235001 | `0x663dc1...83c251` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | project_anchor | own_supporting | 1 | base | unit-235038 | `0x663dc1...83c251` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | project_anchor | own_supporting | 1 | arbitrum | unit-235009 | `0x663dc1...83c251` | ⚠️ Unaudited |
| DeBridgeRouter | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-235030 | `0x663dc1...83c251` | ⚠️ Unaudited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234941 | `0xf8a290...734c2b` | ⚠️ Unaudited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-234944 | `0xc1656b...e5bcbf` | ⚠️ Unaudited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-234967 | `0xf8a290...734c2b` | ⚠️ Unaudited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-234948 | `0xf8a290...734c2b` | ⚠️ Unaudited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-234974 | `0xc1656b...e5bcbf` | ⚠️ Unaudited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | sei | unit-234946 | `0xc1656b...e5bcbf` | ⚠️ Unaudited |
| DeBridgeToken | operational_periphery | project_anchor | own_supporting | 0 | base | unit-234971 | `0x0e4add...d5504d` | ⚠️ Unaudited |
| DeBridgeToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234962 | `0xf8a290...734c2b` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234977 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | optimism | unit-234987 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | bsc | unit-235022 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | polygon | unit-235002 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | base | unit-235039 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-235010 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| DeBridgeTokenDeployer | unknown | project_anchor | own_supporting | 1 | linea | unit-235031 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| DlnDestination | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234982 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| DlnDestination | unknown | project_anchor | own_supporting | 1 | optimism | unit-234991 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| DlnDestination | unknown | project_anchor | own_supporting | 1 | bsc | unit-235026 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| DlnDestination | unknown | project_anchor | own_supporting | 1 | polygon | unit-235006 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| DlnDestination | unknown | project_anchor | own_supporting | 1 | base | unit-235043 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| DlnDestination | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-235014 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| DlnDestination | unknown | project_anchor | own_supporting | 1 | linea | unit-235035 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| DlnSource | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234975 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| DlnSource | unknown | project_anchor | own_supporting | 1 | optimism | unit-234985 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| DlnSource | unknown | project_anchor | own_supporting | 1 | bsc | unit-235020 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| DlnSource | unknown | project_anchor | own_supporting | 1 | polygon | unit-235000 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| DlnSource | unknown | project_anchor | own_supporting | 1 | base | unit-235037 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| DlnSource | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-235008 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| DlnSource | unknown | project_anchor | own_supporting | 1 | linea | unit-235029 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| ExternalCallExecutor | unknown | project_anchor | own_supporting | 0 | optimism | unit-234943 | `0xae0361...4c7974` | ⚠️ Unaudited |
| ExternalCallExecutor | unknown | project_anchor | own_supporting | 0 | bsc | unit-234966 | `0xae0361...4c7974` | ⚠️ Unaudited |
| ExternalCallExecutor | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-234973 | `0x05bd82...10ebea` | ⚠️ Unaudited |
| ExternalCallExecutor | unknown | project_anchor | own_supporting | 0 | sei | unit-234945 | `0x05bd82...10ebea` | ⚠️ Unaudited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234983 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | optimism | unit-234984 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | bsc | unit-235027 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | polygon | unit-235007 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | base | unit-235036 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-235015 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| SignatureVerifier | unknown | project_anchor | own_supporting | 1 | linea | unit-235028 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| Subscription | unknown | project_anchor | own_supporting | 1 | ethereum | unit-234981 | `0x2328ee...0c91a7` | ⚠️ Unaudited |
| Subscription | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234940 | `0xf46b9e...4f5e35` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | optimism | unit-234989 | `0x61ef2e...8f6cf9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | bsc | unit-235024 | `0x61ef2e...8f6cf9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-235004 | `0x61ef2e...8f6cf9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-235050 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-235045 | `0x663dc1...83c251` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-235046 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-235047 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-235044 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-235051 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-235049 | `0xe93356...cb624a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-235048 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sei | unit-234998 | `0x43de2d...8398aa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | project_anchor | own_supporting | 1 | sei | unit-234994 | `0x663dc1...83c251` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sei | unit-234995 | `0x8244d6...4ea464` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sei | unit-234996 | `0x8a0c79...28a824` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sei | unit-234993 | `0x949b3b...9c8a8c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sei | unit-234999 | `0xe7351f...d6dd7f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sei | unit-234997 | `0xe93356...cb624a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | sei | unit-234992 | `0xef4fb2...30eb66` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | base | unit-235041 | `0x61ef2e...8f6cf9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-235012 | `0x61ef2e...8f6cf9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-235033 | `0x61ef2e...8f6cf9` | ⚠️ Unaudited |
| WethGate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234942 | `0xfcf836...4d6a59` | ⚠️ Unaudited |
| WethGate | unknown | project_anchor | own_supporting | 0 | bsc | unit-234968 | `0xfcf836...4d6a59` | ⚠️ Unaudited |
| WethGate | unknown | project_anchor | own_supporting | 0 | polygon | unit-234949 | `0xfcf836...4d6a59` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-234939 | `0xae0361...4c7974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234951 | `0x05bd82...10ebea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234952 | `0x43de2d...8398aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234953 | `0x663dc1...83c251` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234954 | `0x8244d6...4ea464` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234955 | `0x8a0c79...28a824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234956 | `0x949b3b...9c8a8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234957 | `0xc1656b...e5bcbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234958 | `0xe7351f...d6dd7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234959 | `0xe93356...cb624a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-234960 | `0xef4fb2...30eb66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-234947 | `0xae0361...4c7974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-234950 | `0x8a0c79...28a824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-234965 | `0x8a0c79...28a824` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-234972 | `0xae0361...4c7974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-234961 | `0xae0361...4c7974` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-234969 | `0x55c93b...91654a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-234970 | `0xae0361...4c7974` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [CrosschainForwarder Allowances Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/CrosschainForwarder%20Allowances%20Audit.pdf) | unknown | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [DLN Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [DLN Solana Release Assessment Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN%20Solana%20Release%20Assessment%20Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [DLN-EVM_Upgrades_SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DLN-EVM_Upgrades_SSC.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |
| [DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [DeBridge_Airdrop_Contract _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Airdrop_Contract%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 12 | high |
| [DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 10 | high |
| [DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | matched | 4 | 3 | 0 | 10 | high |
| [Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf) | Halborn | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf](https://github.com/debridge-finance/debridge-security/blob/master/Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [deBridge Core Protocol Solana Contracts _ SSC.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge%20Core%20Protocol%20Solana%20Contracts%20_%20SSC.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [deBridge_Cloudflare_report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cloudflare_report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf) | unknown | Audit | 2022-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 19 | n/a |
| [deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | matched | 4 | 3 | 0 | 7 | high |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf) | Halborn | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf) | unknown | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [deBridge_Node_Security_Audit_Report_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Node_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [deBridge_Solana_Security_Audit_Ackee.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Ackee.pdf) | Ackee Blockchain | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [deBridge_Solana_Security_Audit_Neodyme.pdf](https://github.com/debridge-finance/debridge-security/blob/master/deBridge_Solana_Security_Audit_Neodyme.pdf) | unknown | Audit | 2022-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [debridge_backend_pentest_report_halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_backend_pentest_report_halborn.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | high |
| [debridge_solidity_smart_contract_second_audit_Halborn.pdf](https://github.com/debridge-finance/debridge-security/blob/master/debridge_solidity_smart_contract_second_audit_Halborn.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | matched | 5 | 3 | 0 | 11 | high |
| [immunefi.com/bug-bounty/debridge/information](https://immunefi.com/bug-bounty/debridge/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [debridge-security (GitHub directory)](https://github.com/debridge-finance/debridge-security) | Halborn | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [9997] CrosschainForwarder Allowances Audit.pdf — no match: No reason recorded
- [9998] DLN Solana Contracts _ SSC.pdf — no match: Scope section lists files under programs/dln_dst and programs/dln_src, which are the main programs. Other files are client libraries and examples, not contracts.
- [9999] DLN Solana Release Assessment Report.pdf — no match: Scope section lists files under dln_dst/src/ and dln_src/src/. Contract names extracted from directory names.
- [10000] DLN-EVM_Upgrades_SSC.pdf — matched: Scope section lists DlnSource.sol, DlnDestination.sol, DlnExternalCallAdapter.sol, ExternalCallExecutor.sol. ExternalCallExecutorBase is mentioned in findings as a parent contract.
- [10001] DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf — no match: Audit of DeBridge Solana Events Reader Rust program. Scope includes the repository 'debridge-solana-events-reader' with two services: ReaderService and GRPCService. No Solidity contracts; the program is written in Rust.
- [10002] DeBridge_Airdrop_Contract _ SSC.pdf — no match: Extracted contract names from scope section and findings. Audit date is the end date of engagement: October 1st, 2024.
- [10003] DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf — no match: All contracts listed in scope section (1.4) and manual testing section. Audit date from engagement end date.
- [10004] DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf — matched: Scope section explicitly lists 13 smart contracts in scope. Audit date is the end date of engagement (November 1st, 2023).
- [10005] DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf — no match: Three contracts explicitly listed in scope section (1.4) on page 9.
- [10006] DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf — matched: Scope section explicitly lists 11 smart contracts in scope. Audit date is end date of engagement: July 21st, 2023.
- [10007] DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf — no match: The audit scope is a daemon service (dln-taker), not smart contracts. No contract names found.
- [10008] DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf — no match: Only one contract/library in scope: DeBridgeSolana.sol. Audit date is the end date of engagement (July 12, 2023).
- [10009] DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf — no match: Scope section explicitly lists two Solana programs: debridge and settings. Audit date is the end date of engagement (May 25th, 2022).
- [10010] DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: Scope section explicitly lists 14 smart contracts. Audit date is end date of engagement (June 15, 2022).
- [10011] Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf — no match: Scope section only mentions repository and diff, not specific contract files. Contract names extracted from automated testing section where 'dln_dst' and 'dln_src' are listed as program names.
- [10012] Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf — no match: The audit is for a Solana Event Reader application, not smart contracts. No Solidity contracts are in scope.
- [10013] Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf — no match: Scope section lists four crates/modules: client, extcall-core, discriminator, extcall-program. No individual contract names are given; these are the audited components.
- [10014] Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf — no match: The audit is for a TypeScript library, not smart contracts. The only in-scope item is the solana-tx-parser-public repository. No individual contract files are listed.
- [10016] deBridge Core Protocol Solana Contracts _ SSC.pdf — no match: Scope section lists programs/debridge and programs/settings as items in scope. The audit report covers Solana programs named debridge and settings.
- [10017] deBridge_Cloudflare_report_Halborn.pdf — no match: This is a Cloudflare configuration review, not a smart contract audit. No smart contracts are in scope.
- [10018] deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf — no match: No reason recorded
- [10019] deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf — no match: No reason recorded
- [10020] deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf — no match: This is a web application pentest report, not a smart contract audit. No smart contracts are in scope; only URLs and repositories are listed.
- [10021] deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf — matched: Scope section explicitly lists 11 smart contracts. Audit date is the end date of the engagement period (February 9th, 2022).
- [10022] deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf — no match: Scope section explicitly lists 9 smart contracts and deployment scripts. Additional contracts (DeTokenDeployer, DeBridgeToken) mentioned in remediation as new/renamed contracts.
- [10023] deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf — no match: Contracts listed in scope section and code coverage tables. Date from cover page.
- [10024] deBridge_Node_Security_Audit_Report_Halborn.pdf — no match: The audit scope is a Node.js repository (debridge-launcher), not smart contracts. No contract names found.
- [10025] deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf — no match: Scope section lists two Solana programs: de-multi-signature and de-program-updater. Audit date is the end date of engagement: April 19th, 2022.
- [10026] deBridge_Solana_Security_Audit_Ackee.pdf — no match: Extracted contract names from scope section 4.1 and system overview. Audit date from cover page and appendix I.
- [10027] deBridge_Solana_Security_Audit_Neodyme.pdf — no match: The report mentions two Solana contracts but does not provide their names. The scope section only describes them as 'deBridge’s two Solana contracts' without naming them.
- [10028] debridge_backend_pentest_report_halborn.pdf — no match: This is a backend penetration test, not a smart contract audit. No smart contracts are in scope. The scope includes API endpoints and a repository, but no contract names.
- [10029] debridge_solidity_smart_contract_second_audit_Halborn.pdf — matched: Extracted 14 contracts from scope section plus BytesLib and FeeProxy from findings. Audit date is end of engagement period (April 20, 2022).
- [15439] immunefi.com/bug-bounty/debridge/information — no match: The document is a bug bounty program description, not an audit report. No specific contracts are listed in scope; only the protocol name 'deBridge' is mentioned.
- [15440] debridge-security (GitHub directory) — no match: The provided text is a GitHub repository README listing multiple audit report PDFs with titles and dates, but no specific contract names, file paths, or scope sections are included. The text only references report titles and publication dates, not the actual contracts audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| CrosschainForwarder Allowances Audit.pdf | CrosschainForwarder | unmatched — not counted | — | — | no |
| DLN Solana Contracts _ SSC.pdf | dln_dst | unmatched — not counted | — | listed in scope | no |
| DLN Solana Contracts _ SSC.pdf | dln_src | unmatched — not counted | — | listed in scope | no |
| DLN Solana Release Assessment Report.pdf | dln_dst | unmatched — not counted | — | listed in scope | no |
| DLN Solana Release Assessment Report.pdf | dln_src | unmatched — not counted | — | listed in scope | no |
| DLN-EVM_Upgrades_SSC.pdf | DlnSource | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 16:06:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 22:35:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:18:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 17:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:20:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-07-18 14:59:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 14:55:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DLN-EVM_Upgrades_SSC.pdf | DlnDestination | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:27:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 22:36:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 17:25:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 16:06:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 14:59:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-07-18 15:02:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DLN-EVM_Upgrades_SSC.pdf | DlnExternalCallAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x61ef2e...8f6cf9` — deployed 2023-09-07 12:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DLN-EVM_Upgrades_SSC.pdf | ExternalCallExecutor | ambiguous — not counted | ExternalCallExecutor (alternative) `0xae0361...4c7974` — deployed 2024-04-24 20:15:55+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0x05bd82...10ebea` — deployed 2025-02-24 14:19:00+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0x05bd82...10ebea` — deployed 2025-06-16 15:08:29+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0xae0361...4c7974` — deployed 2024-04-27 23:15:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DLN-EVM_Upgrades_SSC.pdf | ExternalCallExecutorBase | unmatched — not counted | — | mentioned in finding 8.1 | no |
| DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf | SolanaEventReader | unmatched — not counted | — | Scope section: 'DeBridge Solana Events Reader' repository | no |
| DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf | ReaderService | unmatched — not counted | — | Section 1.1: 'ReaderService that connects to Solana node...' | no |
| DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf | GRPCService | unmatched — not counted | — | Section 1.1: 'GRPCService that serves events...' | no |
| DeBridge_Airdrop_Contract _ SSC.pdf | PointsClaimer | unmatched — not counted | — | mentioned in scope and findings | no |
| DeBridge_Airdrop_Contract _ SSC.pdf | SeasonalState | unmatched — not counted | — | mentioned in scope and findings | no |
| DeBridge_Airdrop_Contract _ SSC.pdf | Receipt | unmatched — not counted | — | mentioned in findings | no |
| DeBridge_Airdrop_Contract _ SSC.pdf | ClaimSolana | unmatched — not counted | — | mentioned in scope and findings | no |
| DeBridge_Airdrop_Contract _ SSC.pdf | ClaimEvm | unmatched — not counted | — | mentioned in scope and findings | no |
| DeBridge_Airdrop_Contract _ SSC.pdf | Withdraw | unmatched — not counted | — | mentioned in scope and findings | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | Flags | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | SignatureUtil | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | CallProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:26:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:54:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2022-03-10 00:34:32+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-31 15:05:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-08-01 22:00:55+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-02-19 18:38:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:19:54+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-18 03:11:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-06-16 14:23:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:22:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeToken | ambiguous — not counted | DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2022-03-10 00:28:57+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2023-08-01 21:49:29+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:30:06+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:54:25+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:54:09+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:17:49+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-06-16 14:22:19+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-02-19 18:32:00+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0x0e4add...d5504d` — deployed 2023-07-31 14:52:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeTokenPaused | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeTokenProxy | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | FeeProxy | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | FeesCalculator | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | SimpleFeeProxy | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | UpgradeableBeacon | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeGate | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 16:57:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 18:36:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1656b...e5bcbf` — deployed 2023-07-31 12:41:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-07-18 03:00:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 14:44:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-08-01 21:48:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2022-03-10 00:26:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 19:47:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeTokenDeployer | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 23:43:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-18 03:09:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2022-03-10 00:30:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 21:33:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-08-01 21:51:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:11:44+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:02:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-31 14:59:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | OraclesManager | unmatched — not counted | — | listed in scope | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | SignatureVerifier | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-08-01 21:51:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-31 15:01:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:06:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:04:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-18 03:10:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:12:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 01:58:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2022-03-10 00:33:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf | WethGate | ambiguous — not counted | WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:35:38+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 10:19:26+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:37:41+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2022-03-10 00:38:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | DlnBase | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | DlnDestination | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:27:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 22:36:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 17:25:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 16:06:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 14:59:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-07-18 15:02:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | DlnSource | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 16:06:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 22:35:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:18:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 17:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:20:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-07-18 14:59:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 14:55:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | DlnExternalCallAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x61ef2e...8f6cf9` — deployed 2023-09-07 12:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | AAVECallExecutor | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | WidoCallExecutor | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | ExternalCallExecutor | ambiguous — not counted | ExternalCallExecutor (alternative) `0xae0361...4c7974` — deployed 2024-04-24 20:15:55+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0x05bd82...10ebea` — deployed 2025-02-24 14:19:00+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0x05bd82...10ebea` — deployed 2025-06-16 15:08:29+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0xae0361...4c7974` — deployed 2024-04-27 23:15:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | ExternalCallExecutorBase | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | BytesLib | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | DlnExternalCallLib | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | DlnOrderLib | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | EncodeSolanaDlnMessage | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Bridge_1_3_0_Smart_Contract_Security_Assessment.pdf | SafeCast | unmatched — not counted | — | listed in scope table | no |
| DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf | DlnDestination | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:27:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 22:36:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 17:25:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 16:06:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 14:59:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-07-18 15:02:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf | DlnSource | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 16:06:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 22:35:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:18:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 17:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:20:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-07-18 14:59:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 14:55:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf | DlnBase | unmatched — not counted | — | listed in scope section | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | DlnBase | unmatched — not counted | — | listed in scope | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | DlnDestination | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:27:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 22:36:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 17:25:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 16:06:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-08-01 14:59:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2023-07-18 15:02:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe7351f...d6dd7f` — deployed 2022-12-12 15:19:02+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | DlnSource | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 16:06:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 22:35:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:18:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 17:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2022-12-12 15:20:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-07-18 14:59:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xef4fb2...30eb66` — deployed 2023-08-01 14:55:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | ExternalCallExecutor | ambiguous — not counted | ExternalCallExecutor (alternative) `0xae0361...4c7974` — deployed 2024-04-24 20:15:55+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0x05bd82...10ebea` — deployed 2025-02-24 14:19:00+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0x05bd82...10ebea` — deployed 2025-06-16 15:08:29+03 — liveness: live (current_address_book_code)<br>ExternalCallExecutor (alternative) `0xae0361...4c7974` — deployed 2024-04-27 23:15:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | DlnExternalCallAdapter | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x61ef2e...8f6cf9` — deployed 2023-09-07 12:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | AAVECallExecutor | unmatched — not counted | — | listed in scope | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | Executor | unmatched — not counted | — | listed in scope | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | BytesLib | unmatched — not counted | — | listed in scope | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | DlnExternalCallLib | unmatched — not counted | — | listed in scope | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | DlnOrderLib | unmatched — not counted | — | listed in scope | no |
| DeBridge_DLN_External_Call_Smart_Contract_Security_Assessment_Report.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf | DeBridgeSolana | unmatched — not counted | — | listed in scope section as the only library in scope | no |
| DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf | debridge | unmatched — not counted | — | listed in scope section as program in-scope | no |
| DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf | settings | unmatched — not counted | — | listed in scope section as program in-scope | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DeBridgeGate | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 16:57:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 18:36:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1656b...e5bcbf` — deployed 2023-07-31 12:41:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-07-18 03:00:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 14:44:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-08-01 21:48:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x43de2d...8398aa` — deployed 2022-03-10 00:26:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 19:47:18+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 97d from audit; next candidate 205d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DeBridgeTokenDeployer | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 23:43:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-18 03:09:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x8244d6...4ea464` — deployed 2022-03-10 00:30:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 21:33:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-08-01 21:51:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:11:44+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:02:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-31 14:59:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 97d from audit; next candidate 204d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | OraclesManager | unmatched — not counted | — | listed in scope section | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | SignatureVerifier | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-08-01 21:51:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-31 15:01:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:06:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:04:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-18 03:10:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:12:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 01:58:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x949b3b...9c8a8c` — deployed 2022-03-10 00:33:00+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 97d from audit; next candidate 204d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | WethGate | own contract | WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:35:38+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 10:19:26+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:37:41+03 — liveness: live (current_address_book_code)<br>WethGate (selected) `0xfcf836...4d6a59` — deployed 2022-03-10 00:38:45+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 97d from audit; next candidate 204d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | SimpleFeeProxy | unmatched — not counted | — | listed in scope section | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DefiController | unmatched — not counted | — | listed in scope section | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | CallProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:26:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:54:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2022-03-10 00:34:32+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-31 15:05:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-08-01 22:00:55+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-02-19 18:38:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:19:54+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-18 03:11:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-06-16 14:23:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:22:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | DeBridgeToken | ambiguous — not counted | DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2022-03-10 00:28:57+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2023-08-01 21:49:29+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:30:06+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:54:25+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:54:09+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:17:49+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-06-16 14:22:19+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-02-19 18:32:00+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0x0e4add...d5504d` — deployed 2023-07-31 14:52:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | FeeProxy | unmatched — not counted | — | listed in scope section | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Claimer | unmatched — not counted | — | listed in scope section | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MultiSendCallOnly | unmatched — not counted | — | listed in scope section | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | SignatureUtil | unmatched — not counted | — | listed in scope section | no |
| DeBridge_Solidity_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | BytesLib | unmatched — not counted | — | listed in scope section | no |
| Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf | dln_dst | unmatched — not counted | — | mentioned in automated testing results | no |
| Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf | dln_src | unmatched — not counted | — | mentioned in automated testing results | no |
| Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf | extcall-program | unmatched — not counted | — | listed in scope | no |
| Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf | extcall-core | unmatched — not counted | — | listed in scope | no |
| Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf | client | unmatched — not counted | — | listed in scope | no |
| Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf | discriminator | unmatched — not counted | — | listed in scope | no |
| Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf | solana-tx-parser | unmatched — not counted | — | listed in scope section as the repository name | no |
| deBridge Core Protocol Solana Contracts _ SSC.pdf | debridge | unmatched — not counted | — | listed in scope | no |
| deBridge Core Protocol Solana Contracts _ SSC.pdf | settings | unmatched — not counted | — | listed in scope | no |
| deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf | CrosschainForwarder | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | CalldataUtils | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | Chain | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | CrossChainForwarder | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | CrossChainForwardingService | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | CrossChainPathFindingService | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | CrossChainResolver | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | DePair | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | DePairsCollection | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | Flags | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | ForwarderBase | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | Icons | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | LPConnector | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | ReceivingForwarder | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | RecommendExecutionFeeService | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | SDK | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | SDKError | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | SignatureUtil | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | SwapBuildingService | unmatched — not counted | — | — | no |
| deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf | SwapCalldataUtils | unmatched — not counted | — | — | no |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeGate | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 16:57:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 18:36:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1656b...e5bcbf` — deployed 2023-07-31 12:41:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-07-18 03:00:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 14:44:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-08-01 21:48:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x43de2d...8398aa` — deployed 2022-03-10 00:26:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 19:47:18+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 29d from audit; next candidate 79d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | OraclesManager | unmatched — not counted | — | listed in scope section | no |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeTokenDeployer | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 23:43:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-18 03:09:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x8244d6...4ea464` — deployed 2022-03-10 00:30:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 21:33:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-08-01 21:51:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:11:44+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:02:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-31 14:59:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 29d from audit; next candidate 78d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | WethGate | own contract | WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:35:38+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 10:19:26+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:37:41+03 — liveness: live (current_address_book_code)<br>WethGate (selected) `0xfcf836...4d6a59` — deployed 2022-03-10 00:38:45+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 29d from audit; next candidate 78d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | SignatureVerifier | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-08-01 21:51:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-31 15:01:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:06:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:04:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-18 03:10:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:12:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 01:58:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x949b3b...9c8a8c` — deployed 2022-03-10 00:33:00+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 29d from audit; next candidate 78d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | CallProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:26:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:54:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2022-03-10 00:34:32+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-31 15:05:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-08-01 22:00:55+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-02-19 18:38:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:19:54+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-18 03:11:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-06-16 14:23:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:22:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeTokenPaused | unmatched — not counted | — | listed in scope section | no |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeTokenProxy | unmatched — not counted | — | listed in scope section | no |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | DeBridgeToken | ambiguous — not counted | DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2022-03-10 00:28:57+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2023-08-01 21:49:29+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:30:06+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:54:25+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:54:09+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:17:49+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-06-16 14:22:19+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-02-19 18:32:00+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0x0e4add...d5504d` — deployed 2023-07-31 14:52:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | Claimer | unmatched — not counted | — | listed in scope section | no |
| deBridge_Main_Pre_Release_Smart_Contract_Security_Audit_Report_Halborn.pdf | SimpleFeeProxy | unmatched — not counted | — | listed in scope section | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | DeBridgeGate | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 16:57:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 18:36:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1656b...e5bcbf` — deployed 2023-07-31 12:41:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-07-18 03:00:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 14:44:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-08-01 21:48:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2022-03-10 00:26:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 19:47:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | AggregatorBase | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | ConfirmationAggregator | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | SignatureAggregator | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | SignatureVerifier | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-08-01 21:51:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-31 15:01:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:06:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:04:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-18 03:10:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:12:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 01:58:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2022-03-10 00:33:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | CallProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:26:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:54:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2022-03-10 00:34:32+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-31 15:05:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-08-01 22:00:55+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-02-19 18:38:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:19:54+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-18 03:11:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-06-16 14:23:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:22:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | FeeProxy | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | WrappedAsset | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | SignatureUtil | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | DeTokenDeployer | unmatched — not counted | — | mentioned in remediation as new contract | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf | DeBridgeToken | ambiguous — not counted | DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2022-03-10 00:28:57+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2023-08-01 21:49:29+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:30:06+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:54:25+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:54:09+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:17:49+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-06-16 14:22:19+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-02-19 18:32:00+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0x0e4add...d5504d` — deployed 2023-07-31 14:52:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | AggregatorBase | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | ConfirmationAggregator | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | DeBridgeGate | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 16:57:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 18:36:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1656b...e5bcbf` — deployed 2023-07-31 12:41:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-07-18 03:00:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 14:44:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-08-01 21:48:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2022-03-10 00:26:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 19:47:18+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | SignatureAggregator | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | SignatureVerifier | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-08-01 21:51:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-31 15:01:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:06:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:04:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-18 03:10:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:12:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 01:58:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2022-03-10 00:33:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | CallProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:26:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:54:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2022-03-10 00:34:32+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-31 15:05:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-08-01 22:00:55+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-02-19 18:38:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:19:54+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-18 03:11:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-06-16 14:23:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:22:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | WrappedAsset | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | SignatureUtil | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | DeBridgeToken | ambiguous — not counted | DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2022-03-10 00:28:57+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2023-08-01 21:49:29+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:30:06+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:54:25+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:54:09+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:17:49+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-06-16 14:22:19+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-02-19 18:32:00+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0x0e4add...d5504d` — deployed 2023-07-31 14:52:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | Flags | unmatched — not counted | — | listed in scope | no |
| deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf | PriceConsumer | unmatched — not counted | — | listed in scope | no |
| deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf | de-multi-signature | unmatched — not counted | — | listed in scope section | no |
| deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf | de-program-updater | unmatched — not counted | — | listed in scope section | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | settings | unmatched — not counted | — | listed in scope section 4.1 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | debridge | unmatched — not counted | — | listed in scope section 4.1 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | Bridge | unmatched — not counted | — | mentioned in section 5.1 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | State | unmatched — not counted | — | mentioned in section 5.1 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | BridgeFeeInfo | unmatched — not counted | — | mentioned in finding M3 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | ChainSupportInfo | unmatched — not counted | — | mentioned in appendix E.2 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | DiscountInfo | unmatched — not counted | — | mentioned in appendix E.3 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | BridgeCtx | unmatched — not counted | — | mentioned in finding M6 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | AmountContextBuilder | unmatched — not counted | — | mentioned in finding L5 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | OraclesKeys | unmatched — not counted | — | mentioned in finding M5 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | SignatureStorage | unmatched — not counted | — | mentioned in finding M2 | no |
| deBridge_Solana_Security_Audit_Ackee.pdf | ExternalCallStorage | unmatched — not counted | — | mentioned in scope section 4.1 as excluded | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | DeBridgeGate | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 16:57:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 18:36:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc1656b...e5bcbf` — deployed 2023-07-31 12:41:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-07-18 03:00:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 14:44:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2023-08-01 21:48:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x43de2d...8398aa` — deployed 2022-03-10 00:26:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x43de2d...8398aa` — deployed 2021-11-22 19:47:18+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 41d from audit; next candidate 149d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | DeBridgeTokenDeployer | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 23:43:22+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-18 03:09:32+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x8244d6...4ea464` — deployed 2022-03-10 00:30:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-22 21:33:30+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-08-01 21:51:01+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:11:44+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2021-11-23 02:02:21+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8244d6...4ea464` — deployed 2023-07-31 14:59:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 41d from audit; next candidate 148d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | OraclesManager | unmatched — not counted | — | listed in scope | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | SignatureVerifier | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-08-01 21:51:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-31 15:01:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:06:40+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:04:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2023-07-18 03:10:18+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 02:12:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x949b3b...9c8a8c` — deployed 2021-11-23 01:58:34+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x949b3b...9c8a8c` — deployed 2022-03-10 00:33:00+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 41d from audit; next candidate 148d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | WethGate | own contract | WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:35:38+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 10:19:26+03 — liveness: live (current_address_book_code)<br>WethGate (alternative) `0xfcf836...4d6a59` — deployed 2021-11-23 02:37:41+03 — liveness: live (current_address_book_code)<br>WethGate (selected) `0xfcf836...4d6a59` — deployed 2022-03-10 00:38:45+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 41d from audit; next candidate 148d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | BatchBalance | unmatched — not counted | — | listed in scope | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | CallProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:26:33+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:54:37+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2022-03-10 00:34:32+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-31 15:05:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-08-01 22:00:55+03 — liveness: live (current_address_book_code)<br>0x8a0c79… (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-02-19 18:38:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:19:54+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x8a0c79...28a824` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2023-07-18 03:11:02+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2025-06-16 14:23:53+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8a0c79...28a824` — deployed 2021-11-23 02:22:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | DeBridgeToken | own contract | DeBridgeToken (selected) `0xc1656b...e5bcbf` — deployed 2022-03-10 00:28:57+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2023-08-01 21:49:29+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:30:06+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 17:54:25+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:54:09+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xf8a290...734c2b` — deployed 2021-12-16 16:17:49+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-06-16 14:22:19+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0xc1656b...e5bcbf` — deployed 2025-02-19 18:32:00+03 — liveness: live (current_address_book_code)<br>DeBridgeToken (alternative) `0x0e4add...d5504d` — deployed 2023-07-31 14:52:45+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2022-03-10 was 41d from audit; next candidate 125d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | DefiController | unmatched — not counted | — | listed in scope | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | FreeProxy | unmatched — not counted | — | listed in scope | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | FeesCalculator | unmatched — not counted | — | listed in scope | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | PriceConsumer | unmatched — not counted | — | listed in scope | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | SimpleFeeProxy | unmatched — not counted | — | listed in scope and findings | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | SwapProxy | unmatched — not counted | — | listed in scope | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | BytesLib | unmatched — not counted | — | mentioned in findings (HAL-06) and automated scan | no |
| debridge_solidity_smart_contract_second_audit_Halborn.pdf | FeeProxy | unmatched — not counted | — | mentioned in findings (HAL-03) as FeeProxy.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8a0c79...28a824` | CallProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x43de2d...8398aa` | DeBridgeGate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x43de2d...8398aa` | DeBridgeGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x43de2d...8398aa` | DeBridgeGate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x43de2d...8398aa` | DeBridgeGate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc1656b...e5bcbf` | DeBridgeGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x43de2d...8398aa` | DeBridgeGate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x43de2d...8398aa` | DeBridgeGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x663dc1...83c251` | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x663dc1...83c251` | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x663dc1...83c251` | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x663dc1...83c251` | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x663dc1...83c251` | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x663dc1...83c251` | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x663dc1...83c251` | DeBridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf8a290...734c2b` | DeBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xc1656b...e5bcbf` | DeBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xf8a290...734c2b` | DeBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf8a290...734c2b` | DeBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc1656b...e5bcbf` | DeBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xc1656b...e5bcbf` | DeBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0e4add...d5504d` | DeBridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf8a290...734c2b` | DeBridgeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8244d6...4ea464` | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8244d6...4ea464` | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8244d6...4ea464` | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8244d6...4ea464` | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8244d6...4ea464` | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8244d6...4ea464` | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8244d6...4ea464` | DeBridgeTokenDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7351f...d6dd7f` | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xe7351f...d6dd7f` | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe7351f...d6dd7f` | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xe7351f...d6dd7f` | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe7351f...d6dd7f` | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe7351f...d6dd7f` | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xe7351f...d6dd7f` | DlnDestination | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xef4fb2...30eb66` | DlnSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xef4fb2...30eb66` | DlnSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xef4fb2...30eb66` | DlnSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xef4fb2...30eb66` | DlnSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xef4fb2...30eb66` | DlnSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xef4fb2...30eb66` | DlnSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xef4fb2...30eb66` | DlnSource | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xae0361...4c7974` | ExternalCallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xae0361...4c7974` | ExternalCallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x05bd82...10ebea` | ExternalCallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x05bd82...10ebea` | ExternalCallExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x949b3b...9c8a8c` | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x949b3b...9c8a8c` | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x949b3b...9c8a8c` | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x949b3b...9c8a8c` | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x949b3b...9c8a8c` | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x949b3b...9c8a8c` | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x949b3b...9c8a8c` | SignatureVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2328ee...0c91a7` | Subscription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf46b9e...4f5e35` | Subscription | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfcf836...4d6a59` | WethGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfcf836...4d6a59` | WethGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfcf836...4d6a59` | WethGate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 0 |
| standard_library | 22 |
| needs_review | 18 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 27
- Inherited remapped matches: 0
- Address-book scope dispositions: 16 own (12 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 30 ambiguous, 124 unmatched
- Matched-own operational status: 16 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=22, low=8, medium=1
- Match method counts: temporal_name=13, unique_name=3

Zero-match audit list:

- [9997] CrosschainForwarder Allowances Audit.pdf
- [9998] DLN Solana Contracts _ SSC.pdf
- [9999] DLN Solana Release Assessment Report.pdf
- [10001] DeBridgde_Solana_Events_Reader_Rust_Program_Security_Audit_Report.pdf
- [10002] DeBridge_Airdrop_Contract _ SSC.pdf
- [10003] DeBridge_Contracts_v1_Smart_Contract_Security_Audit_Report_Halborn.pdf
- [10005] DeBridge_DLN_EVM_Contracts_Smart_Contract_Security_Audit_Report.pdf
- [10007] DeBridge_DLN_Taker_Code_Security_Assessment_Report_Halborn_Final.pdf
- [10008] DeBridge_EVM_to_Solana_Serializer_Smart_Contract_Security_Assessment.pdf
- [10009] DeBridge_Solana_Contracts_Solana_Program_Security_Audit_Report_Halborn.pdf
- [10011] Debridge_DLN_Solana_Program_Security_Audit_Report_Halborn_Final.pdf
- [10012] Debridge_Solana_Event_Reader_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10013] Debridge_extcall_Solana_Program_Security_Assessment_Report_Halborn.pdf
- [10014] Debridge_solana_tx_parser_Whitebox_Pentest_Report_Halborn_Final.pdf
- [10016] deBridge Core Protocol Solana Contracts _ SSC.pdf
- [10017] deBridge_Cloudflare_report_Halborn.pdf
- [10018] deBridge_Cross_Chain_Forwarder_Update_Smart_Contract_Security_Audit.pdf
- [10019] deBridge_Cross_Chain_Swap_Smart_Contract_Security_Audit_Report_Halborn.pdf
- [10020] deBridge_FrontEnd_WebApp_Audit_Report_Halborn.pdf
- [10022] deBridge_Main_Smart_Contract_Security_Audit_Report_Halborn_v1_1.pdf
- [10023] deBridge_Main_Smart_Contract_Security_Audit_Report_ZOKYO.pdf
- [10024] deBridge_Node_Security_Audit_Report_Halborn.pdf
- [10025] deBridge_Solana_Multisig_Solana_Program_Security_Audit_Halborn.pdf
- [10026] deBridge_Solana_Security_Audit_Ackee.pdf
- [10027] deBridge_Solana_Security_Audit_Neodyme.pdf
- [10028] debridge_backend_pentest_report_halborn.pdf
- [15440] debridge-security (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
