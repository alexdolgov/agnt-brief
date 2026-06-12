# Agentic Audit Brief: Manta CeDeFi

⚠️ Lifecycle status: UNKNOWN - TVL dropped 34.1% over 90 days

## Project Overview

- Project: Manta CeDeFi (`manta-cedefi`)
- Website: [https://cedefi.manta.network](https://cedefi.manta.network)
- Lifecycle: unknown (Tier 0, 81.4% below peak)
- Generated: 2026-06-12T12:05:49.272Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-fc52
- Chains: manta
- Contract surface: 17 unique implementations (45 raw deployments)
- DeFi Llama TVL: $26,475,528.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Manta CeDeFi is a Manta-based yield and basis-trading product that combines centralized and decentralized finance to generate returns. Its on-chain surface is broader than a single vault and includes multiple deposit, vault, withdrawal, token or staking, routing or management, messaging, and upgrade components, including TransparentUpgradeableProxy deployments whose current implementations should be tracked separately from the proxy shells.

### Architecture

The protocol consists of a single product family with one core contract, so there are no inter-family relationships. All functionality is encapsulated within the TransparentUpgradeableProxy vault.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 17
- Raw deployments: 45
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BatchTransfer | periphery | manta | 2 deployments: manta [`0x0f8130...686b74`](./contracts/manta-169/0x0f813042a20697d121a18de2f1b4dd3cea686b74/); manta `0x26b160...3dde94` | ⚠️ Unaudited |
| DepositManager | core_logic | manta | 2 deployments: manta [`0x97f62d...57a957`](./contracts/manta-169/0x97f62d9b3251d8013f0bef0d0eafeba25557a957/); manta `0xb82a6f...ec41b2` | ⚠️ Unaudited |
| DepositManagerV2 | core_logic | manta | 2 deployments: manta [`0x9e7478...2ef15a`](./contracts/manta-169/0x9e7478b044ba9c27948f770e32aa00954e2ef15a/); manta `0xeab833...26a5bd` | ⚠️ Unaudited |
| Manager | governance | manta | 2 deployments: manta [`0x2cf590...075560`](./contracts/manta-169/0x2cf5900d1f47f49ce8d0d08718b88a84db075560/); manta `0x652384...f1fd0a` | ⚠️ Unaudited |
| MToken | token | manta | [`0x1860f0...47647e`](./contracts/manta-169/0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e/) | ⚠️ Unaudited |
| MTokenDepositEntry | token | manta | [`0xc8693e...d4018e`](./contracts/manta-169/0xc8693e492d1ec721a254daf3c075a440edd4018e/) | ⚠️ Unaudited |
| MTokenStake | token | manta | 2 deployments: manta [`0x46df6b...00f8a5`](./contracts/manta-169/0x46df6ba8e85bb6147c241bf3904918a6c800f8a5/); manta `0x866fe5...2e8fbc` | ⚠️ Unaudited |
| ProxyAdmin | governance | manta | [`0x017288...5819ae`](./contracts/manta-169/0x0172881051518db699cbbf5b8493d20a375819ae/) | ⚠️ Unaudited |
| Router | adapter | manta | [`0xefacdd...0412c9`](./contracts/manta-169/0xefacdd72800324b3e5ff35edaa3de629d30412c9/) | ⚠️ Unaudited |
| SyncOApp | unknown | manta | [`0x8ff636...5ff870`](./contracts/manta-169/0x8ff636868fec5ad39b7afbcfde2ca9e60d5ff870/) | ⚠️ Unaudited |
| SyncOAppV2 | unknown | manta | [`0x9286c6...5aa90e`](./contracts/manta-169/0x9286c6fe4e3ec48c77bd75ac1e0f7be7c95aa90e/) | ⚠️ Unaudited |
| TokenDistributer | token | manta | [`0x399440...d9858c`](./contracts/manta-169/0x39944059395a387a8ec327b4fb5ab7c5f6d9858c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | manta | 23 deployments: manta [`0x146817...553089`](./contracts/manta-169/0x1468177dbcb2a772f3d182d2f1358d442b553089/); manta `0x1b9bcc...62d4a1`; manta `0x323446...4ffc95`; manta `0x38e838...c951da`; manta `0x3acb6c...e8be8a`; manta `0x47aab1...15dca8`; manta `0x649d45...44f44a`; manta `0x6b8f1c...61c624`; manta `0x79e417...263fa9`; manta `0x7c974a...62dceb`; manta `0x87b88a...5bc31d`; manta `0x91f100...4c3e0d`; manta `0xa18bb7...11de6d`; manta `0xa8c984...47f9f9`; manta `0xaccbc4...ba594e`; manta `0xb0cbe3...ebe12c`; manta `0xc09ebb...69201d`; manta `0xc0d14a...986ee4`; manta `0xce8962...3cb923`; manta `0xd203ee...bdf0dc`; manta `0xea9d75...2e69d3`; manta `0xf6dc34...f7ab01`; manta `0xfbd65d...b00495` | ⚠️ Unaudited |
| Vault | core_logic | manta | [`0x09f21a...480931`](./contracts/manta-169/0x09f21ae31fb70af04480b5f0811821cce9480931/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | manta | 2 deployments: manta [`0x37f151...dfbeb0`](./contracts/manta-169/0x37f1516de5425cdda58c20c6ac29ba775adfbeb0/); manta `0xf41648...d1480a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | manta | `0x776f71...14f15f` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xca69e3...718b9d` | ❓ Unverified |

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
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
