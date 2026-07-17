# Agentic Audit Brief: Predictcoin

## Project Overview

- Project: Predictcoin (`predictcoin`)
- Website: [https://predictcoin.finance/#](https://predictcoin.finance/#)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.147Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: bsc
- Contract surface: 48 unique implementations (48 raw deployments)
- DeFi Llama TVL: $112.86
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Prediction Market. Structurally: 16 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (helpers, events, dsmath). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 48 (2 live, 46 unknown).
- Excluded by liveness: 43 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 2 of 48 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 48
- Raw deployments: 48
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 50.0% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Predictcoin | unknown | bsc | n/a | [`0xbdd2e3fdb879aa42748e9d47b7359323f226ba22`](./contracts/bsc-56/0xbdd2e3fdb879aa42748e9d47b7359323f226ba22/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | proxy | bsc | n/a | [`0x4b74c42b7ab96feec003563c355f2fefd0c80ee7`](./contracts/bsc-56/0x4b74c42b7ab96feec003563c355f2fefd0c80ee7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x061d104966377400940d2580c09e249343dcec8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06d82665b7f6f5838c70c38497f40fed5e85f362` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06eda71a8348cc100c3ab98f114be4f764b58e03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1fd75144e5b34ba446d46b4f1eef6a98bd4628f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x229ce6db9ad1bd92a7f76f5d505ab96c5741af21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2428350c339eb7bdc894a02e9e9845e148a2bd39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29d8840ae81ccf02e350cd24f259f4ede57092e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d595ac3fe802e4760685c606ca2a94b04eac25b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a46ea7b6c2b92b9249dd3330c8c97b50f5515e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37de43d1903c068be365e8ef6b6f5e76dd1c71d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3bb847bb749c0d11ebc1491e9fd84492be19e306` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4490c7aeb78e59f316cf36809a99dd17df1edf6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4951167ed942486f92a42410c1a0d3115653e6c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x546bde105b24147bbd34f3147a0fd68961515feb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57bf160c3939ca7becc1fa53128e901eefd87866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x58f4d59e4d4a97758d56487dbbe5e083af89cf9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ebe8e5b7df80325a16780b8494e3469afd1b1e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x66111b7c1d0304d9d0bd52327429f8223e713c60` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x680928c94c36ba5dbc2ff59a850d318061f8c9c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dcf5865da3cbdad8736f4a7f2d551be30fe46d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fb3655c70d295eb5a50ca44f7d7b2acd894adfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7c91b8602b125fea994224efb93b770e78c16ebb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d3b322452d4e9adc91913cc1bd0f1cc7dba74e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x810e4022109895652d41b4d815b05e6d85a2a3c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bece6cbf0eeeea13b444ec368f6800383546167` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8ebcbccbbc44abfa7d9182334530e1faf6919ea0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90fa0ed87a857eca96b18f21c8e0a456dff68c06` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x944930f20a6d9f17140b6f5ba69f83bff95eb820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99d82312ce60aa6c8e867961aee40b70ae15bbe6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a303550013ecd11d429a4c142a3987c6c9814c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a43c77414300e416c6f57565848e49ee2bfbf26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d58b8302d181f2f9fe72754e60f4ed435a236f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa512dfb5c3e1866174c0fb7776f8536281daaa1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5b13b963b86d39dc54c4d8df000facdcb8054a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaffcb0fa0b5790632e13ce82c9197aa5e6133311` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3c70c3c149b6e3ac836efef0e2c8537219d85db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb40c3b0fa2c735370a88c9cf9f444013eeaca240` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd713fad61f1cd9cb39f0007ad93fb2550d041e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3c7b66f9232176e5f7d4890719f1678ea880bfb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc558a66098efb3314e681f74f5bb08c396257d18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc71b93f5bdeee73694db21e79e2a8a080489cb79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd68f7ad2ca142b3e6a0871e4c53c202854955c7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9ca1660e8d69c73105ba6ba0d9472b358cb27c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec035b56b1f18a3ee7a98668793e95bd5b22c311` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec83e20709dab67e8c1bba1b1ee9a4a553ef27e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb1d4e73847ce8b34d446ad4afe17e3bb09ee609` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Predictcoin Full Smart Contract Security Audit.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/August/Predictcoin%20Full%20Smart%20Contract%20Security%20Audit.pdf) | yAudit | Audit | 2021-08 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
