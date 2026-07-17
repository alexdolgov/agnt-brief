# Agentic Audit Brief: FortiFi

## Project Overview

- Project: FortiFi (`fortifi`)
- Website: [https://www.fortifi.pro](https://www.fortifi.pro)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:16.443Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: avalanche
- Contract surface: 67 unique implementations (67 raw deployments)
- DeFi Llama TVL: $348,664.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 20 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 7 ERC1155 multi-tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 1 common project-authored base contract(s) (fortifistrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 107; live-surface contracts included: 67 (2 live, 65 unknown).
- Excluded by liveness: 40 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 65
- Unique implementations: 67
- Raw deployments: 67
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FortiFiWNativeMASSVaultV2 | core_logic | avalanche | n/a | [`0x853e7a9dcc5037cd624834dc5f33151aa49d2d73`](./contracts/avalanche-43114/0x853e7a9dcc5037cd624834dc5f33151aa49d2d73/) | ⚠️ Unaudited |
| FortiFiWombatGGAvaxZapper | adapter | avalanche | n/a | [`0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d`](./contracts/avalanche-43114/0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (65)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x03d8137b35206dda7d6313ba0fde02ec4c265414` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0538491f32bdb91d8f0886a2f09d807c5bfed27b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09dd7e16eecad9f661d673caccfdfe3dd6d8da39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11f40bbebf8c0f8b424eac20bc1bab3f2f4186d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1306c55e878094558a00e11b46d956b1ef27a54b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x14517a26005f3f92aea60b6619ac0e10e3a718d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a5f90191ff1df32e10f1da7de776fe19da91ab0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1acd9eab461267c7cd044a088269e7afa3ea2184` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20a70fad59c0d3f83faf4cf26a7cd706c9e8945c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x231bf492caa862dfd11c004b51247c90537a180f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26585c835227ab31b00d1e696bfd2318004ed414` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2dc79873b2de32f29f595534cf159f5c81ea4ce0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3158fced590d82ddcefd3de5da3b04d5bad56d7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33ab93b73d45d680f6ffb6c7915cf20fbac9a11d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37b5b711495be24c50a1093be8851b1e5d21e4e5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x404b5627b4957b515e5bee9635ff48dcfa71983e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45c53fb370ca5066d93fe64913e24b886322be3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x461bba28d395658100cf94977d901e1571d2a7fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x486af6a08fa227f6886734455814a5b2b3344386` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a47efa1dba4d606468a8af2e5250eae0c935971` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5216177a62a68f5b60a3703cfcc57834ddda1a94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x57bbc4db8fcac0fb9853c7a22a6caf768e0e9e20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dfee593b135ad1467c4870719d562f6d8132921` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x642fdad3916e3ac6bfe7234376f2414bef895be8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6aa5aa63ce4fcdc59b039b72080ac0fdbd5646c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f24c85bbdafe71791690a90e8aeb0b64454ad9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7022adf08c3599efb9b98dd0d3672dce7beb1cc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x70e9c5d61fb1361a8e617a1c90f75391be69c63a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x714a70a1236d63e04b0b68022b7b2ffc19c3affe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7158017cc710585bde7d692144071ef4b4995078` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7479982a78617e4823683acb5951106d642bcaae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75f8330b90aad64409f9b833fbeb88f6ea3579bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x78a840a7651866ff6eaca84ee9e5ca28856816d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79b2a045af27f7518d4aef82d5fd6c92e7d5920e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x839b76821382f087d1ff28279ca60a6593e2544e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aaf431ded7b2da67c38bf64214762311fc4230` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92581e042d0a5029430562c0959aebdfecbffd36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x98b57e33156a95ffd42cd3faa4d70bb1d61b9904` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9bacebf9863fae43297e54135b8b8eea4dca9b0c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e103d8697621368deda7d9edbbaf5b6001cdd02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f1ee78cf6eadda82aeca2e18d2a7989a4ccf575` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2daec400ed67c8012c8c692d20dda166d72c032` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4d0b216d4f928ff54654b830edb6f5e536ef63d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac01cdb27d424b6b3b93b33e21cf3db1601bf087` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf7665846e6b3a4e2fed078b355483e79b5bfe74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb70784fb1b7ee2a78905339ccd1d89a71802134f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb97afc8d6d6f100358e21d6ab3a3aa3ec1435731` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbfba34c69b6db5eea4d55850925411feffcf8c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc3630c2a0b6e6341d4601c861028a9aa83cbeb39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5fbcbb327d2705b23bae543774817446a429f86` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd10f91b4ee7c66ec57289ee0c979e7893b845e36` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd174d9b3bbbf82a6d0d7631b7b08ee07b059a15e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd3ed15fe1651f66ee94ebdf3288c2fe2033fef9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd693919604689824eaedf5a506141d49fc3a5ee4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6c70d64ab58f4c8a2850e3eda519aece66f6b10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdae240626c56cb22ee96393044000e87310854cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcb2eac60f8e86f06a859eb2fb735503df61600e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe017f54e3210974fb70960bd434226073f61d117` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe2079290a95f971da221cfe263affff9d54be3f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5c4a98bc97b193d42724b1e5473be08771d6ec2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe64233eac375a47dcacd9c943d66e076573d0550` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee758d194a705d956f06968d9b4b49aec2489f3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf0f55e8c9e23c627b253876f3b4bf1ef3eba4db0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc7427aeb2c76487aef5c20736c2197f139d898b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd3196badcc1df00ab352b4e9bd83f0a23293b14` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [FortiFi-audit-report-[26-Oct-2023].pdf](https://github.com/blaize-security/blaize-security-audits/blob/main/f/fortifi/FortiFi-audit-report-%5B26-Oct-2023%5D.pdf) | unknown | Audit | 2023-10 | stale | Direct | n/a | 0 | n/a |
| [blaize.tech/clients/smart-contract-security-audit-for-fortifi](https://blaize.tech/clients/smart-contract-security-audit-for-fortifi) | Blaize | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x853e7a9dcc5037cd624834dc5f33151aa49d2d73`](./contracts/avalanche-43114/0x853e7a9dcc5037cd624834dc5f33151aa49d2d73/) | FortiFiWNativeMASSVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d`](./contracts/avalanche-43114/0xdf4280b0e67f8cdd90bd1d4b441ac00d29558a5d/) | FortiFiWombatGGAvaxZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [13131] FortiFi-audit-report-[26-Oct-2023].pdf
- [13132] blaize.tech/clients/smart-contract-security-audit-for-fortifi

Fork inheritance lineage and inherited audits are included when available.
