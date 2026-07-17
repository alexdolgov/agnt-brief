# Agentic Audit Brief: MVL Staking

## Project Overview

- Project: MVL Staking (`mvl-staking`)
- Website: [https://mvlchain.io/](https://mvlchain.io/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:37.755Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 45 unique implementations (45 raw deployments)
- DeFi Llama TVL: $794,175.83
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 3 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 45 (2 live, 43 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/1 (100.0%)
- Deployed-live implementations: 2 of 45 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 45
- Raw deployments: 45
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 50.0% | 2022-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MVLToken | token | ethereum | n/a | [`0xa849eaae994fb86afa73382e9bd88c2b6b18dc71`](./contracts/ethereum-1/0xa849eaae994fb86afa73382e9bd88c2b6b18dc71/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniswapV2Pair | unknown | ethereum | n/a | [`0x3c8ad34155b83ddb7f43119a19503d34ed2b5c7a`](./contracts/ethereum-1/0x3c8ad34155b83ddb7f43119a19503d34ed2b5c7a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x024cc7d193014cd3eff94db9b9df9a20898ca388` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0283c16c2a339fe916510008a633c76d620b4f31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d9607dd5f36325dcb40da0874130e794d587ff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1053232134c055becd157981d7e942dcd9fa1bad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d20849ca543542cec0a5bb0551c27e8cf6ce44b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25ddd665932fa7752394aa6aaa10b1fe6b2106ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2918ef32f882687a1ebdd435c3eb71384b58437d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29d21e578e25c2db1186458b463b86d9b9445707` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b116ef04de516c8a192feff69d64db06e6792ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34fda56b5c9aa52df9fa51b01666683b7b1434d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3fe4552903318e37d9b5dccd846bc07a6bfbbc78` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4abc96531eca8fcdcf683f320c4edea3a5e06047` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5690a9ca5d6b78446c72f61b4768e650219327c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x597369b02a2cb728e473783e759c85ce069809c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5de946c0af525e9b000f05484ea13db7a9a46b98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612c7d3b06c864bf6bc70184e8b3872e1fdadc6c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6365d1d1206458e9299e9faaa03da30a2f6b807b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6443533a14647fb6abdd335312f07a906dbd7efc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672397a80f2b6622bb94bf34e5f64c4aa0239b31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b65471d191ff550e58ebfc122cbace86f61bfc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x706b74144215a2d265a592faec46fb622aa6743b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x742ab08eec9f940bef657394720090f163f535cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x749fdc6588d33e2e28e21b4e59a44fb314cda2c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x791f3c7cf0af8c745ec1c07fbfe6d3ffff96d292` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79a77db1ab8fcc44cfcf456c6af0ae1ab1984c15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x879debf26da258ad75b21721548046d0d91505aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d5554438911344f1cfeb71ccae6a6d1467a8051` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9090065e1495bd8b6f189570149e0cc97560ee42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92ec27935ce7b523cc70c2ffaf0728f1fa6425df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa791aed8a9f5b64e620f79759328ea17f1a402d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb56b012f8865f1f5aec8f89fbc681514ade22d70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb994f320ada949e1bbbe998b79676617dda8caa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe84123c15cb057c6669f24d6cea19f5c80680fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0496c7b9d7150a81bd6ff1d015e95668bd4abed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1ac84c7b9ea23e7e893b668ef368a6972c2637f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd84f2a9b5c5eb1b8b1fdf9bfa7bcfbbde3a9306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3925b4316fdeb85a926207385c7fde9144555b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd50090a480e8570ec0058d0fa2cc74b9355a4b7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3c087cfe3b087a9727aa8d6dab8b2f52f26360a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe700cc7c30adb5835cb19e749438c6569b2cda01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf608e54ac3184d444ceda4625ead26e7b4878bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7e5914f9dc16535029b730f3513195976b59153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7eaecebd69430b31e711df8bd9dd215a49b6d80` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger](https://skynet.certik.com/ko/projects/mvl-mass-vehicle-ledger?utm_source=CMC&utm_campaign=AuditByCertiKLink) | CertiK | Audit | 2022-02 | stale | Direct | contract_name | 1 | n/a |
| [download.cm](https://mvlchain.io/download.cm?tk=YToyOntpOjA7czoxMzoiNWViMWZlNmQ3MTliZSI7aToxO3M6MjI6ImYyMDIzMDYwMjNkOTVmZjE0MDdhZTciO30=) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [59e51efffe348.pdf](https://dataseoul.s3.ap-northeast-2.amazonaws.com/upload/S20210416bccc442510498/59e51efffe348.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [3212] download.cm
- [11971] 59e51efffe348.pdf

Fork inheritance lineage and inherited audits are included when available.
