# Agentic Audit Brief: Accumulated Finance

## Project Overview

- Project: Accumulated Finance (`accumulated-finance`)
- Website: [https://accumulated.finance](https://accumulated.finance)
- Lifecycle: active (Tier 0, 73.2% below peak)
- Generated: 2026-05-25T20:11:48.265Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, bsc, ethereum, manta, sei
- Contract surface: 43 unique implementations (54 raw deployments)
- DeFi Llama TVL: $1,581,479.00
- On-chain TVL (included contracts): $12,187.76
- TVL by chain: Ethereum $12,187.76

## Project Description

Accumulated Finance is a multi-chain DeFi protocol offering lending and liquid staking products. It enables users to earn yield on assets through lending markets and to stake tokens to receive liquid staking derivatives that can be used across DeFi.

### Architecture

The lending and liquid staking families share the same deployer cluster and some contract addresses (e.g., stZETA appears in both), indicating a unified codebase and potential token flows between lending pools and staking derivatives. The liquid staking family includes multiple token-specific staking contracts that likely integrate with the lending markets for collateral or yield strategies.

## Audit Coverage Summary

- Verified implementations audited: 0/35 (0.0%)
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 43
- Raw deployments: 54
- Audits discovered: 6
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $12,187.76
- Latest audit: 2024-06 (aging)
- Staleness: 0 fresh, 1 aging, 0 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WrappedToken | token | ethereum | [`0xdf4ef6...c01170`](./contracts/ethereum-1/0xdf4ef6ee483953fe3b84abd08c6a060445c01170/) | ⚠️ Unaudited |
| AccumulateBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0xba0509...db7d0e`](./contracts/ethereum-1/0xba050938970c8eaeda3e970b571a6fe463db7d0e/); arbitrum [`0xba0509...db7d0e`](./contracts/arbitrum-42161/0xba050938970c8eaeda3e970b571a6fe463db7d0e/) | ⚠️ Unaudited |
| ACMELiquidStaking | core_logic | ethereum | 2 deployments: ethereum [`0xcf1a40...3c3217`](./contracts/ethereum-1/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/); arbitrum [`0xcf1a40...3c3217`](./contracts/arbitrum-42161/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ⚠️ Unaudited |
| ERC20MinterRedeem | token | arbitrum | [`0x050ae6...ced081`](./contracts/arbitrum-42161/0x050ae6734f7eab5fd3f10bba937a009de5ced081/) | ⚠️ Unaudited |
| eSEI | unknown | sei | [`0xcba2ae...49681a`](./contracts/sei-1329/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | ⚠️ Unaudited |
| eSEIMinter | unknown | sei | [`0xcf1a40...3c3217`](./contracts/sei-1329/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ⚠️ Unaudited |
| eSEIMinterWithdrawal | operational_periphery | sei | 2 deployments: sei [`0x6626bc...861ced`](./contracts/sei-1329/0x6626bc5f5ce20790ba25594b785a71252e861ced/); sei `0xf85434...b116dd` | ⚠️ Unaudited |
| Manta | unknown | manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| rstETH | token | ethereum | [`0x684d7f...92dfa9`](./contracts/ethereum-1/0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9/) | ⚠️ Unaudited |
| rstETHMinter | unknown | ethereum | [`0x76cefc...7dad3a`](./contracts/ethereum-1/0x76cefc49c460cd37d9653feaffcffc6ade7dad3a/) | ⚠️ Unaudited |
| stACMEMinter | unknown | ethereum | 2 deployments: ethereum [`0xdde19c...e9714f`](./contracts/ethereum-1/0xdde19cf8bec23c2103f5ada61c83d5fd79e9714f/); arbitrum `0xe54fb8...84ff5d` | ⚠️ Unaudited |
| StakedACME | token | ethereum | 2 deployments: ethereum [`0x7ac168...b3c547`](./contracts/ethereum-1/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/); arbitrum [`0x7ac168...b3c547`](./contracts/arbitrum-42161/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| StakingRewards | unknown | arbitrum | 2 deployments: ethereum `0xe194d3...333b88`; arbitrum [`0x8f0ecd...1f5325`](./contracts/arbitrum-42161/0x8f0ecda9679ad16e30be3d83d183c482821f5325/) | ⚠️ Unaudited |
| stARB | unknown | arbitrum | [`0xedd708...bae625`](./contracts/arbitrum-42161/0xedd7083eb44e8cc4e734e57e0032451a04bae625/) | ⚠️ Unaudited |
| stARBMinter | unknown | arbitrum | [`0xaa3d53...abbb86`](./contracts/arbitrum-42161/0xaa3d5398f0258b766f1bb7025f252dc57cabbb86/) | ⚠️ Unaudited |
| stMANTA | unknown | manta | [`0xcba2ae...49681a`](./contracts/manta-169/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | ⚠️ Unaudited |
| stMANTAMinter | unknown | manta | [`0xcf1a40...3c3217`](./contracts/manta-169/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ⚠️ Unaudited |
| stMANTAMinterV203 | unknown | manta | [`0x1103a4...2cf662`](./contracts/manta-169/0x1103a4761294012fa9276b62935ab626f82cf662/) | ⚠️ Unaudited |
| stMANTAMinterWithdrawal | operational_periphery | manta | 2 deployments: manta [`0x27741d...c8c1de`](./contracts/manta-169/0x27741d007358eb6c1924bf459cd7e06e60c8c1de/); manta `0xe2cf4e...4b01a5` | ⚠️ Unaudited |
| stVLX | unknown | bsc | [`0xcba2ae...49681a`](./contracts/bsc-56/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | ⚠️ Unaudited |
| stVLXMinterBSC | unknown | bsc | [`0x5452f1...5a0fe8`](./contracts/bsc-56/0x5452f159b48d14a22cbf1988038c41dfec5a0fe8/) | ⚠️ Unaudited |
| stVLXMinterBSCV2 | unknown | bsc | [`0x5683e8...a58652`](./contracts/bsc-56/0x5683e8e927d35c7a2fc83c40ddeebb7e47a58652/) | ⚠️ Unaudited |
| stZETA | unknown | bsc | 2 deployments: ethereum `0xf38fee...bb0cfc`; bsc [`0xcf123d...e01a6b`](./contracts/bsc-56/0xcf123d8638266629fb02fc415ad47bd47de01a6b/) | ⚠️ Unaudited |
| stZETAMinterERC20 | token | ethereum | 2 deployments: ethereum [`0x0a2fe6...5138c0`](./contracts/ethereum-1/0x0a2fe6291e5dc0a38fd5b1c961f3b23a955138c0/); bsc `0xeed543...aaf0ff` | ⚠️ Unaudited |
| WACME | unknown | arbitrum | [`0xdf4ef6...c01170`](./contracts/arbitrum-42161/0xdf4ef6ee483953fe3b84abd08c6a060445c01170/) | ⚠️ Unaudited |
| weSEI | unknown | sei | [`0x7ac168...b3c547`](./contracts/sei-1329/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| weSEILendingV100 | core_logic | sei | [`0x39d805...60085b`](./contracts/sei-1329/0x39d805cd239b1c69beb4293df86c4353fa60085b/) | ⚠️ Unaudited |
| wrstETH | unknown | ethereum | [`0x363290...1b84dc`](./contracts/ethereum-1/0x36329065407eb354709454baf693070f931b84dc/) | ⚠️ Unaudited |
| wstACME | unknown | arbitrum | 2 deployments: ethereum `0xa5e016...e54c2a`; arbitrum [`0xa1372e...328080`](./contracts/arbitrum-42161/0xa1372eae7acdeaac3aa9b4ab57d5451a83328080/) | ⚠️ Unaudited |
| wstARB | unknown | arbitrum | [`0x02175c...820071`](./contracts/arbitrum-42161/0x02175c12d20665f162384344bda8e24ea5820071/) | ⚠️ Unaudited |
| wstMANTA | unknown | manta | [`0x7ac168...b3c547`](./contracts/manta-169/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| wstMANTALendingV102 | core_logic | manta | [`0x66bf69...bba6b8`](./contracts/manta-169/0x66bf6995af268b90d934f2678a34ecaa53bba6b8/) | ⚠️ Unaudited |
| wstVLX | unknown | bsc | [`0x7ac168...b3c547`](./contracts/bsc-56/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| wstZETA | unknown | ethereum | 2 deployments: ethereum [`0x4742ba...26884d`](./contracts/ethereum-1/0x4742ba1631d01ed681baf7db180cea5ec626884d/); bsc `0xfdb7d8...a127ea` | ⚠️ Unaudited |
| Zeta | unknown | ethereum | [`0xf09186...2e9cc8`](./contracts/ethereum-1/0xf091867ec603a6628ed83d274e835539d82e9cc8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x1c1347...f8e49c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb5408e...cb5769` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcf1a40...3c3217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd702d7...e06f81` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf09186...2e9cc8` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xddb342...7555c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xed5796...ad4724` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x4781f0...bd23ad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hats.finance](https://hats.finance/) | Hats Finance | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [metatrust.io](https://metatrust.io/) | MetaTrust | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [auditagent.nethermind.io](https://auditagent.nethermind.io/) | Nethermind AuditAgent | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [HatsFinance-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/HatsFinance-Audit.md) | HatsFinance | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Nethermind-AuditAgent-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/Nethermind-AuditAgent-Audit.md) | Nethermind | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-metatrust-2024-06-29.pdf](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/audit-metatrust-2024-06-29.pdf) | MetaTrust | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf4ef6...c01170`](./contracts/ethereum-1/0xdf4ef6ee483953fe3b84abd08c6a060445c01170/) | WrappedToken | token | $12,187.76 | Verified native implementation with $12,187.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba0509...db7d0e`](./contracts/ethereum-1/0xba050938970c8eaeda3e970b571a6fe463db7d0e/) | AccumulateBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf1a40...3c3217`](./contracts/ethereum-1/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ACMELiquidStaking | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x050ae6...ced081`](./contracts/arbitrum-42161/0x050ae6734f7eab5fd3f10bba937a009de5ced081/) | ERC20MinterRedeem | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xcba2ae...49681a`](./contracts/sei-1329/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | eSEI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xcf1a40...3c3217`](./contracts/sei-1329/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | eSEIMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x6626bc...861ced`](./contracts/sei-1329/0x6626bc5f5ce20790ba25594b785a71252e861ced/) | eSEIMinterWithdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x684d7f...92dfa9`](./contracts/ethereum-1/0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9/) | rstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76cefc...7dad3a`](./contracts/ethereum-1/0x76cefc49c460cd37d9653feaffcffc6ade7dad3a/) | rstETHMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdde19c...e9714f`](./contracts/ethereum-1/0xdde19cf8bec23c2103f5ada61c83d5fd79e9714f/) | stACMEMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac168...b3c547`](./contracts/ethereum-1/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | StakedACME | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8f0ecd...1f5325`](./contracts/arbitrum-42161/0x8f0ecda9679ad16e30be3d83d183c482821f5325/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xedd708...bae625`](./contracts/arbitrum-42161/0xedd7083eb44e8cc4e734e57e0032451a04bae625/) | stARB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaa3d53...abbb86`](./contracts/arbitrum-42161/0xaa3d5398f0258b766f1bb7025f252dc57cabbb86/) | stARBMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xcba2ae...49681a`](./contracts/manta-169/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | stMANTA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xcf1a40...3c3217`](./contracts/manta-169/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | stMANTAMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1103a4...2cf662`](./contracts/manta-169/0x1103a4761294012fa9276b62935ab626f82cf662/) | stMANTAMinterV203 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x27741d...c8c1de`](./contracts/manta-169/0x27741d007358eb6c1924bf459cd7e06e60c8c1de/) | stMANTAMinterWithdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcba2ae...49681a`](./contracts/bsc-56/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | stVLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5452f1...5a0fe8`](./contracts/bsc-56/0x5452f159b48d14a22cbf1988038c41dfec5a0fe8/) | stVLXMinterBSC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5683e8...a58652`](./contracts/bsc-56/0x5683e8e927d35c7a2fc83c40ddeebb7e47a58652/) | stVLXMinterBSCV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcf123d...e01a6b`](./contracts/bsc-56/0xcf123d8638266629fb02fc415ad47bd47de01a6b/) | stZETA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a2fe6...5138c0`](./contracts/ethereum-1/0x0a2fe6291e5dc0a38fd5b1c961f3b23a955138c0/) | stZETAMinterERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7ac168...b3c547`](./contracts/sei-1329/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | weSEI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x39d805...60085b`](./contracts/sei-1329/0x39d805cd239b1c69beb4293df86c4353fa60085b/) | weSEILendingV100 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x363290...1b84dc`](./contracts/ethereum-1/0x36329065407eb354709454baf693070f931b84dc/) | wrstETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa1372e...328080`](./contracts/arbitrum-42161/0xa1372eae7acdeaac3aa9b4ab57d5451a83328080/) | wstACME | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02175c...820071`](./contracts/arbitrum-42161/0x02175c12d20665f162384344bda8e24ea5820071/) | wstARB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7ac168...b3c547`](./contracts/manta-169/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | wstMANTA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x66bf69...bba6b8`](./contracts/manta-169/0x66bf6995af268b90d934f2678a34ecaa53bba6b8/) | wstMANTALendingV102 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7ac168...b3c547`](./contracts/bsc-56/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | wstVLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4742ba...26884d`](./contracts/ethereum-1/0x4742ba1631d01ed681baf7db180cea5ec626884d/) | wstZETA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3030] hats.finance
- [3031] metatrust.io
- [3032] auditagent.nethermind.io
- [3666] HatsFinance-Audit.md
- [3667] Nethermind-AuditAgent-Audit.md
- [3668] audit-metatrust-2024-06-29.pdf

Fork inheritance lineage and inherited audits are included when available.
