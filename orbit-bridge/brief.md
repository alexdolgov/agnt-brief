# Agentic Audit Brief: Orbit Bridge

## Project Overview

- Project: Orbit Bridge (`orbit-bridge`)
- Website: [https://bridge.orbitchain.io](https://bridge.orbitchain.io)
- Lifecycle: active (Tier 0, 94.4% below peak)
- Generated: 2026-06-12T14:47:12.239Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: bsc, celo, ethereum, heco, klaytn, polygon
- Contract surface: 24 unique implementations (29 raw deployments)
- DeFi Llama TVL: $15,310,376.14
- On-chain TVL (included contracts): $829,871.42
- TVL by chain: Ethereum $631,043.73 | Bsc $189,641.01 | Polygon $9,164.65 | Celo $22.03

## Project Description

Orbit Bridge is an active interchain bridge supporting a broad set of EVM and non-EVM networks across 15+ chains. It enables cross-chain asset transfers using bridge/vault or equivalent custody contracts that lock, release, or otherwise custody assets on source and destination chains. The currently listed contracts represent only a partial EVM contract surface and should not be treated as complete coverage of all current TVL-bearing Orbit Bridge deployments.

### Architecture

The Orbit Bridge family consists of vault contracts deployed across multiple chains, all sharing the same core logic for asset locking and release. The ORCToken likely serves as the governance or utility token for the bridge ecosystem, while the unnamed contracts may provide supporting infrastructure such as access control or adapters.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 24
- Raw deployments: 29
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $829,871.42
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ORCToken | token | ethereum | [`0x662b67...ef2f51`](./contracts/ethereum-1/0x662b67d00a13faf93254714dd601f5ed49ef2f51/) | ⚠️ Unaudited |
| Vault | core_logic | polygon | 2 deployments: bsc `0x89c527...beb780`; polygon [`0x506dc4...28dbd5`](./contracts/polygon-137/0x506dc4c6408813948470a06ef6e4a1daf228dbd5/) | ⚠️ Unaudited |
| EthVaultImpl | core_logic | ethereum | 3 deployments: ethereum [`0x1bf68a...cb489a`](./contracts/ethereum-1/0x1bf68a9d1eaee7826b3593c20a0ca93293cb489a/); ethereum `0x4f16a2...9ff81e`; ethereum `0xc3430b...ee9454` | ⚠️ Unaudited |
| CeloVaultImpl | core_logic | celo | 2 deployments: celo [`0x7eaab7...80af17`](./contracts/celo-42220/0x7eaab7a96fc311377709b12a81cd87228780af17/); celo `0x979cd0...da3777` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | 2 deployments: polygon [`0x3b31c9...174720`](./contracts/polygon-137/0x3b31c980598f9237d9c14bb44118773b92174720/); celo `0x6a1cf2...510f53` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0207ec...cab30b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x093333...25d0cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x123d6d...0f79d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2127ed...24b79f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ff16c...95fbe8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54ad07...34a4d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6bd8e3...e6706f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c943d...0463c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f1014...d8a1f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd23c23...8721b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8c163...9b8ac4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff3eb6...a912a7` | ❓ Unverified |
| UnnamedContract | unknown | heco | `0x38c92a...4d279f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6aeec0...dbaee8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x98d729...a708b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9fad26...c4ee25` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xda4721...842303` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x9abc3f...3f648d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe66502...eb76a7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Theori_OrbitBridge_2022_1Q.pdf](https://github.com/orbit-chain/bridge-contract/blob/master/audit/Theori_OrbitBridge_2022_1Q.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1951] Theori_OrbitBridge_2022_1Q.pdf

Fork inheritance lineage and inherited audits are included when available.
