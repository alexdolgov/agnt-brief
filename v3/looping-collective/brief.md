# Agentic Audit Brief: Looping Collective

## Project Overview

- Project: Looping Collective (`looping-collective`)
- Website: [https://www.loopingcollective.org/](https://www.loopingcollective.org/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.681Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: ethereum, hyperliquid
- Contract surface: 30 unique implementations (77 raw deployments)
- DeFi Llama TVL: $10,751,137.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 11 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 4 functional families. Its contracts share 5 common project-authored base contract(s) (ownable2step, ownable2stepupgradeable, ownableupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 77 (74 live, 3 unknown).
- Excluded by liveness: 16 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 25/27 (92.6%)
- Deployed-live implementations: 27 of 30 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 25/27
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 30
- Raw deployments: 77
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 6 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 21 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 55.6% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Omniscia | Tier 2 | 21 | 77.8% | 2025-09 |
| ChainSecurity | Tier 1 | 12 | 44.4% | 2025-05 |
| 0xMacro | Tier 2 | 3 | 11.1% | 2024-04 |
| Pashov Audit Group | Tier 2 | 3 | 11.1% | 2026-03 |
| Spearbit | Tier 1 | 3 | 11.1% | 2024-04 |
| Zenith | Tier 2 | 1 | 3.7% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x470bd1...e8bdff`](./contracts/hyperliquid-999/0x470bd109a24f608590d85fc1f5a4b6e625e8bdff/); hyperliquid `0xce621a...f001c3` | ✅ Audited |
| AtomicQueueUCP | unknown | hyperliquid | n/a | [`0x228c44...5112e5`](./contracts/hyperliquid-999/0x228c44bb4885c6633f4b6c83f14622f37d5112e5/) | ✅ Audited |
| BoringVault | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1359b0...4c0de8`](./contracts/hyperliquid-999/0x1359b05241ca5076c9f59605214f4f84114c0de8/); hyperliquid `0x5748ae...485562` | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | hyperliquid | n/a | [`0xe66139...3e81d0`](./contracts/hyperliquid-999/0xe661393c409f7caec8564bc49ed92c22a63e81d0/) | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26573c...a95318`](./contracts/ethereum-1/0x26573c17e2399c19f64e61bf295c85e150a95318/); ethereum `0x597768...c4da81` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36bdae...5bbcb3`](./contracts/ethereum-1/0x36bdaefd92579da58bfe207e16dafa39835bbcb3/); ethereum `0x82157f...7d391f` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x472425...99914f`](./contracts/ethereum-1/0x472425cc95be779126afa4aa17980210d299914f/); ethereum `0x48bf9f...3a14c1` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x546329...00bca1`](./contracts/ethereum-1/0x546329a16dcedc46e93f7b03a65f49a84700bca1/); ethereum `0x686013...a23832` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x599c41...afa67e`](./contracts/ethereum-1/0x599c419e42183e4553036e3775a4347af5afa67e/); ethereum `0x776c93...b6c871` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b13ca...8ca3c6`](./contracts/ethereum-1/0x6b13ca53fa4c0bc8c0c26aa5c8860195978ca3c6/); ethereum `0xc46efc...3b7908` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77e649...86948a`](./contracts/ethereum-1/0x77e6492477ec87decd9f713eeff040de1986948a/); ethereum `0xbb876b...e6c1ec` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x88300e...ecd847`](./contracts/ethereum-1/0x88300e0041cc88bdb1404031b53aa68058ecd847/); ethereum `0xaa3cb3...1e957d` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ecc0b...be91db`](./contracts/ethereum-1/0x8ecc0b419dfe3ae197bc96f2a03636b5e1be91db/); ethereum `0xe66f6a...46abe2` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xef8699...410729`](./contracts/ethereum-1/0xef8699b5f1e970af12c2971f88fe430b42410729/); ethereum `0xfacaa2...198ae9` | ✅ Audited |
| UltraVaultOracle | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x1467ce...246f1d`](./contracts/ethereum-1/0x1467ce4ad75991303adda4c7ec8e553534246f1d/); ethereum `0x199378...549032`; ethereum `0x2c50ac...bc54aa`; ethereum `0x3adf95...b848e6`; ethereum `0x536080...f53b07`; ethereum `0x6217de...969526`; ethereum `0x74c4bb...87dc2b`; ethereum `0xbae89d...947ebf`; ethereum `0xc9fa75...487308`; ethereum `0xe8149f...351bac` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x152b3f...c0f55e`](./contracts/ethereum-1/0x152b3f3b2b7bcb00b8ca23136c743ad726c0f55e/); ethereum `0xa392c6...7df87c` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x189e4d...06e767`](./contracts/ethereum-1/0x189e4ddf25ec21e3f98e180de3eeccfdcb06e767/); ethereum `0x75df90...9fda35` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1bf8d6...434828`](./contracts/ethereum-1/0x1bf8d6a5b98aaba6d5762f78bda3345a1b434828/); ethereum `0x306269...b1637d` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25b8a3...efbf0d`](./contracts/ethereum-1/0x25b8a339d23358b9d9d2e52981aca01ec3efbf0d/); ethereum `0xd8f8cc...dcfa6d` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f1b7c...613cc5`](./contracts/ethereum-1/0x2f1b7cdc97bf10326e1b404700540283f3613cc5/); ethereum `0x92e9f9...27c484` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d4f69...5d401e`](./contracts/ethereum-1/0x6d4f69dece3abd36a9c333f1d849b0413e5d401e/); ethereum `0x8bd347...f2a70e` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x740ed2...a7e474`](./contracts/ethereum-1/0x740ed28e7314e65ceae39307f2a0e7dc8ba7e474/); ethereum `0x7a2e35...b8555b` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x94ee52...a6b816`](./contracts/ethereum-1/0x94ee5265675db9d085823e28d432fb16b1a6b816/); ethereum `0xa333c0...31e39c` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0xad4b33...a17c38`](./contracts/ethereum-1/0xad4b339966abb404763429a86646fe8dc6a17c38/); ethereum `0xfba0f7...8381ae` | ✅ Audited |
| VaultPriceManager | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x0ecb66...2396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/); ethereum `0x0fcea1...315f86`; ethereum `0x2882a1...58268a`; ethereum `0x303ab4...8a1617`; ethereum `0x525ee8...b41ad5`; ethereum `0x6bb07c...b2b311`; ethereum `0xa5c6d7...5a75a2`; ethereum `0xd7fc73...864983`; ethereum `0xdd5085...7eb640`; ethereum `0xff5e63...e0a5b5` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LoopedHypeDepositor | unknown | hyperliquid | n/a | [`0x6e358d...be5337`](./contracts/hyperliquid-999/0x6e358dd1204c3fb1d24e569df0899f48fabe5337/) | ⚠️ Unaudited |
| UltraFrontendHelper | periphery | ethereum | n/a | 9 deployments: ethereum [`0x1414c2...25ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/); ethereum `0x264638...808921`; ethereum `0x2bf69e...7f3e5d`; ethereum `0x7d159f...de32e7`; ethereum `0x93bffc...55571b`; ethereum `0xa2b51c...e5bb6f`; ethereum `0xaea48c...114414`; ethereum `0xea8baf...bda2a9`; ethereum `0xf076c4...544729` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | hyperliquid | n/a | `0x340c9f...6b41c1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5017f5...5f6edb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfd83c1...5bf4f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [v1_May_2025_ChainSecurity.pdf](https://github.com/UltraYield/contracts/blob/main/audits/v1_May_2025_ChainSecurity.pdf) | ChainSecurity | Audit | 2025-05 | aging | Direct | contract_name | 40 | high |
| [v2_Sep_2025_Omniscia.pdf](https://github.com/UltraYield/contracts/blob/main/audits/v2_Sep_2025_Omniscia.pdf) | Omniscia | Audit | 2025-09 | fresh | Direct | contract_name | 58 | high |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 3 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 1 | n/a |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | 2026-02 | fresh | Direct | contract_name | 1 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 3 | n/a |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | Zenith | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | Zenith | Audit | 2026-01 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=10, extraction_exact=98

Zero-match audit list:

- [12449] 0xmacro-boring-vault-arctic-1.pdf
- [12450] pashov-boring-vault.pdf
- [12451] pashov-hlp-controller:account.pdf
- [12453] pashov-one-to-one-queue.pdf
- [12457] zenith-one-to-one-queue.pdf

Fork inheritance lineage and inherited audits are included when available.
