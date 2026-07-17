# Agentic Audit Brief: Ocean Point

## Project Overview

- Project: Ocean Point (`ocean-point`)
- Website: [https://app.oceanpoint.fi/](https://app.oceanpoint.fi/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.877Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: ethereum
- Contract surface: 23 unique implementations (24 raw deployments)
- DeFi Llama TVL: $858,066.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 32 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 2 common project-authored base contract(s) (erc20token, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 59; live-surface contracts included: 24 (11 live, 13 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 11 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 23
- Raw deployments: 24
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlocksquareToken | token | ethereum | n/a | [`0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a`](./contracts/ethereum-1/0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a/) | ⚠️ Unaudited |
| CertifiedPartners | unknown | ethereum | n/a | [`0x8dbb99cc3721f5c9cc7c9e92db260813cf78cdd3`](./contracts/ethereum-1/0x8dbb99cc3721f5c9cc7c9e92db260813cf78cdd3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xfb531d5602fc0953be047605c77a7d289729ea8a`](./contracts/ethereum-1/0xfb531d5602fc0953be047605c77a7d289729ea8a/) | ⚠️ Unaudited |
| MarketplacePoolProxyFactory | registry | ethereum | n/a | [`0x17887106a14f38bf10512565bdbb5bd7ac12f001`](./contracts/ethereum-1/0x17887106a14f38bf10512565bdbb5bd7ac12f001/) | ⚠️ Unaudited |
| OceanStaking | unknown | ethereum | n/a | [`0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a`](./contracts/ethereum-1/0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a/) | ⚠️ Unaudited |
| PropertyFactory | registry | ethereum | n/a | [`0x1ae91a263a690bf2129cf0b3acac92bbb67e6685`](./contracts/ethereum-1/0x1ae91a263a690bf2129cf0b3acac92bbb67e6685/) | ⚠️ Unaudited |
| PropertyRegistry | registry | ethereum | n/a | [`0x05325c1ab1440df7214db38f676f95999729267b`](./contracts/ethereum-1/0x05325c1ab1440df7214db38f676f95999729267b/) | ⚠️ Unaudited |
| PropToken | unknown | ethereum | n/a | [`0x9473481877cb241b0c8f647bf841973196e61a1d`](./contracts/ethereum-1/0x9473481877cb241b0c8f647bf841973196e61a1d/) | ⚠️ Unaudited |
| TokenGeneration | token | ethereum | n/a | [`0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f`](./contracts/ethereum-1/0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x0e85fb1be698e777f2185350b4a52e5ee8df51a6`](./contracts/ethereum-1/0x0e85fb1be698e777f2185350b4a52e5ee8df51a6/) | ⚠️ Unaudited |
| Users | unknown | ethereum | n/a | [`0x13344d0cb96b17df81c4171ce47e14ff6c1975f7`](./contracts/ethereum-1/0x13344d0cb96b17df81c4171ce47e14ff6c1975f7/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x05e092ba7da8817eb98a7b250c74887ce8c8fb2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38da45d19db42422a8aeda7990a1a26c090bc8a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66be0954a653196ae7509c89fb612a9ef1481b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cea8fc21c965f23cd25ad44e9bd91687f76f2f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7000ae60ae456bd16676b6c107f48a2985f48f98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa273efdc4756abc6774e621b0f7775f89248eca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac562e240d809a280db26d22a892666acfb3826c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0xc2a056dc7956ad77d0602cd9f2eaf8ba476f6a9e`; ethereum `0xe8180724b574fddea8d4ef21b616a437483f49bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb641f6b46e1f2970db003c19515018d0338550a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0b7cb79cf6b32c86b9f2218c2914dbf1b391917` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0ee00fe7d52ed7ae78f659c9640b5651f45e8ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe98af4a36f3f02fa52a356e5f1cde0952aa84b06` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/blocksquare](https://hacken.io/audits/blocksquare) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a`](./contracts/ethereum-1/0x509a38b7a1cc0dcd83aa9d06214663d9ec7c7f4a/) | BlocksquareToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dbb99cc3721f5c9cc7c9e92db260813cf78cdd3`](./contracts/ethereum-1/0x8dbb99cc3721f5c9cc7c9e92db260813cf78cdd3/) | CertifiedPartners | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17887106a14f38bf10512565bdbb5bd7ac12f001`](./contracts/ethereum-1/0x17887106a14f38bf10512565bdbb5bd7ac12f001/) | MarketplacePoolProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a`](./contracts/ethereum-1/0x6f1e92fb8a685aaa0710bad194d7b1aa839f7f8a/) | OceanStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ae91a263a690bf2129cf0b3acac92bbb67e6685`](./contracts/ethereum-1/0x1ae91a263a690bf2129cf0b3acac92bbb67e6685/) | PropertyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05325c1ab1440df7214db38f676f95999729267b`](./contracts/ethereum-1/0x05325c1ab1440df7214db38f676f95999729267b/) | PropertyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9473481877cb241b0c8f647bf841973196e61a1d`](./contracts/ethereum-1/0x9473481877cb241b0c8f647bf841973196e61a1d/) | PropToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f`](./contracts/ethereum-1/0xc8af9acb3d9b8827e863d416f740c7e97eb5a72f/) | TokenGeneration | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13344d0cb96b17df81c4171ce47e14ff6c1975f7`](./contracts/ethereum-1/0x13344d0cb96b17df81c4171ce47e14ff6c1975f7/) | Users | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3225] hacken.io/audits/blocksquare

Fork inheritance lineage and inherited audits are included when available.
