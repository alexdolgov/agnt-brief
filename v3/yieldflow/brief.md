# Agentic Audit Brief: YieldFlow

## Project Overview

- Project: YieldFlow (`yieldflow`)
- Website: [https://yieldflow.com](https://yieldflow.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:17.831Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum
- Contract surface: 23 unique implementations (23 raw deployments)
- DeFi Llama TVL: $321,615.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 23 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 8 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/23 (0.0%)
- Deployed-live implementations: 23 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 23
- Raw deployments: 23
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeDistributor | unknown | ethereum | n/a | [`0x74f8c9...bd2644`](./contracts/ethereum-1/0x74f8c952fd41cb14d58fbdf7f459483bafbd2644/) | ⚠️ Unaudited |
| FeeSplitterManager | unknown | ethereum | n/a | [`0xfd5179...c43fea`](./contracts/ethereum-1/0xfd51790106e815f086e9f25d89cad27d85c43fea/) | ⚠️ Unaudited |
| MassTransfer | unknown | ethereum | n/a | [`0xb75b83...26f700`](./contracts/ethereum-1/0xb75b8315fa796f35783e584ef9ed39d8fc26f700/) | ⚠️ Unaudited |
| PolygonStakingFactory | unknown | ethereum | n/a | [`0x159599...d5ec7e`](./contracts/ethereum-1/0x159599ece3979c6b78ea472385687a93dfd5ec7e/) | ⚠️ Unaudited |
| PolygonStakingImplementation | unknown | ethereum | n/a | [`0x635f08...de21c9`](./contracts/ethereum-1/0x635f0804a103c7db279888f183cfe02e46de21c9/) | ⚠️ Unaudited |
| RangeMaster | unknown | ethereum | n/a | [`0x080901...0a3672`](./contracts/ethereum-1/0x080901169acae16f0cd17dbca18a2fee4d0a3672/) | ⚠️ Unaudited |
| RangePositionManager | unknown | ethereum | n/a | [`0x01af74...b503bd`](./contracts/ethereum-1/0x01af749e58c076c301b1f57d0bcbbf2d49b503bd/) | ⚠️ Unaudited |
| RefSetter | unknown | ethereum | n/a | [`0x3ede97...0aa89c`](./contracts/ethereum-1/0x3ede9700eb9fa2134d5848c17525e700fb0aa89c/) | ⚠️ Unaudited |
| RewardNFT | unknown | ethereum | n/a | [`0x1b2fa8...6d5d73`](./contracts/ethereum-1/0x1b2fa8042a1273cc708be575b92cfd4caf6d5d73/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0xa5940d...7fed88`](./contracts/ethereum-1/0xa5940da70f68afca24b38f6595e5d556da7fed88/) | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | ethereum | n/a | [`0x20c166...d0974a`](./contracts/ethereum-1/0x20c166a17263e5e6ee0211023538c626edd0974a/) | ⚠️ Unaudited |
| StakingRewardsLP | unknown | ethereum | n/a | [`0xd47e26...cd1140`](./contracts/ethereum-1/0xd47e2621cb5493017cfc849d9811c3394dcd1140/) | ⚠️ Unaudited |
| SwapManager | unknown | ethereum | n/a | [`0x06cef6...494829`](./contracts/ethereum-1/0x06cef69e7df2de1bb8bc4cf416142f1ea6494829/) | ⚠️ Unaudited |
| UniV2LPETHFactory | unknown | ethereum | n/a | [`0x06b1ae...e4eb21`](./contracts/ethereum-1/0x06b1ae9fb6407252fe26886c652463b6d9e4eb21/) | ⚠️ Unaudited |
| UniV2LPETHImplementation | unknown | ethereum | n/a | [`0x1b6620...96743a`](./contracts/ethereum-1/0x1b662070b00796e65169affa654fea43d096743a/) | ⚠️ Unaudited |
| UniV2LPFactory | unknown | ethereum | n/a | [`0x940337...85961e`](./contracts/ethereum-1/0x940337f748ef8a72a33f77200ed726829085961e/) | ⚠️ Unaudited |
| UniV2LPImplementation | unknown | ethereum | n/a | [`0x51bee6...66bada`](./contracts/ethereum-1/0x51bee60fd420aee238f541685f8dc4250e66bada/) | ⚠️ Unaudited |
| VestingStaker | unknown | ethereum | n/a | [`0x3a2c4e...247c85`](./contracts/ethereum-1/0x3a2c4e0f066697946d22aac2cb97f47fb0247c85/) | ⚠️ Unaudited |
| VestingStakerFactory | unknown | ethereum | n/a | [`0x7d7913...bef592`](./contracts/ethereum-1/0x7d7913c623f523acad1939dd799440a3b1bef592/) | ⚠️ Unaudited |
| YFLOW | unknown | ethereum | n/a | [`0x4d2135...20a70c`](./contracts/ethereum-1/0x4d21351469a6728043cacf89ecb4d1e8ec20a70c/) | ⚠️ Unaudited |
| Yieldflow | unknown | arbitrum | n/a | [`0x113a05...a1546d`](./contracts/arbitrum-42161/0x113a05170273e9087f5d0e0cdee0388478a1546d/) | ⚠️ Unaudited |
| YieldManager | unknown | ethereum | n/a | [`0xb4b8df...9b8694`](./contracts/ethereum-1/0xb4b8dfd20cbe437c0efe144284f7411d839b8694/) | ⚠️ Unaudited |
| YieldManagerOutpostV2 | unknown | ethereum | n/a | [`0x9d8bcd...955d85`](./contracts/ethereum-1/0x9d8bcdf374e64b47a71d69cd7587b012d4955d85/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/yieldflow](https://skynet.certik.com/projects/yieldflow) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 23 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21098] skynet.certik.com/projects/yieldflow

Fork inheritance lineage and inherited audits are included when available.
