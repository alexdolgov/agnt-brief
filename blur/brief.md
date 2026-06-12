# Agentic Audit Brief: Blur

## Project Overview

- Project: Blur (`blur`)
- Website: [https://blur.io/](https://blur.io/)
- Lifecycle: active (Tier 0, 93.4% below peak)
- Generated: 2026-06-12T14:48:56.243Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: blast, ethereum
- Contract surface: 21 unique implementations (38 raw deployments)
- DeFi Llama TVL: $14,962,620.00
- On-chain TVL (included contracts): $91,726,191.69
- TVL by chain: Ethereum $91,725,846.77 | Blast $344.92

## Project Description

Blur is an NFT marketplace with bidding and lending components operating on Ethereum and Blast. It enables NFT trading and access to NFT-backed liquidity, with a native token used for governance and incentives.

### Architecture

The Blur Bids and Blur Lending families share the BlurToken for governance and incentives, while the BlurPoolBlast contract in Blur Bids may interact with the lending protocol for liquidity or collateral management. Both families rely on ERC1967Proxy patterns for upgradeability, indicating a shared infrastructure approach.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 21
- Raw deployments: 38
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $91,726,191.69
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BlurToken | token | ethereum | [`0x5283d2...208b44`](./contracts/ethereum-1/0x5283d291dbcf85356a21ba090e6db59121208b44/) | ⚠️ Unaudited |
| TokenLockup | token | ethereum | 5 deployments: ethereum [`0x00a644...2663df`](./contracts/ethereum-1/0x00a64427d66cca0303e2f761a1310143682663df/); ethereum `0x3f1be7...7db647`; ethereum `0x581e27...f3fb26`; ethereum `0x5a9c32...66422a`; ethereum `0xc75ade...800f53` | ⚠️ Unaudited |
| BlurPoolBlast | unknown | blast | 3 deployments: blast [`0x3b9439...7f6469`](./contracts/blast-81457/0x3b9439cbd138bb8f79f44a2e61c1add1997f6469/); blast `0xb772d5...41b8e5`; blast `0xf00032...8f5ee4` | ⚠️ Unaudited |
| BlurPool | core_logic | ethereum | 3 deployments: ethereum [`0x000000...1887ac`](./contracts/ethereum-1/0x0000000000a39bb272e79075ade125fd351887ac/); ethereum `0x01a656...358b17`; ethereum `0x02ab04...f12da7` | ⚠️ Unaudited |
| Blend | unknown | ethereum | 4 deployments: ethereum [`0x13244e...af0156`](./contracts/ethereum-1/0x13244ef110692c1d8256c8dd4aa0a09bb5af0156/); ethereum `0x294693...98a20b`; ethereum `0x97bdb4...22af72`; ethereum `0xb258ca...22ea56` | ⚠️ Unaudited |
| BlurAirdrop | operational_periphery | ethereum | 2 deployments: ethereum [`0xee90e5...9833e1`](./contracts/ethereum-1/0xee90e5a180ff1be8894ff178bc75459da89833e1/); ethereum `0xf2d15c...6bce25` | ⚠️ Unaudited |
| BlurAirdrop2 | operational_periphery | ethereum | [`0xb38283...ddf093`](./contracts/ethereum-1/0xb38283cb75faabb384c22f97c633606265ddf093/) | ⚠️ Unaudited |
| BlurExchange | unknown | ethereum | 2 deployments: ethereum [`0x000000...b95127`](./contracts/ethereum-1/0x000000000000ad05ccc4f10045630fb830b95127/); ethereum `0x983e96...44862d` | ⚠️ Unaudited |
| BlurExchangeV2 | unknown | ethereum | 2 deployments: ethereum [`0x5fa607...8a7837`](./contracts/ethereum-1/0x5fa60726e62c50af45ff2f6280c468da438a7837/); ethereum `0xb2ecfe...10cea5` | ⚠️ Unaudited |
| BlurGovernor | governance | ethereum | [`0xf7967b...845810`](./contracts/ethereum-1/0xf7967b43949fb0cec48e63e345512d5ea5845810/) | ⚠️ Unaudited |
| BlurSwap | proxy | ethereum | [`0x39da41...d0d541`](./contracts/ethereum-1/0x39da41747a83aee658334415666f3ef92dd0d541/) | ⚠️ Unaudited |
| CalculationHelpers | periphery | ethereum | 2 deployments: ethereum [`0x5c06da...43826d`](./contracts/ethereum-1/0x5c06da8ec7945c05304d79895046d01a7943826d/); ethereum `0xacd3d2...118cf2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 2 deployments: ethereum [`0x382895...85b6c5`](./contracts/ethereum-1/0x38289588523d4495d04b4f3ceb971a119685b6c5/); ethereum `0xf561af...56a580` | ⚠️ Unaudited |
| Holding | unknown | ethereum | 2 deployments: ethereum [`0xa373e7...7cf3b3`](./contracts/ethereum-1/0xa373e7dc4561f82ecced33f017783be8047cf3b3/); ethereum `0xec2432...03933e` | ⚠️ Unaudited |
| SafeCollectionBidPolicyERC721 | unknown | ethereum | [`0x000000...aed232`](./contracts/ethereum-1/0x0000000000b92d5d043faf7cecf7e2ee6aaed232/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x5be718...e4be3f`](./contracts/ethereum-1/0x5be718621a3c63c7c585f57661d25431d5e4be3f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0de58b...88df4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x10f6d7...eea7de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56e4fe...cb4fb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6bd54b...2a88af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x726454...69a64b` | ❓ Unverified |

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
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
