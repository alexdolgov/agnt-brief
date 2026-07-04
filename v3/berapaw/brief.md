# Agentic Audit Brief: BeraPaw

## Project Overview

- Project: BeraPaw (`berapaw`)
- Website: [https://www.berapaw.com](https://www.berapaw.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:35.621Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: berachain
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $213,335.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 18 project-authored contract(s) across 1 chain(s); 3 ERC4626 vaults, 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (stakingrewards, harvestmodule). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/22 (0.0%)
- Deployed-live implementations: 22 of 22 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/22
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 7 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuctionModule | unknown | berachain | n/a | [`0x79f068...e0bc59`](./contracts/berachain-80094/0x79f068438022995ae4c11f00df3b2fd9bae0bc59/) | ⚠️ Unaudited |
| BeaconProxy | unknown | berachain | n/a | [`0x34018a...4e5e95`](./contracts/berachain-80094/0x34018ac9dc4b114036ca148aa18c8f75594e5e95/) | ⚠️ Unaudited |
| BeraPawForge | unknown | berachain | n/a | [`0x1cb5d6...29fb3d`](./contracts/berachain-80094/0x1cb5d6147fe08c4baf787a5f6bc30e16e829fb3d/) | ⚠️ Unaudited |
| BeraPawRewardsReserve | unknown | berachain | n/a | [`0x717dd5...06bdd0`](./contracts/berachain-80094/0x717dd5cea52cfb549b2e6b9d56e48b459406bdd0/) | ⚠️ Unaudited |
| BeraPawRewardVaultFactory | unknown | berachain | n/a | [`0x339922...e2c699`](./contracts/berachain-80094/0x339922dc33f06308c19d1a5830908820cde2c699/) | ⚠️ Unaudited |
| BGT | unknown | berachain | n/a | [`0x656b95...eb1dba`](./contracts/berachain-80094/0x656b95e550c07a9ffe548bd4085c72418ceb1dba/) | ⚠️ Unaudited |
| BuyBackBurnModule | unknown | berachain | n/a | [`0x8e91e2...19ef5b`](./contracts/berachain-80094/0x8e91e211c4ba7e95a7301a537b09435c1a19ef5b/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x118d2c...3eec9a`](./contracts/berachain-80094/0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x3ea91a...96ec28`](./contracts/berachain-80094/0x3ea91ae9e47edbc43e64c6ddf99d67207296ec28/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | [`0x4b1d14...f0b00b`](./contracts/berachain-80094/0x4b1d14c4fea305c4144b51ee64141567a0f0b00b/) | ⚠️ Unaudited |
| EulerDepositLBGTModule | unknown | berachain | n/a | [`0x9e1b7b...b22634`](./contracts/berachain-80094/0x9e1b7bdfeb1f6a0365f158f4052472f093b22634/) | ⚠️ Unaudited |
| LBGT | unknown | berachain | n/a | [`0xbaadcc...d6babe`](./contracts/berachain-80094/0xbaadcc2962417c01af99fb2b7c75706b9bd6babe/) | ⚠️ Unaudited |
| LbgtHelper | unknown | berachain | n/a | [`0x938f83...355eb4`](./contracts/berachain-80094/0x938f83738ccd5b4217862fa4b521b015f3355eb4/) | ⚠️ Unaudited |
| LBGTStakingRewards | unknown | berachain | n/a | [`0x0e4692...ff13f4`](./contracts/berachain-80094/0x0e4692b4ec8c920ad7f00aed419ad22d8dff13f4/) | ⚠️ Unaudited |
| LPStakingRewards | unknown | berachain | n/a | [`0x3301dd...b55b8d`](./contracts/berachain-80094/0x3301dd4676f022807f23bd66611679ff59b55b8d/) | ⚠️ Unaudited |
| pBERA | unknown | berachain | n/a | [`0xdeadf1...26b34a`](./contracts/berachain-80094/0xdeadf18cb9233770fe8874c78d7483b4a126b34a/) | ⚠️ Unaudited |
| PolVault | unknown | berachain | n/a | [`0x43a5df...3c9606`](./contracts/berachain-80094/0x43a5df33d4bf24cb79894c912962c88a0d3c9606/) | ⚠️ Unaudited |
| PrePaw | unknown | berachain | n/a | [`0x03c86e...33e1ac`](./contracts/berachain-80094/0x03c86e21623f25eca0ea544890c7603b9a33e1ac/) | ⚠️ Unaudited |
| RewardVault | unknown | berachain | n/a | [`0xe8ed00...d5a401`](./contracts/berachain-80094/0xe8ed00b1b142e8d84ef773c4fccaa18682d5a401/) | ⚠️ Unaudited |
| StakedLbgt | unknown | berachain | n/a | [`0x083546...771ce9`](./contracts/berachain-80094/0x083546224a992eb0cd8f2290576b15c612771ce9/) | ⚠️ Unaudited |
| StakedPBera | unknown | berachain | n/a | [`0x18e352...265a5c`](./contracts/berachain-80094/0x18e352afe7b29624f827489c833869bc98265a5c/) | ⚠️ Unaudited |
| yPawRefund | unknown | berachain | n/a | [`0xe9405d...8a96b5`](./contracts/berachain-80094/0xe9405de9ee6684fee4d7c0489fe3219a878a96b5/) | ⚠️ Unaudited |

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
| [BeraPaw - Core Contracts - Initial Report](https://drive.google.com/file/d/1-QYOlw-qVZRdeFvqeNrqwFHh27zhjojC/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BeraPaw - Core Contracts - Final Report](https://drive.google.com/file/d/1G43j12bsHnqktqF75Z1Bu2aaUh1Hekad/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BeraPaw - Pol Strategy Vault - Initial Report](https://drive.google.com/file/d/19DeHlc3RRT_ZVr5yXRO8VgsAxBWkfyq3/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BeraPaw - Pol Strategy Vault - Final Report](https://drive.google.com/file/d/104um4fN6lTN7EY8KxUfofVhkcs7w1Fcm/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BeraPaw - pBERA - Initial Report](https://drive.google.com/file/d/1lbUUP96kl8Z2Hba8aIEeLS8g8wtAJKTb/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BeraPaw - pBERA - Final Report](https://drive.google.com/file/d/18EWumO-MPJrPbNMDQvWrT6mYXlFZGupw/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [BeraPaw – Forge & Staker Upgrades](https://drive.google.com/file/d/1DxzKgFjstAunklmUoHKFwY2z_uWfcysk/view?usp=drive_link) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [16836] BeraPaw - Core Contracts - Initial Report
- [16837] BeraPaw - Core Contracts - Final Report
- [16838] BeraPaw - Pol Strategy Vault - Initial Report
- [16839] BeraPaw - Pol Strategy Vault - Final Report
- [16840] BeraPaw - pBERA - Initial Report
- [16841] BeraPaw - pBERA - Final Report
- [16842] BeraPaw – Forge & Staker Upgrades

Fork inheritance lineage and inherited audits are included when available.
