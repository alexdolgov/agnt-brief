# Agentic Audit Brief: Velodrome

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 3 audit(s)
- Eligible audit results: 8 (3 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Velodrome (`velodrome`)
- Website: [https://velodrome.finance](https://velodrome.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bob, celo, fraxtal, ink, lisk, metal-l2, mode, optimism, soneium, superseed, swellchain, unichain
- Contract surface: 196 unique implementations (196 raw deployments)
- Coverage basis: 6/81 confirmed own live verified implementations (7.4%); conservative 7.4% with 0 needs-review implementation(s)
- DeFi Llama TVL: $33,671,001.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Velodrome. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 82 contract row(s) across base, bob, celo, fraxtal, ink, lisk, metal-l2, mode, optimism, soneium, superseed, swellchain, unichain. Structural roles: 69 unclassified, 7 core, 6 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 82
- Structural roles: unclassified (69), core (7), supporting (6)
- Contract kinds: contract (80), abstract (2)
- Detected standards: erc165 (1), erc20 (1), erc20permit (1), erc721 (1), ownable (1)
- Frameworks: openzeppelin (11)
- Upgradeable-pattern rows: 0

## Fork Analysis

3 of 195 contracts are derived from known codebases. 192 contracts have no detected origin.

### Forked Contracts

**Router** (`0xa062ae...8b2858`, chain 10)
Origin: 40-acres (`0xa062ae...8b2858`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Voter** (`0x41c914...5abf3c`, chain 10)
Origin: arcadia-finance (`0x41c914...5abf3c`)
Containment: 100.0% - 29 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**VotingEscrow** (`0xfaf8fd...06787d`, chain 10)
Origin: iaero-protocol (`0xebf418...67e6b4`)
Containment: 96.0% - 48 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- forwarder()
- permanentLockBalance()

### Original Contracts (no fork detected - full audit scope)

- Minter (`0x6dc9e1...d10982`, chain 10)
- RewardsDistributor (`0x9d4736...1ea99b`, chain 10)
- Superchain emergencyCouncil (`0xf7a15f...defeda`, chain 10)
- Superchain leafFeeModule (`0x81c5d0...06b362`, chain 130)
- Superchain leafFeeModule (`0xc60a68...b62e31`, chain 252)
- Superchain leafFeeModule (`0x44536f...97a06b`, chain 1135)
- Superchain leafFeeModule (`0x81c5d0...06b362`, chain 1750)
- Superchain leafFeeModule (`0x81c5d0...06b362`, chain 1868)
- Superchain leafFeeModule (`0x81c5d0...06b362`, chain 1923)
- Superchain leafFeeModule (`0x81c5d0...06b362`, chain 5330)
- Superchain leafFeeModule (`0x81c5d0...06b362`, chain 57073)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 130)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 252)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 1135)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 1750)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 1868)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 1923)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 5330)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 34443)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 42220)
- Superchain leafGaugeFactory (`0x42e403...38c445`, chain 57073)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 130)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 252)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 1135)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 1750)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 1868)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 1923)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 5330)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 34443)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 42220)
- Superchain leafMessageBridge (`0xf27876...59c011`, chain 57073)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 130)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 252)
- Superchain leafMessageModule (`0xf38560...30071d`, chain 1135)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 1750)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 1868)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 1923)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 5330)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 34443)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 42220)
- Superchain leafMessageModule (`0x2bba75...fba15e`, chain 57073)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 130)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 252)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 1135)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 1750)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 1868)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 1923)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 5330)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 34443)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 42220)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 57073)
- Superchain leafPoolFactory (`0x31832f...ce4bc0`, chain 60808)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 130)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 252)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 1135)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 1750)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 1868)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 1923)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 5330)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 34443)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 42220)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 57073)
- Superchain leafPoolImplementation (`0x10499d...bb374c`, chain 60808)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 130)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 252)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 1135)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 1750)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 1868)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 1923)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 5330)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 8453)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 34443)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 42220)
- Superchain leafRestrictedRewardToken (`0xafcc6a...73e01b`, chain 57073)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 130)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 252)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 1135)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 1750)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 1868)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 1923)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 5330)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 8453)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 34443)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 42220)
- Superchain leafRestrictedTokenBridge (`0xac6a60...82d214`, chain 57073)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 130)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 252)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 1135)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 1750)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 1868)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 1923)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 5330)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 8453)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 34443)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 42220)
- Superchain leafRestrictedXFactory (`0x00a376...c75fb1`, chain 57073)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 130)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 252)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 1135)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 1750)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 1868)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 1923)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 5330)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 34443)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 42220)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 57073)
- Superchain leafRouter (`0x3a6317...0c2a45`, chain 60808)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 130)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 252)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 1135)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 1750)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 1868)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 1923)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 5330)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 34443)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 42220)
- Superchain leafTokenBridge (`0x1a9d17...a17814`, chain 57073)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 130)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 252)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 1135)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 1750)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 1868)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 1923)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 5330)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 34443)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 42220)
- Superchain leafVoter (`0x97cdbc...8a1123`, chain 57073)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 130)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 252)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 1135)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 1750)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 1868)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 1923)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 5330)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 34443)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 42220)
- Superchain leafVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 57073)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 130)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 252)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 1135)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 1750)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 1868)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 1923)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 5330)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 34443)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 42220)
- Superchain leafXFactory (`0x73cae4...294b31`, chain 57073)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 130)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 252)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 1135)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 1750)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 1868)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 1923)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 5330)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 34443)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 42220)
- Superchain leafXVelo (`0x7f9adf...a28a81`, chain 57073)
- Superchain mixedRouteQuoter (`0x0f3887...3ef8ba`, chain 60808)
- Superchain rootGaugeFactory (`0x42e403...38c445`, chain 10)
- Superchain rootLockbox (`0x12b64d...d60232`, chain 10)
- Superchain rootMessageBridge (`0xf27876...59c011`, chain 10)
- Superchain rootMessageModule (`0x2bba75...fba15e`, chain 10)
- Superchain rootModuleVault (`0x916e0a...2030c5`, chain 10)
- Superchain rootPoolFactory (`0x31832f...ce4bc0`, chain 10)
- Superchain rootPoolImplementation (`0x10499d...bb374c`, chain 10)
- Superchain rootRestrictedRewardLockbox (`0xb46cea...d92313`, chain 10)
- Superchain rootRestrictedRewardToken (`0xafcc6a...73e01b`, chain 10)
- Superchain rootRestrictedTokenBridge (`0xac6a60...82d214`, chain 10)
- Superchain rootRestrictedTokenBridgeVault (`0xb9d32b...09c8d2`, chain 10)
- Superchain rootRestrictedXFactory (`0x00a376...c75fb1`, chain 10)
- Superchain rootTokenBridge (`0x1a9d17...a17814`, chain 10)
- Superchain rootTokenBridgeVault (`0x479bec...22242b`, chain 10)
- Superchain rootVotingRewardsFactory (`0x7dc9fd...f4fb2f`, chain 10)
- Superchain rootXFactory (`0x73cae4...294b31`, chain 10)
- Superchain rootXVelo (`0x7f9adf...a28a81`, chain 10)
- Superchain stakingRewardsFactory (`0x8eb683...530389`, chain 60808)
- Superchain stakingRewardsImplementation (`0x593d09...084271`, chain 60808)
- Superchain tokenRegistry (`0x8d9c67...9107a7`, chain 60808)
- Superchain universalRouter (`0xc3f14f...e67783`, chain 60808)
- V2 ArtProxy (`0x4a9ea0...1782dd`, chain 10)
- V2 FactoryRegistry (`0xf4c67c...aa1d7b`, chain 10)
- V2 Forwarder (`0x06824d...29ab74`, chain 10)
- V2 GaugeFactory (`0x8391fe...835071`, chain 10)
- V2 ManagedRewardsFactory (`0x3f468e...142e9c`, chain 10)
- V2 PoolFactory (`0xf10460...e5ff5a`, chain 10)
- V2 SimpleEpochGovernor (`0x654eb9...ee20e4`, chain 10)
- V2 SinkGauge (`0x3b59a6...ecd367`, chain 10)
- V2 SinkGaugeFactory (`0xe62b4b...e9e5a2`, chain 10)
- V2 SinkPool (`0x333030...1c2b88`, chain 10)
- V2 SinkPoolFactory (`0xd173b8...069091`, chain 10)
- V2 VotingRewardsFactory (`0x756e7c...ada8ec`, chain 10)
- Velo (`0x9560e8...1088db`, chain 10)

## Contract Surface Quality

- Indexed contracts: 82; live-surface contracts included: 82 (81 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 195/197 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/81 (7.4%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 195 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 195 of 196 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/81
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 0
- Unverified implementations: 114
- Unique implementations: 196
- Raw deployments: 196
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/velodromefinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 7.4% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 7.4% | 2024-01 |
| Sherlock | Tier 1 | 1 | 1.2% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Minter | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-396422 | `0x6dc9e1...d10982` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-396430 | `0x9d4736...1ea99b` | ✅ Audited |
| Router | adapter | project_anchor | own_supporting | 0 | optimism | unit-396431 | `0xa062ae...8b2858` | ✅ Audited |
| Velo | token | project_anchor | own_supporting | 0 | optimism | unit-396429 | `0x9560e8...1088db` | ✅ Audited |
| Voter | unknown | project_anchor | own_supporting | 0 | optimism | unit-396417 | `0x41c914...5abf3c` | ✅ Audited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-396442 | `0xfaf8fd...06787d` | ✅ Audited |

### ⚠️ Verified + Unaudited (76)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | optimism | unit-396603 | `0x838352...ee2b3f` | ⚠️ Unaudited |
| Superchain emergencyCouncil | unknown | project_anchor | own_supporting | 0 | optimism | unit-396441 | `0xf7a15f...defeda` | ⚠️ Unaudited |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396531 | `0xc60a68...b62e31` | ⚠️ Unaudited |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396524 | `0x42e403...38c445` | ⚠️ Unaudited |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396539 | `0x42e403...38c445` | ⚠️ Unaudited |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396553 | `0x42e403...38c445` | ⚠️ Unaudited |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396532 | `0xf27876...59c011` | ⚠️ Unaudited |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | mode | unit-396546 | `0xf27876...59c011` | ⚠️ Unaudited |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | celo | unit-396561 | `0xf27876...59c011` | ⚠️ Unaudited |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396521 | `0x2bba75...fba15e` | ⚠️ Unaudited |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | mode | unit-396536 | `0x2bba75...fba15e` | ⚠️ Unaudited |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | celo | unit-396550 | `0x2bba75...fba15e` | ⚠️ Unaudited |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396522 | `0x31832f...ce4bc0` | ⚠️ Unaudited |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396537 | `0x31832f...ce4bc0` | ⚠️ Unaudited |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396551 | `0x31832f...ce4bc0` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | unichain | unit-396459 | `0x10499d...bb374c` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396519 | `0x10499d...bb374c` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | mode | unit-396534 | `0x10499d...bb374c` | ⚠️ Unaudited |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | celo | unit-396548 | `0x10499d...bb374c` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396530 | `0xafcc6a...73e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | base | unit-396602 | `0xafcc6a...73e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | mode | unit-396545 | `0xafcc6a...73e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | celo | unit-396560 | `0xafcc6a...73e01b` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396529 | `0xac6a60...82d214` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | base | unit-396601 | `0xac6a60...82d214` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | mode | unit-396544 | `0xac6a60...82d214` | ⚠️ Unaudited |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | celo | unit-396559 | `0xac6a60...82d214` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396518 | `0x00a376...c75fb1` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | base | unit-396600 | `0x00a376...c75fb1` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396533 | `0x00a376...c75fb1` | ⚠️ Unaudited |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396547 | `0x00a376...c75fb1` | ⚠️ Unaudited |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396523 | `0x3a6317...0c2a45` | ⚠️ Unaudited |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | mode | unit-396538 | `0x3a6317...0c2a45` | ⚠️ Unaudited |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | celo | unit-396552 | `0x3a6317...0c2a45` | ⚠️ Unaudited |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396520 | `0x1a9d17...a17814` | ⚠️ Unaudited |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | mode | unit-396535 | `0x1a9d17...a17814` | ⚠️ Unaudited |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | celo | unit-396549 | `0x1a9d17...a17814` | ⚠️ Unaudited |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396528 | `0x97cdbc...8a1123` | ⚠️ Unaudited |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | mode | unit-396543 | `0x97cdbc...8a1123` | ⚠️ Unaudited |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | celo | unit-396558 | `0x97cdbc...8a1123` | ⚠️ Unaudited |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396526 | `0x7dc9fd...f4fb2f` | ⚠️ Unaudited |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396541 | `0x7dc9fd...f4fb2f` | ⚠️ Unaudited |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396555 | `0x7dc9fd...f4fb2f` | ⚠️ Unaudited |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | mode | unit-396540 | `0x73cae4...294b31` | ⚠️ Unaudited |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | celo | unit-396554 | `0x73cae4...294b31` | ⚠️ Unaudited |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396527 | `0x7f9adf...a28a81` | ⚠️ Unaudited |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | mode | unit-396542 | `0x7f9adf...a28a81` | ⚠️ Unaudited |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | celo | unit-396556 | `0x7f9adf...a28a81` | ⚠️ Unaudited |
| Superchain rootGaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396418 | `0x42e403...38c445` | ⚠️ Unaudited |
| Superchain rootLockbox | unknown | project_anchor | own_supporting | 0 | optimism | unit-396410 | `0x12b64d...d60232` | ⚠️ Unaudited |
| Superchain rootMessageBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396439 | `0xf27876...59c011` | ⚠️ Unaudited |
| Superchain rootMessageModule | unknown | project_anchor | own_supporting | 0 | optimism | unit-396412 | `0x2bba75...fba15e` | ⚠️ Unaudited |
| Superchain rootModuleVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-396428 | `0x916e0a...2030c5` | ⚠️ Unaudited |
| Superchain rootPoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396413 | `0x31832f...ce4bc0` | ⚠️ Unaudited |
| Superchain rootPoolImplementation | unknown | project_anchor | own_supporting | 0 | optimism | unit-396409 | `0x10499d...bb374c` | ⚠️ Unaudited |
| Superchain rootRestrictedRewardLockbox | unknown | project_anchor | own_supporting | 0 | optimism | unit-396434 | `0xb46cea...d92313` | ⚠️ Unaudited |
| Superchain rootRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | optimism | unit-396433 | `0xafcc6a...73e01b` | ⚠️ Unaudited |
| Superchain rootRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396432 | `0xac6a60...82d214` | ⚠️ Unaudited |
| Superchain rootRestrictedTokenBridgeVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-396435 | `0xb9d32b...09c8d2` | ⚠️ Unaudited |
| Superchain rootRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396407 | `0x00a376...c75fb1` | ⚠️ Unaudited |
| Superchain rootTokenBridge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396411 | `0x1a9d17...a17814` | ⚠️ Unaudited |
| Superchain rootTokenBridgeVault | unknown | project_anchor | own_supporting | 0 | optimism | unit-396419 | `0x479bec...22242b` | ⚠️ Unaudited |
| Superchain rootVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396425 | `0x7dc9fd...f4fb2f` | ⚠️ Unaudited |
| Superchain rootXVelo | unknown | project_anchor | own_supporting | 0 | optimism | unit-396426 | `0x7f9adf...a28a81` | ⚠️ Unaudited |
| V2 ArtProxy | unknown | project_anchor | own_supporting | 0 | optimism | unit-396420 | `0x4a9ea0...1782dd` | ⚠️ Unaudited |
| V2 FactoryRegistry | unknown | project_anchor | own_supporting | 0 | optimism | unit-396440 | `0xf4c67c...aa1d7b` | ⚠️ Unaudited |
| V2 Forwarder | unknown | project_anchor | own_supporting | 0 | optimism | unit-396408 | `0x06824d...29ab74` | ⚠️ Unaudited |
| V2 GaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396427 | `0x8391fe...835071` | ⚠️ Unaudited |
| V2 ManagedRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396416 | `0x3f468e...142e9c` | ⚠️ Unaudited |
| V2 PoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396438 | `0xf10460...e5ff5a` | ⚠️ Unaudited |
| V2 SimpleEpochGovernor | unknown | project_anchor | own_supporting | 0 | optimism | unit-396421 | `0x654eb9...ee20e4` | ⚠️ Unaudited |
| V2 SinkGauge | unknown | project_anchor | own_supporting | 0 | optimism | unit-396415 | `0x3b59a6...ecd367` | ⚠️ Unaudited |
| V2 SinkGaugeFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396437 | `0xe62b4b...e9e5a2` | ⚠️ Unaudited |
| V2 SinkPool | unknown | project_anchor | own_supporting | 0 | optimism | unit-396414 | `0x333030...1c2b88` | ⚠️ Unaudited |
| V2 SinkPoolFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396436 | `0xd173b8...069091` | ⚠️ Unaudited |
| V2 VotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396424 | `0x756e7c...ada8ec` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (114)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | unichain | unit-396468 | `0x81c5d0...06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | lisk | unit-396449 | `0x44536f...97a06b` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396483 | `0x81c5d0...06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | soneium | unit-396498 | `0x81c5d0...06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396513 | `0x81c5d0...06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | superseed | unit-396572 | `0x81c5d0...06b362` | ❓ Unverified |
| Superchain leafFeeModule | unknown | project_anchor | own_supporting | 0 | ink | unit-396587 | `0x81c5d0...06b362` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396464 | `0x42e403...38c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396448 | `0x42e403...38c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396479 | `0x42e403...38c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396494 | `0x42e403...38c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396509 | `0x42e403...38c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396568 | `0x42e403...38c445` | ❓ Unverified |
| Superchain leafGaugeFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396583 | `0x42e403...38c445` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | unichain | unit-396472 | `0xf27876...59c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | lisk | unit-396456 | `0xf27876...59c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396487 | `0xf27876...59c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | soneium | unit-396502 | `0xf27876...59c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396517 | `0xf27876...59c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | superseed | unit-396576 | `0xf27876...59c011` | ❓ Unverified |
| Superchain leafMessageBridge | unknown | project_anchor | own_supporting | 0 | ink | unit-396591 | `0xf27876...59c011` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | unichain | unit-396461 | `0x2bba75...fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | lisk | unit-396457 | `0xf38560...30071d` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396476 | `0x2bba75...fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | soneium | unit-396491 | `0x2bba75...fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396506 | `0x2bba75...fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | superseed | unit-396565 | `0x2bba75...fba15e` | ❓ Unverified |
| Superchain leafMessageModule | unknown | project_anchor | own_supporting | 0 | ink | unit-396580 | `0x2bba75...fba15e` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396462 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396446 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396477 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396492 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396507 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396566 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396581 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolFactory | unknown | project_anchor | own_supporting | 0 | bob | unit-396594 | `0x31832f...ce4bc0` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | lisk | unit-396444 | `0x10499d...bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396474 | `0x10499d...bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | soneium | unit-396489 | `0x10499d...bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396504 | `0x10499d...bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | superseed | unit-396563 | `0x10499d...bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | ink | unit-396578 | `0x10499d...bb374c` | ❓ Unverified |
| Superchain leafPoolImplementation | unknown | project_anchor | own_supporting | 0 | bob | unit-396593 | `0x10499d...bb374c` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | unichain | unit-396471 | `0xafcc6a...73e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | lisk | unit-396455 | `0xafcc6a...73e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396486 | `0xafcc6a...73e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | soneium | unit-396501 | `0xafcc6a...73e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396516 | `0xafcc6a...73e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | superseed | unit-396575 | `0xafcc6a...73e01b` | ❓ Unverified |
| Superchain leafRestrictedRewardToken | unknown | project_anchor | own_supporting | 0 | ink | unit-396590 | `0xafcc6a...73e01b` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | unichain | unit-396470 | `0xac6a60...82d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | lisk | unit-396454 | `0xac6a60...82d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396485 | `0xac6a60...82d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | soneium | unit-396500 | `0xac6a60...82d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396515 | `0xac6a60...82d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | superseed | unit-396574 | `0xac6a60...82d214` | ❓ Unverified |
| Superchain leafRestrictedTokenBridge | unknown | project_anchor | own_supporting | 0 | ink | unit-396589 | `0xac6a60...82d214` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396458 | `0x00a376...c75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396443 | `0x00a376...c75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396473 | `0x00a376...c75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396488 | `0x00a376...c75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396503 | `0x00a376...c75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396562 | `0x00a376...c75fb1` | ❓ Unverified |
| Superchain leafRestrictedXFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396577 | `0x00a376...c75fb1` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | unichain | unit-396463 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | lisk | unit-396447 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396478 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | soneium | unit-396493 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396508 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | superseed | unit-396567 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | ink | unit-396582 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafRouter | unknown | project_anchor | own_supporting | 0 | bob | unit-396595 | `0x3a6317...0c2a45` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | unichain | unit-396460 | `0x1a9d17...a17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | lisk | unit-396445 | `0x1a9d17...a17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396475 | `0x1a9d17...a17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | soneium | unit-396490 | `0x1a9d17...a17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396505 | `0x1a9d17...a17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | superseed | unit-396564 | `0x1a9d17...a17814` | ❓ Unverified |
| Superchain leafTokenBridge | unknown | project_anchor | own_supporting | 0 | ink | unit-396579 | `0x1a9d17...a17814` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | unichain | unit-396469 | `0x97cdbc...8a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | lisk | unit-396453 | `0x97cdbc...8a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396484 | `0x97cdbc...8a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | soneium | unit-396499 | `0x97cdbc...8a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396514 | `0x97cdbc...8a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | superseed | unit-396573 | `0x97cdbc...8a1123` | ❓ Unverified |
| Superchain leafVoter | unknown | project_anchor | own_supporting | 0 | ink | unit-396588 | `0x97cdbc...8a1123` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396466 | `0x7dc9fd...f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396451 | `0x7dc9fd...f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396481 | `0x7dc9fd...f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396496 | `0x7dc9fd...f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396511 | `0x7dc9fd...f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396570 | `0x7dc9fd...f4fb2f` | ❓ Unverified |
| Superchain leafVotingRewardsFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396585 | `0x7dc9fd...f4fb2f` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | unichain | unit-396465 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-396525 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | lisk | unit-396450 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396480 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | soneium | unit-396495 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396510 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | superseed | unit-396569 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXFactory | unknown | project_anchor | own_supporting | 0 | ink | unit-396584 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | unichain | unit-396467 | `0x7f9adf...a28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | lisk | unit-396452 | `0x7f9adf...a28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | metal-l2 | unit-396482 | `0x7f9adf...a28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | soneium | unit-396497 | `0x7f9adf...a28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | swellchain | unit-396512 | `0x7f9adf...a28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | superseed | unit-396571 | `0x7f9adf...a28a81` | ❓ Unverified |
| Superchain leafXVelo | unknown | project_anchor | own_supporting | 0 | ink | unit-396586 | `0x7f9adf...a28a81` | ❓ Unverified |
| Superchain mixedRouteQuoter | unknown | project_anchor | own_supporting | 0 | bob | unit-396592 | `0x0f3887...3ef8ba` | ❓ Unverified |
| Superchain rootXFactory | unknown | project_anchor | own_supporting | 0 | optimism | unit-396423 | `0x73cae4...294b31` | ❓ Unverified |
| Superchain stakingRewardsFactory | unknown | project_anchor | own_supporting | 0 | bob | unit-396598 | `0x8eb683...530389` | ❓ Unverified |
| Superchain stakingRewardsImplementation | unknown | project_anchor | own_supporting | 0 | bob | unit-396596 | `0x593d09...084271` | ❓ Unverified |
| Superchain tokenRegistry | unknown | project_anchor | own_supporting | 0 | bob | unit-396597 | `0x8d9c67...9107a7` | ❓ Unverified |
| Superchain universalRouter | unknown | project_anchor | own_supporting | 0 | bob | unit-396599 | `0xc3f14f...e67783` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/audits/2022-05-velodrome-finance-contest](https://code4rena.com/audits/2022-05-velodrome-finance-contest) | Code4rena | Contest | 2022-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Velodrome-Spearbit-Security-Review.pdf](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2023-07 | stale | Direct | n/a | matched | 6 | 0 | 0 | 15 | n/a |
| [Velodrome-Spearbit-Security-Review-Nov23.pdf](https://raw.githubusercontent.com/spearbit/portfolio/master/pdfs/Velodrome-Spearbit-Security-Review-Nov23.pdf) | Spearbit | Audit | 2024-01 | stale | Direct | n/a | matched | 2 | 0 | 0 | 32 | n/a |
| [www.chainsecurity.com/security-audit/velodrome-superchain-interoperability](https://www.chainsecurity.com/security-audit/velodrome-superchain-interoperability) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.chainsecurity.com/security-audit/velodrome-superchain-slipstream](https://www.chainsecurity.com/security-audit/velodrome-superchain-slipstream) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024.11.13 - Final - Velodrome.pdf](https://raw.githubusercontent.com/sherlock-protocol/sherlock-reports/main/audits/2024.11.13%20-%20Final%20-%20Velodrome.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | n/a | matched | 1 | 0 | 0 | 22 | n/a |
| [immunefi.com/bug-bounty/velodromefinance/information](https://immunefi.com/bug-bounty/velodromefinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [www.chainsecurity.com/security-audit/superchain-diff](https://www.chainsecurity.com/security-audit/superchain-diff) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3918] code4rena.com/audits/2022-05-velodrome-finance-contest — no match: The provided text is a contest summary page from Code4rena, not a full audit report. It lists participants and rewards but does not include a scope section or contract names. The audit date is inferred from the end date of the contest.
- [3919] Velodrome-Spearbit-Security-Review.pdf — matched: No reason recorded
- [3920] Velodrome-Spearbit-Security-Review-Nov23.pdf — matched: No reason recorded
- [3921] www.chainsecurity.com/security-audit/velodrome-superchain-interoperability — no match: No scope section or contract names found in the provided text.
- [3923] www.chainsecurity.com/security-audit/velodrome-superchain-slipstream — no match: The report text does not contain a scope section or explicit listing of contracts in scope. Only high-level descriptions of the system are provided.
- [3924] 2024.11.13 - Final - Velodrome.pdf — matched: No reason recorded
- [15416] immunefi.com/bug-bounty/velodromefinance/information — no match: The document is a bug bounty program page, not an audit report. It mentions audits by Spearbit but does not list specific contracts in scope. No contract names or audit date could be extracted.
- [15421] www.chainsecurity.com/security-audit/superchain-diff — no match: No scope section or contract names found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Velodrome-Spearbit-Security-Review.pdf | AutoCompounder | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | AutoCompounderFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | BribeVotingReward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | CompoundOptimizer | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | EpochGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | FactoryRegistry | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | FeesVotingReward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Gauge | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | LockedManagedReward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Minter | own contract | Minter (selected) `0x6dc9e1...d10982` — deployed 2023-06-22 03:08:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | Pair | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Reward | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0x9d4736...1ea99b` — deployed 2023-06-22 03:07:49+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | Router | own contract | Router (selected) `0xa062ae...8b2858` — deployed 2023-06-22 03:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | SinkConverter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | SinkManager | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Velo | own contract | Velo (selected) `0x9560e8...1088db` — deployed 2023-06-22 03:06:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | VeloGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | VelodromeTimeLibrary | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review.pdf | Voter | own contract | Voter (selected) `0x41c914...5abf3c` — deployed 2023-06-22 03:07:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0xfaf8fd...06787d` — deployed 2023-06-22 03:07:25+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLGauge | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLGaugeFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | CLPool | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Dispatcher | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ERC721Holder | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | GovernorSimple | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | GovernorVotesQuorumFraction | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ICLFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ICLGaugeFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ICLPool | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | IERC20 | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | IFeeModule | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | IVoter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Minter | own contract | Minter (selected) `0x6dc9e1...d10982` — deployed 2023-06-22 03:08:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | PeripheryPayments | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Permit2Payments | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Pool | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | PoolAddress | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | PoolFactory | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Position | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | ReentrancyGuard | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | Router | own contract | Router (selected) `0xa062ae...8b2858` — deployed 2023-06-22 03:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | SwapRouter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | TransferHelper | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | UniswapV2Library | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | UniversalRouter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | V2SwapRouter | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VeloGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VelodromeTimeLibrary | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VetoGovernor | unmatched — not counted | — | — | no |
| Velodrome-Spearbit-Security-Review-Nov23.pdf | VetoGovernorVotesQuorumFraction | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | CrossChainRegistry | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | FeesVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | ICrosschainERC20 | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IHLHandler | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IMailbox | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IVotingEscrow | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IXERC20 | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | IncentiveVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | InterchainGasPaymaster | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | LeafGauge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | LeafMessageBridge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootFeesVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootHLMessageModule | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootIncentiveVotingReward | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootMessageBridge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | RootVotingRewardsFactory | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | StandardHookMetadata | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | TokenBridge | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | TypeCasts | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | Voter | own contract | Voter (selected) `0x41c914...5abf3c` — deployed 2023-06-22 03:07:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.11.13 - Final - Velodrome.pdf | XERC20 | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | XERC20Factory | unmatched — not counted | — | — | no |
| 2024.11.13 - Final - Velodrome.pdf | XERC20Lockbox | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 189 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 69 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=5
- Match method counts: unique_name=9

Zero-match audit list:

- [3918] code4rena.com/audits/2022-05-velodrome-finance-contest
- [3921] www.chainsecurity.com/security-audit/velodrome-superchain-interoperability
- [3923] www.chainsecurity.com/security-audit/velodrome-superchain-slipstream
- [15421] www.chainsecurity.com/security-audit/superchain-diff

Fork inheritance lineage and inherited audits are included when available.
