# Agentic Audit Brief: Zoth

## Project Overview

- Project: Zoth (`zoth`)
- Website: [https://zoth.io](https://zoth.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.989Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-c970
- Chains: avalanche, base, ethereum, manta, metis
- Contract surface: 19 unique implementations (31 raw deployments)
- DeFi Llama TVL: $2,197,730.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 12 project-authored contract(s) across 3 chain(s); 1 ERC20 token, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 6 common project-authored base contract(s) (withzothaccesscontrol, zothinitializable, zothaccesscontrolroles). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 52; live-surface contracts included: 31 (26 live, 5 unknown).
- Excluded by liveness: 21 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/13 (30.8%)
- Deployed-live implementations: 14 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/14
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 19
- Raw deployments: 31
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Claude | Tier 2 | 2 | 14.3% | 2026-03 |
| ENTERSOFT | Tier 2 | 2 | 14.3% | 2026-02 |
| EVM Bench | Tier 2 | 2 | 14.3% | 2026-03 |
| Hacken | Tier 2 | 1 | 7.1% | 2025-01 |
| unknown | Tier 2 | 1 | 7.1% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FunctionsAccessControl | governance | base | n/a | [`0x58722c...859cb7`](./contracts/base-8453/0x58722c4f1a8bca491dcf074ae3c6b519cc859cb7/) | ✅ Audited |
| PriceOracle | operational_periphery | base | n/a | [`0x2756bf...6715eb`](./contracts/base-8453/0x2756bf902563b6e767a6e9ec20abfab3706715eb/) | ✅ Audited |
| ZeUSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb16eb1...389809`](./contracts/ethereum-1/0xb16eb11db006230d13fc0d9679e50a5a4d389809/); ethereum `0xf2552a...b8377d` | ✅ Audited |
| ZeUSD_OFT | unknown | manta | n/a | [`0x7dc974...8ea761`](./contracts/manta-169/0x7dc9748da8e762e569f9269f48f69a1a9f8ea761/) | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | governance | ethereum | n/a | 5 deployments: ethereum [`0x062b76...99c672`](./contracts/ethereum-1/0x062b7697fd492270732295e5486e405a5999c672/); ethereum `0x600b26...420430`; ethereum `0x7e43e3...5c8d58`; ethereum `0x80099b...43ee02`; ethereum `0xc1ce24...a2be5f` | ⚠️ Unaudited |
| ProxyAdmin | governance | base | n/a | [`0x5a9916...b79b84`](./contracts/base-8453/0x5a9916c8b89f4cc97b782d5138ea54a17eb79b84/) | ⚠️ Unaudited |
| RedemptionVault | unknown | base | n/a | 2 deployments: base [`0x87e86d...e9b403`](./contracts/base-8453/0x87e86d6930f7e922e02cd92821fbaaf9d5e9b403/); base `0xe64403...454734` | ⚠️ Unaudited |
| RedemptionVault | core_logic | base | n/a | [`0xbaa2de...81755e`](./contracts/base-8453/0xbaa2de224e2161cc95d1eb97fa4769a54c81755e/) | ⚠️ Unaudited |
| UpgradeTimelock | governance | base | n/a | [`0xff0820...fd6856`](./contracts/base-8453/0xff082079c027f01d61045b8eceafab92ddfd6856/) | ⚠️ Unaudited |
| ZeUSDRouterV2 | adapter | ethereum | n/a | 3 deployments: ethereum [`0x8154db...498551`](./contracts/ethereum-1/0x8154db5007d78dd2deb7d4d6940752feb5498551/); ethereum `0xac6e62...505bd8`; ethereum `0xf1fd73...681f5c` | ⚠️ Unaudited |
| zOPAL | unknown | base | n/a | 2 deployments: base [`0x2e9705...557f24`](./contracts/base-8453/0x2e9705d95f1624fab9caaba775234571bd557f24/); base `0x79c89e...68bccb` | ⚠️ Unaudited |
| zOPAL | unknown | base | n/a | 2 deployments: base [`0x83ca3d...1203e5`](./contracts/base-8453/0x83ca3db8d431b769b2260ff2ecd4fa15001203e5/); base `0xe60320...52a1d8` | ⚠️ Unaudited |
| zOPALDepositVault | unknown | base | n/a | 2 deployments: base [`0x06ff0b...79a751`](./contracts/base-8453/0x06ff0ba6a53a42e20599eddb6bcae481b779a751/); base `0x6578fe...ffe850` | ⚠️ Unaudited |
| ZothAccessControl | unknown | base | n/a | 2 deployments: base [`0x11e5c2...a9cbb1`](./contracts/base-8453/0x11e5c20a11e8b75bb2ae6f136dab1cbb1da9cbb1/); base `0x532587...fcfa14` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x6f4d7192e66feacf6e3f65cfeae3f69c49ef9b03) | proxy | avalanche | n/a | `0x7dc974...8ea761` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x2d3d1a...e27a77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15925a...65683e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x973bd2...7b2f04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9dd43...a314c6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2F8csMoFUI4T4MyCctrCfQ%2FHacken%20Zeusd%20Contracts%20Dec2024.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2FCIkyRzhjzbJxAdhVDwfV%2FSolidityScan%20ZeUSD%20Contracts%20Dec2024.pdf) | unknown | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [ENTERSOFT.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/ENTERSOFT.pdf) | ENTERSOFT | Audit | 2026-02 | fresh | Direct | contract_name | 2 | n/a |
| [CLAUDE.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/CLAUDE.pdf) | Claude | Audit | 2026-03 | fresh | Direct | contract_name | 2 | n/a |
| [EVMBENCH.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/EVMBENCH.pdf) | EVM Bench | Audit | 2026-03 | fresh | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x062b76...99c672`](./contracts/ethereum-1/0x062b7697fd492270732295e5486e405a5999c672/) | AccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87e86d...e9b403`](./contracts/base-8453/0x87e86d6930f7e922e02cd92821fbaaf9d5e9b403/) | RedemptionVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbaa2de...81755e`](./contracts/base-8453/0xbaa2de224e2161cc95d1eb97fa4769a54c81755e/) | RedemptionVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xff0820...fd6856`](./contracts/base-8453/0xff082079c027f01d61045b8eceafab92ddfd6856/) | UpgradeTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8154db...498551`](./contracts/ethereum-1/0x8154db5007d78dd2deb7d4d6940752feb5498551/) | ZeUSDRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2e9705...557f24`](./contracts/base-8453/0x2e9705d95f1624fab9caaba775234571bd557f24/) | zOPAL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x83ca3d...1203e5`](./contracts/base-8453/0x83ca3db8d431b769b2260ff2ecd4fa15001203e5/) | zOPAL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06ff0b...79a751`](./contracts/base-8453/0x06ff0ba6a53a42e20599eddb6bcae481b779a751/) | zOPALDepositVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11e5c2...a9cbb1`](./contracts/base-8453/0x11e5c20a11e8b75bb2ae6f136dab1cbb1da9cbb1/) | ZothAccessControl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=7, extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
