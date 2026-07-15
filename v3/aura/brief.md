# Agentic Audit Brief: Aura

## Export Authority

- Production state: **published scope**
- Raw selected rows: 29 across 10 audit(s)
- Eligible audit results: 20 (10 matched; 10 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Aura (`aura`)
- Website: [https://aura.finance](https://aura.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, ethereum, fraxtal, gnosis, goerli, optimism, polygon, polygon-zkevm
- Contract surface: 520 unique implementations (1142 raw deployments)
- Coverage basis: 12/47 confirmed own live verified implementations (25.5%); conservative 25.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,953,397.27
- On-chain TVL (included contracts): $74,688,480.97
- TVL by chain: Ethereum $74,682,483.95 | Optimism $3,942.34 | Arbitrum $2,054.68 | Base $0.00 | Gnosis $0.00

## Project Description

This brief describes the observed EVM deployment and audit surface for Aura. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 92 contract row(s) across arbitrum, avalanche, base, ethereum, fraxtal, gnosis, goerli, optimism, polygon, polygon-zkevm. Structural roles: 48 core, 43 supporting, 1 unclassified. 27 row(s) use upgradeable patterns.

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

- Logic-topography rows: 92; live-surface rows included: 92 (92 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 158/209 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 12/47 (25.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 106 own, 25 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 389 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 106 of 520 unique; 414 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 12/242
- Verified + Unaudited implementations: 226
- Verified by bytecode match: 8
- Unverified implementations: 278
- Unique implementations: 520
- Raw deployments: 1142
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
| Halborn | Tier 2 | 11 | 4.5% | 2023-12 |
| Zellic | Tier 2 | 6 | 2.5% | 2023-06 |
| Hephyrius | Tier 2 | 3 | 1.2% | n/a |
| Code4rena | Tier 1 | 1 | 0.4% | 2022-07 |
| PeckShield | Tier 2 | 1 | 0.4% | 2022-04 |

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

### ⚠️ Verified + Unaudited (226)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| cvxCrvToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x616e8b...d4608d`; ethereum `0x62b9c7...810aa7` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x00a7ba...c6cad2`; ethereum `0x3fe656...a7587e`; ethereum `0x5e5ea2...96efcc`; ethereum `0xe765d4...7ab806` | ⚠️ Unaudited |
| cvxRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b8...139332` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xba1222...6bf2c8`; fraxtal `0xe42ffa...42e467` | ⚠️ Unaudited |
| cvxFpisToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa28473...427df6` | ⚠️ Unaudited |
| AuraToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x665d01...59cf15`; ethereum `0xc0c293...903dbf` | ⚠️ Unaudited |
| cvxFxsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77...4bdf74` | ⚠️ Unaudited |
| AuraBalVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb78c0d...3b12bc`; ethereum `0xfaa2ed...fcd7a6` | ⚠️ Unaudited |
| BalancerGovernanceToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1000...424e3d` | ⚠️ Unaudited |
| Booster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7818a1...8eee10`; ethereum `0xa57b8d...60b234`; ethereum `0xb314f7...bfe7fd`; ethereum `0xd8bd5c...f28659`; ethereum `0xf403c1...8aae31` | ⚠️ Unaudited |
| AuraBalRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc47162...651c0c` | ⚠️ Unaudited |
| AggregatorBatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xb9d01c...20ab14`; gnosis `0x870f98...23fbc1`; arbitrum `0xb21a27...815c8a`; avalanche `0x136f1e...1778d1` | ⚠️ Unaudited |
| AggregatorRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: optimism `0x84813a...a63617`; gnosis `0xb21a27...815c8a`; arbitrum `0x4b979e...99729c`; avalanche `0x3f1706...38dc10`; avalanche `0x4b979e...99729c` | ⚠️ Unaudited |
| ArbitratorVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d208c...bedc40` | ⚠️ Unaudited |
| ArbitrumBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x713e88...96fbe6`; arbitrum `0xa7e41a...e2815c`; arbitrum `0xabdce1...d6afba` | ⚠️ Unaudited |
| ArbitrumBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-227744 | `0xde386a...8455bf` | ⚠️ Unaudited |
| ArbitrumRootGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1c9932...5e50e7`; ethereum `0xad9013...89a633` | ⚠️ Unaudited |
| AuraArbBalGrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d803f...1f7727` | ⚠️ Unaudited |
| AuraBalProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab07f0...7b6764` | ⚠️ Unaudited |
| AuraBalRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aa497...0a1f9c` | ⚠️ Unaudited |
| AuraBalStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa3fcaf...a7e10e`; ethereum `0xac98c9...a9d0a2` | ⚠️ Unaudited |
| AuraBalStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7372ec...bd2b66`; ethereum `0xca6481...9a2160` | ⚠️ Unaudited |
| AuraBalVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227683 | 3 deployments: polygon `0x4ea931...bbb0e9`; base `0x4ea931...bbb0e9`; arbitrum `0x4ea931...bbb0e9` | ⚠️ Unaudited |
| AuraClaimZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2e3077...9e92a9`; ethereum `0x4e7d44...f48d3a`; ethereum `0x623b83...917ab2` | ⚠️ Unaudited |
| AuraClaimZapV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1bc4d5...2ae347`; ethereum `0x3eb33f...a0215f`; ethereum `0x5b2364...1ad7f4`; ethereum `0xf8d544...ef8307` | ⚠️ Unaudited |
| AuraDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-227599 | `0x96d15d...dba9a4` | ⚠️ Unaudited |
| AuraLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa73f...9bbcac` | ⚠️ Unaudited |
| AuraLockerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x568f3d...c0dd73`; ethereum `0xbcfd07...55009a`; ethereum `0xd539ed...6d8f1a` | ⚠️ Unaudited |
| AuraMerkleDrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1a661c...80a8fb`; ethereum `0x45eb1a...287724` | ⚠️ Unaudited |
| AuraMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x744be6...855f52` | ⚠️ Unaudited |
| AuraMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a5cc...e13707` | ⚠️ Unaudited |
| AuraOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x150970...be213b` | ⚠️ Unaudited |
| AuraPenaltyForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x404356...c20d1e` | ⚠️ Unaudited |
| AuraProxyOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9063c0...e180ec` | ⚠️ Unaudited |
| AuraRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x559f5f...a926d6`; ethereum `0x928966...a5120c`; ethereum `0xa1b742...4952a3` | ⚠️ Unaudited |
| AuraStakingProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e863...f89c6c` | ⚠️ Unaudited |
| AuraVestedEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x243466...53fac6`; ethereum `0x43b170...6694fa`; ethereum `0x45025e...1538f5`; ethereum `0x5bd3fc...2d836a`; ethereum `0x87e1ca...056806`; ethereum `0xa6bbf6...5eb358`; ethereum `0xb75044...d16087`; ethereum `0xefc9f1...66ac3f`; ethereum `0xfd7217...30d422` | ⚠️ Unaudited |
| AuraViewHelpers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129bbd...40c229` | ⚠️ Unaudited |
| AuraViewHelpersLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: optimism `0xbddac3...68c26b`; gnosis `0x8f67bb...f13552`; fraxtal `0xbd2e14...4b029e`; base `0xce66e8...e41146`; arbitrum `0xb4e5fd...58cb4e` | ⚠️ Unaudited |
| AuraViewHelpersLite | unknown | project_anchor | own_supporting | 0 | polygon | unit-227702 | `0x9e4cbe...db812b` | ⚠️ Unaudited |
| AuraViewHelpersLite | periphery | project_anchor | own_supporting | 0 | base | unit-227819 | `0xbd2e14...4b029e` | ⚠️ Unaudited |
| Authorizer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0xa331d8...3f3ae6`; optimism `0x5cf492...62a4b9`; gnosis `0x7ba29f...3121cc`; polygon `0x681714...ff4bc0`; fraxtal `0xe39b5e...f549d5`; base `0x809b79...93213a`; arbitrum `0xe38816...0be5f7` | ⚠️ Unaudited |
| AuthorizerAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: ethereum `0x8f42ad...9add75`; fraxtal `0x36cac2...b5a17c`; base `0x6cad2e...509bc7` | ⚠️ Unaudited |
| AuthorizerAdaptorEntrypoint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: ethereum `0xf5decd...43a9ea`; optimism `0x36cac2...b5a17c`; gnosis `0x36cac2...b5a17c`; polygon `0x36cac2...b5a17c`; fraxtal `0xb9f8ab...fd7b88`; base `0x9129e8...86b8dc`; arbitrum `0x36cac2...b5a17c` | ⚠️ Unaudited |
| AuthorizerWithAdaptorValidation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x681714...ff4bc0`; base `0xa69e0c...7e8eee` | ⚠️ Unaudited |
| BAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dbad7...2113cd` | ⚠️ Unaudited |
| BalLiquidityProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7429a...70e32c` | ⚠️ Unaudited |
| BALTokenHolderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb848f5...4f2158` | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 12 deployments: ethereum `0x41b953...41b7ac`; ethereum `0xd02992...58d1f9`; ethereum `0xd966d7...f0b419`; optimism `0x96484f...f13b6d`; gnosis `0x170206...68492d`; polygon `0x268e2e...d9af42`; fraxtal `0x662112...f2c1b8`; base `0x82416c...a382c4`; base `0xaf779e...c80632`; base `0xdf9b5b...3be025`; arbitrum `0x96484f...f13b6d`; avalanche `0x36cac2...b5a17c` | ⚠️ Unaudited |
| BatchRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: optimism `0xad8905...f8a85e`; gnosis `0xe2fa4e...9e285b`; arbitrum `0xad8905...f8a85e`; avalanche `0xa523f4...4612dc`; avalanche `0xc9b360...d5988f` | ⚠️ Unaudited |
| Boost Delegation V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: optimism `0x681714...ff4bc0`; gnosis `0x5dbad7...2113cd`; polygon `0xd961e3...15e970`; arbitrum `0x6b5da7...399e2e`; avalanche `0xe39b5e...f549d5` | ⚠️ Unaudited |
| BoosterHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0538ad...a7270c`; ethereum `0x26f470...f6763d`; ethereum `0x82bbbc...3d0bd0`; ethereum `0xc44a3c...c5c391` | ⚠️ Unaudited |
| BoosterLite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x98ef32...a30184` | ⚠️ Unaudited |
| BoosterOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x228a14...989f04`; ethereum `0xb927ed...3caced`; ethereum `0xfa838a...54ec34` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | optimism | unit-227631 | `0xf044ee...81d96f` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-227648 | `0xa9802d...25d985` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | polygon | unit-227698 | `0x8b9da5...1b5eee` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x04798c...98703c` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | base | unit-227799 | `0x0f0dda...b755fc` | ⚠️ Unaudited |
| BoosterOwnerLite | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-227719 | `0x3af95b...1a1b66` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x0ab84c...0ffa8e`; ethereum `0x430113...3f36f6`; ethereum `0x699264...af8ec4`; ethereum `0x73b4ce...63c909`; ethereum `0x98b6dc...fcaece`; ethereum `0xb6d84d...5ccc11`; ethereum `0xb8ca2a...d75dad` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227595 | `0x60421f...b055f7` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227596 | `0x7eb87c...9c2b4c` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227597 | `0x80b111...98ab8d` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227601 | `0xac962a...08daa6` | ⚠️ Unaudited |
| BridgeDelegateReceiver | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227603 | `0xbcf3b1...108c48` | ⚠️ Unaudited |
| BufferRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: optimism `0x311334...358615`; gnosis `0x86e67e...e7bc2b`; arbitrum `0x311334...358615`; avalanche `0x22625e...86b017`; avalanche `0x681714...ff4bc0` | ⚠️ Unaudited |
| CanonicalView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4990...ac0b57` | ⚠️ Unaudited |
| ChefForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x57d23f...b622e9`; ethereum `0x725358...a0ccf8` | ⚠️ Unaudited |
| Child Liquidity Gauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: fraxtal `0x4fb471...66c968`; base `0x59562f...c3324f`; base `0x9f7e65...b37013`; avalanche `0x4132f7...e6e6c8` | ⚠️ Unaudited |
| ChildChainGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: optimism `0xa523f4...4612dc`; gnosis `0x83e443...668cb8`; polygon `0x22625e...86b017`; fraxtal `0xc3ccac...a1bb68`; base `0x2498a2...29ba95`; base `0xb1a4fe...d9021f`; arbitrum `0x681714...ff4bc0`; avalanche `0xf23b4d...264843` | ⚠️ Unaudited |
| ChildGaugeVoteRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: optimism `0xc4ef94...38845d`; gnosis `0xafac0e...2b016c`; polygon `0x3eb33f...a0215f`; base `0xb4c68e...8608df`; arbitrum `0xee19ea...e238a6` | ⚠️ Unaudited |
| ChildStashRewardDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: optimism `0x7372ec...bd2b66`; gnosis `0x1bec8f...b482c0`; polygon `0x7e702e...50f265`; base `0xeccd03...62c67c`; arbitrum `0xeeda9b...af9701` | ⚠️ Unaudited |
| ChildStashRewardDistro | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227651 | `0xca85e2...627451` | ⚠️ Unaudited |
| CircuitBreakerLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: optimism `0xe42ffa...42e467`; polygon `0x956cca...3d9288`; fraxtal `0x7ba29f...3121cc`; base `0xef454a...865425`; arbitrum `0xe42ffa...42e467` | ⚠️ Unaudited |
| ClaimFeesHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x640397...cb28d8`; ethereum `0x999dbc...d0f56e`; ethereum `0xaf824c...41c200` | ⚠️ Unaudited |
| ClaimSignatureRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 19 deployments: optimism `0x56c8d8...864aeb`; optimism `0xc86ef8...be6100`; optimism `0xea6920...b8a687`; gnosis `0x90e065...827f2a`; gnosis `0xa12da7...98ce35`; gnosis `0xd5584b...dcce68`; polygon `0x201efd...2a86cc`; polygon `0x4cb42f...a4ac4d`; polygon `0x7c1b7a...c78275`; fraxtal `0x311334...358615`; fraxtal `0x8e3fea...47dd52`; fraxtal `0xad8905...f8a85e`; arbitrum `0x23f387...b98ce4`; arbitrum `0x2b432b...47f290`; arbitrum `0x78ad1e...2a5417`; avalanche `0x45fb5a...972373`; avalanche `0x90bd26...c93694`; avalanche `0xdaa273...9b16d2`; avalanche `0xfd2142...f3128f` | ⚠️ Unaudited |
| ClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb...cf2516` | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 19 deployments: ethereum `0xdba127...5c6e01`; ethereum `0xdc6d62...88837c`; ethereum `0xf9ac7b...6f875f`; optimism `0x043a2d...625412`; optimism `0x4bdcc2...0eada7`; optimism `0x85a80a...853062`; gnosis `0x47b489...87b020`; gnosis `0x4bdcc2...0eada7`; gnosis `0x76578e...cda3a6`; polygon `0x85a80a...853062`; polygon `0xe2fa4e...9e285b`; polygon `0xeaedc3...aacf2e`; fraxtal `0x4bdcc2...0eada7`; base `0x8df317...579b88`; arbitrum `0x4bdcc2...0eada7`; arbitrum `0x85a80a...853062`; arbitrum `0xa89204...943ef1`; avalanche `0xb9f8ab...fd7b88`; avalanche `0xe42ffa...42e467` | ⚠️ Unaudited |
| CompositeLiquidityRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: optimism `0xc9b360...d5988f`; gnosis `0x6ead84...b93938`; gnosis `0xc1a645...3227f0`; arbitrum `0x1311fb...5cc4d1`; arbitrum `0xc1a645...3227f0`; avalanche `0x0c8f71...5dbb98`; avalanche `0x7a2535...fe8f05`; avalanche `0x96484f...f13b6d` | ⚠️ Unaudited |
| ConstantPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: optimism `0x4eff2d...ff4cb5`; gnosis `0xa0de07...b7c883`; arbitrum `0x312600...70d431`; avalanche `0xd22eec...85d484` | ⚠️ Unaudited |
| CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 13 deployments: optimism `0xf4743d...7241d7`; gnosis `0x0e800d...92b106`; gnosis `0x254f3a...5f83b0`; gnosis `0x309abc...138657`; gnosis `0x397bc4...69a1c7`; gnosis `0xae563e...758ea2`; gnosis `0xd22eec...85d484`; gnosis `0xfc0053...3d9cad`; arbitrum `0x774cb6...17eb94`; arbitrum `0x891ec9...017e0d`; arbitrum `0xbc169a...c96b77`; arbitrum `0xf39ca6...ab9015`; avalanche `0x9179c0...0e7b45` | ⚠️ Unaudited |
| Create2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xac98c9...a9d0a2`; base `0xc9307d...ff0967` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x801459...dc86ae`; ethereum `0xead792...d1b827` | ⚠️ Unaudited |
| CrvDepositorWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68655a...5d4123` | ⚠️ Unaudited |
| CrvDepositorWrapperForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e3e24...760b1a` | ⚠️ Unaudited |
| CrvDepositorWrapperForwarderV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d6fc2...12ef8b` | ⚠️ Unaudited |
| CrvDepositorWrapperSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2a2e...f8682f` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f...dbe434` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2f...d1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db...6bc483` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1...37e31a` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18140...94af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a193...2db86e` | ⚠️ Unaudited |
| DistributionScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd976...d66e3c` | ⚠️ Unaudited |
| DoubleEntrypointFixRelayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca96c4...da73c1` | ⚠️ Unaudited |
| EclpLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xc00ff7...e5426d`; gnosis `0x9dcf4e...e1691d`; arbitrum `0xd9e91f...e6479e`; avalanche `0x1780e8...d943ab` | ⚠️ Unaudited |
| ERC4626CowSwapFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: optimism `0x201efd...2a86cc`; optimism `0x7c1b7a...c78275`; gnosis `0x5915de...e2f941`; gnosis `0x7d92fc...7fdafa`; arbitrum `0x1cd776...b1d608`; arbitrum `0xd53f5d...102d83`; avalanche `0x0b1120...e63911`; avalanche `0x5c6fb4...bd9fdd` | ⚠️ Unaudited |
| ERC4626LinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: gnosis `0x4132f7...e6e6c8`; base `0x161f40...028846` | ⚠️ Unaudited |
| ExternalWeightedMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: fraxtal `0xa89204...943ef1`; base `0x7920bf...c50cfd` | ⚠️ Unaudited |
| ExtraRewardsDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3739b...fbd308` | ⚠️ Unaudited |
| ExtraRewardStashModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48e529...07ce81` | ⚠️ Unaudited |
| ExtraRewardStashV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x37c3eb...915f98`; ethereum `0x647596...59b7ef`; ethereum `0xf9c0f3...175742`; fraxtal `0x7a7b39...5a73d1` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43024...1410e9` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a527d...a0d769` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267439...5a61c9` | ⚠️ Unaudited |
| FeeForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe14360...a38fe1` | ⚠️ Unaudited |
| FeeScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a6527...6718b4` | ⚠️ Unaudited |
| FixedPriceLBPoolFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: gnosis `0xd9e91f...e6479e`; arbitrum `0x7f246e...b26e0d` | ⚠️ Unaudited |
| ForwarderHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7663fd...9fcca1` | ⚠️ Unaudited |
| GaugeAdder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2ffb7b...98f26a`; ethereum `0xc33e0f...5cdb5b`; ethereum `0xed5ba5...075fe2` | ⚠️ Unaudited |
| GaugeAdderMigrationCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b57f6...2daea7` | ⚠️ Unaudited |
| GaugeControllerQuerier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e5698...9db97c` | ⚠️ Unaudited |
| GaugeVoteRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x26094f...d72a4e`; ethereum `0x54231c...35189b`; ethereum `0xff209e...f39b23` | ⚠️ Unaudited |
| GaugeVoterModule | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b5ac8...381621` | ⚠️ Unaudited |
| GaugeWorkingBalanceHelper | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x83e443...668cb8`; base `0xa7d524...738d48` | ⚠️ Unaudited |
| GearboxLinearPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9dd326...07bd62` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-227823 | `0xb370eb...93bf46` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | gnosis | unit-227824 (2 proxies) | 2 deployments: gnosis `0x57acb7...7ad478`; gnosis `0xd86ceb...66d68b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | base | n/a | 2 deployments: base `0x57acb7...7ad478`; base `0xd86ceb...66d68b` | ⚠️ Unaudited |
| Gyro2CLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 10 deployments: optimism `0x4b979e...99729c`; optimism `0x99364f...c52c58`; gnosis `0x1c58cc...2dfaf9`; gnosis `0x7fa49d...6f6faa`; arbitrum `0x64b7df...0f5bcf`; arbitrum `0x65a22e...113a9f`; arbitrum `0x6ead84...b93938`; avalanche `0x312600...70d431`; avalanche `0x8e3fea...47dd52`; avalanche `0xe2fa4e...9e285b` | ⚠️ Unaudited |
| GyroECLPPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 9 deployments: optimism `0x22625e...86b017`; optimism `0x53eff5...c479ef`; gnosis `0x1c53af...f7fcc1`; base `0x5f6848...f082e3`; arbitrum `0x268e2e...d9af42`; arbitrum `0xe31715...928479`; avalanche `0x268e2e...d9af42`; avalanche `0x83e443...668cb8`; avalanche `0x86a0e9...8fd12c` | ⚠️ Unaudited |
| Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bca...86e1e7` | ⚠️ Unaudited |
| HHChefClaimBriberModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe25651...dd0f4b` | ⚠️ Unaudited |
| HHRewardsClaimForwarderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb034e7...d80aa0` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5...bc14f7` | ⚠️ Unaudited |
| L1Coordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064d9a...91904b` | ⚠️ Unaudited |
| L1PoolManagerProxy | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-227594 | `0x54f2de...27a14d` | ⚠️ Unaudited |
| LBPMigrationRouter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: gnosis `0xcb3fe6...01c9e7`; gnosis `0xf9309a...9a2c33`; arbitrum `0x99364f...c52c58`; arbitrum `0xfc2986...a95832` | ⚠️ Unaudited |
| LBPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 13 deployments: optimism `0xc1a645...3227f0`; gnosis `0x2faa14...1e4e91`; gnosis `0x53eff5...c479ef`; gnosis `0x6ee18f...e3cb3f`; gnosis `0x89aa28...00ae66`; gnosis `0xa59f16...0b908c`; gnosis `0xa9aeeb...ad1103`; gnosis `0xc19f5f...7a4820`; arbitrum `0x4bb42f...3a42ff`; arbitrum `0x8d217c...1c4818`; arbitrum `0xf9309a...9a2c33`; avalanche `0x25ea7b...ef1925`; avalanche `0x3beb05...429ace` | ⚠️ Unaudited |
| LiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751a0b...1c87de` | ⚠️ Unaudited |
| LiquidityGaugeFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e7bbd...5412ec`; ethereum `0xf1665e...cc5b65` | ⚠️ Unaudited |
| ManagedPoolAddRemoveTokenLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: optimism `0xf24917...b9fd39`; polygon `0xe42ffa...42e467`; fraxtal `0x6b5da7...399e2e`; base `0xb19382...377b75`; arbitrum `0xf24917...b9fd39` | ⚠️ Unaudited |
| ManagedPoolAmmLib | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x043a2d...625412`; base `0x7d2248...d28c9a` | ⚠️ Unaudited |
| ManagedPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: optimism `0x956cca...3d9288`; polygon `0x9ac3e7...fd1f5b`; fraxtal `0x7a2535...fe8f05`; base `0x9a62c9...20134d`; arbitrum `0x956cca...3d9288` | ⚠️ Unaudited |
| MasterChefRewardHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x6a29cf...326815`; ethereum `0x959306...7b6560`; ethereum `0xb5932c...8b84da`; ethereum `0xf8dbcf...05800e` | ⚠️ Unaudited |
| MerkleOrchard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0xdae7e3...b4efca`; polygon `0x4fb471...66c968`; polygon `0x5cf492...62a4b9`; polygon `0x9805dc...764102`; polygon `0x9da189...7e017c`; polygon `0xc3ccac...a1bb68`; polygon `0xe38816...0be5f7`; arbitrum `0x9805dc...764102` | ⚠️ Unaudited |
| MevCaptureHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x3630d2...eeaf5b`; gnosis `0xa1d079...05322c`; arbitrum `0x5b42ec...81c1e9`; avalanche `0x6ead84...b93938` | ⚠️ Unaudited |
| MockERC4626Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4638ab...f1551c` | ⚠️ Unaudited |
| MockGearboxDieselToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb521dd...760ce4` | ⚠️ Unaudited |
| MockGearboxVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x79e435...05ea6c` | ⚠️ Unaudited |
| MockStaticAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: ethereum `0x98c57b...8bd65d`; ethereum `0xba54bb...459a5f`; ethereum `0xf9f5e0...673080`; gnosis `0x5cf492...62a4b9`; base `0x698cae...2bcda4` | ⚠️ Unaudited |
| MockVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 4 deployments: optimism `0xe38816...0be5f7`; gnosis `0x043a2d...625412`; polygon `0x6b5da7...399e2e`; arbitrum `0x4fb471...66c968` | ⚠️ Unaudited |
| NoProtocolFeeLiquidityBootstrappingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: ethereum `0x0f3e0c...57c54e`; gnosis `0x85a80a...853062`; fraxtal `0x956cca...3d9288`; base `0x0c6052...18828f` | ⚠️ Unaudited |
| NullVotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 8 deployments: optimism `0xc3ccac...a1bb68`; gnosis `0x013d43...6b2c92`; polygon `0x1311fb...5cc4d1`; polygon `0x311334...358615`; polygon `0xad8905...f8a85e`; fraxtal `0x5cf492...62a4b9`; base `0x475d18...0fa229`; arbitrum `0x9da189...7e017c` | ⚠️ Unaudited |
| OptimismBridgeSender | unknown | project_anchor | own_supporting | 0 | optimism | unit-227606 | `0x045125...a0bacd` | ⚠️ Unaudited |
| OptimismBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x25d030...9f5e3f`; optimism `0x7e702e...50f265`; optimism `0x8d803f...1f7727`; base `0xc83da6...782549` | ⚠️ Unaudited |
| OptimismRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3083a1...73c5c8`; ethereum `0x866d4b...940a36` | ⚠️ Unaudited |
| PolygonBridgeSender | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-227671 | `0x25e7c5...f4f669` | ⚠️ Unaudited |
| PolygonBridgeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ba971...fdf8e0` | ⚠️ Unaudited |
| PolygonRootGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4c4287...b64e34`; ethereum `0xa98bce...2f8f13` | ⚠️ Unaudited |
| PoolFeeManagerProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0521c...8bd687` | ⚠️ Unaudited |
| PoolManagerLite | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf24074...a6ca71` | ⚠️ Unaudited |
| PoolManagerProxy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x16a04e...94947a`; ethereum `0x2c809e...110f3c`; ethereum `0xdc0a7f...0ee65c` | ⚠️ Unaudited |
| PoolManagerSecondaryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x153dfc...cfc72a`; ethereum `0xa72932...e2de54`; ethereum `0xdc274f...34cf67` | ⚠️ Unaudited |
| PoolManagerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xaa83d1...3102ed`; ethereum `0xb58eb1...562be5`; ethereum `0xf843f6...28de50` | ⚠️ Unaudited |
| PoolManagerV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3a38...b423de` | ⚠️ Unaudited |
| PoolMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x12adde...6f0578`; ethereum `0x7a04e7...67188f` | ⚠️ Unaudited |
| PoolPauseHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x136f1e...1778d1`; optimism `0x16b50f...7ae5db`; gnosis `0x64b7df...0f5bcf`; gnosis `0xdaa273...9b16d2`; arbitrum `0x1780e8...d943ab`; arbitrum `0x9d2917...e3f521`; avalanche `0x30ff09...308d7e`; avalanche `0x891ec9...017e0d` | ⚠️ Unaudited |
| PoolRecoveryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x1b300c...c133db`; ethereum `0xcd59e5...7fb266`; gnosis `0xc3ccac...a1bb68`; fraxtal `0x76578e...cda3a6`; base `0x03f3fb...712054` | ⚠️ Unaudited |
| PoolSwapFeeHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 14 deployments: optimism `0x1cd776...b1d608`; optimism `0x355bd3...53ad95`; optimism `0xbdbadc...7d6ff1`; gnosis `0x03cbcc...dff36f`; gnosis `0x2b432b...47f290`; gnosis `0x56c8d8...864aeb`; polygon `0x18cc3c...94f71b`; fraxtal `0xdb8d75...a1bd3a`; arbitrum `0x5939ab...841fab`; arbitrum `0xb96524...ba40e9`; arbitrum `0xdada7b...c92d49`; avalanche `0x9d2917...e3f521`; avalanche `0xb21a27...815c8a`; avalanche `0xb96524...ba40e9` | ⚠️ Unaudited |
| ProtocolFeeController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: optimism `0xdb8d75...a1bd3a`; base `0x2ff226...4e5363`; avalanche `0x3630d2...eeaf5b`; avalanche `0x9da189...7e017c` | ⚠️ Unaudited |
| ProtocolFeeControllerMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1b6f05...f17e59` | ⚠️ Unaudited |
| ProtocolFeeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: optimism `0x774cb6...17eb94`; optimism `0xcc267d...3a7a4e`; gnosis `0x6eaff7...7872c3`; gnosis `0xcc267d...3a7a4e`; arbitrum `0x30ff09...308d7e`; arbitrum `0xea6920...b8a687`; avalanche `0xa1d079...05322c`; avalanche `0xcf7608...29158c` | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x97207b...b90c4a`; fraxtal `0xf23b4d...264843`; base `0xded7fe...e6695d` | ⚠️ Unaudited |
| ProtocolFeeSweeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: optimism `0x4cb42f...a4ac4d`; optimism `0x86e67e...e7bc2b`; gnosis `0x1bca39...716b1c`; gnosis `0x5939ab...841fab`; arbitrum `0x136f1e...1778d1`; arbitrum `0x3beb05...429ace`; avalanche `0x5b42ec...81c1e9`; avalanche `0x662112...f2c1b8`; avalanche `0xb9d01c...20ab14` | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5ef4c5...bd23c5`; ethereum `0x8c8951...5654a7`; fraxtal `0x85a80a...853062`; base `0xacf05b...996650` | ⚠️ Unaudited |
| ProtocolIdRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: optimism `0x9805dc...764102`; gnosis `0x6b5da7...399e2e`; polygon `0xa523f4...4612dc`; fraxtal `0x9dd5db...3915e1`; base `0x682f0d...e27589`; arbitrum `0x5cf492...62a4b9` | ⚠️ Unaudited |
| RAuraRedemption | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc44d36...e88bc8` | ⚠️ Unaudited |
| ReClammPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x0b1120...e63911`; optimism `0x891ec9...017e0d`; gnosis `0x1780e8...d943ab`; gnosis `0xc86ef8...be6100`; arbitrum `0x355bd3...53ad95`; arbitrum `0xa1d079...05322c`; avalanche `0x1cd776...b1d608`; avalanche `0x309abc...138657` | ⚠️ Unaudited |
| RecoveryModeHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x013d43...6b2c92`; base `0x313a8d...0be053` | ⚠️ Unaudited |
| RefundLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x243347...ed53fd` | ⚠️ Unaudited |
| RewardFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x45aad1...74f356`; ethereum `0xbc8d9c...332dca`; ethereum `0xf6b287...f5a37d`; fraxtal `0xc24fa5...97b7ac` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-227612 | `0x2f4cdf...38d4f7` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-227634 | `0x0f641b...0bacae` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-227703 | `0xb292be...6e0144` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | base | unit-227804 | `0x334df2...22f6b0` | ⚠️ Unaudited |
| RewardFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-227743 | `0xda2e6b...16e7db` | ⚠️ Unaudited |
| RewardPoolDepositWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb188b1...9fec59` | ⚠️ Unaudited |
| RewardPoolDepositWrapper | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-227635 | 5 deployments: optimism `0x51b6e0...749fe1`; gnosis `0x0fec3d...0b7f76`; polygon `0xce66e8...e41146`; base `0xa9952c...58008e`; arbitrum `0x6b02fe...6916be` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: optimism `0xe2fa4e...9e285b`; gnosis `0x4eff2d...ff4cb5`; gnosis `0x84813a...a63617`; arbitrum `0x0f08ee...347b7c`; arbitrum `0xeaedc3...aacf2e`; avalanche `0x4bdcc2...0eada7`; avalanche `0xf39ca6...ab9015` | ⚠️ Unaudited |
| SidechainClaimZap | adapter | project_anchor | own_supporting | 0 | optimism | unit-227619 | 3 deployments: optimism `0x617963...1fdd47`; polygon `0x617963...1fdd47`; arbitrum `0x617963...1fdd47` | ⚠️ Unaudited |
| SidechainClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4ea38a...5328e8` | ⚠️ Unaudited |
| SidechainView | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227640 | `0x421dbf...275482` | ⚠️ Unaudited |
| SidechainView | unknown | project_anchor | own_supporting | 0 | polygon | unit-227708 | `0xea865d...74c1dc` | ⚠️ Unaudited |
| SidechainView | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x1ba3db...67ad0f`; base `0x491c07...41fb6e`; base `0xe14360...a38fe1` | ⚠️ Unaudited |
| SingleRecipientGaugeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94f68b...72d227` | ⚠️ Unaudited |
| SiphonToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x71061c...4be4ad`; ethereum `0xa348a3...080e75`; ethereum `0xbb7a6e...af8e4f`; ethereum `0xc9307d...ff0967`; ethereum `0xfeda1c...6129e8` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x786929...1c826c` | ⚠️ Unaudited |
| SmartWalletCheckerCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26575a...5624ea` | ⚠️ Unaudited |
| SNXRecoveryCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a1ba...d0cb31` | ⚠️ Unaudited |
| StableLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: optimism `0xa0de07...b7c883`; optimism `0xb96524...ba40e9`; optimism `0xc4c494...1cf468`; gnosis `0x4efcd8...0f3228`; gnosis `0xbf9419...29f12c`; gnosis `0xfa80c1...dccba5`; arbitrum `0x816e90...eeb308`; arbitrum `0xa59f16...0b908c`; arbitrum `0xc09244...48834b`; avalanche `0x254f3a...5f83b0`; avalanche `0x4eff2d...ff4cb5`; avalanche `0x5939ab...841fab` | ⚠️ Unaudited |
| StablePhantomPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08e16...6cbfd2` | ⚠️ Unaudited |
| StablePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: ethereum `0x8df6ef...bf987c`; optimism `0x1780e8...d943ab`; optimism `0x268e2e...d9af42`; gnosis `0x22625e...86b017`; gnosis `0x9338f9...55962d`; gnosis `0xf23b4d...264843`; base `0xc49ca9...97950c`; arbitrum `0x1fc7f1...fec08c`; arbitrum `0xeb1eea...ae3863`; avalanche `0x16b50f...7ae5db`; avalanche `0x170206...68492d`; avalanche `0xeaedc3...aacf2e` | ⚠️ Unaudited |
| StableSurgeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: optimism `0xf39ca6...ab9015`; gnosis `0x90bd26...c93694`; arbitrum `0x7c1b7a...c78275`; avalanche `0x86705e...83d122`; avalanche `0xad8905...f8a85e` | ⚠️ Unaudited |
| StableSurgePoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 11 deployments: optimism `0x3beb05...429ace`; optimism `0xfd2142...f3128f`; gnosis `0x268e2e...d9af42`; gnosis `0x45fb5a...972373`; gnosis `0x59d55f...3255dd`; arbitrum `0x201efd...2a86cc`; arbitrum `0x86e67e...e7bc2b`; arbitrum `0x8a8b9f...a2ea88`; avalanche `0x18cc3c...94f71b`; avalanche `0x311334...358615`; avalanche `0x8d217c...1c4818` | ⚠️ Unaudited |
| StashFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x54da42...a3e915`; ethereum `0x95171c...458eb5`; ethereum `0xafd890...a3a5a8` | ⚠️ Unaudited |
| StashRewardDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2db7d4...a15f9c`; ethereum `0x74d2e0...241298`; ethereum `0xd3a5b6...f998f1`; fraxtal `0xb82434...3e8bd3` | ⚠️ Unaudited |
| TimelockAuthorizerMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x657dee...f05e8d`; ethereum `0x67ae4c...51ab53`; ethereum `0xf8ee6f...bc062b`; ethereum `0xfbf475...30bd7c` | ⚠️ Unaudited |
| TkMrsR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf0a32...382018` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3ec040...45f5ba`; ethereum `0x6537be...c2df78`; ethereum `0xb6ce51...b453ac`; fraxtal `0x872993...306fe9` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97...bd207f` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8121...6de6b3` | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25b17...e74316` | ⚠️ Unaudited |
| TribeBALMinterCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34ac9f...0cc69b` | ⚠️ Unaudited |
| UnbalancedAddViaSwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x03cbcc...dff36f`; gnosis `0xefb387...1a9575`; arbitrum `0xbf9419...29f12c`; avalanche `0x6623d1...6b6981` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41...64b503` | ⚠️ Unaudited |
| VaultExplorer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 9 deployments: optimism `0x1311fb...5cc4d1`; optimism `0xeaedc3...aacf2e`; gnosis `0x0c8f71...5dbb98`; gnosis `0x7f4c13...45d29b`; arbitrum `0x22625e...86b017`; arbitrum `0xb9d01c...20ab14`; avalanche `0x0f08ee...347b7c`; avalanche `0x4cb42f...a4ac4d`; avalanche `0x6b5da7...399e2e` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x170206...68492d`; avalanche `0x9805dc...764102`; avalanche `0xc3ccac...a1bb68` | ⚠️ Unaudited |
| veBALDeploymentCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1516...7076c3` | ⚠️ Unaudited |
| veBALGaugeFixCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee47ef...26ddf3` | ⚠️ Unaudited |
| VeBalGrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89f67f...b416f6` | ⚠️ Unaudited |
| veBALL2GaugeSetupCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13afc...ef37ca` | ⚠️ Unaudited |
| VirtualBalanceRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac1692...fd0147` | ⚠️ Unaudited |
| VirtualRewardFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5918f5...68bfcf`; ethereum `0x64e2df...62b2c3`; ethereum `0xdd8e70...a2f27b` | ⚠️ Unaudited |
| VirtualRewardFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-227665 | 3 deployments: polygon `0x05589c...9079c2`; base `0x05589c...9079c2`; arbitrum `0x05589c...9079c2` | ⚠️ Unaudited |
| VoterProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42b047...e053ee`; ethereum `0xaf5269...0dbec2` | ⚠️ Unaudited |
| VoterProxyLite | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc181ed...00a2b0` | ⚠️ Unaudited |
| VotingEscrowDelegationProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: ethereum `0x6f5a2e...1eb8a0`; optimism `0x9da189...7e017c`; gnosis `0x7a2535...fe8f05`; polygon `0x0f08ee...347b7c`; fraxtal `0xe38816...0be5f7`; base `0xd87f44...9f5acd`; arbitrum `0x81cfae...eeb310` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x2e9606...8a2647`; ethereum `0x3b8ca5...b25bd0`; ethereum `0x44a41f...a5c8a3`; ethereum `0x575ccd...318e2c`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x64e3c2...ac041d`; ethereum `0x67f8df...6ecb0b`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0xa0dabe...9eb66f`; ethereum `0xa90996...857849`; ethereum `0xb1f2cd...202cac`; ethereum `0xbc89cd...ca8f53`; ethereum `0xc12846...3d3abd`; ethereum `0xc128a9...093f25`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52`; ethereum `0xe5f960...31c548`; optimism `0x81cfae...eeb310`; gnosis `0x96484f...f13b6d`; polygon `0xc9b360...d5988f`; polygon `0xeb1eea...ae3863`; arbitrum `0xa523f4...4612dc` | ⚠️ Unaudited |
| WardenQuestScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3fcb0c...a2fb47`; ethereum `0xa7f21d...0e6633` | ⚠️ Unaudited |
| WeightedLPOracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: optimism `0x6ee18f...e3cb3f`; optimism `0x718e11...f4457f`; optimism `0xeb2bb0...9fe804`; gnosis `0x187a05...baa6ac`; gnosis `0x332694...f81d99`; gnosis `0x8a8b9f...a2ea88`; arbitrum `0x2faa14...1e4e91`; arbitrum `0x7f4c13...45d29b`; arbitrum `0xa9aeeb...ad1103`; avalanche `0x0e800d...92b106`; avalanche `0x397bc4...69a1c7`; avalanche `0x995831...059157` | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c6ee3...db8f56` | ⚠️ Unaudited |
| WeightedPoolFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 14 deployments: ethereum `0x5dd94d...01eb8b`; ethereum `0x8e9aa8...637de9`; ethereum `0xcc508a...b957bc`; optimism `0x0f08ee...347b7c`; optimism `0x254f3a...5f83b0`; gnosis `0x78ad1e...2a5417`; gnosis `0xeb1eea...ae3863`; fraxtal `0x9da189...7e017c`; base `0x4c32a8...d6a1c4`; arbitrum `0x83bf39...f56129`; arbitrum `0xd961e3...15e970`; avalanche `0x7ba29f...3121cc`; avalanche `0xbdbadc...7d6ff1`; avalanche `0xd961e3...15e970` | ⚠️ Unaudited |
| WindDownCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d53f0...6150dc` | ⚠️ Unaudited |
| WstETHRateProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d07d...fee768` | ⚠️ Unaudited |

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
| KeeperMulticall3 | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-227613 | 8 deployments: ethereum `0x817f42...330e15`; optimism `0x37aa9a...3e31dd`; gnosis `0x37aa9a...3e31dd`; polygon `0x37aa9a...3e31dd`; base `0x37aa9a...3e31dd`; base `0x5c97f0...90e798`; arbitrum `0x5c97f0...90e798`; avalanche `0x37aa9a...3e31dd` | ⚠️ Unaudited (bytecode match) |
| ProxyFactory | registry | project_anchor | own_core | 0 | optimism | unit-227620 | 10 deployments: ethereum `0x7ed900...377b0f`; ethereum `0xf5e2cf...39720d`; ethereum `0xfcdeb4...d4cbab`; optimism `0x731886...25d961`; gnosis `0x731886...25d961`; polygon `0x731886...25d961`; fraxtal `0x731886...25d961`; base `0x731886...25d961`; arbitrum `0x731886...25d961`; avalanche `0x731886...25d961` | ⚠️ Unaudited (bytecode match) |
| SidechainClaimZap | adapter | project_anchor | own_supporting | 0 | gnosis | unit-227641 | 3 deployments: gnosis `0x4ea38a...5328e8`; base `0x4ea38a...5328e8`; avalanche `0x6907d1...c2a017` | ⚠️ Unaudited (bytecode match) |
| TokenFactory | registry | project_anchor | own_supporting | 0 | optimism | unit-227623 | 6 deployments: optimism `0x872993...306fe9`; gnosis `0x872993...306fe9`; polygon `0x872993...306fe9`; base `0x872993...306fe9`; arbitrum `0x872993...306fe9`; avalanche `0x872993...306fe9` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (278)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3b23...875d6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227591 | `0x208024...f64c11` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227592 | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269af0...18e3b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1ade...c2169d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e82af...e6d4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496409...451286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ac1df...d4058f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ea931...bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51493d...9a37a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61a04f...bddf6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b02fe...6916be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76a383...b72b73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227598 | `0x81ba03...3fca08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82b561...8a00d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ede18...d65d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x935c23...742446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94905e...784e6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838f4...273146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x992dc4...fc2d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f998...d211f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fa94...21588a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb14e42...ddd28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe35f...a100c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-227604 | `0xc9e611...6b1ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd54c8...7f9719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb7cb...181bdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfcea9...eef9c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe43f46...af73c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8e4ee...6685b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8b6a9...0bc9af` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbd2e14...4b029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca6481...9a2160` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227628 | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227629 | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227630 | `0xec1c78...580606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-227633 | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x129bbd...40c229` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1cd776...b1d608` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227637 | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227638 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x36e8e3...1cc5d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227642 | `0x53c090...da364f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x774cb6...17eb94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x891ec9...017e0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227645 | `0x8b2970...618201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa523f4...4612dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-227649 | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd53f5d...102d83` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227705 | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbdcd8...23dc4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-227707 | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x045125...a0bacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x05589c...9079c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0a6bcb...494083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0d418e...322285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0f0dda...b755fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0f641b...0bacae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0fec3d...0b7f76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x170206...68492d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x223738...c754ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x252a18...6b3a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2b8933...f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2f4cdf...38d4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x334df2...22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3743d8...182da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x37aa9a...3e31dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3af95b...1a1b66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x421dbf...275482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4b5d28...4f41cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4dce82...5cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4ea931...bbb0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x51b6e0...749fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5a5094...00b10d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x5c97f0...90e798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x609d44...11beaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x60d643...87c84c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x623cdc...785898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6907d1...c2a017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6b02fe...6916be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x739b0c...c62502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x779aa2...2a049b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8034fb...1b6f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x81ba03...3fca08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8401b4...62bae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x852ad2...7947c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8b9da5...1b5eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x908c9d...3052bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9e1f41...80922e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9e4cbe...db812b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa1ffac...c858f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa2930d...8381ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa7cd84...a32794` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa9802d...25d985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa9952c...58008e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xab9016...ca4c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xae8e14...a8bd1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb292be...6e0144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb4c68e...8608df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbddac3...68c26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbf6a18...2698b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc0c293...903dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc1e07a...42abe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xca85e2...627451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcc9269...1d3c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xce66e8...e41146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd86ceb...66d68b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xda2e6b...16e7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xde386a...8455bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdfa714...f578ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe00035...feed73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe01d92...a05fb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe4b11a...338224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe8a7e8...9d3099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xea865d...74c1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xec1c78...580606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xee6c82...f708bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf044ee...81d96f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf3ae2e...6aa978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf97de6...b7e1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xffa458...0282d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | 89 deployments: polygon-zkevm `0x045125...a0bacd`; polygon-zkevm `0x04798c...98703c`; polygon-zkevm `0x05589c...9079c2`; polygon-zkevm `0x0a6bcb...494083`; polygon-zkevm `0x0d418e...322285`; polygon-zkevm `0x0f0dda...b755fc`; polygon-zkevm `0x0f641b...0bacae`; polygon-zkevm `0x0fec3d...0b7f76`; polygon-zkevm `0x150970...be213b`; polygon-zkevm `0x1ba3db...67ad0f`; polygon-zkevm `0x1fd645...b1900b`; polygon-zkevm `0x223738...c754ce`; polygon-zkevm `0x2498a2...29ba95`; polygon-zkevm `0x25e7c5...f4f669`; polygon-zkevm `0x286358...2acc01`; polygon-zkevm `0x2b6c22...c8bc54`; polygon-zkevm `0x2b8933...f1feb4`; polygon-zkevm `0x2f4cdf...38d4f7`; polygon-zkevm `0x334df2...22f6b0`; polygon-zkevm `0x3743d8...182da7`; polygon-zkevm `0x37aa9a...3e31dd`; polygon-zkevm `0x3af95b...1a1b66`; polygon-zkevm `0x421dbf...275482`; polygon-zkevm `0x4b5d28...4f41cb`; polygon-zkevm `0x4dce82...5cbd1b`; polygon-zkevm `0x4ea38a...5328e8`; polygon-zkevm `0x4ea931...bbb0e9`; polygon-zkevm `0x5073dc...bc119d`; polygon-zkevm `0x51b6e0...749fe1`; polygon-zkevm `0x53c090...da364f`; polygon-zkevm `0x57acb7...7ad478`; polygon-zkevm `0x5849b5...e09558`; polygon-zkevm `0x5a5094...00b10d`; polygon-zkevm `0x5a7390...f22c68`; polygon-zkevm `0x5c97f0...90e798`; polygon-zkevm `0x609d44...11beaa`; polygon-zkevm `0x60d643...87c84c`; polygon-zkevm `0x617963...1fdd47`; polygon-zkevm `0x623cdc...785898`; polygon-zkevm `0x6907d1...c2a017`; polygon-zkevm `0x6b02fe...6916be`; polygon-zkevm `0x731886...25d961`; polygon-zkevm `0x739b0c...c62502`; polygon-zkevm `0x779aa2...2a049b`; polygon-zkevm `0x7a7b39...5a73d1`; polygon-zkevm `0x8034fb...1b6f8d`; polygon-zkevm `0x8401b4...62bae8`; polygon-zkevm `0x852ad2...7947c6`; polygon-zkevm `0x872993...306fe9`; polygon-zkevm `0x8b2970...618201`; polygon-zkevm `0x8b9da5...1b5eee`; polygon-zkevm `0x908c9d...3052bc`; polygon-zkevm `0x919eeb...0efee6`; polygon-zkevm `0x98ef32...a30184`; polygon-zkevm `0x9e1f41...80922e`; polygon-zkevm `0x9e4cbe...db812b`; polygon-zkevm `0xa2930d...8381ed`; polygon-zkevm `0xa9802d...25d985`; polygon-zkevm `0xa9952c...58008e`; polygon-zkevm `0xab9016...ca4c50`; polygon-zkevm `0xae8e14...a8bd1c`; polygon-zkevm `0xb292be...6e0144`; polygon-zkevm `0xb82434...3e8bd3`; polygon-zkevm `0xbcf3b1...108c48`; polygon-zkevm `0xbd2e14...4b029e`; polygon-zkevm `0xbf6a18...2698b0`; polygon-zkevm `0xc181ed...00a2b0`; polygon-zkevm `0xc1e07a...42abe3`; polygon-zkevm `0xc24fa5...97b7ac`; polygon-zkevm `0xca85e2...627451`; polygon-zkevm `0xcbdcd8...23dc4e`; polygon-zkevm `0xcc9269...1d3c0e`; polygon-zkevm `0xce66e8...e41146`; polygon-zkevm `0xd86ceb...66d68b`; polygon-zkevm `0xda2e6b...16e7db`; polygon-zkevm `0xde386a...8455bf`; polygon-zkevm `0xdfa714...f578ee`; polygon-zkevm `0xe00035...feed73`; polygon-zkevm `0xe01d92...a05fb8`; polygon-zkevm `0xe4b11a...338224`; polygon-zkevm `0xe8a7e8...9d3099`; polygon-zkevm `0xea865d...74c1dc`; polygon-zkevm `0xec1c78...580606`; polygon-zkevm `0xee6c82...f708bd`; polygon-zkevm `0xf044ee...81d96f`; polygon-zkevm `0xf24074...a6ca71`; polygon-zkevm `0xf3ae2e...6aa978`; polygon-zkevm `0xf97de6...b7e1f6`; polygon-zkevm `0xfa6b85...0be98e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227653 | `0x252a18...6b3a63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227655 | `0xa1ffac...c858f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227657 | `0xa7cd84...a32794` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227659 | `0xb4c68e...8608df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227661 | `0xbddac3...68c26b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon-zkevm | n/a | `0xc0c293...903dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-227663 | `0xffa458...0282d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x180295...cf1d77` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12233c...5a7d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1fd645...b1900b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x25e7c5...f4f669` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227717 | `0x286358...2acc01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227718 | `0x2b6c22...c8bc54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b8933...f1feb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f4cdf...38d4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x334df2...22f6b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x364675...6e617c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3743d8...182da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37aa9a...3e31dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x421dbf...275482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ac1df...d4058f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dce82...5cbd1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ea38a...5328e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5073dc...bc119d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51b6e0...749fe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227722 | `0x53c090...da364f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-227723 | `0x57acb7...7ad478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x59b77e...13ccee` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9f8ab...fd7b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd2e14...4b029e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe4892...392ce0` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x138f95...26bb8a` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xede954...9954e0` | ❓ Unverified |

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
| native | 215 |
| upstream | 16 |
| standard_library | 4 |
| needs_review | 285 |

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
