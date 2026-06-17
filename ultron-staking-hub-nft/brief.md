# Agentic Audit Brief: Ultron Staking Hub NFT

## Project Overview

- Project: Ultron Staking Hub NFT (`ultron-staking-hub-nft`)
- Website: [https://ultron.foundation/technology#staking-hub](https://ultron.foundation/technology#staking-hub)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:32.815Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, bsc, ethereum, fantom, polygon
- Contract surface: 10 unique implementations (12 raw deployments)
- DeFi Llama TVL: $2,996,244.73
- On-chain TVL (included contracts): $43,458.78
- TVL by chain: Bsc $38,083.88 | Ethereum $5,374.03 | Avalanche $0.87

## Project Description

Ultron Staking Hub NFT is an Ultron-network staking and rewards product where users mint and stake an NFT representing a five-year plan to earn ULX rewards. External ULX token deployments on other EVM chains should be treated as ancillary token references, not as the core Staking Hub NFT protocol or its TVL basis.

### Architecture

The ULX token family on other networks serves as the reward and staking token for the staking pools managed by the Ultron mainnet family. The proxy contracts (FuturaTreasury, Lottery, Autoplay, Platform) likely provide shared infrastructure for treasury management, lottery mechanics, automated play, and platform governance across both families.

## Contract Surface Quality

- Indexed contracts: 164; live-surface contracts included: 12 (11 live, 1 unknown).
- Excluded by liveness: 143 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 0/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 10
- Raw deployments: 12
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $43,458.78
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20Custom | token | ethereum | n/a | 3 deployments: ethereum [`0x5aa158...4a636f`](./contracts/ethereum-1/0x5aa158404fed6b4730c13f49d3a7f820e14a636f/); bsc `0xd983ab...43f810`; avalanche `0xc685e8...c404ef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9dcd76...292e27` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x8867f4...91949d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ab2a6...4b1412` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9dcd76...292e27` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
