# Agentic Audit Brief: Looping Collective

## Project Overview

- Project: Looping Collective (`looping-collective`)
- Website: [https://www.loopingcollective.org/](https://www.loopingcollective.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.192Z
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
| AccountantWithRateProviders | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x470bd109a24f608590d85fc1f5a4b6e625e8bdff`](./contracts/hyperliquid-999/0x470bd109a24f608590d85fc1f5a4b6e625e8bdff/); hyperliquid `0xce621a3ca6f72706678cff0572ae8d15e5f001c3` | ✅ Audited |
| AtomicQueueUCP | unknown | hyperliquid | n/a | [`0x228c44bb4885c6633f4b6c83f14622f37d5112e5`](./contracts/hyperliquid-999/0x228c44bb4885c6633f4b6c83f14622f37d5112e5/) | ✅ Audited |
| BoringVault | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1359b05241ca5076c9f59605214f4f84114c0de8`](./contracts/hyperliquid-999/0x1359b05241ca5076c9f59605214f4f84114c0de8/); hyperliquid `0x5748ae796ae46a4f1348a1693de4b50560485562` | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | hyperliquid | n/a | [`0xe661393c409f7caec8564bc49ed92c22a63e81d0`](./contracts/hyperliquid-999/0xe661393c409f7caec8564bc49ed92c22a63e81d0/) | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x26573c17e2399c19f64e61bf295c85e150a95318`](./contracts/ethereum-1/0x26573c17e2399c19f64e61bf295c85e150a95318/); ethereum `0x597768db24cbc1d824b67d8edac5b9db15c4da81` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x36bdaefd92579da58bfe207e16dafa39835bbcb3`](./contracts/ethereum-1/0x36bdaefd92579da58bfe207e16dafa39835bbcb3/); ethereum `0x82157fe14852caecb8e7095a52423213347d391f` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x472425cc95be779126afa4aa17980210d299914f`](./contracts/ethereum-1/0x472425cc95be779126afa4aa17980210d299914f/); ethereum `0x48bf9f7ef43799aac9d8647b78410db8f83a14c1` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x546329a16dcedc46e93f7b03a65f49a84700bca1`](./contracts/ethereum-1/0x546329a16dcedc46e93f7b03a65f49a84700bca1/); ethereum `0x6860133c130478c132cdaf42507267df29a23832` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x599c419e42183e4553036e3775a4347af5afa67e`](./contracts/ethereum-1/0x599c419e42183e4553036e3775a4347af5afa67e/); ethereum `0x776c938f5ab906b872cede6ad590bd5eb0b6c871` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b13ca53fa4c0bc8c0c26aa5c8860195978ca3c6`](./contracts/ethereum-1/0x6b13ca53fa4c0bc8c0c26aa5c8860195978ca3c6/); ethereum `0xc46efcc8e39c8f02425e367423871cd4633b7908` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77e6492477ec87decd9f713eeff040de1986948a`](./contracts/ethereum-1/0x77e6492477ec87decd9f713eeff040de1986948a/); ethereum `0xbb876b2012af9ca8591723b4fe7f05ac50e6c1ec` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x88300e0041cc88bdb1404031b53aa68058ecd847`](./contracts/ethereum-1/0x88300e0041cc88bdb1404031b53aa68058ecd847/); ethereum `0xaa3cb36be406e6cf208d218fd214e0f1a71e957d` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ecc0b419dfe3ae197bc96f2a03636b5e1be91db`](./contracts/ethereum-1/0x8ecc0b419dfe3ae197bc96f2a03636b5e1be91db/); ethereum `0xe66f6a37c807f71591854e22075b3a613b46abe2` | ✅ Audited |
| UltraVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xef8699b5f1e970af12c2971f88fe430b42410729`](./contracts/ethereum-1/0xef8699b5f1e970af12c2971f88fe430b42410729/); ethereum `0xfacaa225fcfcd8644a77f2cce833907537198ae9` | ✅ Audited |
| UltraVaultOracle | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x1467ce4ad75991303adda4c7ec8e553534246f1d`](./contracts/ethereum-1/0x1467ce4ad75991303adda4c7ec8e553534246f1d/); ethereum `0x199378c6ea4080948b2a123cb980c29312549032`; ethereum `0x2c50ac2b52c747fc3df36000849b0ca5fcbc54aa`; ethereum `0x3adf95df2d4586c16203f3418ddd522f6db848e6`; ethereum `0x5360803dfa8e73f86e3e39da9799d89e9cf53b07`; ethereum `0x6217de15d37810549ddbcf7b34a01e1d41969526`; ethereum `0x74c4bb8819af0779638a6a108150085c9e87dc2b`; ethereum `0xbae89dc56874ed0f790ce9bc698674b2da947ebf`; ethereum `0xc9fa759a53aef9f173800f91c4f81dff95487308`; ethereum `0xe8149f703198bff42d7d7bdebe48fe43ed351bac` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x152b3f3b2b7bcb00b8ca23136c743ad726c0f55e`](./contracts/ethereum-1/0x152b3f3b2b7bcb00b8ca23136c743ad726c0f55e/); ethereum `0xa392c6676ae58a30fd25c4a699a1fdc4297df87c` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x189e4ddf25ec21e3f98e180de3eeccfdcb06e767`](./contracts/ethereum-1/0x189e4ddf25ec21e3f98e180de3eeccfdcb06e767/); ethereum `0x75df902b1d023c8728caf27700ba39ab849fda35` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1bf8d6a5b98aaba6d5762f78bda3345a1b434828`](./contracts/ethereum-1/0x1bf8d6a5b98aaba6d5762f78bda3345a1b434828/); ethereum `0x306269644da8b0e3aedab261ef7ad63a26b1637d` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x25b8a339d23358b9d9d2e52981aca01ec3efbf0d`](./contracts/ethereum-1/0x25b8a339d23358b9d9d2e52981aca01ec3efbf0d/); ethereum `0xd8f8cc78ffdeebe852d35b98a6eabd5a65dcfa6d` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2f1b7cdc97bf10326e1b404700540283f3613cc5`](./contracts/ethereum-1/0x2f1b7cdc97bf10326e1b404700540283f3613cc5/); ethereum `0x92e9f91be50656c1cb6867d3ea211750e027c484` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d4f69dece3abd36a9c333f1d849b0413e5d401e`](./contracts/ethereum-1/0x6d4f69dece3abd36a9c333f1d849b0413e5d401e/); ethereum `0x8bd34774424e5fbe28c5cf9f18b2f62566f2a70e` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x740ed28e7314e65ceae39307f2a0e7dc8ba7e474`](./contracts/ethereum-1/0x740ed28e7314e65ceae39307f2a0e7dc8ba7e474/); ethereum `0x7a2e3526c663e63b4f9e7b0f9098b584d6b8555b` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x94ee5265675db9d085823e28d432fb16b1a6b816`](./contracts/ethereum-1/0x94ee5265675db9d085823e28d432fb16b1a6b816/); ethereum `0xa333c039e4bbf8417c0947425b6284f49931e39c` | ✅ Audited |
| UltraVaultRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0xad4b339966abb404763429a86646fe8dc6a17c38`](./contracts/ethereum-1/0xad4b339966abb404763429a86646fe8dc6a17c38/); ethereum `0xfba0f791e650e5cebe63496332814e40c38381ae` | ✅ Audited |
| VaultPriceManager | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x0ecb66d64a3c5cc592b72f135f6f317da42396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/); ethereum `0x0fcea1793e9f98f49bfe33d9f07307b3ff315f86`; ethereum `0x2882a1addbdd5f092ee8c1eafcd852c03f58268a`; ethereum `0x303ab4d8d4338738f1235487536d1bf01c8a1617`; ethereum `0x525ee8f4dd609b43867a2e5fe09b954fd1b41ad5`; ethereum `0x6bb07c857b71e8cc6a5afa7d39ab1f152eb2b311`; ethereum `0xa5c6d7ceed9388bf517cadfb8e2b6c4e325a75a2`; ethereum `0xd7fc7322751eaf0428dde32f9d32d51c0a864983`; ethereum `0xdd508509deaa86e879e8d122c82ac9681a7eb640`; ethereum `0xff5e637726f089884372994c00476114a9e0a5b5` | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LoopedHypeDepositor | unknown | hyperliquid | n/a | [`0x6e358dd1204c3fb1d24e569df0899f48fabe5337`](./contracts/hyperliquid-999/0x6e358dd1204c3fb1d24e569df0899f48fabe5337/) | ⚠️ Unaudited |
| UltraFrontendHelper | periphery | ethereum | n/a | 9 deployments: ethereum [`0x1414c25624a80540cad83f123ff2e0be8925ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/); ethereum `0x2646382987b7425cfd9a3f3f97b92bd035808921`; ethereum `0x2bf69e08b5706abf9abd2281f4760ecd4f7f3e5d`; ethereum `0x7d159f0356632d3a1a9e794ce265a57164de32e7`; ethereum `0x93bffc921ea6b763fb7c78e22f0793fefc55571b`; ethereum `0xa2b51ca65e7ef8a46f2506d97953e96b25e5bb6f`; ethereum `0xaea48cf2c693069babd5294f1d59b0131f114414`; ethereum `0xea8baf8fde9f48e1d871c9e908e56e39e6bda2a9`; ethereum `0xf076c4d91c8f9eebbf4c43c07926157710544729` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | hyperliquid | n/a | `0x340c9f6159abc2bdfcc0e2b9fe91d739006b41c1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5017f5e8d3bf1592da6ada8433f4738dc35f6edb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfd83c1ca0c04e096d129275126fade1dc45bf4f0` | ❓ Unverified |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x6e358dd1204c3fb1d24e569df0899f48fabe5337`](./contracts/hyperliquid-999/0x6e358dd1204c3fb1d24e569df0899f48fabe5337/) | LoopedHypeDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1414c25624a80540cad83f123ff2e0be8925ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/) | UltraFrontendHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

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
