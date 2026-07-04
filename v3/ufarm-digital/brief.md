# Agentic Audit Brief: UFarm Digital

## Project Overview

- Project: UFarm Digital (`ufarm-digital`)
- Website: [https://ufarm.digital](https://ufarm.digital)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.247Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, ethereum
- Contract surface: 74 unique implementations (74 raw deployments)
- DeFi Llama TVL: $523,352.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 10 project-authored contract(s) across 2 chain(s); 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (peripherypayments, peripheryimmutablestate, peripherypaymentswithfee). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 96; live-surface contracts included: 74 (2 live, 72 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 74 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 72
- Unique implementations: 74
- Raw deployments: 74
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Decurity | Tier 2 | 1 | 50.0% | 2024-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UFarmCore | unknown | arbitrum | n/a | [`0xc66660...4376fb`](./contracts/arbitrum-42161/0xc666606a0b45b5794b28221694f0b5a0124376fb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NonfungiblePositionManager | governance | arbitrum | n/a | [`0xc36442...11fe88`](./contracts/arbitrum-42161/0xc36442b4a4522e871399cd717abdd847ab11fe88/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (72)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x06a7be...faae15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22e4ed...d0da97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d5de...333f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a1f78...615a9a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a1efb...334ad7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x515414...f63f67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6738e8...c33e53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x83a82a...ff1540` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x989610...c6acee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb5c39...4fc084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc18171...178a3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4161f...a5a3d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd8b64...26e384` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe28161...29a15b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec07c3...954a82` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x054145...13e5d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x084a08...ff5733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ec8f2...25aaa1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19e96d...b32472` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b31bf...363dd5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x224e26...ecb9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ab9c6...46f2be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f509c...ebd9a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30187e...94455e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x322412...aedad6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32b707...9a6995` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x330552...9ac6b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x338037...2235c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33b3f4...6255a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x388cb7...b3ceaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bfcb2...a8e57d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e6194...af460c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x444cbb...31ebac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54d271...237d8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b623e...dde10c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5bb9f9...2f52b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d293f...d7b5ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5eb095...935784` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60d8b2...8bf1f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67624f...8f0fb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6db9d1...42dad1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70555f...359a6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x785a40...db2c8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7dd9c4...a29c07` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x825b84...07f404` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x826f6a...f6feef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x82898a...ff4ec0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x844811...5c6664` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x971553...71b484` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b0f1c...c8cef5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b584b...089dcc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cb749...843f9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa0282d...ed5e26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6f3b8...104b34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa89b38...4ed40f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacebc7...ca1052` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xadc240...7a58d5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb9fb31...d9e9df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc02c6f...744471` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc42bfa...509f3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc66dc8...713aed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca9bbf...f12804` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcfce6c...1eebd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4ea95...86a318` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd974d0...388cbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf3a99...0a1e40` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfcb4b...fcc1ef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe72fcf...b6499e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec0b81...93cf23` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1a9c5...382413` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2e605...27812c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe6144...0dd659` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ufarm-audit-report-2023-1.1.pdf](https://github.com/Decurity/audits/blob/master/UFarm/ufarm-audit-report-2023-1.1.pdf) | Decurity | Audit | 2024-02 | stale | Direct | contract_name | 1 | n/a |
| [ufarm-may-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/ufarm-may-25(Final).pdf) | Hexens | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 74 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [14048] ufarm-may-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
