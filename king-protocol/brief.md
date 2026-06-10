# Agentic Audit Brief: King Protocol

## Project Overview

- Project: King Protocol (`king-protocol`)
- Website: [https://kingprotocol.org/](https://kingprotocol.org/)
- Lifecycle: active (Tier 0, 94% below peak)
- Generated: 2026-06-10T20:59:06.698Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, ethereum, mantle, swellchain
- Contract surface: 16 unique implementations (32 raw deployments)
- DeFi Llama TVL: $1,540,496.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

King Protocol is a rewards and vault-share protocol focused on consolidating DeFi and restaking rewards into a liquid token. Its observed deployments include cross-chain token components such as KingOFTL2/LayerZero OFT-related contracts, but these should be treated as cross-chain deployment infrastructure rather than the sole or primary product definition unless further supported by current documentation.

### Architecture

The LRTSquaredCore contract manages the core restaking logic and interacts with the PriceProvider for asset pricing and the Swapper1InchV6 for trade execution. KingOFTL2 tokens are the liquid restaking tokens that are minted to users and can be bridged across chains via LayerZero.

## Audit Coverage Summary

- Verified implementations audited: 3/5 (60.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 16
- Raw deployments: 32
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Staleness: 0 fresh, 4 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| NM | Tier 2 | 3 | 60.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LRTSquaredCore | unknown | ethereum | [`0x8f08b7...8e6040`](./contracts/ethereum-1/0x8f08b70456eb22f6109f57b8fafe862ed28e6040/) | ✅ Audited |
| PriceProvider | operational_periphery | ethereum | [`0x2b9010...0f19e3`](./contracts/ethereum-1/0x2b90103cdc9bba6c0dbcaaf961f0b5b1920f19e3/) | ✅ Audited |
| Swapper1InchV6 | adapter | ethereum | [`0x747cac...52232e`](./contracts/ethereum-1/0x747cac75776b3a0bba3de3e61ec12a6a7f52232e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KingOFTL2 | unknown | base | 14 deployments: mantle `0x548c41...7b98ed`; mantle `0x5a57eb...7a7ab0`; base [`0x2a57db...9bb283`](./contracts/base-8453/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/); base `0x4d6a22...51beab`; base `0x6d0431...91570d`; base `0xcc0112...e852a9`; base `0xe22c24...5fbac0`; base `0xf25768...1d689d`; arbitrum [`0x2a57db...9bb283`](./contracts/arbitrum-42161/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/); arbitrum `0x2e4124...fee275`; arbitrum `0x5df256...e931c3`; arbitrum `0xb57d20...6d127f`; arbitrum `0xbb8660...5329bb`; arbitrum `0xf25768...1d689d` | ⚠️ Unaudited |
| UniswapV3Plugin | unknown | base | 4 deployments: base [`0x409994...200ec2`](./contracts/base-8453/0x409994fd2fdcfccddea418b7f203b4db51200ec2/); base `0x84acc4...983af0`; base `0x8bd78c...e4a459`; base `0xa12772...675ef7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | swellchain | `0xc2606a...cee6f8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x63f237...077c6a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0e9315...6aca5a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x155938...a33ac4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34b17b...fc1dc9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x644403...436763` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7e2a99...025844` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaeab5e...d12dbe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb71612...e228e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbd2e14...27586b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe592f9...3421b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM_0452_King_Cross_Chain_FINAL.pdf](https://github.com/King-Protocol/king-cross-chain/blob/master/audit/NM_0452_King_Cross_Chain_FINAL.pdf) | unknown | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf (also discovered via alternate URL)](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf) | Ether_Fi | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [NM_0314_EtherFi_LRT_2.pdf (also discovered via alternate URL)](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/NM_0314_EtherFi_LRT_2.pdf) | NM | Audit | 2024-09 | aging | Direct | contract_name|n/a | 3 | high |
| [NM_0390_LRT_Square_Strategies_DRAFT.pdf (also discovered via alternate URL)](https://github.com/King-Protocol/king-protocol-sc/blob/master/audits/NM_0390_LRT_Square_Strategies_DRAFT.pdf) | NM | Audit | 2024-11 | aging | Direct | contract_name|n/a | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x2a57db...9bb283`](./contracts/base-8453/0x2a57db06506ab9764db8dcf06ac17a5fed9bb283/) | KingOFTL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=5

Zero-match audit list:

- [3122] NM_0452_King_Cross_Chain_FINAL.pdf
- [3123] Ether_Fi_Cross_Chain_Cumulative_Merkle_Smart_Contract_Security_Assessment.pdf

Fork inheritance lineage and inherited audits are included when available.
