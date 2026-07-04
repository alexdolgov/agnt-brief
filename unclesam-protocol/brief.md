# Agentic Audit Brief: UncleSam Protocol

## Project Overview

- Project: UncleSam Protocol (`unclesam-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.784Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base, bsc, ethereum
- Contract surface: 42 unique implementations (53 raw deployments)
- DeFi Llama TVL: $0.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 44 project-authored contract(s) across 2 chain(s); 32 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 73; live-surface contracts included: 53 (40 live, 13 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/29 (3.4%)
- Deployed-live implementations: 29 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/30
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 42
- Raw deployments: 53
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 3.3% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UncleSam | adapter | base | n/a | [`0x80a3d4...f6c27d`](./contracts/base-8453/0x80a3d4999b2836a5ac90b4742da133f5f5f6c27d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Altcoin | unknown | ethereum | n/a | [`0xa62704...d86edd`](./contracts/ethereum-1/0xa62704d4220bce762befed06555c4dda32d86edd/) | ⚠️ Unaudited |
| Audinals | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a5236...438d98`](./contracts/ethereum-1/0x2a52368e42a081bb46453ffc4d562a2014438d98/); ethereum `0x5f68f6...e5bb4a` | ⚠️ Unaudited |
| BONFIREERC | unknown | ethereum | n/a | [`0xfc4eb7...e50c3c`](./contracts/ethereum-1/0xfc4eb70fc13f5f25f67938cd4249b8c450e50c3c/) | ⚠️ Unaudited |
| Cafe | unknown | ethereum | n/a | [`0xdefcaf...c4e207`](./contracts/ethereum-1/0xdefcafe7eac90d31bbba841038df365de3c4e207/) | ⚠️ Unaudited |
| CODEX | unknown | ethereum | n/a | [`0xfd26e3...0c5c24`](./contracts/ethereum-1/0xfd26e39807772251c3bb90fb1fcd9ce5b80c5c24/) | ⚠️ Unaudited |
| Cyberquad | unknown | ethereum | n/a | [`0xfed742...2ce1ca`](./contracts/ethereum-1/0xfed74242dadcc824e2e0ad90ecd5d913252ce1ca/) | ⚠️ Unaudited |
| DOGEPOOP | unknown | ethereum | n/a | [`0x7e3e52...e58983`](./contracts/ethereum-1/0x7e3e526e801c15a49a5bb6de1373ecf8cfe58983/) | ⚠️ Unaudited |
| FLOV | unknown | ethereum | n/a | [`0xe94760...645dc9`](./contracts/ethereum-1/0xe94760c58e2175e369722372beea68395c645dc9/) | ⚠️ Unaudited |
| FundsRecover | unknown | ethereum | n/a | [`0x2900e6...8d8ba7`](./contracts/ethereum-1/0x2900e6b68658128784b9a1de242f811d938d8ba7/) | ⚠️ Unaudited |
| HoldOnForDearLife | unknown | ethereum | n/a | [`0xe2f98d...2f8df4`](./contracts/ethereum-1/0xe2f98dd7506807ef82d1988aa77c320bc52f8df4/) | ⚠️ Unaudited |
| HyprDropDore | unknown | ethereum | n/a | 8 deployments: ethereum [`0x0dcfdd...d1aca2`](./contracts/ethereum-1/0x0dcfdd78fe724d86794a6c29e04e8f2b7ad1aca2/); ethereum `0x45d2c3...d998a4`; ethereum `0x47307a...684035`; ethereum `0x7fe9be...a0ec69`; ethereum `0x866f46...9c3e6f`; ethereum `0x9d9085...32383b`; ethereum `0xc75cc0...395365`; ethereum `0xe9e411...fc1952` | ⚠️ Unaudited |
| HyprDropGeneral | unknown | ethereum | n/a | 2 deployments: ethereum [`0x176813...dd6b37`](./contracts/ethereum-1/0x1768137127e5b8064d1155fd653d2afbb1dd6b37/); ethereum `0x8ba69b...1f33d5` | ⚠️ Unaudited |
| Jok | unknown | ethereum | n/a | [`0xa728aa...bf9f97`](./contracts/ethereum-1/0xa728aa2de568766e2fa4544ec7a77f79c0bf9f97/) | ⚠️ Unaudited |
| Kohenoor | unknown | ethereum | n/a | [`0x5f6021...7ab0c3`](./contracts/ethereum-1/0x5f602133653237f362eb69826ba8237f4f7ab0c3/) | ⚠️ Unaudited |
| LILPENGU | unknown | ethereum | n/a | [`0xb5f20b...ee4f9e`](./contracts/ethereum-1/0xb5f20b4aebea14424e0b5a031745ed4dd3ee4f9e/) | ⚠️ Unaudited |
| LILPENGU_Presale_Source | unknown | ethereum | n/a | [`0x3aaa14...6ecef7`](./contracts/ethereum-1/0x3aaa141d0eb320d737a7af3847cc383ffd6ecef7/) | ⚠️ Unaudited |
| LiquidityGeneratorToken | token | ethereum | n/a | [`0xddbb3e...97bcbb`](./contracts/ethereum-1/0xddbb3e6f8413d0e3adc700a731da304aec97bcbb/) | ⚠️ Unaudited |
| MarvelDoge | unknown | ethereum | n/a | [`0xb603df...bad56b`](./contracts/ethereum-1/0xb603dfcbb1abe7b053ba3634d7e3192fbdbad56b/) | ⚠️ Unaudited |
| MeshWave | unknown | ethereum | n/a | [`0x444774...ca649e`](./contracts/ethereum-1/0x4447743d42680f7fbb56e87b3617463113ca649e/) | ⚠️ Unaudited |
| MumuTheBull | unknown | ethereum | n/a | [`0x9b7331...9b1173`](./contracts/ethereum-1/0x9b7331c6e98bad1dc8f096ff3d98c93b3b9b1173/) | ⚠️ Unaudited |
| Nprotocol | unknown | ethereum | n/a | [`0x36c86a...74a0b4`](./contracts/ethereum-1/0x36c86a1c23f4d17f3b3f28b7266cd7db1d74a0b4/) | ⚠️ Unaudited |
| Oasis | unknown | ethereum | n/a | [`0xf0dc9f...aad439`](./contracts/ethereum-1/0xf0dc9fc0669f068e04ad79f7d70618d3f9aad439/) | ⚠️ Unaudited |
| Open | unknown | ethereum | n/a | [`0xe6bd32...a69948`](./contracts/ethereum-1/0xe6bd3221fd849523a62ef7dc265cbc30caa69948/) | ⚠️ Unaudited |
| RetailRevenue | unknown | ethereum | n/a | [`0x5a20dd...bd2e42`](./contracts/ethereum-1/0x5a20dd6ee6d2cf801cb08d31f7c1bae286bd2e42/) | ⚠️ Unaudited |
| SIMPLEHUB | unknown | ethereum | n/a | [`0x0a6c7d...3dd3a0`](./contracts/ethereum-1/0x0a6c7d5b442ddf53d963581d87932f25743dd3a0/) | ⚠️ Unaudited |
| SlopyToken | token | ethereum | n/a | [`0x28d6ce...03fd79`](./contracts/ethereum-1/0x28d6cefdc7a57cb3e2958f61c95b20c76103fd79/) | ⚠️ Unaudited |
| StandardToken | token | ethereum | n/a | 2 deployments: ethereum [`0xf02f86...be323c`](./contracts/ethereum-1/0xf02f86ee4a5926a1a0387145d051d26e24be323c/); bsc `0xfb4b1e...dd0015` | ⚠️ Unaudited |
| Token | token | ethereum | n/a | 2 deployments: ethereum [`0x8ada9b...d88145`](./contracts/ethereum-1/0x8ada9bf2d08b484cb9dee67caccd04b991d88145/); ethereum `0xd18064...61321f` | ⚠️ Unaudited |
| ZEUS | unknown | ethereum | n/a | [`0x4d4574...35e610`](./contracts/ethereum-1/0x4d4574f50dd8b9dbe623cf329dcc78d76935e610/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0b9839...91a577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a1740...6ba41d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f4444...70f500` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x573307...4f7590` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8cc5c5...de8441` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dde0a...d6af90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb76b5d...fd6821` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd27663...f41c1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4eae4...4a17e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5a8f3...6ce40c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec3787...f7941d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefe8f8...d43aa1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [UncleSam_0x80a3d4999b2836a5ac90b4742da133f5f5f6c27d.pdf](https://github.com/freshcoins/Smart-Contract-Audits/blob/main/UncleSam_0x80a3d4999b2836a5ac90b4742da133f5f5f6c27d.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa62704...d86edd`](./contracts/ethereum-1/0xa62704d4220bce762befed06555c4dda32d86edd/) | Altcoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a5236...438d98`](./contracts/ethereum-1/0x2a52368e42a081bb46453ffc4d562a2014438d98/) | Audinals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfc4eb7...e50c3c`](./contracts/ethereum-1/0xfc4eb70fc13f5f25f67938cd4249b8c450e50c3c/) | BONFIREERC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdefcaf...c4e207`](./contracts/ethereum-1/0xdefcafe7eac90d31bbba841038df365de3c4e207/) | Cafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd26e3...0c5c24`](./contracts/ethereum-1/0xfd26e39807772251c3bb90fb1fcd9ce5b80c5c24/) | CODEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfed742...2ce1ca`](./contracts/ethereum-1/0xfed74242dadcc824e2e0ad90ecd5d913252ce1ca/) | Cyberquad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e3e52...e58983`](./contracts/ethereum-1/0x7e3e526e801c15a49a5bb6de1373ecf8cfe58983/) | DOGEPOOP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe94760...645dc9`](./contracts/ethereum-1/0xe94760c58e2175e369722372beea68395c645dc9/) | FLOV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2900e6...8d8ba7`](./contracts/ethereum-1/0x2900e6b68658128784b9a1de242f811d938d8ba7/) | FundsRecover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe2f98d...2f8df4`](./contracts/ethereum-1/0xe2f98dd7506807ef82d1988aa77c320bc52f8df4/) | HoldOnForDearLife | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dcfdd...d1aca2`](./contracts/ethereum-1/0x0dcfdd78fe724d86794a6c29e04e8f2b7ad1aca2/) | HyprDropDore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176813...dd6b37`](./contracts/ethereum-1/0x1768137127e5b8064d1155fd653d2afbb1dd6b37/) | HyprDropGeneral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa728aa...bf9f97`](./contracts/ethereum-1/0xa728aa2de568766e2fa4544ec7a77f79c0bf9f97/) | Jok | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f6021...7ab0c3`](./contracts/ethereum-1/0x5f602133653237f362eb69826ba8237f4f7ab0c3/) | Kohenoor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb5f20b...ee4f9e`](./contracts/ethereum-1/0xb5f20b4aebea14424e0b5a031745ed4dd3ee4f9e/) | LILPENGU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aaa14...6ecef7`](./contracts/ethereum-1/0x3aaa141d0eb320d737a7af3847cc383ffd6ecef7/) | LILPENGU_Presale_Source | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xddbb3e...97bcbb`](./contracts/ethereum-1/0xddbb3e6f8413d0e3adc700a731da304aec97bcbb/) | LiquidityGeneratorToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb603df...bad56b`](./contracts/ethereum-1/0xb603dfcbb1abe7b053ba3634d7e3192fbdbad56b/) | MarvelDoge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x444774...ca649e`](./contracts/ethereum-1/0x4447743d42680f7fbb56e87b3617463113ca649e/) | MeshWave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b7331...9b1173`](./contracts/ethereum-1/0x9b7331c6e98bad1dc8f096ff3d98c93b3b9b1173/) | MumuTheBull | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c86a...74a0b4`](./contracts/ethereum-1/0x36c86a1c23f4d17f3b3f28b7266cd7db1d74a0b4/) | Nprotocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0dc9f...aad439`](./contracts/ethereum-1/0xf0dc9fc0669f068e04ad79f7d70618d3f9aad439/) | Oasis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe6bd32...a69948`](./contracts/ethereum-1/0xe6bd3221fd849523a62ef7dc265cbc30caa69948/) | Open | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a20dd...bd2e42`](./contracts/ethereum-1/0x5a20dd6ee6d2cf801cb08d31f7c1bae286bd2e42/) | RetailRevenue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6c7d...3dd3a0`](./contracts/ethereum-1/0x0a6c7d5b442ddf53d963581d87932f25743dd3a0/) | SIMPLEHUB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28d6ce...03fd79`](./contracts/ethereum-1/0x28d6cefdc7a57cb3e2958f61c95b20c76103fd79/) | SlopyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf02f86...be323c`](./contracts/ethereum-1/0xf02f86ee4a5926a1a0387145d051d26e24be323c/) | StandardToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ada9b...d88145`](./contracts/ethereum-1/0x8ada9bf2d08b484cb9dee67caccd04b991d88145/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d4574...35e610`](./contracts/ethereum-1/0x4d4574f50dd8b9dbe623cf329dcc78d76935e610/) | ZEUS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
