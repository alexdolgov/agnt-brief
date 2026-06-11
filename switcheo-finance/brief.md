# Agentic Audit Brief: Switcheo Finance

## Project Overview

- Project: Switcheo Finance (`switcheo-finance`)
- Lifecycle: active (Tier 0, 76.4% below peak)
- Generated: 2026-06-11T03:20:20.331Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-ce25
- Chains: ethereum
- Contract surface: 47 unique implementations (100 raw deployments)
- DeFi Llama TVL: $1,234,738.76
- On-chain TVL (included contracts): $68,279,527.22
- TVL by chain: Ethereum $68,279,527.22

## Project Description

Switcheo Finance is a decentralized exchange protocol on Ethereum that facilitates token swaps and trading through exchange and broker-style settlement contracts. External ERC-20 token contracts traded or referenced by the exchange should not be described as Switcheo-owned protocol components or included in project-owned contract counts or protocol TVL calculations.

### Architecture

The BrokerV2 contract acts as the core execution engine, relying on the Utils library for shared logic. Various token contracts (e.g., BalancerGovernanceToken, CelsiusToken) are integrated as trading assets, while supporting contracts like EIP20 provide standard token interfaces.

## Audit Coverage Summary

- Verified implementations audited: 0/29 (0.0%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 47
- Raw deployments: 100
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $68,279,527.22
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DuskToken | token | ethereum | [`0x940a2d...4aa551`](./contracts/ethereum-1/0x940a2db1b7008b6c776d4faaca729d6d4a4aa551/) | ⚠️ Unaudited |
| CelsiusToken | token | ethereum | [`0xaaaebe...09d42d`](./contracts/ethereum-1/0xaaaebe6fe48e54f431b0c390cfaf0b017d09d42d/) | ⚠️ Unaudited |
| BalancerGovernanceToken | token | ethereum | [`0xba1000...424e3d`](./contracts/ethereum-1/0xba100000625a3754423978a60c9317c58a424e3d/) | ⚠️ Unaudited |
| AlephPaymentProcessor | unknown | ethereum | [`0x6b55f3...e8cb8b`](./contracts/ethereum-1/0x6b55f32ea969910838defd03746ced5e2ae8cb8b/) | ⚠️ Unaudited |
| Crowdsale | unknown | ethereum | [`0x398e41...a446f7`](./contracts/ethereum-1/0x398e41ac3d5972b4bac2320cd130c7a25ca446f7/) | ⚠️ Unaudited |
| EIP20 | unknown | ethereum | 2 deployments: ethereum [`0x27702a...4ef628`](./contracts/ethereum-1/0x27702a26126e0b3702af63ee09ac4d1a084ef628/); ethereum `0xc0134b...fbe03e` | ⚠️ Unaudited |
| Exchange | unknown | ethereum | [`0x651aa5...b7b7a6`](./contracts/ethereum-1/0x651aa5ea257af3d6fd08aedca8c5a446edb7b7a6/) | ⚠️ Unaudited |
| ExchangeEfx | unknown | ethereum | [`0xdcdb42...dd5851`](./contracts/ethereum-1/0xdcdb42c9a256690bd153a7b409751adfc8dd5851/) | ⚠️ Unaudited |
| KyberNetworkCrystal | unknown | ethereum | [`0xdd974d...6bd200`](./contracts/ethereum-1/0xdd974d5c2e2928dea5f71b9825b8b646686bd200/) | ⚠️ Unaudited |
| LEO | unknown | ethereum | [`0x2af5d2...912ca3`](./contracts/ethereum-1/0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3/) | ⚠️ Unaudited |
| LogERC20 | token | ethereum | [`0x047f18...434a4b`](./contracts/ethereum-1/0x047f18e7f21aa714c6a5f4b346318eb384434a4b/) | ⚠️ Unaudited |
| MiniMeTokenFactory | registry | ethereum | [`0x8e9ac0...2a12b8`](./contracts/ethereum-1/0x8e9ac0de3ab634ce0e2f0e397efc5ce8a72a12b8/) | ⚠️ Unaudited |
| OneTimeListingManager | governance | ethereum | 2 deployments: ethereum [`0x8714f6...d2a48a`](./contracts/ethereum-1/0x8714f686102f206a233f415d521194ec80d2a48a/); ethereum `0xfd31fa...cee2a2` | ⚠️ Unaudited |
| ProposalManager | governance | ethereum | [`0xb24ed9...2d5ddb`](./contracts/ethereum-1/0xb24ed9d62d4c660faf56a4cddada06c88b2d5ddb/) | ⚠️ Unaudited |
| SpenderList | unknown | ethereum | [`0xdad636...862c03`](./contracts/ethereum-1/0xdad636e070baa6d9484eee6a2452557833862c03/) | ⚠️ Unaudited |
| StandardToken | token | ethereum | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |
| TokenList | token | ethereum | [`0xc86059...0c17bd`](./contracts/ethereum-1/0xc860598a9a38eff76dbbbe67fdc1b7975c0c17bd/) | ⚠️ Unaudited |
| TokenListingManager | governance | ethereum | 4 deployments: ethereum [`0x29c317...0bc92d`](./contracts/ethereum-1/0x29c317dccc79ef77ef04bb7e9a852926050bc92d/); ethereum `0x2b2d7d...722622`; ethereum `0x64575d...da340c`; ethereum `0xc88b65...f095be` | ⚠️ Unaudited |
| TokenListingManagerAdvanced | governance | ethereum | [`0x2fe468...6e5705`](./contracts/ethereum-1/0x2fe468219e40b732ee43dc5c1d6295bd796e5705/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | [`0x2fe43a...655f41`](./contracts/ethereum-1/0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41/) | ⚠️ Unaudited |
| TransferRegistry | registry | ethereum | 2 deployments: ethereum [`0x68818d...a9a6c1`](./contracts/ethereum-1/0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1/); ethereum `0xc3ca38...ca9c26` | ⚠️ Unaudited |
| TrustlessOTC | unknown | ethereum | 2 deployments: ethereum [`0x93dc6a...1013db`](./contracts/ethereum-1/0x93dc6a333a99c0ede1cd346ccf079ea8451013db/); ethereum `0xbaea5b...b3a8f5` | ⚠️ Unaudited |
| Utils | unknown | ethereum | 2 deployments: ethereum [`0x7ee7ca...6b22d0`](./contracts/ethereum-1/0x7ee7ca6e75de79e618e88bdf80d0b1db136b22d0/); ethereum `0xd6e266...e909e7` | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | [`0x0faa28...6445b1`](./contracts/ethereum-1/0x0faa28da415abdda123233a00b7cc7f8c56445b1/) | ⚠️ Unaudited |
| Wallet | unknown | ethereum | 5 deployments: ethereum [`0x164e52...a483e6`](./contracts/ethereum-1/0x164e52345455a0e56ae164630fc6d454cfa483e6/); ethereum `0x1b1bf3...c5b218`; ethereum `0x3792d2...85f6ef`; ethereum `0x6dd1a5...e11061`; ethereum `0xecf8db...89b534` | ⚠️ Unaudited |
| WrapperDai | unknown | ethereum | [`0x2cd04b...129fe1`](./contracts/ethereum-1/0x2cd04bb68786834f199ce12074da7b8832129fe1/) | ⚠️ Unaudited |
| WrapperLock | unknown | ethereum | 39 deployments: ethereum [`0x058e2b...f09ed7`](./contracts/ethereum-1/0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7/); ethereum `0x1488f9...a1df4e`; ethereum `0x1a9b2d...eba26e`; ethereum `0x23b7b4...79f0e7`; ethereum `0x274bbd...f804cf`; ethereum `0x378301...90946c`; ethereum `0x38ae37...106a32`; ethereum `0x3b4d5a...64c684`; ethereum `0x4007e9...e037d1`; ethereum `0x4c24a4...bdd268`; ethereum `0x5501c4...06c8ca`; ethereum `0x5d1737...2adb7c`; ethereum `0x60f852...90042c`; ethereum `0x680bf2...1480e9`; ethereum `0x69391c...7a8e53`; ethereum `0x70b04d...0f3864`; ethereum `0x752d04...ed6deb`; ethereum `0x7d5a23...5862b3`; ethereum `0x874726...67982f`; ethereum `0x8a7108...153dc9`; ethereum `0x8aa72d...5f9686`; ethereum `0x8bffb6...5b5148`; ethereum `0x994161...a218fa`; ethereum `0xa216c4...cd8d78`; ethereum `0xab02fe...1767dc`; ethereum `0xab056a...bebfa2`; ethereum `0xaee07e...693782`; ethereum `0xb0abd4...f8c03c`; ethereum `0xb33ce6...ea2dec`; ethereum `0xbcf2a4...29eef9`; ethereum `0xc94ec1...9f0f9d`; ethereum `0xcf67d7...d558f7`; ethereum `0xd7a7af...8c949c`; ethereum `0xd9ebeb...a56247`; ethereum `0xe82cfc...04ce33`; ethereum `0xea7abb...061b3f`; ethereum `0xeb52a9...884899`; ethereum `0xf58825...9dc953`; ethereum `0xff6b71...cdbbfc` | ⚠️ Unaudited |
| WrapperLockDai | unknown | ethereum | 2 deployments: ethereum [`0x54419b...cef543`](./contracts/ethereum-1/0x54419bc42555b4bed712ade1e7942540e0cef543/); ethereum `0xd6f923...135538` | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | 3 deployments: ethereum [`0x42b9aa...a59cbf`](./contracts/ethereum-1/0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf/); ethereum `0x768c42...7b4b41`; ethereum `0xaa7427...be1011` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x011e4e...c5f05e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x038fa5...f72197` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03d75e...4bdd97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1da1a5...7a3c64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4214c9...0af981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b2d4c...a8b301` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6eb972...83c347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x72390f...c8ff32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x77b1d4...5489e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7cc9be...233859` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x836344...d35dc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa24eb0...a9ff0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa980bc...6e3b74` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb775ef...0b57e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba35ff...5d0349` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8ced0...bc07d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xebbace...1c3ce0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1deed...455b0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x398e41...a446f7`](./contracts/ethereum-1/0x398e41ac3d5972b4bac2320cd130c7a25ca446f7/) | Crowdsale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x651aa5...b7b7a6`](./contracts/ethereum-1/0x651aa5ea257af3d6fd08aedca8c5a446edb7b7a6/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdcdb42...dd5851`](./contracts/ethereum-1/0xdcdb42c9a256690bd153a7b409751adfc8dd5851/) | ExchangeEfx | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8714f6...d2a48a`](./contracts/ethereum-1/0x8714f686102f206a233f415d521194ec80d2a48a/) | OneTimeListingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb24ed9...2d5ddb`](./contracts/ethereum-1/0xb24ed9d62d4c660faf56a4cddada06c88b2d5ddb/) | ProposalManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdad636...862c03`](./contracts/ethereum-1/0xdad636e070baa6d9484eee6a2452557833862c03/) | SpenderList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc86059...0c17bd`](./contracts/ethereum-1/0xc860598a9a38eff76dbbbe67fdc1b7975c0c17bd/) | TokenList | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29c317...0bc92d`](./contracts/ethereum-1/0x29c317dccc79ef77ef04bb7e9a852926050bc92d/) | TokenListingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe468...6e5705`](./contracts/ethereum-1/0x2fe468219e40b732ee43dc5c1d6295bd796e5705/) | TokenListingManagerAdvanced | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fe43a...655f41`](./contracts/ethereum-1/0x2fe43a28ad82a7fc5422ab8e9ea4efdeb1655f41/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x68818d...a9a6c1`](./contracts/ethereum-1/0x68818d468c0e1fefdc56824ab4f3f053a8a9a6c1/) | TransferRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93dc6a...1013db`](./contracts/ethereum-1/0x93dc6a333a99c0ede1cd346ccf079ea8451013db/) | TrustlessOTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ee7ca...6b22d0`](./contracts/ethereum-1/0x7ee7ca6e75de79e618e88bdf80d0b1db136b22d0/) | Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0faa28...6445b1`](./contracts/ethereum-1/0x0faa28da415abdda123233a00b7cc7f8c56445b1/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x164e52...a483e6`](./contracts/ethereum-1/0x164e52345455a0e56ae164630fc6d454cfa483e6/) | Wallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cd04b...129fe1`](./contracts/ethereum-1/0x2cd04bb68786834f199ce12074da7b8832129fe1/) | WrapperDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x058e2b...f09ed7`](./contracts/ethereum-1/0x058e2bec45b24cf4a5d9d8c780731ea4f5f09ed7/) | WrapperLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54419b...cef543`](./contracts/ethereum-1/0x54419bc42555b4bed712ade1e7942540e0cef543/) | WrapperLockDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42b9aa...a59cbf`](./contracts/ethereum-1/0x42b9aa7a244b38ef56dff4d2df7e7a7013a59cbf/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 5 |
| standard_library | 5 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
