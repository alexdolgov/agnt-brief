# Agentic Audit Brief: Credit Coop

## Project Overview

- Project: Credit Coop (`credit-coop`)
- Website: [https://www.creditcoop.xyz/](https://www.creditcoop.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.617Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, ethereum
- Contract surface: 23 unique implementations (86 raw deployments)
- DeFi Llama TVL: $4,628,036.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA Lending. Structurally: 32 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 7 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 19 common project-authored base contract(s) (erc20basic, blacklistable, mintcontroller). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 257; live-surface contracts included: 86 (71 live, 15 unknown).
- Excluded by liveness: 171 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 23 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 23
- Raw deployments: 86
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CreditStrategy | core_logic | ethereum | n/a | [`0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d`](./contracts/ethereum-1/0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d/) | ⚠️ Unaudited |
| ERC7540Factory | unknown | base | n/a | 31 deployments: ethereum `0xd66faff834466c494be3303f36bacc52bda46d52`; base [`0x0470a0bfc8c76526f4919675045ecc7d1c73c244`](./contracts/base-8453/0x0470a0bfc8c76526f4919675045ecc7d1c73c244/); base `0x0b9c1f07bf939c8ad14b65fbde5f15891b297ec0`; base `0x1080eaf98112075331eb56e0116caf37e9f4a320`; base `0x2384d9f3d38c0e00472a5649357893ea64efd2b3`; base `0x25a35393f8f011ab24af215cf5c56f38e75b5e36`; base `0x274946031d204567281f7616718b4abb940ef784`; base `0x2ba7ee80334fd72fa0dc6cf44a6ff39c3384d289`; base `0x45da946b162fde324527ead5ef8cf18bdc092c3f`; base `0x5f7f31e43a2a14709cb2b3167c66a4695a50bb6a`; base `0x71a1b3fca036437aef288464c8713e8c270797cd`; base `0x71f6cfdccc6ed62814cffcc2b6707f6ff2d477dd`; base `0x73a6aa1f63a4a56b1b822af7062495be0b8b6b8a`; base `0x7ac259cac2fdb46d8c1561d040f49e4c517b1197`; base `0x958341c2129891bb5cc6cb39133324059c02ae8f`; base `0x95dd2bd4aaa61e1eb16bb4eb6646820cfbd97648`; base `0x9c59ae1636537a958efd5fd03f194e6fcfccdd6a`; base `0x9d25a8a405b0f6346f3840dac2d466682020e966`; base `0x9fb590698d1ee7e4692f659f1644e31f1e4245a8`; base `0xa3b3cf68d8fa75e7654d095d11309ecfe6980d1d`; base `0xab31e0ff05549816d5762914f9facc96cfdfdf1e`; base `0xbdb43e12dec863e968ff128b638161b979477af3`; base `0xc256e562896a11d084d3aae7ccaec795ab6bd4ca`; base `0xd2332aa00525e2d898fe226f512a74c47d4b695f`; base `0xd66faff834466c494be3303f36bacc52bda46d52`; base `0xded99bb39307afcac42bec7a33c616d0c81c6fbc`; base `0xe0e100723cfafa6a066221d056683eab813bdc32`; base `0xe32cba11995892b5100a6c97975f20cf33033646`; base `0xed86f27269503c106eab8182d8540816c25df038`; base `0xf1a5cb62f8d65a046770732d3e6e12057815b432`; base `0xf5e07e09b9c079ad045f8405bc3e249abad46a19` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| LendingVault | core_logic | base | n/a | 4 deployments: ethereum `0x6c99a74a62aaf2e6aa3ff08ce7661d5c86e01dbc`; ethereum `0x6dacaf632017e2dfc929484606b0feb93088b623`; base [`0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d`](./contracts/base-8453/0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d/); base `0x214699b0ad2e26ffef0247fd0c244bb7fedc85ce` | ⚠️ Unaudited |
| LendingVaultFactory | unknown | base | n/a | 29 deployments: ethereum `0xecfd3e9333dd3d06588ed368e4696480aba6fa63`; base [`0x025bf5f8382756434bfd2e9bb6f34c84f2244eea`](./contracts/base-8453/0x025bf5f8382756434bfd2e9bb6f34c84f2244eea/); base `0x059c04023c096fdc1079b118b2fc9b7b3600b478`; base `0x0ee193f926bae9eed1bb8cb678f2fc73dbe324f4`; base `0x1506defbf0dadf50868ee5336f91f54bf7f69fdc`; base `0x1bf220b4e6e5eca30d90a12ea369a68633c0065a`; base `0x1c4226eb7e7d2fa8a92ad0e181abe5718aebf83d`; base `0x2063ccfbd3e88ce3ea64ca271a7d8b58ebcf54f3`; base `0x2677729380ffab1b66fb062f00f1e60cd63db0a3`; base `0x2b721a999b83cbcc1dbd697a27199d5b4be70102`; base `0x30b0af85e0c377dc31cc92833677af4d796e3834`; base `0x32ccda597abf36ac712138c9b9a3e2a6406b88dc`; base `0x38aad4f2fb619cb7fc5547f1c23d2ff7ca10d76c`; base `0x3f7a449b8b1ff0bfa86cd823a86eec5c3fdbab23`; base `0x445b79ec6bedbd03c90c93a9141803b40ef02801`; base `0x49069ef31424f9fcb80b66feee631dd0358c57a3`; base `0x49cb1bfc670148d45cc2c06b4c34b3bddb0d7512`; base `0x58f9e60e550b31281b9cff942167ce72f45089f3`; base `0x62d5069904be3ede95ea0dbcb0f202575a840e61`; base `0x6df7ff4b8c6743b3ded7bb3c8f21ce7f5b9d11f5`; base `0x7894ff49d096f7bc101e149af9c41e88e2e43e20`; base `0xab2891f34e35aa9d23fb2459f50499a4c1f4abd4`; base `0xb53d9a5fe013dd0806bc090cce97355a987c4e59`; base `0xb8e3649f0cfc94e0dbd18db35b7f66ff1cec6e8c`; base `0xb95458a7643f599d466c28a0b6e55b0d1bb46326`; base `0xbabd231870f0c2c78e038fe2731c4f7f13016d87`; base `0xe7d9b57d9e3bf3f4d5dbea98dd93acff0bdd6b5e`; base `0xecfd3e9333dd3d06588ed368e4696480aba6fa63`; base `0xf6b443a3812659f3c2bce28c5f3624c249e52221` | ⚠️ Unaudited |
| LiquidStrategy | core_logic | base | n/a | 3 deployments: ethereum `0xd462e8929282495a6f9196c30639cde8d687ac14`; base [`0x57184d7ec2d4cf5dbb77cde2d39e127391627e56`](./contracts/base-8453/0x57184d7ec2d4cf5dbb77cde2d39e127391627e56/); base `0xe2c11985daf500cd4a3571c49cea0f6e041ce960` | ⚠️ Unaudited |
| SpigotFactory | registry | base | n/a | [`0x360b330f47a9b2f54aa53a962911366b37c35ae0`](./contracts/base-8453/0x360b330f47a9b2f54aa53a962911366b37c35ae0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0b41059984b715299abdf0bac82ebf8eb59ff4c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1fd26afa7d4408fba579767ac686ad01a718d81d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2934985dd00c076be4dd6ad9aea7497193c19320` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x326d4f7d39d7a8e817872aa756d7deab5f33ff0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5365bb5c3acd705f639ebecc9a2dea4c65a3566f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5591ed6975e6c893a4ea7d0b2573b10942a3bf47` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x717f1f3288e6b88297579f4c0182db89b42eea72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7951f954efd9e24b7d361a62edd2ab06bc1182bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9dbee9024c5dbd990783157c66ac65066cf277e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa56e4d26c569693f3974558fde88f41c28af16a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7696467353eaa929eedb94b9064c753c5f949e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf2d49ecfe657132f34863263d654d8e2eb1d72e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf655b599526c96ddc0223b9f9e0682fa0e7761a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1baa8242e3aaf65d4eb030459854cdde209acb9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3db1becd851b3e166e431ead908381b5f76a9c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d`](./contracts/ethereum-1/0xb8c65ceb54b64950e0d3e80cd5dadcd7ebbeef6d/) | CreditStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0470a0bfc8c76526f4919675045ecc7d1c73c244`](./contracts/base-8453/0x0470a0bfc8c76526f4919675045ecc7d1c73c244/) | ERC7540Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589fcd6edb6e08f4c7c32d4f71b54bda02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d`](./contracts/base-8453/0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d/) | LendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x025bf5f8382756434bfd2e9bb6f34c84f2244eea`](./contracts/base-8453/0x025bf5f8382756434bfd2e9bb6f34c84f2244eea/) | LendingVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x57184d7ec2d4cf5dbb77cde2d39e127391627e56`](./contracts/base-8453/0x57184d7ec2d4cf5dbb77cde2d39e127391627e56/) | LiquidStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x360b330f47a9b2f54aa53a962911366b37c35ae0`](./contracts/base-8453/0x360b330f47a9b2f54aa53a962911366b37c35ae0/) | SpigotFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11579] IndexDIMv3AuditReport.md
- [11580] IndexIcUSDAuditReport.md
- [11581] IndexPRTAuditReport.md

Fork inheritance lineage and inherited audits are included when available.
