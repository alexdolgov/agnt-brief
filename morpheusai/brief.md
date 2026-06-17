# Agentic Audit Brief: MorpheusAI

⚠️ Lifecycle status: DECLINING - TVL changed 53.7% over 90 days

## Project Overview

- Project: MorpheusAI (`morpheusai`)
- Website: [https://mor.org](https://mor.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:36.892Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum
- Contract surface: 12 unique implementations (17 raw deployments)
- DeFi Llama TVL: $20,738,151.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

MorpheusAI is decentralized AI infrastructure for building, deploying, and scaling AI applications and agents. The protocol combines yield-powered tokenomics, decentralized compute, open-source code, and MOR emissions across Capital, Compute, Code, and Builders participants. Its current surface should be described across Ethereum, Arbitrum, and Base/accounting exposure rather than only Ethereum and Arbitrum, and DepositPool deployments should only be claimed for Ethereum unless a live Arbitrum DepositPool address is separately verified.

### Architecture

The DepositPool contracts on Ethereum and Arbitrum interact with DistributorV2 and RewardPool to manage staking and reward distribution. Cross-chain communication is handled by L1Sender/L2MessageReceiver pairs, while ChainLinkDataConsumer provides oracle data and FeeConfig manages protocol fees.

## Contract Surface Quality

- Indexed contracts: 106; live-surface contracts included: 17 (17 live, 0 unknown).
- Excluded by liveness: 41 inactive, 48 singleton, 0 uninitialized.
- Deployment units: 4/27 live.
- Detected codebases: aave-v2
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 17
- Audits discovered: 18
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 16 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BuildersV4 | unknown | base | unit-23484 | [`0x42bb44...7ef4b9`](./contracts/base-8453/0x42bb446eae6dca7723a9ebdb81ea88afe77ef4b9/) | ⚠️ Unaudited |
| ChainLinkDataConsumer | unknown | ethereum | unit-23471 (3 proxies) | 3 deployments: ethereum [`0x18faef...7513b0`](./contracts/ethereum-1/0x18faef315b40a6d9cf49628f1133b1aa507513b0/); ethereum `0x2265ae...95ed50`; ethereum `0xd18226...3bbc5e` | ⚠️ Unaudited |
| DelegateFactory | registry | base | unit-23483 | [`0x1b4836...4ff924`](./contracts/base-8453/0x1b48365e33802943b5d98954efabd366f04ff924/) | ⚠️ Unaudited |
| Distributor | operational_periphery | ethereum | n/a | [`0x5b660a...b45f64`](./contracts/ethereum-1/0x5b660ab78f3ac743953f9e68630a2d66e7b45f64/) | ⚠️ Unaudited |
| L1SenderV2 | unknown | ethereum | n/a | [`0x2bc54c...66515a`](./contracts/ethereum-1/0x2bc54ca13a75b24630070e73173cc2f35d66515a/) | ⚠️ Unaudited |
| LinearDistributionIntervalDecrease | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7431ad...82b8e3`](./contracts/ethereum-1/0x7431ada8a591c955a994a21710752ef9b882b8e3/); ethereum `0xfb1a7d...a4825c`; arbitrum `0x9380d7...7cb384` | ⚠️ Unaudited |
| LockMultiplierMath | unknown | ethereum | n/a | [`0x345b8b...012cb0`](./contracts/ethereum-1/0x345b8b23c38f70f1d77560c60493bb583f012cb0/) | ⚠️ Unaudited |
| LumerinDiamond | unknown | base | n/a | [`0x6abe1d...d3030a`](./contracts/base-8453/0x6abe1d282f72b474e54527d93b979a4f64d3030a/) | ⚠️ Unaudited |
| MOR | unknown | arbitrum | n/a | [`0x7431ad...82b8e3`](./contracts/arbitrum-42161/0x7431ada8a591c955a994a21710752ef9b882b8e3/) | ⚠️ Unaudited |
| MOROFT | unknown | arbitrum | n/a | 2 deployments: ethereum `0xcbb8f1...9dcec0`; arbitrum [`0x092baa...bcfc86`](./contracts/arbitrum-42161/0x092baadb7def4c3981454dd9c0a0d7ff07bcfc86/) | ⚠️ Unaudited |
| ReferrerLib | unknown | ethereum | n/a | [`0x9a397c...6d2965`](./contracts/ethereum-1/0x9a397c638bd9611539e7992b32e206102e6d2965/) | ⚠️ Unaudited |
| RewardPool | unknown | base | unit-23487 | [`0xdc99a8...dc3980`](./contracts/base-8453/0xdc99a8596e395e52aba2bd08c623e1e428dc3980/) | ⚠️ Unaudited |

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
| [Code4rena x Morpheus Capital V2 Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Code4rena%20x%20Morpheus%20Capital%20V2%20Audit%20Report.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [MOR20 Contracts | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR20%20Contracts%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Morpheus Capital V2 Zenith Audit Report.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Morpheus%20Capital%20V2%20Zenith%20Audit%20Report.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Morpheus BuildersV2 Audit Report | Trust Security.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Builders/Morpheus%20BuildersV2%20Audit%20Report%20%7C%20Trust%20Security.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Morpheus Lumerin Audit Report 1 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%201%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Morpheus Lumerin Audit Report 2 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%202%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Morpheus Lumerin Audit Report 3 | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Compute/Morpheus%20Lumerin%20Audit%20Report%203%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Distribution V1 Audit | Community.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Audit%20%7C%20Community.md) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Distribution V1 Public Bug Bounty | Code Hawks.md](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V1%20Public%20Bug%20Bounty%20%7C%20Code%20Hawks.md) | Cyfrin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Distribution V2 Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V2%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Distribution V3 (Capital Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Capital%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Distribution V3 (Code Staking) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V3%20(Code%20Staking)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Distribution V4 (Claim Lock) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V4%20(Claim%20Lock)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [Distribution V5 (Referral Program) Audit | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/Distribution%20Contract/Distribution%20V5%20(Referral%20Program)%20Audit%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [L2TokenReceiverV2 Audit (Final) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Final)%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [L2TokenReceiverV2 Audit (Initial) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/L2%20Token%20Receiver%20V2/L2TokenReceiverV2%20Audit%20(Initial)%20%7C%20Renascence.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Dynamic%20Minter%20Security%20Audit%20(Wormhole)%20%7C%20Renascence.pdf) | yAudit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [MOR Token Contract | OpenZepellin.pdf](https://github.com/MorpheusAIs/Docs/blob/main/Security%20Audit%20Reports/MOR%20OFT%20Token/MOR%20Token%20Contract%20%7C%20OpenZepellin.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12357] Code4rena x Morpheus Capital V2 Audit Report.pdf
- [12358] MOR20 Contracts | Renascence.pdf
- [12359] Morpheus Capital V2 Zenith Audit Report.pdf
- [12360] Morpheus BuildersV2 Audit Report | Trust Security.pdf
- [12361] Morpheus Lumerin Audit Report 1 | Renascence.pdf
- [12362] Morpheus Lumerin Audit Report 2 | Renascence.pdf
- [12363] Morpheus Lumerin Audit Report 3 | Renascence.pdf
- [12364] Distribution V1 Audit | Community.md
- [12365] Distribution V1 Public Bug Bounty | Code Hawks.md
- [12366] Distribution V2 Audit | Renascence.pdf
- [12367] Distribution V3 (Capital Staking) Audit | Renascence.pdf
- [12368] Distribution V3 (Code Staking) Audit | Renascence.pdf
- [12369] Distribution V4 (Claim Lock) Audit | Renascence.pdf
- [12370] Distribution V5 (Referral Program) Audit | Renascence.pdf
- [12371] L2TokenReceiverV2 Audit (Final) | Renascence.pdf
- [12372] L2TokenReceiverV2 Audit (Initial) | Renascence.pdf
- [12373] MOR Dynamic Minter Security Audit (Wormhole) | Renascence.pdf
- [12374] MOR Token Contract | OpenZepellin.pdf

Fork inheritance lineage and inherited audits are included when available.
