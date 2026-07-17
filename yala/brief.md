# Agentic Audit Brief: Yala

## Project Overview

- Project: Yala (`yala`)
- Website: [https://www.yala.org](https://www.yala.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.710Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: ethereum
- Contract surface: 25 unique implementations (25 raw deployments)
- DeFi Llama TVL: $1,698,303.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 12 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (yalaownable, oft, oftcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 25 (6 live, 19 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
- Deployed-live implementations: 6 of 25 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetWrapper | unknown | ethereum | n/a | [`0xd5d027108264000f3670a623dceb8d14ecfc21b9`](./contracts/ethereum-1/0xd5d027108264000f3670a623dceb8d14ecfc21b9/) | ⚠️ Unaudited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x4fb4c4ade2a7ffe765d8193610779ff01dd923a0`](./contracts/ethereum-1/0x4fb4c4ade2a7ffe765d8193610779ff01dd923a0/) | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | n/a | [`0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589`](./contracts/ethereum-1/0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589/) | ⚠️ Unaudited |
| DebtToken | token | ethereum | n/a | [`0xe868084cf08f3c3db11f4b73a95473762d9463f7`](./contracts/ethereum-1/0xe868084cf08f3c3db11f4b73a95473762d9463f7/) | ⚠️ Unaudited |
| PSM | unknown | ethereum | n/a | [`0x0b4e03ecb66be6774c216ea9eca3663a85ee41fd`](./contracts/ethereum-1/0x0b4e03ecb66be6774c216ea9eca3663a85ee41fd/) | ⚠️ Unaudited |
| StabilityPool | core_logic | ethereum | n/a | [`0x9593807414124328e9033756309a985799b1e7fe`](./contracts/ethereum-1/0x9593807414124328e9033756309a985799b1e7fe/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0c229b7ae7c04746bd4255bd019c7a8bae995829` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d2ebf9df0bd3627868bf5e7b1efba1ff8e95978` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0eedc0c63f2a525c502bcaebb16d836c1148fb2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14b5158a5ccfcdd4d1f65beb3fa0642dd18206ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ee7e1a4b337f85068d88ed3c65eadd4e5d7cdd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x356123c7a8a120852b7cfd63ab012ca51c511950` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bce667d1e625929341058387e99125925532431` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3cae6f9ea9a3870781b5bf81e19b99ee9054d0b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5460076d17a57464f2a0304327d85741e88a4288` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x599d9c155d0e79e9d8ef6e02db4e17a931807e8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7066e36ceee1830c4cff06bcf34bc90fbea67748` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7aa1d5aa1a704450515d694152ab101f9c8de749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80010dfa9f4a5465ac5766943babae3e0f326e18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86df4c1dd96f97025d198486487937896dc4fc92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9767f485e6d3120c6dc3aaeddc417f8a90e5927d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa96a92e0c640b5049fe871ad998823f10c9a9a4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb977a8f701a97ae215a59b39a28bbaa1b09e2d33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf4c0b944ce46546d47315254fecbb991264239f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef2352f5b2bc5e9293483c2b53258928587867d6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Yala - Zenith Audit Report.pdf](https://github.com/yalaorg/yala-protocol-contracts/blob/main/audits/Yala%20-%20Zenith%20Audit%20Report.pdf) | unknown | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd5d027108264000f3670a623dceb8d14ecfc21b9`](./contracts/ethereum-1/0xd5d027108264000f3670a623dceb8d14ecfc21b9/) | AssetWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fb4c4ade2a7ffe765d8193610779ff01dd923a0`](./contracts/ethereum-1/0x4fb4c4ade2a7ffe765d8193610779ff01dd923a0/) | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589`](./contracts/ethereum-1/0x27a70b9f8073efe5a02998d5cc64acdc9e0ba589/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe868084cf08f3c3db11f4b73a95473762d9463f7`](./contracts/ethereum-1/0xe868084cf08f3c3db11f4b73a95473762d9463f7/) | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4e03ecb66be6774c216ea9eca3663a85ee41fd`](./contracts/ethereum-1/0x0b4e03ecb66be6774c216ea9eca3663a85ee41fd/) | PSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9593807414124328e9033756309a985799b1e7fe`](./contracts/ethereum-1/0x9593807414124328e9033756309a985799b1e7fe/) | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [9159] Yala - Zenith Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
