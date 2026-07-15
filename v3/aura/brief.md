# Agentic Audit Brief: Aura

## Export Authority

- Production state: **published scope**
- Raw selected rows: 29 across 10 audit(s)
- Eligible audit results: 20 (10 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Aura (`aura`)
- Website: [https://aura.finance](https://aura.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, gnosis, goerli, optimism, polygon, polygon-zkevm
- Contract surface: 205 unique implementations (258 raw deployments)
- Coverage basis: 12/47 confirmed own live verified implementations (25.5%); conservative 25.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,953,397.27
- On-chain TVL (included contracts): $5,997.01
- TVL by chain: Optimism $3,942.34 | Arbitrum $2,054.68 | Base $0.00 | Gnosis $0.00

## Project Description

This brief describes the observed EVM deployment and audit surface for Aura. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 92 contract row(s) across arbitrum, avalanche, base, ethereum, gnosis, goerli, optimism, polygon, polygon-zkevm. Structural roles: 48 core, 43 supporting, 1 unclassified. 27 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 92
- Structural roles: core (48), supporting (43), unclassified (1)
- Contract kinds: contract (92)
- Detected standards: ownable (33), erc20 (11), erc165 (10), pausable (10), erc4626 (3)
- Frameworks: openzeppelin (77), openzeppelin-upgradeable (27)
- Upgradeable-pattern rows: 27

## Fork Analysis

1 of 159 contracts are derived from known codebases. 158 contracts have no detected origin.

### Forked Contracts

**BoosterLite** (`0x98ef32...a30184`, chain 10)
Origin: stake-dao (`0x98ef32...a30184`)
Containment: 100.0% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x208024...f64c11`, chain 1)
- UnnamedContract (`0x25e7c5...f4f669`, chain 1)
- UnnamedContract (`0x81ba03...3fca08`, chain 1)
- UnnamedContract (`0xc9e611...6b1ac7`, chain 1)
- UnnamedContract (`0x286358...2acc01`, chain 10)
- UnnamedContract (`0x2b6c22...c8bc54`, chain 10)
- UnnamedContract (`0x53c090...da364f`, chain 10)
- UnnamedContract (`0x57acb7...7ad478`, chain 10)
- UnnamedContract (`0x8401b4...62bae8`, chain 10)
- UnnamedContract (`0xca85e2...627451`, chain 10)
- UnnamedContract (`0xd86ceb...66d68b`, chain 10)
- UnnamedContract (`0xec1c78...580606`, chain 10)
- UnnamedContract (`0xfa6b85...0be98e`, chain 10)
- UnnamedContract (`0x286358...2acc01`, chain 100)
- UnnamedContract (`0x2b6c22...c8bc54`, chain 100)
- UnnamedContract (`0x53c090...da364f`, chain 100)
- UnnamedContract (`0x8b2970...618201`, chain 100)
- UnnamedContract (`0xab9016...ca4c50`, chain 100)
- UnnamedContract (`0x286358...2acc01`, chain 137)
- UnnamedContract (`0x2b6c22...c8bc54`, chain 137)
- UnnamedContract (`0x4dce82...5cbd1b`, chain 137)
- UnnamedContract (`0x53c090...da364f`, chain 137)
- UnnamedContract (`0x57acb7...7ad478`, chain 137)
- UnnamedContract (`0x8b2970...618201`, chain 137)
- UnnamedContract (`0xca85e2...627451`, chain 137)
- UnnamedContract (`0xd86ceb...66d68b`, chain 137)
- UnnamedContract (`0x286358...2acc01`, chain 8453)
- UnnamedContract (`0x2b6c22...c8bc54`, chain 8453)
- UnnamedContract (`0x5a5094...00b10d`, chain 8453)
- UnnamedContract (`0x609d44...11beaa`, chain 8453)
- UnnamedContract (`0x60d643...87c84c`, chain 8453)
- UnnamedContract (`0x8b2970...618201`, chain 8453)
- UnnamedContract (`0xca85e2...627451`, chain 8453)
- UnnamedContract (`0x0a6bcb...494083`, chain 42161)
- UnnamedContract (`0x286358...2acc01`, chain 42161)
- UnnamedContract (`0x2b6c22...c8bc54`, chain 42161)
- UnnamedContract (`0x53c090...da364f`, chain 42161)
- UnnamedContract (`0x57acb7...7ad478`, chain 42161)
- UnnamedContract (`0x779aa2...2a049b`, chain 42161)
- UnnamedContract (`0xca85e2...627451`, chain 42161)
- UnnamedContract (`0xd86ceb...66d68b`, chain 42161)
- UnnamedContract (`0xec1c78...580606`, chain 42161)
- UnnamedContract (`0x150970...be213b`, chain 43114)
- UnnamedContract (`0x1fd645...b1900b`, chain 43114)
- UnnamedContract (`0x2b6c22...c8bc54`, chain 43114)
- UnnamedContract (`0x37aa9a...3e31dd`, chain 43114)
- UnnamedContract (`0x5073dc...bc119d`, chain 43114)
- UnnamedContract (`0x623cdc...785898`, chain 43114)
- UnnamedContract (`0x6907d1...c2a017`, chain 43114)
- UnnamedContract (`0x731886...25d961`, chain 43114)
- UnnamedContract (`0x739b0c...c62502`, chain 43114)
- UnnamedContract (`0x8034fb...1b6f8d`, chain 43114)
- UnnamedContract (`0x872993...306fe9`, chain 43114)
- UnnamedContract (`0x8b2970...618201`, chain 43114)
- UnnamedContract (`0x98ef32...a30184`, chain 43114)
- UnnamedContract (`0xa2930d...8381ed`, chain 43114)
- UnnamedContract (`0xb82434...3e8bd3`, chain 43114)
- UnnamedContract (`0xc181ed...00a2b0`, chain 43114)
- UnnamedContract (`0xcbdcd8...23dc4e`, chain 43114)
- UnnamedContract (`0xcc9269...1d3c0e`, chain 43114)
- UnnamedContract (`0xf24074...a6ca71`, chain 43114)
- ArbitrumBridgeSender (`0xde386a...8455bf`, chain 42161)
- AuraBalOFT (`0x223738...c754ce`, chain 137)
- AuraBalOFT (`0x223738...c754ce`, chain 8453)
- AuraBalOFT (`0x223738...c754ce`, chain 42161)
- AuraBalProxyOFT (`0xdf9080...3a7c68`, chain 1)
- AuraBalVault (`0x4ea931...bbb0e9`, chain 137)
- AuraBalVault (`0x4ea931...bbb0e9`, chain 8453)
- AuraBalVault (`0x4ea931...bbb0e9`, chain 42161)
- AuraDistributor (`0x96d15d...dba9a4`, chain 1)
- AuraLocker (`0x9e1f41...80922e`, chain 8453)
- AuraOFT (`0x150970...be213b`, chain 10)
- AuraOFT (`0x150970...be213b`, chain 100)
- AuraOFT (`0x150970...be213b`, chain 137)
- AuraOFT (`0x150970...be213b`, chain 8453)
- AuraOFT (`0x150970...be213b`, chain 42161)
- AuraProxyOFT (`0xb401f0...c1ffff`, chain 1)
- AuraViewHelpersLite (`0x9e4cbe...db812b`, chain 137)
- AuraViewHelpersLite (`0xbd2e14...4b029e`, chain 8453)
- BoosterLite (`0x98ef32...a30184`, chain 100)
- BoosterLite (`0x98ef32...a30184`, chain 137)
- BoosterLite (`0x98ef32...a30184`, chain 8453)
- BoosterLite (`0x98ef32...a30184`, chain 42161)
- BoosterOwnerLite (`0xf044ee...81d96f`, chain 10)
- BoosterOwnerLite (`0xa9802d...25d985`, chain 100)
- BoosterOwnerLite (`0x8b9da5...1b5eee`, chain 137)
- BoosterOwnerLite (`0x0f0dda...b755fc`, chain 8453)
- BoosterOwnerLite (`0x3af95b...1a1b66`, chain 42161)
- BridgeDelegateReceiver (`0x397a2d...e80cd7`, chain 1)
- BridgeDelegateReceiver (`0x60421f...b055f7`, chain 1)
- BridgeDelegateReceiver (`0x7eb87c...9c2b4c`, chain 1)
- BridgeDelegateReceiver (`0x80b111...98ab8d`, chain 1)
- BridgeDelegateReceiver (`0xac962a...08daa6`, chain 1)
- BridgeDelegateReceiver (`0xbcf3b1...108c48`, chain 1)
- ChildStashRewardDistro (`0xca85e2...627451`, chain 100)
- GnosisBridgeSender (`0x908c9d...3052bc`, chain 100)
- GnosisSafeProxy (`0xb370eb...93bf46`, chain 1)
- GnosisSafeProxy (`0x57acb7...7ad478`, chain 100)
- GnosisSafeProxy (`0xd86ceb...66d68b`, chain 100)
- KeeperMulticall3 (`0x37aa9a...3e31dd`, chain 10)
- KeeperMulticall3 (`0x37aa9a...3e31dd`, chain 100)
- KeeperMulticall3 (`0x37aa9a...3e31dd`, chain 137)
- KeeperMulticall3 (`0x37aa9a...3e31dd`, chain 8453)
- KeeperMulticall3 (`0x5c97f0...90e798`, chain 8453)
- KeeperMulticall3 (`0x5c97f0...90e798`, chain 42161)
- L1Coordinator (`0xaa54f3...2a3811`, chain 1)
- L1PoolManagerProxy (`0x54f2de...27a14d`, chain 1)
- OptimismBridgeSender (`0x045125...a0bacd`, chain 10)
- PolygonBridgeSender (`0x25e7c5...f4f669`, chain 137)
- PoolManagerLite (`0xf24074...a6ca71`, chain 10)
- PoolManagerLite (`0xf24074...a6ca71`, chain 100)
- PoolManagerLite (`0xf24074...a6ca71`, chain 137)
- PoolManagerLite (`0xf24074...a6ca71`, chain 8453)
- PoolManagerLite (`0xf24074...a6ca71`, chain 42161)
- ProxyFactory (`0x731886...25d961`, chain 10)
- ProxyFactory (`0x731886...25d961`, chain 100)
- ProxyFactory (`0x731886...25d961`, chain 137)
- ProxyFactory (`0x731886...25d961`, chain 8453)
- ProxyFactory (`0x731886...25d961`, chain 42161)
- RewardFactory (`0x2f4cdf...38d4f7`, chain 10)
- RewardFactory (`0x0f641b...0bacae`, chain 100)
- RewardFactory (`0xb292be...6e0144`, chain 137)
- RewardFactory (`0x334df2...22f6b0`, chain 8453)
- RewardFactory (`0xda2e6b...16e7db`, chain 42161)
- RewardPoolDepositWrapper (`0x51b6e0...749fe1`, chain 10)
- RewardPoolDepositWrapper (`0x0fec3d...0b7f76`, chain 100)
- RewardPoolDepositWrapper (`0xce66e8...e41146`, chain 137)
- RewardPoolDepositWrapper (`0xa9952c...58008e`, chain 8453)
- RewardPoolDepositWrapper (`0x6b02fe...6916be`, chain 42161)
- SidechainClaimZap (`0x617963...1fdd47`, chain 10)
- SidechainClaimZap (`0x4ea38a...5328e8`, chain 100)
- SidechainClaimZap (`0x617963...1fdd47`, chain 137)
- SidechainClaimZap (`0x4ea38a...5328e8`, chain 8453)
- SidechainClaimZap (`0x617963...1fdd47`, chain 42161)
- SidechainView (`0x421dbf...275482`, chain 100)
- SidechainView (`0xea865d...74c1dc`, chain 137)
- SimpleStrategy (`0x4b5d28...4f41cb`, chain 137)
- SimpleStrategy (`0x4b5d28...4f41cb`, chain 8453)
- SimpleStrategy (`0x4b5d28...4f41cb`, chain 42161)
- TokenFactory (`0x872993...306fe9`, chain 10)
- TokenFactory (`0x872993...306fe9`, chain 100)
- TokenFactory (`0x872993...306fe9`, chain 137)
- TokenFactory (`0x872993...306fe9`, chain 8453)
- TokenFactory (`0x872993...306fe9`, chain 42161)
- UnnamedContract (`0x252a18...6b3a63`, chain 1101)
- UnnamedContract (`0xa1ffac...c858f4`, chain 1101)
- UnnamedContract (`0xa7cd84...a32794`, chain 1101)
- UnnamedContract (`0xb4c68e...8608df`, chain 1101)
- UnnamedContract (`0xbddac3...68c26b`, chain 1101)
- UnnamedContract (`0xffa458...0282d5`, chain 1101)
- VirtualRewardFactory (`0x05589c...9079c2`, chain 137)
- VirtualRewardFactory (`0x05589c...9079c2`, chain 8453)
- VirtualRewardFactory (`0x05589c...9079c2`, chain 42161)
- VoterProxyLite (`0xc181ed...00a2b0`, chain 10)
- VoterProxyLite (`0xc181ed...00a2b0`, chain 100)
- VoterProxyLite (`0xc181ed...00a2b0`, chain 137)
- VoterProxyLite (`0xc181ed...00a2b0`, chain 8453)
- VoterProxyLite (`0xc181ed...00a2b0`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 92 (92 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 158/209 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/47 (25.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 106 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 74 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 106 of 205 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 12/47
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 8
- Unverified implementations: 59
- Unique implementations: 205
- Raw deployments: 258
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 14 stale, 6 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 13 match-unverified
- Tier 1 coverage: 2.1% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 11 | 23.4% | 2023-12 |
| Zellic | Tier 2 | 6 | 12.8% | 2023-06 |
| Hephyrius | Tier 2 | 3 | 6.4% | n/a |
| Code4rena | Tier 1 | 1 | 2.1% | 2022-07 |
| PeckShield | Tier 2 | 1 | 2.1% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuraBalOFT | unknown | project_anchor | own_supporting | 0 | polygon | unit-227669 | 3 deployments: polygon `0x223738...c754ce`; base `0x223738...c754ce`; arbitrum `0x223738...c754ce` | ✅ Audited |
| AuraBalProxyOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227605 | `0xdf9080...3a7c68` | ✅ Audited |
| AuraLocker | unknown | project_anchor | own_supporting | 0 | base | unit-227817 | `0x9e1f41...80922e` | ✅ Audited |
| AuraProxyOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227602 | `0xb401f0...c1ffff` | ✅ Audited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227593 | `0x397a2d...e80cd7` | ✅ Audited |
| GnosisBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-227646 | `0x908c9d...3052bc` | ✅ Audited |
| L1Coordinator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227600 | `0xaa54f3...2a3811` | ✅ Audited |
| SimpleStrategy | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227679 | 3 deployments: polygon `0x4b5d28...4f41cb`; base `0x4b5d28...4f41cb`; arbitrum `0x4b5d28...4f41cb` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-227744 | `0xde386a...8455bf` | ⚠️ Unaudited |
| AuraBalVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227683 | 3 deployments: polygon `0x4ea931...bbb0e9`; base `0x4ea931...bbb0e9`; arbitrum `0x4ea931...bbb0e9` | ⚠️ Unaudited |
| AuraDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-227599 | `0x96d15d...dba9a4` | ⚠️ Unaudited |
| AuraViewHelpersLite | unknown | project_anchor | own_supporting | 0 | polygon | unit-227702 | `0x9e4cbe...db812b` | ⚠️ Unaudited |
| AuraViewHelpersLite | periphery | project_anchor | own_supporting | 0 | base | unit-227819 | `0xbd2e14...4b029e` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | optimism | unit-227631 | `0xf044ee...81d96f` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-227648 | `0xa9802d...25d985` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227698 | `0x8b9da5...1b5eee` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | base | unit-227799 | `0x0f0dda...b755fc` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-227719 | `0x3af95b...1a1b66` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227595 | `0x60421f...b055f7` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227596 | `0x7eb87c...9c2b4c` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227597 | `0x80b111...98ab8d` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227601 | `0xac962a...08daa6` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227603 | `0xbcf3b1...108c48` | ⚠️ Unaudited |
| ChildStashRewardDistro | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227651 | `0xca85e2...627451` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-227823 | `0xb370eb...93bf46` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | gnosis | unit-227824 (2 proxies) | 2 deployments: gnosis `0x57acb7...7ad478`; gnosis `0xd86ceb...66d68b` | ⚠️ Unaudited |
| L1PoolManagerProxy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227594 | `0x54f2de...27a14d` | ⚠️ Unaudited |
| OptimismBridgeSender | unknown | project_anchor | own_supporting | 0 | optimism | unit-227606 | `0x045125...a0bacd` | ⚠️ Unaudited |
| PolygonBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-227671 | `0x25e7c5...f4f669` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-227612 | `0x2f4cdf...38d4f7` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-227634 | `0x0f641b...0bacae` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-227703 | `0xb292be...6e0144` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | base | unit-227804 | `0x334df2...22f6b0` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-227743 | `0xda2e6b...16e7db` | ⚠️ Unaudited |
| RewardPoolDepositWrapper | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-227635 | 5 deployments: optimism `0x51b6e0...749fe1`; gnosis `0x0fec3d...0b7f76`; polygon `0xce66e8...e41146`; base `0xa9952c...58008e`; arbitrum `0x6b02fe...6916be` | ⚠️ Unaudited |
| SidechainClaimZap | adapter | project_anchor | own_supporting | 0 | optimism | unit-227619 | 3 deployments: optimism `0x617963...1fdd47`; polygon `0x617963...1fdd47`; arbitrum `0x617963...1fdd47` | ⚠️ Unaudited |
| SidechainView | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227640 | `0x421dbf...275482` | ⚠️ Unaudited |
| SidechainView | unknown | project_anchor | own_supporting | 0 | polygon | unit-227708 | `0xea865d...74c1dc` | ⚠️ Unaudited |
| VirtualRewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-227665 | 3 deployments: polygon `0x05589c...9079c2`; base `0x05589c...9079c2`; arbitrum `0x05589c...9079c2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BoosterLite | core_logic | project_anchor | own_supporting | 0 | optimism | unit-227625 | 6 deployments: optimism `0x98ef32...a30184`; gnosis `0x98ef32...a30184`; polygon `0x98ef32...a30184`; base `0x98ef32...a30184`; arbitrum `0x98ef32...a30184`; avalanche `0x98ef32...a30184` | ✅ Audited (bytecode match) |
| AuraOFT | unknown | project_anchor | own_supporting | 0 | optimism | unit-227608 | 6 deployments: optimism `0x150970...be213b`; gnosis `0x150970...be213b`; polygon `0x150970...be213b`; base `0x150970...be213b`; arbitrum `0x150970...be213b`; avalanche `0x150970...be213b` | ✅ Audited (bytecode match) |
| PoolManagerLite | core_logic | project_anchor | own_supporting | 0 | optimism | unit-227632 | 6 deployments: optimism `0xf24074...a6ca71`; gnosis `0xf24074...a6ca71`; polygon `0xf24074...a6ca71`; base `0xf24074...a6ca71`; arbitrum `0xf24074...a6ca71`; avalanche `0xf24074...a6ca71` | ✅ Audited (bytecode match) |
| VoterProxyLite | unknown | project_anchor | own_supporting | 0 | optimism | unit-227626 | 6 deployments: optimism `0xc181ed...00a2b0`; gnosis `0xc181ed...00a2b0`; polygon `0xc181ed...00a2b0`; base `0xc181ed...00a2b0`; arbitrum `0xc181ed...00a2b0`; avalanche `0xc181ed...00a2b0` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KeeperMulticall3 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-227613 | 7 deployments: optimism `0x37aa9a...3e31dd`; gnosis `0x37aa9a...3e31dd`; polygon `0x37aa9a...3e31dd`; base `0x37aa9a...3e31dd`; base `0x5c97f0...90e798`; arbitrum `0x5c97f0...90e798`; avalanche `0x37aa9a...3e31dd` | ⚠️ Unaudited (bytecode match) |
| ProxyFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-227620 | 6 deployments: optimism `0x731886...25d961`; gnosis `0x731886...25d961`; polygon `0x731886...25d961`; base `0x731886...25d961`; arbitrum `0x731886...25d961`; avalanche `0x731886...25d961` | ⚠️ Unaudited (bytecode match) |
| SidechainClaimZap | adapter | project_anchor | own_supporting | 0 | gnosis | unit-227641 | 3 deployments: gnosis `0x4ea38a...5328e8`; base `0x4ea38a...5328e8`; avalanche `0x6907d1...c2a017` | ⚠️ Unaudited (bytecode match) |
| TokenFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-227623 | 6 deployments: optimism `0x872993...306fe9`; gnosis `0x872993...306fe9`; polygon `0x872993...306fe9`; base `0x872993...306fe9`; arbitrum `0x872993...306fe9`; avalanche `0x872993...306fe9` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (158)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227591 | `0x208024...f64c11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227592 | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51493d...9a37a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a383...b72b73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227598 | `0x81ba03...3fca08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838f4...273146` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227604 | `0xc9e611...6b1ac7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227773 | `0x04798c...98703c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227774 | `0x0d418e...322285` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227775 | `0x1ba3db...67ad0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227776 | `0x2b8933...f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227777 | `0x3743d8...182da7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227778 | `0x51493d...9a37a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227779 | `0x5849b5...e09558` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227780 | `0x5a7390...f22c68` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227781 | `0x76a383...b72b73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227782 | `0x7a7b39...5a73d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227783 | `0x852ad2...7947c6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227784 | `0x919eeb...0efee6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227785 | `0x9838f4...273146` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227786 | `0xae8e14...a8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227787 | `0xbf6a18...2698b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227788 | `0xc1e07a...42abe3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227789 | `0xc24fa5...97b7ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227790 | `0xdfa714...f578ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227791 | `0xe00035...feed73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227792 | `0xe01d92...a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227793 | `0xe4b11a...338224` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227794 | `0xe8a7e8...9d3099` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227795 | `0xee6c82...f708bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227796 | `0xf3ae2e...6aa978` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | goerli | unit-227797 | `0xf97de6...b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227610 | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227611 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227615 | `0x53c090...da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227616 | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227622 | `0x8401b4...62bae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd2e14...4b029e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227628 | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227629 | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227630 | `0xec1c78...580606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227633 | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227637 | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227638 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227642 | `0x53c090...da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227645 | `0x8b2970...618201` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227649 | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f641b...0bacae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0fec3d...0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227673 | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227675 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x421dbf...275482` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227681 | `0x4dce82...5cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ea38a...5328e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227686 | `0x53c090...da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227688 | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6907d1...c2a017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227696 | `0x8b2970...618201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x908c9d...3052bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9802d...25d985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb82434...3e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227705 | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbdcd8...23dc4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227707 | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227653 | `0x252a18...6b3a63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227655 | `0xa1ffac...c858f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227657 | `0xa7cd84...a32794` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227659 | `0xb4c68e...8608df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227661 | `0xbddac3...68c26b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227663 | `0xffa458...0282d5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227802 | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227803 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227809 | `0x5a5094...00b10d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227811 | `0x609d44...11beaa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227812 | `0x60d643...87c84c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227815 | `0x8b2970...618201` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-227821 | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x045125...a0bacd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227712 | `0x0a6bcb...494083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d418e...322285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f0dda...b755fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f641b...0bacae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fec3d...0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227717 | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227718 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b8933...f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f4cdf...38d4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x334df2...22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3743d8...182da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37aa9a...3e31dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x421dbf...275482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dce82...5cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ea38a...5328e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51b6e0...749fe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227722 | `0x53c090...da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227723 | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609d44...11beaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d643...87c84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6907d1...c2a017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227730 | `0x779aa2...2a049b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8401b4...62bae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x852ad2...7947c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b2970...618201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b9da5...1b5eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x908c9d...3052bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e4cbe...db812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9802d...25d985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9952c...58008e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae8e14...a8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb292be...6e0144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb82434...3e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd2e14...4b029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf6a18...2698b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1e07a...42abe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227741 | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbdcd8...23dc4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce66e8...e41146` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227742 | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfa714...f578ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe00035...feed73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe01d92...a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe4b11a...338224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8a7e8...9d3099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea865d...74c1dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227745 | `0xec1c78...580606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee6c82...f708bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf044ee...81d96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3ae2e...6aa978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf97de6...b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227749 | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227751 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227753 | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227754 | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227757 | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227758 | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227760 | `0x8b2970...618201` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227763 | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227766 | `0xb82434...3e8bd3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227769 | `0xcbdcd8...23dc4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-227770 | `0xcc9269...1d3c0e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [facu_spagnuolo_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/facu_spagnuolo_aurabal_vault_audit_report.pdf) | Facu Spagnuolo | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | medium |
| [halborn_aurabal_vault_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/auraBalVault/halborn_aurabal_vault_audit_report.pdf) | Halborn | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [halborn_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/halborn_sidechain_audit_report.pdf) | Halborn | Audit | 2023-06 | stale | Direct | n/a | matched | 10 | 0 | 0 | 10 | n/a |
| [hephyrius-internal-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/hephyrius-internal-report.pdf) | Hephyrius | Audit | n/a | unknown | Direct | contract_name | matched | 3 | 0 | 0 | 18 | high |
| [zellic_sidechain_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/sidechain/zellic_sidechain_audit_report.pdf) | Zellic | Audit | 2023-06 | stale | Direct | contract_name | matched | 6 | 0 | 0 | 30 | high |
| [facu_spagnuolo_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/facu_spagnuolo_aura_upgrade_01_audit_report.pdf) | Facu Spagnuolo | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [hephyrius_aura_upgrade_01_audit_report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/audits/upgrades/hephyrius_aura_upgrade_01_audit_report.pdf) | Hephyrius | Audit | n/a | unknown | Direct | n/a | matched | 1 | 0 | 0 | 9 | n/a |
| [Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Code4rena-Audit-Report-AuraFinance-v1.0.pdf) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 29 | high |
| [Halborn-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/Halborn-Audit-Report-AuraFinance-v1.0.pdf) | Halborn | Audit | 2022-06 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 34 | high |
| [PeckShield-Audit-Report-AuraFinance-v1.0.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/PeckShield-Audit-Report-AuraFinance-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 13 | n/a |
| [Aura_Finance_Migration_Review_Hephyrius.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Aura_Finance_Migration_Review_Hephyrius.pdf) | Hephyrius | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [FacuSpagnuolo-Aura-Booster-migration-report.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/FacuSpagnuolo-Aura-Booster-migration-report.pdf) | FacuSpagnuolo | Audit | 2023-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Halborn-Aura_Finance___Smart_Contract_Audit.pdf](https://github.com/aurafinance/aura-contracts/blob/main/security/audits/migration/Halborn-Aura_Finance___Smart_Contract_Audit.pdf) | Halborn | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 6 | n/a |
| [001-BaseRewardPool-Donate.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/001-BaseRewardPool-Donate.md) | unknown | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [002-Booster-EIP1271.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/002-Booster-EIP1271.md) | unknown | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [003-Assorted-Governance-griefing.md](https://github.com/aurafinance/aura-contracts/blob/main/security/disclosures/003-Assorted-Governance-griefing.md) | unknown | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [README.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/README.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [risks.md](https://github.com/aurafinance/aura-docs/blob/main/aura/security/risks.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FdpPicVneOrKaZPH8PMdj%2Fhalborn_aurabal_vault_audit_report.pdf) | Halborn | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf](https://2520301408-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fr4kLuYPt1EhIEVbkxHD8%2Fuploads%2FDuQMD5ULdRtqravKUwxQ%2FCode4rena-Audit-Report-AuraFinance-v1.0.pdf) | Code4rena | Contest | 2022-07 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 23 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [5958] facu_spagnuolo_aurabal_vault_audit_report.pdf — no match: No explicit scope section; contracts inferred from findings and notes. Date from header.
- [5959] halborn_aurabal_vault_audit_report.pdf — no match: Scope section lists 'compounder/*.sol' as in-scope. Contract names extracted from file paths and code references in findings.
- [5960] halborn_sidechain_audit_report.pdf — matched: No reason recorded
- [5961] hephyrius-internal-report.pdf — matched: Extracted contract names from the report's scope sections and contract listings. No audit date found in the provided text.
- [5962] zellic_sidechain_audit_report.pdf — matched: All contracts listed in the Scope section (page 7) and threat model sections are included. The audit date is from the cover page: June 16, 2023.
- [5963] facu_spagnuolo_aura_upgrade_01_audit_report.pdf — matched: No reason recorded
- [5964] hephyrius_aura_upgrade_01_audit_report.pdf — matched: No reason recorded
- [5966] Code4rena-Audit-Report-AuraFinance-v1.0.pdf — matched: Extracted contract names from the audit report findings and file references. The report states the code is composed of 44 smart contracts; extracted all mentioned contracts and interfaces. Audit date from report header: '2022-07-26'.
- [5967] Halborn-Audit-Report-AuraFinance-v1.0.pdf — matched: All contracts listed in the Scope section (1.4) were extracted. The audit date is the end date of the engagement (June 28th, 2022).
- [5968] PeckShield-Audit-Report-AuraFinance-v1.0.pdf — matched: No reason recorded
- [5969] Aura_Finance_Migration_Review_Hephyrius.pdf — no match: No reason recorded
- [5970] FacuSpagnuolo-Aura-Booster-migration-report.pdf — no match: No reason recorded
- [5971] Halborn-Aura_Finance___Smart_Contract_Audit.pdf — matched: No reason recorded
- [5972] 001-BaseRewardPool-Donate.md — no match: No reason recorded
- [5973] 002-Booster-EIP1271.md — no match: No reason recorded
- [5974] 003-Assorted-Governance-griefing.md — no match: The report is a security finding table, not a full audit report. No scope section or contract list is present. The only contract mentioned is 'BaseRewardPool' but it is explicitly marked as 'Not in scope'.
- [5976] README.md — no match: The document is a security overview page listing multiple audits but does not contain a scope section with specific contract names. It mentions 'AuraBal Compounder contracts', 'Sidechain contracts', and 'Convex Platform lite version contracts' but these are generic descriptions, not specific contract names.
- [5977] risks.md — no match: The provided text is a risk disclaimer, not an audit report. No contracts in scope or audit date were found.
- [15042] spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf — no match: Scope section lists 'compounder/*.sol' as in-scope. Contract names extracted from file paths and code references in findings.
- [15043] spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf — matched: Extracted contract names from findings and file paths mentioned throughout the report. The report does not have a dedicated scope section, but the contracts are clearly part of the audited codebase. Audit date taken from the report header: '2022-07-26'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| facu_spagnuolo_aurabal_vault_audit_report.pdf | AuraBalStrategy | unmatched — not counted | — | mentioned in findings and notes | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | AuraBalStrategyBase | unmatched — not counted | — | mentioned in note N3 | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | AuraBalVault | ambiguous — not counted | AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2024-06-05 16:54:57+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2023-06-14 14:38:17+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2023-07-19 01:21:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | GenericVault | unmatched — not counted | — | mentioned in findings and notes | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | HandlerBase | unmatched — not counted | — | mentioned in note N5 | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | BBUSDHandlerv2 | unmatched — not counted | — | mentioned in notes N3, N6 | no |
| facu_spagnuolo_aurabal_vault_audit_report.pdf | BBUSDHandler | unmatched — not counted | — | mentioned in note N3 | no |
| halborn_aurabal_vault_audit_report.pdf | GenericVault | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | GenericUnionVault | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | AuraBalVault | ambiguous — not counted | AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2024-06-05 16:54:57+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2023-06-14 14:38:17+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2023-07-19 01:21:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| halborn_aurabal_vault_audit_report.pdf | Strategy | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | StrategyBase | unmatched — not counted | — | Code location in findings | no |
| halborn_aurabal_vault_audit_report.pdf | FeeForwarder | unmatched — not counted | — | Code location in findings | no |
| halborn_sidechain_audit_report.pdf | AuraBalOFT | own contract | AuraBalOFT (alternative) `0x223738...c754ce` — deployed 2023-07-19 01:21:13+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738...c754ce` — deployed 2024-06-05 16:50:27+03 — liveness: live (code_present_context)<br>AuraBalOFT (selected) `0x223738...c754ce` — deployed 2023-06-14 14:38:04+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 48d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | AuraBalProxyOFT | own contract | AuraBalProxyOFT (selected) `0xdf9080...3a7c68` — deployed 2023-06-14 14:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | AuraOFT | own contract | AuraOFT (selected) `0x150970...be213b` — deployed 2023-06-14 14:31:05+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-10-16 15:40:51+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-08-04 01:25:15+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-07-19 01:07:23+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-06-30 18:15:57+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | AuraProxyOFT | own contract | AuraProxyOFT (selected) `0xb401f0...c1ffff` — deployed 2023-06-14 14:19:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | BaseRewardPool4626 | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | BoosterLite | own contract | BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-07-19 01:07:55+03 — liveness: live (code_present_context)<br>BoosterLite (selected) `0x98ef32...a30184` — deployed 2023-06-14 14:31:18+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-08-04 01:25:50+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-06-30 18:16:17+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-10-16 15:41:11+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | BridgeDelegateReceiver | own contract | BridgeDelegateReceiver (alternative) `0x80b111...98ab8d` — deployed 2024-03-27 13:09:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xac962a...08daa6` — deployed 2023-08-03 16:56:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xbcf3b1...108c48` — deployed 2023-11-16 15:32:35+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x60421f...b055f7` — deployed 2023-06-28 18:37:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (selected) `0x397a2d...e80cd7` — deployed 2023-06-14 14:27:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x7eb87c...9c2b4c` — deployed 2023-10-16 15:14:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 27d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | BridgeDelegateSender | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | Create2Factory | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | CrossChainConfig | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | CrossChainConfigMessages | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | GnosisBridgeSender | own contract | GnosisBridgeSender (selected) `0x908c9d...3052bc` — deployed 2023-08-03 16:42:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | L1Coordinator | own contract | L1Coordinator (selected) `0xaa54f3...2a3811` — deployed 2023-06-14 14:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | L2Coordinator | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PausableOFT | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PausableProxyOFT | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PauseGuardian | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | PoolManagerLite | own contract | PoolManagerLite (selected) `0xf24074...a6ca71` — deployed 2023-06-14 14:31:56+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-06-30 18:17:25+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-10-16 15:42:29+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-08-04 01:28:00+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-07-19 01:09:09+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| halborn_sidechain_audit_report.pdf | SimpleBridgeDelegateSender | unmatched — not counted | — | — | no |
| halborn_sidechain_audit_report.pdf | VoterProxyLite | own contract | VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-10-16 15:40:37+03 — liveness: live (code_present_context)<br>VoterProxyLite (selected) `0xc181ed...00a2b0` — deployed 2023-06-14 14:30:59+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-08-04 01:24:55+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-07-19 00:53:49+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-06-30 18:15:47+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 13d from audit; next candidate 29d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | VoterProxyLite | ambiguous — not counted | VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-10-16 15:40:37+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-06-14 14:30:59+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-08-04 01:24:55+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-07-19 00:53:49+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-06-30 18:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | PoolManagerLite | ambiguous — not counted | PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-06-14 14:31:56+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-06-30 18:17:25+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-10-16 15:42:29+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-08-04 01:28:00+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-07-19 01:09:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | BoosterOwnerLite | ambiguous — not counted | BoosterOwnerLite (alternative) `0xf044ee...81d96f` — deployed 2023-06-30 18:17:35+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x8b9da5...1b5eee` — deployed 2023-07-19 01:09:19+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0xa9802d...25d985` — deployed 2023-08-04 01:28:20+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x3af95b...1a1b66` — deployed 2023-06-14 14:32:03+03 — liveness: live (current_address_book_code)<br>BoosterOwnerLite (alternative) `0x0f0dda...b755fc` — deployed 2023-10-16 15:42:43+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xa7cd84...a32794` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | BoosterLite | ambiguous — not counted | BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-07-19 01:07:55+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-06-14 14:31:18+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-08-04 01:25:50+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-06-30 18:16:17+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-10-16 15:41:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | PauseGuardian | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | CrossChainConfig | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | CrossChainMessages | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | PausableOFT | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | AuraOFT | ambiguous — not counted | AuraOFT (alternative) `0x150970...be213b` — deployed 2023-06-14 14:31:05+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-10-16 15:40:51+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-08-04 01:25:15+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-07-19 01:07:23+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-06-30 18:15:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | PausableProxyOFT | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | AuraProxyOFT | own contract | AuraProxyOFT (selected) `0xb401f0...c1ffff` — deployed 2023-06-14 14:19:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | AuraBalOFT | ambiguous — not counted | AuraBalOFT (alternative) `0x223738...c754ce` — deployed 2023-07-19 01:21:13+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738...c754ce` — deployed 2024-06-05 16:50:27+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738...c754ce` — deployed 2023-06-14 14:38:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| hephyrius-internal-report.pdf | AuraBalProxyOFT | own contract | AuraBalProxyOFT (selected) `0xdf9080...3a7c68` — deployed 2023-06-14 14:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | L2Coordinator | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | L1Coordinator | own contract | L1Coordinator (selected) `0xaa54f3...2a3811` — deployed 2023-06-14 14:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius-internal-report.pdf | Bridge Delegate Receiver | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Bridge Delegate Sender | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Gnosis Bridge Delegate | unmatched — not counted | — | listed in scope | no |
| hephyrius-internal-report.pdf | Arbitrum Bridge Delegate | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | AuraBalProxyOFT | own contract | AuraBalProxyOFT (selected) `0xdf9080...3a7c68` — deployed 2023-06-14 14:22:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | AuraBalRewardPool | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | AuraOFT | ambiguous — not counted | AuraOFT (alternative) `0x150970...be213b` — deployed 2023-06-14 14:31:05+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-10-16 15:40:51+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-08-04 01:25:15+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-07-19 01:07:23+03 — liveness: live (code_present_context)<br>AuraOFT (alternative) `0x150970...be213b` — deployed 2023-06-30 18:15:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | AuraVestedEscrow | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | BoosterLite | ambiguous — not counted | BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-07-19 01:07:55+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-06-14 14:31:18+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-08-04 01:25:50+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-06-30 18:16:17+03 — liveness: live (code_present_context)<br>BoosterLite (alternative) `0x98ef32...a30184` — deployed 2023-10-16 15:41:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | L1Coordinator | own contract | L1Coordinator (selected) `0xaa54f3...2a3811` — deployed 2023-06-14 14:19:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | PausableOFT | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | PausableProxyOFT | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | PoolManagerLite | ambiguous — not counted | PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-06-14 14:31:56+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-06-30 18:17:25+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-10-16 15:42:29+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-08-04 01:28:00+03 — liveness: live (code_present_context)<br>PoolManagerLite (alternative) `0xf24074...a6ca71` — deployed 2023-07-19 01:09:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | listed in scope and threat model | no |
| zellic_sidechain_audit_report.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | BoosterOwnerLite | ambiguous — not counted | BoosterOwnerLite (alternative) `0xf044ee...81d96f` — deployed 2023-06-30 18:17:35+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x8b9da5...1b5eee` — deployed 2023-07-19 01:09:19+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0xa9802d...25d985` — deployed 2023-08-04 01:28:20+03 — liveness: live (code_present_context)<br>BoosterOwnerLite (alternative) `0x3af95b...1a1b66` — deployed 2023-06-14 14:32:03+03 — liveness: live (current_address_book_code)<br>BoosterOwnerLite (alternative) `0x0f0dda...b755fc` — deployed 2023-10-16 15:42:43+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0xa7cd84...a32794` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | VoterProxyLite | ambiguous — not counted | VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-10-16 15:40:37+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-06-14 14:30:59+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-08-04 01:24:55+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-07-19 00:53:49+03 — liveness: live (code_present_context)<br>VoterProxyLite (alternative) `0xc181ed...00a2b0` — deployed 2023-06-30 18:15:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | GenericVault | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | SimpleStrategy | own contract | SimpleStrategy (selected) `0x4b5d28...4f41cb` — deployed 2023-06-14 14:38:23+03 — liveness: live (code_present_context)<br>SimpleStrategy (alternative) `0x4b5d28...4f41cb` — deployed 2024-06-05 16:55:07+03 — liveness: live (code_present_context)<br>SimpleStrategy (alternative) `0x4b5d28...4f41cb` — deployed 2023-07-19 01:21:45+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 2d from audit; next candidate 33d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | LzLib | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | LzApp | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | NonblockingLzApp | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | LZEndpointMock | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | OFT | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | OFTCore | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | ProxyOFT | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | AuraBalOFT | own contract | AuraBalOFT (alternative) `0x223738...c754ce` — deployed 2023-07-19 01:21:13+03 — liveness: live (code_present_context)<br>AuraBalOFT (alternative) `0x223738...c754ce` — deployed 2024-06-05 16:50:27+03 — liveness: live (code_present_context)<br>AuraBalOFT (selected) `0x223738...c754ce` — deployed 2023-06-14 14:38:04+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2023-06-14 was 2d from audit; next candidate 33d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | AuraProxyOFT | own contract | AuraProxyOFT (selected) `0xb401f0...c1ffff` — deployed 2023-06-14 14:19:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | Create2Factory | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | CrossChainConfig | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | CrossChainMessages | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | L2Coordinator | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | PauseGuardian | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | BridgeDelegateReceiver | ambiguous — not counted | BridgeDelegateReceiver (alternative) `0x80b111...98ab8d` — deployed 2024-03-27 13:09:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xac962a...08daa6` — deployed 2023-08-03 16:56:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0xbcf3b1...108c48` — deployed 2023-11-16 15:32:35+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x60421f...b055f7` — deployed 2023-06-28 18:37:23+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x397a2d...e80cd7` — deployed 2023-06-14 14:27:11+03 — liveness: live (current_address_book_code)<br>BridgeDelegateReceiver (alternative) `0x7eb87c...9c2b4c` — deployed 2023-10-16 15:14:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| zellic_sidechain_audit_report.pdf | BridgeDelegateSender | unmatched — not counted | — | listed in scope | no |
| zellic_sidechain_audit_report.pdf | GnosisBridgeSender | own contract | GnosisBridgeSender (selected) `0x908c9d...3052bc` — deployed 2023-08-03 16:42:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| zellic_sidechain_audit_report.pdf | SimpleBridgeDelegateSender | unmatched — not counted | — | listed in scope | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | Booster | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | BoosterOwner | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | BoosterOwnerSecondary | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa458...0282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | ExtraRewardsStash | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | PoolManager | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | PoolManagerProxy | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | PoolManagerSecondayProxy | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | StashToken | unmatched — not counted | — | — | no |
| facu_spagnuolo_aura_upgrade_01_audit_report.pdf | VoterProxy | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | Booster | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | BoosterOwner | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | BoosterOwnerSecondary | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa458...0282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hephyrius_aura_upgrade_01_audit_report.pdf | PoolManagerSecondary | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | PoolManagerV3 | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | PoolManagerV4 | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | StashToken | unmatched — not counted | — | — | no |
| hephyrius_aura_upgrade_01_audit_report.pdf | VoterProxy | unmatched — not counted | — | — | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker | own contract | AuraLocker (selected) `0x9e1f41...80922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626 | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraClaimZap | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ConvexMasterChef | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BalLiquidityProvider | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMerkleDrop | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraPenaltyForwarder | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ClaimFeesHelper | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Aura | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Interfaces | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | RewardFactory | ambiguous — not counted | UnnamedContract (alternative) `0x252a18...6b3a63` — liveness: live (current_address_book_code)<br>RewardFactory (alternative) `0x0f641b...0bacae` — deployed 2023-08-04 01:26:30+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xda2e6b...16e7db` — deployed 2023-06-14 14:31:26+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x334df2...22f6b0` — deployed 2023-10-16 15:41:35+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xb292be...6e0144` — deployed 2023-07-19 01:08:23+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x2f4cdf...38d4f7` — deployed 2023-06-30 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | TokenFactory | ambiguous — not counted | TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-08-04 01:26:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-06-14 14:31:32+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-07-19 01:08:33+03 — liveness: live (current_address_book_code)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-06-30 18:16:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-10-16 15:41:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | DepositToken | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa458...0282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Booster | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerSecondaryProxy | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BoringMath | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IGaugeController | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IProxyFactory | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IRewardHook | unmatched — not counted | — | mentioned in findings | no |
| Code4rena-Audit-Report-AuraFinance-v1.0.pdf | IRewarder | unmatched — not counted | — | mentioned in findings | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | Aura | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraClaimZap | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker | own contract | AuraLocker (selected) `0x9e1f41...80922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraMath | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraMerkleDrop | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraPenaltyForwarder | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BalInvestor | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BalLiquidityProvider | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | RewardPoolDepositWrapper | ambiguous — not counted | UnnamedContract (alternative) `0xbddac3...68c26b` — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0xa9952c...58008e` — deployed 2023-10-16 16:40:15+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0x0fec3d...0b7f76` — deployed 2023-08-04 12:01:25+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0xce66e8...e41146` — deployed 2023-07-19 01:34:27+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0x51b6e0...749fe1` — deployed 2023-07-10 18:29:47+03 — liveness: live (current_address_book_code)<br>RewardPoolDepositWrapper (alternative) `0x6b02fe...6916be` — deployed 2023-06-15 18:31:52+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ProxyFactory | ambiguous — not counted | ProxyFactory (alternative) `0x731886...25d961` — deployed 2023-08-04 01:27:05+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886...25d961` — deployed 2023-07-19 01:08:43+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886...25d961` — deployed 2023-10-16 15:41:55+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886...25d961` — deployed 2023-06-30 18:16:55+03 — liveness: live (current_address_book_code)<br>ProxyFactory (alternative) `0x731886...25d961` — deployed 2023-06-14 14:31:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | DepositToken | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa458...0282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | RewardFactory | ambiguous — not counted | UnnamedContract (alternative) `0x252a18...6b3a63` — liveness: live (current_address_book_code)<br>RewardFactory (alternative) `0x0f641b...0bacae` — deployed 2023-08-04 01:26:30+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xda2e6b...16e7db` — deployed 2023-06-14 14:31:26+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x334df2...22f6b0` — deployed 2023-10-16 15:41:35+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xb292be...6e0144` — deployed 2023-07-19 01:08:23+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x2f4cdf...38d4f7` — deployed 2023-06-30 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | cCrv | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626 | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | StashFactoryV2 | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerSecondaryProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | Interfaces | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | TokenFactory | ambiguous — not counted | TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-08-04 01:26:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-06-14 14:31:32+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-07-19 01:08:33+03 — liveness: live (current_address_book_code)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-06-30 18:16:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-10-16 15:41:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerProxy | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | Booster | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ConvexMasterChef | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | BoosterOwner | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | RewardHook | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerV3 | unmatched — not counted | — | listed in scope | no |
| Halborn-Audit-Report-AuraFinance-v1.0.pdf | ArbitartorVault | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | Aura.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker.sol | own contract | AuraLocker (selected) `0x9e1f41...80922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraMath.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | BalInvestor.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | Booster.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper.sol | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy.sol | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | AuraClaimZap | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | Booster | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | CvxCrvRewards | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | PoolMigrator | unmatched — not counted | — | — | no |
| Aura_Finance_Migration_Review_Hephyrius.pdf | VoterProxy | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | AuraClaimZap | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | Booster | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | BoosterOwner | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | CvxCrvRewards | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | PoolManager | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | PoolMigrator | unmatched — not counted | — | — | no |
| FacuSpagnuolo-Aura-Booster-migration-report.pdf | VoterProxy | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | AuraClaimZap | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | BaseRewardPool | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | Booster | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa458...0282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | GaugeMigrator | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | MasterChefRewardHook | unmatched — not counted | — | — | no |
| Halborn-Aura_Finance___Smart_Contract_Audit.pdf | PoolMigrator | unmatched — not counted | — | — | no |
| 001-BaseRewardPool-Donate.md | BaseRewardPool | unmatched — not counted | — | — | no |
| 001-BaseRewardPool-Donate.md | Booster | unmatched — not counted | — | — | no |
| 002-Booster-EIP1271.md | Booster | unmatched — not counted | — | — | no |
| 002-Booster-EIP1271.md | VoterProxy | unmatched — not counted | — | — | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | GenericVault | unmatched — not counted | — | Code location in findings (HAL-01, HAL-02, HAL-07, HAL-08) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | GenericUnionVault | unmatched — not counted | — | Code location in findings (HAL-08) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | AuraBalVault | ambiguous — not counted | AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2024-06-05 16:54:57+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2023-06-14 14:38:17+03 — liveness: live (code_present_context)<br>AuraBalVault (alternative) `0x4ea931...bbb0e9` — deployed 2023-07-19 01:21:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | Strategy | unmatched — not counted | — | Code location in findings (HAL-03, HAL-04, HAL-05, HAL-07, HAL-09) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | StrategyBase | unmatched — not counted | — | Code location in findings (HAL-06) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | FeeForwarder | unmatched — not counted | — | Code location in findings (HAL-05) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf | AuraBalStrategy | unmatched — not counted | — | Referenced in AuraBalVault.harvest() code (HAL-03) | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraLocker | own contract | AuraLocker (selected) `0x9e1f41...80922e` — deployed 2024-05-29 15:08:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraBalRewardPool | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraClaimZap | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMerkleDrop | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraMinter | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraPenaltyForwarder | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraStakingProxy | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | AuraVestedEscrow | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BalLiquidityProvider | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ClaimFeesHelper | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardsDistributor | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositorWrapper | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | CrvDepositor | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool4626 | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | BaseRewardPool | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VirtualBalanceRewardPool | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | RewardFactory | ambiguous — not counted | UnnamedContract (alternative) `0x252a18...6b3a63` — liveness: live (current_address_book_code)<br>RewardFactory (alternative) `0x0f641b...0bacae` — deployed 2023-08-04 01:26:30+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xda2e6b...16e7db` — deployed 2023-06-14 14:31:26+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x334df2...22f6b0` — deployed 2023-10-16 15:41:35+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0xb292be...6e0144` — deployed 2023-07-19 01:08:23+03 — liveness: live (code_present_context)<br>RewardFactory (alternative) `0x2f4cdf...38d4f7` — deployed 2023-06-30 18:16:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | TokenFactory | ambiguous — not counted | TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-08-04 01:26:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-06-14 14:31:32+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-07-19 01:08:33+03 — liveness: live (current_address_book_code)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-06-30 18:16:45+03 — liveness: live (code_present_context)<br>TokenFactory (alternative) `0x872993...306fe9` — deployed 2023-10-16 15:41:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | PoolManagerSecondaryProxy | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | VoterProxy | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ExtraRewardStashV3 | own contract | UnnamedContract (selected) `0xffa458...0282d5` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Booster | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | DepositToken | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | ConvexMasterChef | unmatched — not counted | — | mentioned in findings | no |
| spaces/r4kLuYPt1EhIEVbkxHD8/uploads/DuQMD5ULdRtqravKUwxQ/Code4rena-Audit-Report-AuraFinance-v1.0.pdf | Aura | unmatched — not counted | — | mentioned in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xde386a...8455bf` | ArbitrumBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4ea931...bbb0e9` | AuraBalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x96d15d...dba9a4` | AuraDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9e4cbe...db812b` | AuraViewHelpersLite | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbd2e14...4b029e` | AuraViewHelpersLite | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf044ee...81d96f` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xa9802d...25d985` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8b9da5...1b5eee` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0f0dda...b755fc` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3af95b...1a1b66` | BoosterOwnerLite | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60421f...b055f7` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7eb87c...9c2b4c` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x80b111...98ab8d` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac962a...08daa6` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbcf3b1...108c48` | BridgeDelegateReceiver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xca85e2...627451` | ChildStashRewardDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x37aa9a...3e31dd` | KeeperMulticall3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x54f2de...27a14d` | L1PoolManagerProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x045125...a0bacd` | OptimismBridgeSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x25e7c5...f4f669` | PolygonBridgeSender | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x2f4cdf...38d4f7` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0f641b...0bacae` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb292be...6e0144` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x334df2...22f6b0` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xda2e6b...16e7db` | RewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0fec3d...0b7f76` | RewardPoolDepositWrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x617963...1fdd47` | SidechainClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x4ea38a...5328e8` | SidechainClaimZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x421dbf...275482` | SidechainView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xea865d...74c1dc` | SidechainView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x872993...306fe9` | TokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x05589c...9079c2` | VirtualRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 158 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 29 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 23 ambiguous, 196 unmatched
- Matched-own operational status: 29 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7, low=3, medium=1
- Match method counts: temporal_name=8, unique_name=21

Zero-match audit list:

- [5958] facu_spagnuolo_aurabal_vault_audit_report.pdf
- [5959] halborn_aurabal_vault_audit_report.pdf
- [5969] Aura_Finance_Migration_Review_Hephyrius.pdf
- [5970] FacuSpagnuolo-Aura-Booster-migration-report.pdf
- [5972] 001-BaseRewardPool-Donate.md
- [5973] 002-Booster-EIP1271.md
- [5974] 003-Assorted-Governance-griefing.md
- [5976] README.md
- [5977] risks.md
- [15042] spaces/r4kLuYPt1EhIEVbkxHD8/uploads/dpPicVneOrKaZPH8PMdj/halborn_aurabal_vault_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
