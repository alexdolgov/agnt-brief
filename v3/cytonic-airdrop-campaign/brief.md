# Agentic Audit Brief: Cytonic Airdrop Campaign

## Project Overview

- Project: Cytonic Airdrop Campaign (`cytonic-airdrop-campaign`)
- Website: [https://www.cytonic.com/](https://www.cytonic.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.409Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum, manta
- Contract surface: 36 unique implementations (77 raw deployments)
- DeFi Llama TVL: $168,991.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 68 project-authored contract(s) across 2 chain(s); 8 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 17 common project-authored base contract(s) (whitelist, ownable2step, sybase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 70 (49 live, 21 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/20 (0.0%)
- Deployed-live implementations: 20 of 36 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/32
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 36
- Raw deployments: 77
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4195ed...b6bc56`](./contracts/ethereum-1/0x4195ed6e112cbddc1adf7271047dba4e6bb6bc56/); ethereum `0x796592...e3333f` | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x527d6d...855d23`](./contracts/ethereum-1/0x527d6db79bff473b8dd722429bdb3b0c8b855d23/); ethereum `0x52b5f5...8a7d11` | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x625087...b95eac`](./contracts/ethereum-1/0x625087d72c762254a72cb22cc2eca40da6b95eac/); ethereum `0xbb7b99...593e64` | ⚠️ Unaudited |
| BatchTransfer | periphery | manta | n/a | 2 deployments: manta [`0x0f8130...686b74`](./contracts/manta-169/0x0f813042a20697d121a18de2f1b4dd3cea686b74/); manta `0x26b160...3dde94` | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | 5 deployments: ethereum [`0x2a41d5...92ea28`](./contracts/ethereum-1/0x2a41d539d5a599a6ea6a79e32bd047277892ea28/); ethereum `0x38956b...8d80a7`; ethereum `0xb987fa...370df6`; manta `0x97f62d...57a957`; manta `0xb82a6f...ec41b2` | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | [`0x5e6342...9a4889`](./contracts/ethereum-1/0x5e6342d8090665be14eeb8154c8a87b7249a4889/) | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb3d9cf...5b8f39`](./contracts/ethereum-1/0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39/); ethereum `0xeee620...f4524b` | ⚠️ Unaudited |
| DepositManagerV2 | core_logic | manta | n/a | 2 deployments: manta [`0x9e7478...2ef15a`](./contracts/manta-169/0x9e7478b044ba9c27948f770e32aa00954e2ef15a/); manta `0xeab833...26a5bd` | ⚠️ Unaudited |
| EigenLayerManager | unknown | ethereum | n/a | [`0xc94cff...6d0936`](./contracts/ethereum-1/0xc94cffd5249df4008a043ee61e13f19af16d0936/) | ⚠️ Unaudited |
| Manager | governance | manta | n/a | 2 deployments: manta [`0x2cf590...075560`](./contracts/manta-169/0x2cf5900d1f47f49ce8d0d08718b88a84db075560/); manta `0x652384...f1fd0a` | ⚠️ Unaudited |
| MToken | token | manta | n/a | [`0x1860f0...47647e`](./contracts/manta-169/0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e/) | ⚠️ Unaudited |
| MTokenDepositEntry | token | manta | n/a | [`0xc8693e...d4018e`](./contracts/manta-169/0xc8693e492d1ec721a254daf3c075a440edd4018e/) | ⚠️ Unaudited |
| MTokenStake | token | manta | n/a | 2 deployments: manta [`0x46df6b...00f8a5`](./contracts/manta-169/0x46df6ba8e85bb6147c241bf3904918a6c800f8a5/); manta `0x866fe5...2e8fbc` | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0x46ddc3...1a1a1d`](./contracts/ethereum-1/0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d/) | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0xaae0b3...a1c524`](./contracts/ethereum-1/0xaae0b305b3f1edde7b11b680d4fa9252f7a1c524/) | ⚠️ Unaudited |
| ProxyAdmin | governance | manta | n/a | 3 deployments: ethereum `0x25eaf5...5b8846`; ethereum `0xd750b8...9bfd14`; manta [`0x017288...5819ae`](./contracts/manta-169/0x0172881051518db699cbbf5b8493d20a375819ae/) | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | n/a | [`0xd9a442...306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| RepricingOracle | unknown | ethereum | n/a | [`0x289d60...2d2d71`](./contracts/ethereum-1/0x289d600447a74b952ad16f0bd53b8eaaac2d2d71/) | ⚠️ Unaudited |
| RepricingOracle | unknown | ethereum | n/a | [`0xd5a73c...d2e959`](./contracts/ethereum-1/0xd5a73c748449a45cc7d9f21c7ed3ab9eb3d2e959/) | ⚠️ Unaudited |
| Router | adapter | manta | n/a | [`0xefacdd...0412c9`](./contracts/manta-169/0xefacdd72800324b3e5ff35edaa3de629d30412c9/) | ⚠️ Unaudited |
| RswETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4796d9...4e2362`](./contracts/ethereum-1/0x4796d939b22027c2876d5ce9fde52da9ec4e2362/); ethereum `0xfae103...afa6c0` | ⚠️ Unaudited |
| RswEXIT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x58749c...56f064`](./contracts/ethereum-1/0x58749c46ffe97e4d79508a2c781c440f4756f064/); ethereum `0xbd6a5e...e06479` | ⚠️ Unaudited |
| StakerProxy | unknown | ethereum | n/a | [`0xb68b12...df17a0`](./contracts/ethereum-1/0xb68b125e5b0f2600841b2bba484e76a495df17a0/) | ⚠️ Unaudited |
| StakerProxy | unknown | ethereum | n/a | [`0xe19466...06e8ae`](./contracts/ethereum-1/0xe194661251877a69a1282bd0b2d344ccba06e8ae/) | ⚠️ Unaudited |
| swETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0xce95ba...affbfc`](./contracts/ethereum-1/0xce95ba824ae9a4df9b303c0bbf4d605ba2affbfc/); ethereum `0xf951e3...7ded78` | ⚠️ Unaudited |
| swEXIT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02454d...6c8f78`](./contracts/ethereum-1/0x02454d649054276e3ed8b9f17f8d5f49ac6c8f78/); ethereum `0x48c11b...251663` | ⚠️ Unaudited |
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

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeDepositor | operational_periphery | ethereum | n/a | `0xaea5bf...642e0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa35f12...240a14` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x776f71...14f15f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xca69e3...718b9d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cytonic-fuzzland-report.pdf](https://file.cytonic.com/cytonic-fuzzland-report.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [ZellicAuditReport.pdf](https://file.cytonic.com/ZellicAuditReport.pdf) | Zellic | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12980] cytonic-fuzzland-report.pdf
- [12981] ZellicAuditReport.pdf

Fork inheritance lineage and inherited audits are included when available.
