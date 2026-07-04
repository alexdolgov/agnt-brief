# Agentic Audit Brief: Float Protocol

## Project Overview

- Project: Float Protocol (`float-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:52.287Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 21 unique implementations (21 raw deployments)
- DeFi Llama TVL: $117,885.13
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 21 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (rewarddistributionrecipient, recoverable, upgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (21 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 21 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 21
- Raw deployments: 21
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

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AuctionHouse | unknown | ethereum | n/a | [`0x8b114b...4d47ca`](./contracts/ethereum-1/0x8b114b8f5a7290e6e4f64024de6714131b4d47ca/) | ⚠️ Unaudited |
| BankToken | unknown | ethereum | n/a | [`0x0f8c4b...04b73a`](./contracts/ethereum-1/0x0f8c4b7694579b1c9796f5dfe0ad45c20804b73a/) | ⚠️ Unaudited |
| BankTokenV2 | unknown | ethereum | n/a | [`0x24a6a3...b42921`](./contracts/ethereum-1/0x24a6a37576377f63f194caa5f518a60f45b42921/) | ⚠️ Unaudited |
| BankVotingShare | unknown | ethereum | n/a | [`0xd449f3...688ef4`](./contracts/ethereum-1/0xd449f38ead4871e76c5f34f648e545ab4d688ef4/) | ⚠️ Unaudited |
| BasketV1 | unknown | ethereum | n/a | [`0x73650f...6d5894`](./contracts/ethereum-1/0x73650f79b15abe064eccb5f1bb448cb5df6d5894/) | ⚠️ Unaudited |
| Diversification | unknown | ethereum | n/a | [`0x289769...9914bb`](./contracts/ethereum-1/0x2897692e974d9d5a2a29e3deebcb54417b9914bb/) | ⚠️ Unaudited |
| EarnedAggregator | unknown | ethereum | n/a | [`0x016d66...84ea10`](./contracts/ethereum-1/0x016d662af51b4de1a75725614c70d813b684ea10/) | ⚠️ Unaudited |
| ETHPhase2Pool | unknown | ethereum | n/a | [`0x5cc2db...b05d4a`](./contracts/ethereum-1/0x5cc2db43f9c2e2029aee159be60a9dda50b05d4a/) | ⚠️ Unaudited |
| FloatMintingCeremonyZapInV1 | unknown | ethereum | n/a | [`0x263c7e...aceb56`](./contracts/ethereum-1/0x263c7e5e88c8d4394653516617103ca91baceb56/) | ⚠️ Unaudited |
| FloatTokenV1 | unknown | ethereum | n/a | [`0x4bc57f...c2f08e`](./contracts/ethereum-1/0x4bc57f8e4a53ed244a9677d0170f8a7fe4c2f08e/) | ⚠️ Unaudited |
| MintingCeremony | unknown | ethereum | n/a | [`0x14b6fb...14fcd2`](./contracts/ethereum-1/0x14b6fb6b83c01a7cde9ac2c13173695c8d14fcd2/) | ⚠️ Unaudited |
| MonetaryPolicyV1 | unknown | ethereum | n/a | [`0x6b995a...ab4fc0`](./contracts/ethereum-1/0x6b995aa6e188289d1b67c511dedf4f1291ab4fc0/) | ⚠️ Unaudited |
| MultiplierPool | unknown | ethereum | n/a | [`0x52eada...69f576`](./contracts/ethereum-1/0x52eadaff8e3d816ce205691d1d703e08d369f576/) | ⚠️ Unaudited |
| Phase1Pool | unknown | ethereum | n/a | [`0x731392...798d72`](./contracts/ethereum-1/0x73139212d0f62c6ddb6514c6a55c3778eb798d72/) | ⚠️ Unaudited |
| Phase2Pool | unknown | ethereum | n/a | [`0x673b95...991738`](./contracts/ethereum-1/0x673b95d277ef022e5efaf9f167ffdfab36991738/) | ⚠️ Unaudited |
| Phase4aPool | unknown | ethereum | n/a | [`0x3bdb2d...fe2c3e`](./contracts/ethereum-1/0x3bdb2d1003221cfc688cfbfb10433d37c0fe2c3e/) | ⚠️ Unaudited |
| Phase4Pool | unknown | ethereum | n/a | [`0x08d7e4...8754f2`](./contracts/ethereum-1/0x08d7e47beb0470fc683bbde7d836c5dcd48754f2/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x499559...7ebe5e`](./contracts/ethereum-1/0x499559941e05bd69f64100c725a25a9ed17ebe5e/) | ⚠️ Unaudited |
| RescueImplementation | unknown | ethereum | n/a | [`0xf3b29c...0c59ec`](./contracts/ethereum-1/0xf3b29cead29cbeb35cf9371504da2ff4770c59ec/) | ⚠️ Unaudited |
| TokenTimelock | unknown | ethereum | n/a | [`0xbf49a9...a4cf5e`](./contracts/ethereum-1/0xbf49a920aa4696631ce53a25a9c8fce175a4cf5e/) | ⚠️ Unaudited |
| Twap | unknown | ethereum | n/a | [`0x7cb48e...045229`](./contracts/ethereum-1/0x7cb48e0826433b2d7a2a7f0e69a716d5ca045229/) | ⚠️ Unaudited |

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
| [DL audit link](https://drive.google.com/file/d/1Vg3nCThlArC44JFj7Di5HMWziPGMFbvl/view) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20307] DL audit link

Fork inheritance lineage and inherited audits are included when available.
