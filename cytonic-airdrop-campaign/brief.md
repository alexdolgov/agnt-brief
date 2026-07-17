# Agentic Audit Brief: Cytonic Airdrop Campaign

## Project Overview

- Project: Cytonic Airdrop Campaign (`cytonic-airdrop-campaign`)
- Website: [https://www.cytonic.com/](https://www.cytonic.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.740Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-1bf2
- Chains: ethereum, manta
- Contract surface: 20 unique implementations (48 raw deployments)
- DeFi Llama TVL: $168,991.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 68 project-authored contract(s) across 2 chain(s); 8 ERC20 tokens, 3 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 17 common project-authored base contract(s) (whitelist, ownable2step, sybase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 48; live-surface contracts included: 48 (28 live, 20 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 5 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/17
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 20
- Raw deployments: 48
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

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchTransfer | periphery | manta | n/a | 2 deployments: manta [`0x0f813042a20697d121a18de2f1b4dd3cea686b74`](./contracts/manta-169/0x0f813042a20697d121a18de2f1b4dd3cea686b74/); manta `0x26b16045b60b7dae6e7aed115649bc34843dde94` | ⚠️ Unaudited |
| DepositManager | core_logic | manta | n/a | 2 deployments: manta [`0x97f62d9b3251d8013f0bef0d0eafeba25557a957`](./contracts/manta-169/0x97f62d9b3251d8013f0bef0d0eafeba25557a957/); manta `0xb82a6f1f16077ca92b6168b3d8d883e7f9ec41b2` | ⚠️ Unaudited |
| DepositManagerV2 | core_logic | manta | n/a | 2 deployments: manta [`0x9e7478b044ba9c27948f770e32aa00954e2ef15a`](./contracts/manta-169/0x9e7478b044ba9c27948f770e32aa00954e2ef15a/); manta `0xeab833511fd89045f6dddab931cdcd95dd26a5bd` | ⚠️ Unaudited |
| Manager | governance | manta | n/a | 2 deployments: manta [`0x2cf5900d1f47f49ce8d0d08718b88a84db075560`](./contracts/manta-169/0x2cf5900d1f47f49ce8d0d08718b88a84db075560/); manta `0x6523844d7720871bd7d6d82d6af6efc8b1f1fd0a` | ⚠️ Unaudited |
| MToken | token | manta | n/a | [`0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e`](./contracts/manta-169/0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e/) | ⚠️ Unaudited |
| MTokenDepositEntry | token | manta | n/a | [`0xc8693e492d1ec721a254daf3c075a440edd4018e`](./contracts/manta-169/0xc8693e492d1ec721a254daf3c075a440edd4018e/) | ⚠️ Unaudited |
| MTokenStake | token | manta | n/a | 2 deployments: manta [`0x46df6ba8e85bb6147c241bf3904918a6c800f8a5`](./contracts/manta-169/0x46df6ba8e85bb6147c241bf3904918a6c800f8a5/); manta `0x866fe5e7f158ce659051d0cbca58b98ff42e8fbc` | ⚠️ Unaudited |
| ProxyAdmin | governance | manta | n/a | [`0x0172881051518db699cbbf5b8493d20a375819ae`](./contracts/manta-169/0x0172881051518db699cbbf5b8493d20a375819ae/) | ⚠️ Unaudited |
| PufferVaultV5 | core_logic | ethereum | n/a | [`0xd9a442856c234a39a81a089c06451ebaa4306a72`](./contracts/ethereum-1/0xd9a442856c234a39a81a089c06451ebaa4306a72/) | ⚠️ Unaudited |
| Router | adapter | manta | n/a | [`0xefacdd72800324b3e5ff35edaa3de629d30412c9`](./contracts/manta-169/0xefacdd72800324b3e5ff35edaa3de629d30412c9/) | ⚠️ Unaudited |
| swETH | token | ethereum | n/a | [`0xf951e335afb289353dc249e82926178eac7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| SyncOApp | unknown | manta | n/a | [`0x8ff636868fec5ad39b7afbcfde2ca9e60d5ff870`](./contracts/manta-169/0x8ff636868fec5ad39b7afbcfde2ca9e60d5ff870/) | ⚠️ Unaudited |
| SyncOAppV2 | unknown | manta | n/a | [`0x9286c6fe4e3ec48c77bd75ac1e0f7be7c95aa90e`](./contracts/manta-169/0x9286c6fe4e3ec48c77bd75ac1e0f7be7c95aa90e/) | ⚠️ Unaudited |
| TokenDistributer | token | manta | n/a | [`0x39944059395a387a8ec327b4fb5ab7c5f6d9858c`](./contracts/manta-169/0x39944059395a387a8ec327b4fb5ab7c5f6d9858c/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | manta | n/a | 23 deployments: manta [`0x1468177dbcb2a772f3d182d2f1358d442b553089`](./contracts/manta-169/0x1468177dbcb2a772f3d182d2f1358d442b553089/); manta `0x1b9bcc6644cc9b5e1f89abaab66904f5a562d4a1`; manta `0x323446390012a5438bb32f5329d3ab3eef4ffc95`; manta `0x38e8381f38cfd313c9ed37190b427a98e1c951da`; manta `0x3acb6c0169a37885230852ed0ecf5126bbe8be8a`; manta `0x47aab167bcaa950fe61aaaee3b14e38c1315dca8`; manta `0x649d4524897ce85a864dc2a2d5a11adb3044f44a`; manta `0x6b8f1c84e1f8866532770951d12ba73bb161c624`; manta `0x79e41784e4f9db9323cca25ebb8d983d80263fa9`; manta `0x7c974aa30b2f47b9dcae24ab4a5142250f62dceb`; manta `0x87b88a619a4b3aaf24619426cc1404ac215bc31d`; manta `0x91f100fa1515198a1d2af9d14593f8dba44c3e0d`; manta `0xa18bb7a02593e9ea405aa312c28309415711de6d`; manta `0xa8c984ed3488a60b084e354082fc25fa9147f9f9`; manta `0xaccbc418a994a27a75644d8d591afc22faba594e`; manta `0xb0cbe3581570652d3b6148e213e45ed7efebe12c`; manta `0xc09ebbff9ac26025081fc57c6115b98d5a69201d`; manta `0xc0d14a4dc2f91cf0ea761e16474d6e46fa986ee4`; manta `0xce89622bf2b2b2ece5607c751645706b713cb923`; manta `0xd203ee18f414588e0a5faa5e30f978d037bdf0dc`; manta `0xea9d75c90c0879a50c814c6fd1d30c073b2e69d3`; manta `0xf6dc34f5cb10e7072015bfe181462ac77bf7ab01`; manta `0xfbd65ddfa27c3de44e9a84f2da9bf9f235b00495` | ⚠️ Unaudited |
| Vault | core_logic | manta | n/a | [`0x09f21ae31fb70af04480b5f0811821cce9480931`](./contracts/manta-169/0x09f21ae31fb70af04480b5f0811821cce9480931/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | manta | n/a | 2 deployments: manta [`0x37f1516de5425cdda58c20c6ac29ba775adfbeb0`](./contracts/manta-169/0x37f1516de5425cdda58c20c6ac29ba775adfbeb0/); manta `0xf416488780361ba2ae6c3643bb84788610d1480a` | ⚠️ Unaudited |

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
| BridgeDepositor | operational_periphery | ethereum | n/a | `0xaea5bf79f1e3f2069a99a99928927988ec642e0b` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x776f71bece4434ef5be2736ef87885b4d514f15f` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xca69e3d8c2ca253b1fcf1fd1ef525a85a6718b9d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cytonic-fuzzland-report.pdf](https://file.cytonic.com/cytonic-fuzzland-report.pdf) | unknown | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [ZellicAuditReport.pdf](https://file.cytonic.com/ZellicAuditReport.pdf) | Zellic | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0x0f813042a20697d121a18de2f1b4dd3cea686b74`](./contracts/manta-169/0x0f813042a20697d121a18de2f1b4dd3cea686b74/) | BatchTransfer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x97f62d9b3251d8013f0bef0d0eafeba25557a957`](./contracts/manta-169/0x97f62d9b3251d8013f0bef0d0eafeba25557a957/) | DepositManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x9e7478b044ba9c27948f770e32aa00954e2ef15a`](./contracts/manta-169/0x9e7478b044ba9c27948f770e32aa00954e2ef15a/) | DepositManagerV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x2cf5900d1f47f49ce8d0d08718b88a84db075560`](./contracts/manta-169/0x2cf5900d1f47f49ce8d0d08718b88a84db075560/) | Manager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e`](./contracts/manta-169/0x1860f0eabc4e4d4955f88dacd1e01ea9a047647e/) | MToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xc8693e492d1ec721a254daf3c075a440edd4018e`](./contracts/manta-169/0xc8693e492d1ec721a254daf3c075a440edd4018e/) | MTokenDepositEntry | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x46df6ba8e85bb6147c241bf3904918a6c800f8a5`](./contracts/manta-169/0x46df6ba8e85bb6147c241bf3904918a6c800f8a5/) | MTokenStake | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xefacdd72800324b3e5ff35edaa3de629d30412c9`](./contracts/manta-169/0xefacdd72800324b3e5ff35edaa3de629d30412c9/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf951e335afb289353dc249e82926178eac7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | swETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x8ff636868fec5ad39b7afbcfde2ca9e60d5ff870`](./contracts/manta-169/0x8ff636868fec5ad39b7afbcfde2ca9e60d5ff870/) | SyncOApp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x9286c6fe4e3ec48c77bd75ac1e0f7be7c95aa90e`](./contracts/manta-169/0x9286c6fe4e3ec48c77bd75ac1e0f7be7c95aa90e/) | SyncOAppV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x39944059395a387a8ec327b4fb5ab7c5f6d9858c`](./contracts/manta-169/0x39944059395a387a8ec327b4fb5ab7c5f6d9858c/) | TokenDistributer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x09f21ae31fb70af04480b5f0811821cce9480931`](./contracts/manta-169/0x09f21ae31fb70af04480b5f0811821cce9480931/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x37f1516de5425cdda58c20c6ac29ba775adfbeb0`](./contracts/manta-169/0x37f1516de5425cdda58c20c6ac29ba775adfbeb0/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 3 |

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
