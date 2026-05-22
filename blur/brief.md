# Agentic Audit Brief: Blur

## Project Overview

- Project: Blur (`blur`)
- Website: [https://blur.io/](https://blur.io/)
- Lifecycle: active (Tier 0, 91.7% below peak)
- Generated: 2026-05-22T17:25:48.748Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: blast, ethereum
- Contract surface: 17 unique implementations (27 raw deployments)
- DeFi Llama TVL: $18,878,042.00
- On-chain TVL (included contracts): $91,725,847.89
- TVL by chain: Ethereum $91,725,845.10 | Blast $2.79

## Project Description

Blur is an NFT marketplace and lending protocol that enables users to trade NFTs with advanced order types and access liquidity through peer-to-peer perpetual lending. It operates on Ethereum and Blast, offering a native token for governance and incentives.

### Architecture

The Blur Bids and Blur Lending families share the BlurToken for governance and incentives, while the BlurPoolBlast contract in Blur Bids may interact with the lending protocol for liquidity or collateral management. Both families rely on ERC1967Proxy patterns for upgradeability, indicating a shared infrastructure approach.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 17
- Raw deployments: 27
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $91,725,847.89
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BlurToken | token | ethereum | [`0x5283d2...208b44`](./contracts/ethereum-1/0x5283d291dbcf85356a21ba090e6db59121208b44/) | ⚠️ Unaudited |
| TokenLockup | token | ethereum | 5 deployments: ethereum [`0x00a644...2663df`](./contracts/ethereum-1/0x00a64427d66cca0303e2f761a1310143682663df/); ethereum `0x3f1be7...7db647`; ethereum `0x581e27...f3fb26`; ethereum `0x5a9c32...66422a`; ethereum `0xc75ade...800f53` | ⚠️ Unaudited |
| BlurPool | core_logic | ethereum | [`0x02ab04...f12da7`](./contracts/ethereum-1/0x02ab0463ca0c98de2d9b6649dcdb4ab667f12da7/) | ⚠️ Unaudited |
| BlurPoolBlast | core_logic | blast | [`0xb772d5...41b8e5`](./contracts/blast-81457/0xb772d5c5f4a2eef67dfbc89aa658d2711341b8e5/) | ⚠️ Unaudited |
| Blend | unknown | ethereum | 3 deployments: ethereum [`0x13244e...af0156`](./contracts/ethereum-1/0x13244ef110692c1d8256c8dd4aa0a09bb5af0156/); ethereum `0x294693...98a20b`; ethereum `0x97bdb4...22af72` | ⚠️ Unaudited |
| BlurAirdrop | operational_periphery | ethereum | 2 deployments: ethereum [`0xee90e5...9833e1`](./contracts/ethereum-1/0xee90e5a180ff1be8894ff178bc75459da89833e1/); ethereum `0xf2d15c...6bce25` | ⚠️ Unaudited |
| BlurAirdrop2 | operational_periphery | ethereum | [`0xb38283...ddf093`](./contracts/ethereum-1/0xb38283cb75faabb384c22f97c633606265ddf093/) | ⚠️ Unaudited |
| BlurGovernor | governance | ethereum | [`0xf7967b...845810`](./contracts/ethereum-1/0xf7967b43949fb0cec48e63e345512d5ea5845810/) | ⚠️ Unaudited |
| CalculationHelpers | periphery | ethereum | 2 deployments: ethereum [`0x5c06da...43826d`](./contracts/ethereum-1/0x5c06da8ec7945c05304d79895046d01a7943826d/); ethereum `0xacd3d2...118cf2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 2 deployments: ethereum [`0x382895...85b6c5`](./contracts/ethereum-1/0x38289588523d4495d04b4f3ceb971a119685b6c5/); ethereum `0xf561af...56a580` | ⚠️ Unaudited |
| Holding | unknown | ethereum | 2 deployments: ethereum [`0xa373e7...7cf3b3`](./contracts/ethereum-1/0xa373e7dc4561f82ecced33f017783be8047cf3b3/); ethereum `0xec2432...03933e` | ⚠️ Unaudited |
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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5283d2...208b44`](./contracts/ethereum-1/0x5283d291dbcf85356a21ba090e6db59121208b44/) | BlurToken | token | $68,532,609.26 | Verified native implementation with $68,532,609.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00a644...2663df`](./contracts/ethereum-1/0x00a64427d66cca0303e2f761a1310143682663df/) | TokenLockup | token | $23,193,225.26 | Verified native implementation with $23,193,225.26 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02ab04...f12da7`](./contracts/ethereum-1/0x02ab0463ca0c98de2d9b6649dcdb4ab667f12da7/) | BlurPool | core_logic | $10.58 | Verified native implementation with $10.58 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13244e...af0156`](./contracts/ethereum-1/0x13244ef110692c1d8256c8dd4aa0a09bb5af0156/) | Blend | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee90e5...9833e1`](./contracts/ethereum-1/0xee90e5a180ff1be8894ff178bc75459da89833e1/) | BlurAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb38283...ddf093`](./contracts/ethereum-1/0xb38283cb75faabb384c22f97c633606265ddf093/) | BlurAirdrop2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7967b...845810`](./contracts/ethereum-1/0xf7967b43949fb0cec48e63e345512d5ea5845810/) | BlurGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5c06da...43826d`](./contracts/ethereum-1/0x5c06da8ec7945c05304d79895046d01a7943826d/) | CalculationHelpers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa373e7...7cf3b3`](./contracts/ethereum-1/0xa373e7dc4561f82ecced33f017783be8047cf3b3/) | Holding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
