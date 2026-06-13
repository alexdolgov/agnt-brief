# Agentic Audit Brief: Delta Financial

## Project Overview

- Project: Delta Financial (`delta-financial`)
- Website: [https://www.delta.finance](https://www.delta.finance)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-13T00:36:54.906Z
- Pipeline run: v2-pipeline-2026-06-13-546062-e35d
- Chains: ethereum
- Contract surface: 53 unique implementations (110 raw deployments)
- DeFi Llama TVL: $7,900,877.03
- On-chain TVL (included contracts): $4,511,630.13
- TVL by chain: Ethereum $4,511,630.13

## Project Description

Delta Financial is a DeFi options protocol that enables users to farm yield, provide liquidity, and trade options through deep farming vaults and rebasing liquidity tokens. It uses a system of core logic contracts, tokens, and transfer handlers to manage user positions and rewards.

### Architecture

The protocol consists of a single product family where the deep farming vaults interact with rebasing liquidity tokens to manage user deposits and rewards. The DELTAToken and OVLTransferHandler provide token transfer and access control infrastructure shared across the vaults and tokens.

## Audit Coverage Summary

- Verified implementations audited: 0/39 (0.0%)
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 53
- Raw deployments: 110
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,511,630.13
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DELTA_Rebasing_Liquidity_Token | token | ethereum | 5 deployments: ethereum [`0x1b0b47...a4765a`](./contracts/ethereum-1/0x1b0b4754698aa98cd229f75a463de83242a4765a/); ethereum `0x9282d0...3cc7b0`; ethereum `0x9c92c7...88cac7`; ethereum `0xdad70b...6f9fe8`; ethereum `0xfcfc43...a7cfba` | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | core_logic | ethereum | 3 deployments: ethereum [`0x44d59c...fb40a1`](./contracts/ethereum-1/0x44d59c297949b49bc63372c13ce39d7aa9fb40a1/); ethereum `0x6bf15a...be0eec`; ethereum `0x9fe9bb...c221be` | ⚠️ Unaudited |
| CLending | core_logic | ethereum | 2 deployments: ethereum [`0x466815...e47f49`](./contracts/ethereum-1/0x4668150f005a53997794dade1ef495329ee47f49/); ethereum `0x54b276...ea58c5` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | 3 deployments: ethereum [`0x98107c...3f43f5`](./contracts/ethereum-1/0x98107c16bad83508d23f2933eca63fe5283f43f5/); ethereum `0xa244f1...be31af`; ethereum `0xc3977a...dc1b83` | ⚠️ Unaudited |
| cBTC | unknown | ethereum | 8 deployments: ethereum [`0x0d1572...373423`](./contracts/ethereum-1/0x0d1572857e5976ae8d4a23c4131350e12e373423/); ethereum `0x7b5982...615ab8`; ethereum `0xb8a350...7e641e`; ethereum `0xdc3571...1b1c41`; ethereum `0xe4b861...85b4d8`; ethereum `0xf236c3...aeaa57`; ethereum `0xf3d513...b961f2`; ethereum `0xfe3715...8024a6` | ⚠️ Unaudited |
| cLGE | unknown | ethereum | 4 deployments: ethereum [`0x558c34...6e2ed5`](./contracts/ethereum-1/0x558c3403ae31a3519b5d701770675726826e2ed5/); ethereum `0x87cde0...297597`; ethereum `0xa88849...ba4879`; ethereum `0xf7ca8f...0bc591` | ⚠️ Unaudited |
| CORE | unknown | ethereum | [`0x62359e...fa23d7`](./contracts/ethereum-1/0x62359ed7505efc61ff1d56fef82158ccaffa23d7/) | ⚠️ Unaudited |
| CORE_LGE_3 | unknown | ethereum | [`0xaac50b...a4a76b`](./contracts/ethereum-1/0xaac50b95fbb13956d7c45511f24c3bf9e2a4a76b/) | ⚠️ Unaudited |
| CORE_RLP_Factory | registry | ethereum | [`0x904cf9...4bcc70`](./contracts/ethereum-1/0x904cf9487312f1034814056f1f99be49e74bcc70/) | ⚠️ Unaudited |
| coreDAI | unknown | ethereum | [`0x00a661...f37642`](./contracts/ethereum-1/0x00a66189143279b6db9b77294688f47959f37642/) | ⚠️ Unaudited |
| CoreDAO | unknown | ethereum | [`0xf66cd2...32dd58`](./contracts/ethereum-1/0xf66cd2f8755a21d3c8683a10269f795c0532dd58/) | ⚠️ Unaudited |
| CoreDAOTreasury | operational_periphery | ethereum | 2 deployments: ethereum [`0xc3fb0b...3caad0`](./contracts/ethereum-1/0xc3fb0b7a48b56ac5f2cf08ff07ea1878d63caad0/); ethereum `0xe508a3...4380de` | ⚠️ Unaudited |
| COREDEX_RLP | unknown | ethereum | 4 deployments: ethereum [`0x40874d...3b93cb`](./contracts/ethereum-1/0x40874dd359743f9b230076f2fa2711fcfb3b93cb/); ethereum `0x75c50f...d8b2fc`; ethereum `0x98505e...5e8d65`; ethereum `0x9d3890...dd1796` | ⚠️ Unaudited |
| COREForkMigrator | periphery | ethereum | 2 deployments: ethereum [`0x5dca40...314d35`](./contracts/ethereum-1/0x5dca4093bfe88d6fd5511fb78f6a777d47314d35/); ethereum `0xd6bd04...1520af` | ⚠️ Unaudited |
| COREGlobals | unknown | ethereum | 3 deployments: ethereum [`0x20a387...fa78ae`](./contracts/ethereum-1/0x20a3872597be26562d3873bfda8842ec7efa78ae/); ethereum `0x22cc20...460672`; ethereum `0x255ca4...50128b` | ⚠️ Unaudited |
| COREv1Router | adapter | ethereum | 3 deployments: ethereum [`0x0ee460...ba78e0`](./contracts/ethereum-1/0x0ee460204887d98c297bb431e40b713f63ba78e0/); ethereum `0x48ad04...abd0fd`; ethereum `0xbeb307...d53a77` | ⚠️ Unaudited |
| CoreVault | core_logic | ethereum | 11 deployments: ethereum [`0x16c0a1...276994`](./contracts/ethereum-1/0x16c0a1d938415bb12fda3900e4a8d7967c276994/); ethereum `0x224191...1d510d`; ethereum `0x556176...348f2c`; ethereum `0x7ca9b4...05f0d3`; ethereum `0x97a979...2b2fd4`; ethereum `0x9dbbfe...840220`; ethereum `0xac6bb1...12c291`; ethereum `0xc42b4e...5c9b98`; ethereum `0xc5cacb...c0d8c9`; ethereum `0xd0ea2a...5cf161`; ethereum `0xdaeca5...a32118` | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | operational_periphery | ethereum | [`0x251bbe...60a943`](./contracts/ethereum-1/0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943/) | ⚠️ Unaudited |
| DELTA_Distributor | operational_periphery | ethereum | 2 deployments: ethereum [`0xa4079d...6f7cb0`](./contracts/ethereum-1/0xa4079d05467dc8b68f93dff1eb024ab1196f7cb0/); ethereum `0xf249c5...667461` | ⚠️ Unaudited |
| DELTA_Limited_Staking_Window | unknown | ethereum | [`0xdafce5...e2beab`](./contracts/ethereum-1/0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab/) | ⚠️ Unaudited |
| DELTA_Reserve_Vault | core_logic | ethereum | 2 deployments: ethereum [`0x021af3...a63c34`](./contracts/ethereum-1/0x021af35df295dcfbe769e0e08f22de7252a63c34/); ethereum `0x6e570d...a0b53d` | ⚠️ Unaudited |
| DeltaRouter | adapter | ethereum | [`0x7b3e8f...6345bc`](./contracts/ethereum-1/0x7b3e8f6f30163d22203d0d86c608ca1a056345bc/) | ⚠️ Unaudited |
| EmptyContract | unknown | ethereum | [`0xf6f715...918783`](./contracts/ethereum-1/0xf6f71504aa757bd12a1d4c41c0e948226c918783/) | ⚠️ Unaudited |
| FannyVault | core_logic | ethereum | [`0xbb791b...9d7816`](./contracts/ethereum-1/0xbb791bc6106e4d949863e2ab76fc01ac0a9d7816/) | ⚠️ Unaudited |
| FeeApprover | unknown | ethereum | [`0x1d0db0...186587`](./contracts/ethereum-1/0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587/) | ⚠️ Unaudited |
| Fixer | unknown | ethereum | [`0x36e6b8...1538fb`](./contracts/ethereum-1/0x36e6b83bfb960f64218b82858ecd89a8351538fb/) | ⚠️ Unaudited |
| FlashArbitrageController | governance | ethereum | 2 deployments: ethereum [`0x220564...c0657d`](./contracts/ethereum-1/0x220564c9bd38aa1240c3507007970d9e30c0657d/); ethereum `0x2929f4...16c967` | ⚠️ Unaudited |
| IWannaDie | unknown | ethereum | [`0x1d9a94...089a5b`](./contracts/ethereum-1/0x1d9a94f43a7c6e452a45c0039dde717b8f089a5b/) | ⚠️ Unaudited |
| OVLBalanceHandler | unknown | ethereum | 3 deployments: ethereum [`0x3d4eba...612ee1`](./contracts/ethereum-1/0x3d4eba67a81cda00ac6b4aa0ddb72eecdb612ee1/); ethereum `0x867dac...058634`; ethereum `0xbfa5b7...3629a2` | ⚠️ Unaudited |
| OVLTransferHandler | unknown | ethereum | 7 deployments: ethereum [`0x42716d...53387b`](./contracts/ethereum-1/0x42716df6b1dbda9ac05526f18882cbeb6853387b/); ethereum `0x7e7ac6...bbe96c`; ethereum `0x969a34...8df248`; ethereum `0x9e349f...1a67a5`; ethereum `0x9ea3b5...7b20ef`; ethereum `0xa0bb29...262a61`; ethereum `0xed686b...f8fe15` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 5 deployments: ethereum [`0x55e16b...1246b7`](./contracts/ethereum-1/0x55e16bbd61550572f30580d51abc8fc2e21246b7/); ethereum `0x9cb1ee...4b1f0f`; ethereum `0xc4336c...8f850d`; ethereum `0xe02c07...261d46`; ethereum `0xe3ad20...0cd309` | ⚠️ Unaudited |
| ProxyFactory | registry | ethereum | [`0x370f10...d77436`](./contracts/ethereum-1/0x370f101ad006b10f3050ed2621924e72d1d77436/) | ⚠️ Unaudited |
| StableYield | unknown | ethereum | [`0x3554fc...efbd26`](./contracts/ethereum-1/0x3554fc4998f83967dcab5b2ef858e8e63fefbd26/) | ⚠️ Unaudited |
| TeamShareTimelock | governance | ethereum | 2 deployments: ethereum [`0x0912f4...169c8e`](./contracts/ethereum-1/0x0912f4ecabe8cbc076d37c248942b8721f169c8e/); ethereum `0x5bcada...9aba1b` | ⚠️ Unaudited |
| TransferHandler01 | unknown | ethereum | 4 deployments: ethereum [`0x2e2a33...118e7a`](./contracts/ethereum-1/0x2e2a33ceca9aef101d679ed058368ac994118e7a/); ethereum `0x865834...ec1d77`; ethereum `0x9e674c...2d54af`; ethereum `0xc0d019...586167` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x6b29a3...9de848`](./contracts/ethereum-1/0x6b29a3f9a1e378a57410dc480c1b19f4f89de848/) | ⚠️ Unaudited |
| Unimplemented | unknown | ethereum | [`0x0c53b4...7e363c`](./contracts/ethereum-1/0x0c53b4b0a343c70a9e610bde28a269610d7e363c/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | [`0x1498bd...d163e8`](./contracts/ethereum-1/0x1498bd576454159bb81b5ce532692a8752d163e8/) | ⚠️ Unaudited |
| wCORE | unknown | ethereum | [`0x17b8c1...23b669`](./contracts/ethereum-1/0x17b8c1a92b66b1cf3092c5d223cb3a129023b669/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x25858c...fe71da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x398ab4...02c954` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x48f32c...06e199` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x708722...5059d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c0f5f...d6e01a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x80af36...7c4cdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x859b2f...66c20e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9e20ec...54c38b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1a957...de71d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa53369...a98e0e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa8a9da...42b8a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0a3f8...788654` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1fa5b...0403cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8a55f...ccf506` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1b0b47...a4765a`](./contracts/ethereum-1/0x1b0b4754698aa98cd229f75a463de83242a4765a/) | DELTA_Rebasing_Liquidity_Token | token | $4,404,570.68 | Verified native implementation with $4,404,570.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44d59c...fb40a1`](./contracts/ethereum-1/0x44d59c297949b49bc63372c13ce39d7aa9fb40a1/) | DELTA_Deep_Farming_Vault | core_logic | $107,059.22 | Verified native implementation with $107,059.22 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x466815...e47f49`](./contracts/ethereum-1/0x4668150f005a53997794dade1ef495329ee47f49/) | CLending | core_logic | $0.23 | Verified native implementation with $0.23 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x558c34...6e2ed5`](./contracts/ethereum-1/0x558c3403ae31a3519b5d701770675726826e2ed5/) | cLGE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62359e...fa23d7`](./contracts/ethereum-1/0x62359ed7505efc61ff1d56fef82158ccaffa23d7/) | CORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x904cf9...4bcc70`](./contracts/ethereum-1/0x904cf9487312f1034814056f1f99be49e74bcc70/) | CORE_RLP_Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf66cd2...32dd58`](./contracts/ethereum-1/0xf66cd2f8755a21d3c8683a10269f795c0532dd58/) | CoreDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc3fb0b...3caad0`](./contracts/ethereum-1/0xc3fb0b7a48b56ac5f2cf08ff07ea1878d63caad0/) | CoreDAOTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40874d...3b93cb`](./contracts/ethereum-1/0x40874dd359743f9b230076f2fa2711fcfb3b93cb/) | COREDEX_RLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20a387...fa78ae`](./contracts/ethereum-1/0x20a3872597be26562d3873bfda8842ec7efa78ae/) | COREGlobals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16c0a1...276994`](./contracts/ethereum-1/0x16c0a1d938415bb12fda3900e4a8d7967c276994/) | CoreVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x251bbe...60a943`](./contracts/ethereum-1/0x251bbe8c7abc2a1ca8d0b25fc1149abe6160a943/) | DELTA_Deep_Vault_Withdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4079d...6f7cb0`](./contracts/ethereum-1/0xa4079d05467dc8b68f93dff1eb024ab1196f7cb0/) | DELTA_Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdafce5...e2beab`](./contracts/ethereum-1/0xdafce5670d3f67da9a3a44fe6bc36992e5e2beab/) | DELTA_Limited_Staking_Window | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x021af3...a63c34`](./contracts/ethereum-1/0x021af35df295dcfbe769e0e08f22de7252a63c34/) | DELTA_Reserve_Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b3e8f...6345bc`](./contracts/ethereum-1/0x7b3e8f6f30163d22203d0d86c608ca1a056345bc/) | DeltaRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f715...918783`](./contracts/ethereum-1/0xf6f71504aa757bd12a1d4c41c0e948226c918783/) | EmptyContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0db0...186587`](./contracts/ethereum-1/0x1d0db0a5f9f8cf5b69f804d556176c6bc9186587/) | FeeApprover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36e6b8...1538fb`](./contracts/ethereum-1/0x36e6b83bfb960f64218b82858ecd89a8351538fb/) | Fixer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d4eba...612ee1`](./contracts/ethereum-1/0x3d4eba67a81cda00ac6b4aa0ddb72eecdb612ee1/) | OVLBalanceHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42716d...53387b`](./contracts/ethereum-1/0x42716df6b1dbda9ac05526f18882cbeb6853387b/) | OVLTransferHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x370f10...d77436`](./contracts/ethereum-1/0x370f101ad006b10f3050ed2621924e72d1d77436/) | ProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3554fc...efbd26`](./contracts/ethereum-1/0x3554fc4998f83967dcab5b2ef858e8e63fefbd26/) | StableYield | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0912f4...169c8e`](./contracts/ethereum-1/0x0912f4ecabe8cbc076d37c248942b8721f169c8e/) | TeamShareTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
