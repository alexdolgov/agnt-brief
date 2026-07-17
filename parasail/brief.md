# Agentic Audit Brief: Parasail

## Project Overview

- Project: Parasail (`parasail`)
- Website: [https://www.parasail.network/](https://www.parasail.network/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.963Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum
- Contract surface: 35 unique implementations (40 raw deployments)
- DeFi Llama TVL: $2,600,797.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Restaking. Structurally: 2 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 40 (1 live, 39 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/1 (0.0%)
- Deployed-live implementations: 1 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 35
- Raw deployments: 40
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| InterchainToken | token | arbitrum | n/a | [`0xc87b37a581ec3257b734886d9d3a581f5a9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (34)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xaa5d9edfd680297533a14e121b70ae9fadd77831) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0ec4dc1e46a4cc0b53ec764ab37b6e5b6e010caa`; arbitrum `0xaa5d9edfd680297533a14e121b70ae9fadd77831` | ❓ Unverified |
| Proxy (impl: 0xc4f869b9040ce060d3f3204abd579b00461a4e45) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x369d4b1c105471189b5ef66134a0a9a98f5df44e`; arbitrum `0xc4f869b9040ce060d3f3204abd579b00461a4e45` | ❓ Unverified |
| Proxy (impl: 0xcbe7efd39be37699e2377ddab28b627aa321d209) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x19eb5d91c095bfe5bcfacf0af4e0c6d19f81ee02`; arbitrum `0xcbe7efd39be37699e2377ddab28b627aa321d209` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fafc110aff61ec33afb3554b22ad20b471bbbfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12b7859bf6faa171361393cf71dd7c0f5171855a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16e7d81a28dae1ad70e7c35029b9be4907fe0362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x174fccbfce4d760418facfe530e29da009574818` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e88959531ef6c2680c78b4de20f11c2c5beca03` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22dbbae7da90dd33d333c6827a4b54cdebfc032a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x277aebb81f19a2c4dc0436857724e5363f40bce0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28a141f3e701637aaecf801c6cc08a3c7a3d2582` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ab36b6677eb46c34bd72f0dac54c38600852b25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x304ecea262847f902be52c2ca9e621dd54d181ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d7ddee9e28b0a05bec16f9a49bbca0129963dfe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43ba49638c9bef0c4da5c1d9dec3fea7949272df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x445895350908b6241e2294222e68b0b173662909` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4e7088e69eb8aaf8b199c795ecc1be6a68c18e39` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x618d55566ca6a7c642a853687edc6873e50f31dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c588e0fe57760b965f7a3b886848b28c4158127` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x885266b5ab2fea41dd51ce7beeed1d743410085e`; arbitrum `0xc7a6aa7e8cc52b5523ff38e963d26e43295a5fa3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8eebfa31b90f1cb92da3f33b1e2106e434786ef3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x901a724d2f4caefbedf50b4c781c7058415b336e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x906be35e3162f1c8e4b6eb86ffba111e0f270319` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x92a1597348b41f05d7280ae3d7835d11a81fb2fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa82e43422e2d8ccc1769f2b05a855a54764c86f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc537e67eb192b3f0b6b183ff52060ee92475f398` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce0a6563ca05c7937ff51dd2f52eaac71b888969` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6e02fd8d1191204d37f9c2f8394a1887a35efc6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd76ac8f4fb699a2f03658d77789f1571b9bd66b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9694e94857fcd8c88396d79ab8dd719e459f7e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd99ab1eb7c36fe42b3462dd5d8c2269af0203dad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xd9a340357f76e756217c8b7bafe018e04347e74c`; arbitrum `0xe877923c6163ccedb2b1da73997dff4afe39b2a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeae9f8eeda6cc009614853793f9b94eed32f689c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf5b42af32e8b843c172e5e8599880ebd14301f47` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xc87b37a581ec3257b734886d9d3a581f5a9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | InterchainToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 34 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
