# Agentic Audit Brief: Seedify

## Project Overview

- Project: Seedify (`seedify`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.241Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-43c7
- Chains: arbitrum, bsc, ethereum
- Contract surface: 8 unique implementations (38 raw deployments)
- DeFi Llama TVL: $29,401.21
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 11 project-authored contract(s) across 3 chain(s); 3 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 9 common project-authored base contract(s) (erc165, accesscontrolenumerable, erc721base). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 38 (35 live, 3 unknown).
- Excluded by liveness: 41 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 8
- Raw deployments: 38
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IDOLocking | unknown | bsc | n/a | 24 deployments: ethereum `0x1d22275d58a836f8307c306110deafe22e360877`; ethereum `0x399c4a6f640f5cf5575c4d04fec9d28df383ac85`; ethereum `0x453bbf5ad5011a89390a1e96042a19d5f4892754`; ethereum `0x569399bfca76e7664cec6510adc75f2811be2c5c`; ethereum `0x80c4c6bf51e29ab1c9933a2fbc0d4080f42e81c3`; ethereum `0x844645b2b1888b89b78dca1cef2b3ba8ad873d9a`; ethereum `0xbcc572d3f2f619b082794a96a848a23c2a752fcf`; ethereum `0xc8c639b0014a3570b3c66f6df7cc8b81fc534e00`; bsc [`0x027fc3a49383d0e7bd6b81ef6c7512afd7d22a9e`](./contracts/bsc-56/0x027fc3a49383d0e7bd6b81ef6c7512afd7d22a9e/); bsc `0x5745b7e077a76be7ba37208ff71d843347441576`; bsc `0x5b384955ac3460c996402bf03736624a33e55273`; bsc `0x60b9f788f4436f0b5c33785b3499b2ee1d8dbfd4`; bsc `0x66b8c1f8de0574e68366e8c4e47d0c8883a6ad0b`; bsc `0x8900475bf7ed42efcacf9ae8cfc24aa96098f776`; bsc `0x89aaab217272c89da91825d9effbe65ded384859`; bsc `0xb667c499b88ac66899e54e27ad830d423d9fba69`; bsc `0xd01650999bb5740f9bb41168401e9664b28ff47f`; bsc `0xf420f0951f0f50f50c741f6269a4816985670054`; arbitrum `0x1299732e3fbacafeefa9fd31f00de45ae7bba4a0`; arbitrum `0x1d22275d58a836f8307c306110deafe22e360877`; arbitrum `0x4d40f09feebb62505653f8ae9a0b58b58bcdd252`; arbitrum `0x9f07a4cf035f14c0160db2d7d94eb5a41f114805`; arbitrum `0xaae4355b30e18879a12e4e22283da901af47d6cd`; arbitrum `0xc30be140f8ada0fdb0c97377c98ddbe8b343679a` | ⚠️ Unaudited |
| InitializableERC20 | token | bsc | n/a | [`0x477bc8d23c634c154061869478bce96be6045d12`](./contracts/bsc-56/0x477bc8d23c634c154061869478bce96be6045d12/) | ⚠️ Unaudited |
| SFUND_OFTv1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x560363bda52bc6a44ca6c8c9b4a5fadbda32fa60`](./contracts/ethereum-1/0x560363bda52bc6a44ca6c8c9b4a5fadbda32fa60/); arbitrum [`0x560363bda52bc6a44ca6c8c9b4a5fadbda32fa60`](./contracts/arbitrum-42161/0x560363bda52bc6a44ca6c8c9b4a5fadbda32fa60/) | ⚠️ Unaudited |
| SMD_v5 | unknown | bsc | n/a | 6 deployments: ethereum `0x92572249d487a99c0ed746ee36aaf22a66c4ab67`; ethereum `0xc5911e1ce2fbbb53a8f4bdd4ca49dc9448db7537`; bsc [`0x1f10564bad9367cff4247a138ebba9a9aaeb789e`](./contracts/bsc-56/0x1f10564bad9367cff4247a138ebba9a9aaeb789e/); bsc `0x71d058369d39a8488d8e9f5fd5b050610ca788c0`; arbitrum `0x86bc9293dadb3590c21071e17046854ee62fd99f`; arbitrum `0xd2322397d67026bb1e9bbbcbab30585d19b53565` | ⚠️ Unaudited |
| Staking | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa63fd3833e40bde451f85bdfbe63c6aa4f0c2f68`](./contracts/arbitrum-42161/0xa63fd3833e40bde451f85bdfbe63c6aa4f0c2f68/); arbitrum `0xe8523954d12c4662ba74712e720e6046c42085eb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x41484c0effb25e599a3529a9911b839744699838` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ede64cc5bb278777cdf5a67da721ac73dcd74a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8482d2b7c27f7b9f7cf20a70a0fd349ff54f872c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [61cadee5f08b9f251e0e719e_Seedify audit report.pdf](https://assets.website-files.com/5f99eb79d508ca853be5f2e8/61cadee5f08b9f251e0e719e_Seedify%20audit%20report.pdf) | yAudit | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x027fc3a49383d0e7bd6b81ef6c7512afd7d22a9e`](./contracts/bsc-56/0x027fc3a49383d0e7bd6b81ef6c7512afd7d22a9e/) | IDOLocking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x477bc8d23c634c154061869478bce96be6045d12`](./contracts/bsc-56/0x477bc8d23c634c154061869478bce96be6045d12/) | InitializableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x560363bda52bc6a44ca6c8c9b4a5fadbda32fa60`](./contracts/ethereum-1/0x560363bda52bc6a44ca6c8c9b4a5fadbda32fa60/) | SFUND_OFTv1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1f10564bad9367cff4247a138ebba9a9aaeb789e`](./contracts/bsc-56/0x1f10564bad9367cff4247a138ebba9a9aaeb789e/) | SMD_v5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa63fd3833e40bde451f85bdfbe63c6aa4f0c2f68`](./contracts/arbitrum-42161/0xa63fd3833e40bde451f85bdfbe63c6aa4f0c2f68/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13814] 61cadee5f08b9f251e0e719e_Seedify audit report.pdf

Fork inheritance lineage and inherited audits are included when available.
