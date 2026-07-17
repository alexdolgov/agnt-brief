# Agentic Audit Brief: Accumulated Finance

⚠️ Lifecycle status: UNKNOWN - TVL dropped 43.7% over 90 days

## Project Overview

- Project: Accumulated Finance (`accumulated-finance`)
- Website: [https://accumulated.finance](https://accumulated.finance)
- Lifecycle: unknown (Tier 0, 84.2% below peak)
- Generated: 2026-07-04T14:52:57.985Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum, bsc, ethereum, manta, sei
- Contract surface: 42 unique implementations (50 raw deployments)
- DeFi Llama TVL: $978,025.00
- On-chain TVL (included contracts): $12,187.76
- TVL by chain: Ethereum $12,187.76

## Project Description

Lending. Structurally: 37 project-authored contract(s) across 5 chain(s); 11 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 5 common project-authored base contract(s) (xerc4626, erc20burnable, erc20minterwithdrawal). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 50 (29 live, 21 unknown).
- Excluded by liveness: 10 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/21 (4.8%)
- Deployed-live implementations: 22 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/29
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 42
- Raw deployments: 50
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $12,187.76
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $12,187.76 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| MetaTrust | Tier 2 | 1 | 3.4% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC20MinterRedeem | unknown | arbitrum | n/a | [`0x050ae6734f7eab5fd3f10bba937a009de5ced081`](./contracts/arbitrum-42161/0x050ae6734f7eab5fd3f10bba937a009de5ced081/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WrappedToken | token | ethereum | n/a | [`0xdf4ef6ee483953fe3b84abd08c6a060445c01170`](./contracts/ethereum-1/0xdf4ef6ee483953fe3b84abd08c6a060445c01170/) | ⚠️ Unaudited |
| AccumulateBridge | unknown | ethereum | n/a | 2 deployments: ethereum [`0xba050938970c8eaeda3e970b571a6fe463db7d0e`](./contracts/ethereum-1/0xba050938970c8eaeda3e970b571a6fe463db7d0e/); arbitrum [`0xba050938970c8eaeda3e970b571a6fe463db7d0e`](./contracts/arbitrum-42161/0xba050938970c8eaeda3e970b571a6fe463db7d0e/) | ⚠️ Unaudited |
| ACMELiquidStaking | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`](./contracts/ethereum-1/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/); arbitrum [`0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`](./contracts/arbitrum-42161/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ⚠️ Unaudited |
| eSEI | unknown | sei | n/a | [`0xcba2aeec821b0b119857a9ab39e09b034249681a`](./contracts/sei-1329/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | ⚠️ Unaudited |
| eSEIMinter | unknown | sei | n/a | [`0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`](./contracts/sei-1329/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ⚠️ Unaudited |
| eSEIMinterWithdrawal | operational_periphery | sei | n/a | 2 deployments: sei [`0x6626bc5f5ce20790ba25594b785a71252e861ced`](./contracts/sei-1329/0x6626bc5f5ce20790ba25594b785a71252e861ced/); sei `0xf854342c70fe4b2a340451d76858fde34eb116dd` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xd22f2de31ba14917ccd7c6b8a52fee6be893a17e`](./contracts/ethereum-1/0xd22f2de31ba14917ccd7c6b8a52fee6be893a17e/) | ⚠️ Unaudited |
| Manta | unknown | manta | n/a | [`0x95cef13441be50d20ca4558cc0a27b601ac544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| rstETH | token | ethereum | n/a | [`0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9`](./contracts/ethereum-1/0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9/) | ⚠️ Unaudited |
| rstETHMinter | unknown | ethereum | n/a | [`0x76cefc49c460cd37d9653feaffcffc6ade7dad3a`](./contracts/ethereum-1/0x76cefc49c460cd37d9653feaffcffc6ade7dad3a/) | ⚠️ Unaudited |
| stACMEMinter | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdde19cf8bec23c2103f5ada61c83d5fd79e9714f`](./contracts/ethereum-1/0xdde19cf8bec23c2103f5ada61c83d5fd79e9714f/); arbitrum `0xe54fb84a61583a4cc80878c396ebec588f84ff5d` | ⚠️ Unaudited |
| StakedACME | token | ethereum | n/a | 2 deployments: ethereum [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/ethereum-1/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/); arbitrum [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/arbitrum-42161/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| stMANTA | unknown | manta | n/a | [`0xcba2aeec821b0b119857a9ab39e09b034249681a`](./contracts/manta-169/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | ⚠️ Unaudited |
| stMANTAMinter | unknown | manta | n/a | [`0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`](./contracts/manta-169/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ⚠️ Unaudited |
| stMANTAMinterV203 | unknown | manta | n/a | [`0x1103a4761294012fa9276b62935ab626f82cf662`](./contracts/manta-169/0x1103a4761294012fa9276b62935ab626f82cf662/) | ⚠️ Unaudited |
| stMANTAMinterWithdrawal | operational_periphery | manta | n/a | 2 deployments: manta [`0x27741d007358eb6c1924bf459cd7e06e60c8c1de`](./contracts/manta-169/0x27741d007358eb6c1924bf459cd7e06e60c8c1de/); manta `0xe2cf4ec0360386876bda3a919a50c79f094b01a5` | ⚠️ Unaudited |
| stVLX | unknown | bsc | n/a | [`0xcba2aeec821b0b119857a9ab39e09b034249681a`](./contracts/bsc-56/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | ⚠️ Unaudited |
| stVLXMinterBSC | unknown | bsc | n/a | [`0x5452f159b48d14a22cbf1988038c41dfec5a0fe8`](./contracts/bsc-56/0x5452f159b48d14a22cbf1988038c41dfec5a0fe8/) | ⚠️ Unaudited |
| stVLXMinterBSCV2 | unknown | bsc | n/a | [`0x5683e8e927d35c7a2fc83c40ddeebb7e47a58652`](./contracts/bsc-56/0x5683e8e927d35c7a2fc83c40ddeebb7e47a58652/) | ⚠️ Unaudited |
| stZETA | unknown | bsc | n/a | 2 deployments: ethereum `0xf38feedb0c85c1e1d6864c7513ac646d28bb0cfc`; bsc [`0xcf123d8638266629fb02fc415ad47bd47de01a6b`](./contracts/bsc-56/0xcf123d8638266629fb02fc415ad47bd47de01a6b/) | ⚠️ Unaudited |
| WACME | unknown | arbitrum | n/a | [`0xdf4ef6ee483953fe3b84abd08c6a060445c01170`](./contracts/arbitrum-42161/0xdf4ef6ee483953fe3b84abd08c6a060445c01170/) | ⚠️ Unaudited |
| weSEI | unknown | sei | n/a | [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/sei-1329/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| weSEILendingV100 | core_logic | sei | n/a | [`0x39d805cd239b1c69beb4293df86c4353fa60085b`](./contracts/sei-1329/0x39d805cd239b1c69beb4293df86c4353fa60085b/) | ⚠️ Unaudited |
| wstACME | unknown | arbitrum | n/a | 2 deployments: ethereum `0xa5e0163f778b05a522df8fe374f15d4ffbe54c2a`; arbitrum [`0xa1372eae7acdeaac3aa9b4ab57d5451a83328080`](./contracts/arbitrum-42161/0xa1372eae7acdeaac3aa9b4ab57d5451a83328080/) | ⚠️ Unaudited |
| wstMANTA | unknown | manta | n/a | [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/manta-169/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| wstMANTALendingV102 | core_logic | manta | n/a | [`0x66bf6995af268b90d934f2678a34ecaa53bba6b8`](./contracts/manta-169/0x66bf6995af268b90d934f2678a34ecaa53bba6b8/) | ⚠️ Unaudited |
| wstVLX | unknown | bsc | n/a | [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/bsc-56/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | ⚠️ Unaudited |
| Zeta | unknown | ethereum | n/a | [`0xf091867ec603a6628ed83d274e835539d82e9cc8`](./contracts/ethereum-1/0xf091867ec603a6628ed83d274e835539d82e9cc8/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x4781f0c82dc3ab55d79bd3956689d1b65fbd23ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1641194a8a7ea9c19db00cd568f428f3e331740` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c1347c92e093bdfe500e4d43f3c4c0829f8e49c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c543aed163909142695f2d2acd0d55791a9edb9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5408ed89fdd3a6dad70a250d4493e3ca7cb5769` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd702d7ce5d07c1c54828321789ed33e797e06f81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf091867ec603a6628ed83d274e835539d82e9cc8` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf091867ec603a6628ed83d274e835539d82e9cc8` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xddb3422497e61e13543bea06989c0789117555c5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xed57966f1566de1a90042d07403021ea52ad4724` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3557371afed82dd683de278924bd0e1a790a3c49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4781f0c82dc3ab55d79bd3956689d1b65fbd23ad` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HatsFinance-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/HatsFinance-Audit.md) | HatsFinance | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [Nethermind-AuditAgent-Audit.md](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/Nethermind-AuditAgent-Audit.md) | Nethermind | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audit-metatrust-2024-06-29.pdf](https://github.com/AccumulatedFinance/contracts-v2/blob/master/audits/audit-metatrust-2024-06-29.pdf) | MetaTrust | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xdf4ef6ee483953fe3b84abd08c6a060445c01170`](./contracts/ethereum-1/0xdf4ef6ee483953fe3b84abd08c6a060445c01170/) | WrappedToken | token | $12,187.76 | Verified native implementation with $12,187.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba050938970c8eaeda3e970b571a6fe463db7d0e`](./contracts/ethereum-1/0xba050938970c8eaeda3e970b571a6fe463db7d0e/) | AccumulateBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`](./contracts/ethereum-1/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | ACMELiquidStaking | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xcba2aeec821b0b119857a9ab39e09b034249681a`](./contracts/sei-1329/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | eSEI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`](./contracts/sei-1329/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | eSEIMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x6626bc5f5ce20790ba25594b785a71252e861ced`](./contracts/sei-1329/0x6626bc5f5ce20790ba25594b785a71252e861ced/) | eSEIMinterWithdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9`](./contracts/ethereum-1/0x684d7fd1067ed8e9686e6fd764d048b9bf92dfa9/) | rstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76cefc49c460cd37d9653feaffcffc6ade7dad3a`](./contracts/ethereum-1/0x76cefc49c460cd37d9653feaffcffc6ade7dad3a/) | rstETHMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdde19cf8bec23c2103f5ada61c83d5fd79e9714f`](./contracts/ethereum-1/0xdde19cf8bec23c2103f5ada61c83d5fd79e9714f/) | stACMEMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/ethereum-1/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | StakedACME | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xcba2aeec821b0b119857a9ab39e09b034249681a`](./contracts/manta-169/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | stMANTA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217`](./contracts/manta-169/0xcf1a40eff1a4d4c56dc4042a1ae93013d13c3217/) | stMANTAMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1103a4761294012fa9276b62935ab626f82cf662`](./contracts/manta-169/0x1103a4761294012fa9276b62935ab626f82cf662/) | stMANTAMinterV203 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x27741d007358eb6c1924bf459cd7e06e60c8c1de`](./contracts/manta-169/0x27741d007358eb6c1924bf459cd7e06e60c8c1de/) | stMANTAMinterWithdrawal | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcba2aeec821b0b119857a9ab39e09b034249681a`](./contracts/bsc-56/0xcba2aeec821b0b119857a9ab39e09b034249681a/) | stVLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5452f159b48d14a22cbf1988038c41dfec5a0fe8`](./contracts/bsc-56/0x5452f159b48d14a22cbf1988038c41dfec5a0fe8/) | stVLXMinterBSC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5683e8e927d35c7a2fc83c40ddeebb7e47a58652`](./contracts/bsc-56/0x5683e8e927d35c7a2fc83c40ddeebb7e47a58652/) | stVLXMinterBSCV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcf123d8638266629fb02fc415ad47bd47de01a6b`](./contracts/bsc-56/0xcf123d8638266629fb02fc415ad47bd47de01a6b/) | stZETA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdf4ef6ee483953fe3b84abd08c6a060445c01170`](./contracts/arbitrum-42161/0xdf4ef6ee483953fe3b84abd08c6a060445c01170/) | WACME | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/sei-1329/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | weSEI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x39d805cd239b1c69beb4293df86c4353fa60085b`](./contracts/sei-1329/0x39d805cd239b1c69beb4293df86c4353fa60085b/) | weSEILendingV100 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa1372eae7acdeaac3aa9b4ab57d5451a83328080`](./contracts/arbitrum-42161/0xa1372eae7acdeaac3aa9b4ab57d5451a83328080/) | wstACME | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/manta-169/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | wstMANTA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x66bf6995af268b90d934f2678a34ecaa53bba6b8`](./contracts/manta-169/0x66bf6995af268b90d934f2678a34ecaa53bba6b8/) | wstMANTALendingV102 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547`](./contracts/bsc-56/0x7ac168c81f4f3820fa3f22603ce5864d6ab3c547/) | wstVLX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [14545] HatsFinance-Audit.md
- [14546] Nethermind-AuditAgent-Audit.md

Fork inheritance lineage and inherited audits are included when available.
