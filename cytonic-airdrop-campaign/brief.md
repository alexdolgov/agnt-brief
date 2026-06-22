# Agentic Audit Brief: Cytonic Airdrop Campaign

⚠️ Lifecycle status: DEAD - TVL dropped 56.5% over 90 days

## Project Overview

- Project: Cytonic Airdrop Campaign (`cytonic-airdrop-campaign`)
- Website: [https://www.cytonic.com/](https://www.cytonic.com/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T10:07:53.809Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, manta
- Contract surface: 20 unique implementations (48 raw deployments)
- DeFi Llama TVL: $175,337.51
- On-chain TVL (included contracts): $70,631,963.76
- TVL by chain: Ethereum $70,631,963.76

## Project Description

The Cytonic Airdrop Campaign is a DeFi protocol that allows users to deposit assets (likely ETH or stETH) into a vault to earn rewards, potentially including airdrop points. It also provides a bridge depositor contract for cross-chain asset transfers, enabling participation across Ethereum and Manta networks.

### Architecture

The Cytonic Airdrop Campaign family relies on the BridgeDepositor from the EVM chains family to facilitate cross-chain deposits into the vault. The vault (PufferVaultV5) and token (swETH) are core to the campaign, while the additional TransparentUpgradeableProxy contracts likely serve as supporting infrastructure for access control or reward distribution.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 48 (3 live, 45 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 20
- Raw deployments: 48
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $70,631,963.76
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $70,631,963.76 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PufferVaultV5 | core_logic | ethereum | unit-42262 | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| swETH | token | ethereum | unit-42263 | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| BatchTransfer | periphery | manta | n/a | 2 deployments: manta [`0x0f8130...686b74`](./contracts/manta-169/0x0f813042a20697d121a18de2f1b4dd3cea686b74/); manta `0x26b160...3dde94` | ⚠️ Unaudited |
| DepositManager | core_logic | manta | n/a | 2 deployments: manta [`0x97f62d...57a957`](./contracts/manta-169/0x97f62d9b3251d8013f0bef0d0eafeba25557a957/); manta `0xb82a6f...ec41b2` | ⚠️ Unaudited |
| DepositManagerV2 | core_logic | manta | n/a | 2 deployments: manta [`0x9e7478...2ef15a`](./contracts/manta-169/0x9e7478b044ba9c27948f770e32aa00954e2ef15a/); manta `0xeab833...26a5bd` | ⚠️ Unaudited |
| Manager | governance | manta | n/a | 2 deployments: manta [`0x2cf590...075560`](./contracts/manta-169/0x2cf5900d1f47f49ce8d0d08718b88a84db075560/); manta `0x652384...f1fd0a` | ⚠️ Unaudited |
| MToken | token | manta | n/a | [`0x1860f0...47647e`](./contracts/manta-169/0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e/) | ⚠️ Unaudited |
| MTokenDepositEntry | token | manta | n/a | [`0xc8693e...d4018e`](./contracts/manta-169/0xc8693e492d1ec721a254daf3c075a440edd4018e/) | ⚠️ Unaudited |
| MTokenStake | token | manta | n/a | 2 deployments: manta [`0x46df6b...00f8a5`](./contracts/manta-169/0x46df6ba8e85bb6147c241bf3904918a6c800f8a5/); manta `0x866fe5...2e8fbc` | ⚠️ Unaudited |
| ProxyAdmin | governance | manta | n/a | [`0x017288...5819ae`](./contracts/manta-169/0x0172881051518db699cbbf5b8493d20a375819ae/) | ⚠️ Unaudited |
| Router | adapter | manta | n/a | [`0xefacdd...0412c9`](./contracts/manta-169/0xefacdd72800324b3e5ff35edaa3de629d30412c9/) | ⚠️ Unaudited |
| SyncOApp | unknown | manta | n/a | [`0x8ff636...5ff870`](./contracts/manta-169/0x8ff636868fec5ad39b7afbcfde2ca9e60d5ff870/) | ⚠️ Unaudited |
| SyncOAppV2 | unknown | manta | n/a | [`0x9286c6...5aa90e`](./contracts/manta-169/0x9286c6fe4e3ec48c77bd75ac1e0f7be7c95aa90e/) | ⚠️ Unaudited |
| TokenDistributer | token | manta | n/a | [`0x399440...d9858c`](./contracts/manta-169/0x39944059395a387a8ec327b4fb5ab7c5f6d9858c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | manta | n/a | 23 deployments: manta [`0x146817...553089`](./contracts/manta-169/0x1468177dbcb2a772f3d182d2f1358d442b553089/); manta `0x1b9bcc...62d4a1`; manta `0x323446...4ffc95`; manta `0x38e838...c951da`; manta `0x3acb6c...e8be8a`; manta `0x47aab1...15dca8`; manta `0x649d45...44f44a`; manta `0x6b8f1c...61c624`; manta `0x79e417...263fa9`; manta `0x7c974a...62dceb`; manta `0x87b88a...5bc31d`; manta `0x91f100...4c3e0d`; manta `0xa18bb7...11de6d`; manta `0xa8c984...47f9f9`; manta `0xaccbc4...ba594e`; manta `0xb0cbe3...ebe12c`; manta `0xc09ebb...69201d`; manta `0xc0d14a...986ee4`; manta `0xce8962...3cb923`; manta `0xd203ee...bdf0dc`; manta `0xea9d75...2e69d3`; manta `0xf6dc34...f7ab01`; manta `0xfbd65d...b00495` | ⚠️ Unaudited |
| Vault | core_logic | manta | n/a | [`0x09f21a...480931`](./contracts/manta-169/0x09f21ae31fb70af04480b5f0811821cce9480931/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | manta | n/a | 2 deployments: manta [`0x37f151...dfbeb0`](./contracts/manta-169/0x37f1516de5425cdda58c20c6ac29ba775adfbeb0/); manta `0xf41648...d1480a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeDepositor | operational_periphery | ethereum | unit-42261 | `0xaea5bf...642e0b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x776f71...14f15f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xca69e3...718b9d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://file.cytonic.com/cytonic-fuzzland-report.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [DL audit link](https://file.cytonic.com/ZellicAuditReport.pdf) | Zellic | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0x0f8130...686b74`](./contracts/manta-169/0x0f813042a20697d121a18de2f1b4dd3cea686b74/) | BatchTransfer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x97f62d...57a957`](./contracts/manta-169/0x97f62d9b3251d8013f0bef0d0eafeba25557a957/) | DepositManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x9e7478...2ef15a`](./contracts/manta-169/0x9e7478b044ba9c27948f770e32aa00954e2ef15a/) | DepositManagerV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2cf590...075560`](./contracts/manta-169/0x2cf5900d1f47f49ce8d0d08718b88a84db075560/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1860f0...47647e`](./contracts/manta-169/0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e/) | MToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc8693e...d4018e`](./contracts/manta-169/0xc8693e492d1ec721a254daf3c075a440edd4018e/) | MTokenDepositEntry | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x46df6b...00f8a5`](./contracts/manta-169/0x46df6ba8e85bb6147c241bf3904918a6c800f8a5/) | MTokenStake | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xefacdd...0412c9`](./contracts/manta-169/0xefacdd72800324b3e5ff35edaa3de629d30412c9/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x399440...d9858c`](./contracts/manta-169/0x39944059395a387a8ec327b4fb5ab7c5f6d9858c/) | TokenDistributer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x09f21a...480931`](./contracts/manta-169/0x09f21ae31fb70af04480b5f0811821cce9480931/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x37f151...dfbeb0`](./contracts/manta-169/0x37f1516de5425cdda58c20c6ac29ba775adfbeb0/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12980] DL audit link
- [12981] DL audit link

Fork inheritance lineage and inherited audits are included when available.
