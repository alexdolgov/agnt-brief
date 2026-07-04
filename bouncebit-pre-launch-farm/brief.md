# Agentic Audit Brief: BounceBit pre-launch Farm

## Project Overview

- Project: BounceBit pre-launch Farm (`bouncebit-pre-launch-farm`)
- Website: [https://bouncebit.io](https://bouncebit.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:08.526Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 144 unique implementations (145 raw deployments)
- DeFi Llama TVL: $0.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 24 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, erc1967upgrade, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 237; live-surface contracts included: 145 (3 live, 142 unknown).
- Excluded by liveness: 92 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 144 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 142
- Unique implementations: 144
- Raw deployments: 145
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| BounceAuctionToken | token | ethereum | n/a | [`0xa9b1eb...009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | ⚠️ Unaudited |
| BRC20 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1981e3...f13ce1`](./contracts/ethereum-1/0x1981e32c2154936741ab6541a737b87c68f13ce1/); ethereum `0x38e382...51de93` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (142)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x008f5d...e64589` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x00ddd5...d51b7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01096e...3d8bdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x011f62...a880f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03ccae...a3bd51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0634ee...4c1916` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10392a...3bcad3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13a74b...d95c52` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x169a4c...8a082c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1aef02...1e8468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c1207...21ee38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c91ba...978e3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ed362...d0b45a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20c580...fe454c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x249a78...a9856f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27bea5...76d89e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27cdbf...d68bcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x289b30...2eb90c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29954a...613aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29c50e...a11c68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b41cd...ebc626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dc54a...a4c6ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31558f...871817` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3277e4...c9aa02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32d3d2...28f9b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x374e3e...4c5996` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x393063...ccef5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39d09f...140ec6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a31ba...ab2d65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3c6e24...03de79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d134c...937c97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e09e0...b37518` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e9ac8...6ac8e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f4443...5ea318` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40259d...fec21b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x426476...e8cbda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x437446...f19403` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x464757...390c56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46a06a...1b3064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46f970...a4d087` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47c560...90dff3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a843b...a67804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b105d...55a376` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ceb65...f64697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d9096...213857` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fe0b2...b05f90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x508fdb...cf7e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5151a3...f73d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5395c5...424b8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53c308...787607` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54518c...218c20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x567d05...2f4193` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b4b51...bea079` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b5e07...39c624` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5bdb8e...f8accc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c5ced...362e3b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5daada...a63874` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ed473...7fd7e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60f299...90a8c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61b355...8a7c6e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x665c7f...e7eb00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c8d03...53351e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d5028...92d991` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x705ab7...b7ab7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7131dc...263b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x720bc3...c67fb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74e6fc...8623b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x78af91...05d31f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ace84...99cfb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cb0b3...7c1556` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d70a9...135fa1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e4378...670064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85389e...3b39ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x853c97...5b3c02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8564e1...c8b4f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x892675...8f7010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x899877...4aaf4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8acac2...701385` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b8d8c...215e31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dfc96...cc6526` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ff2ca...c0395f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9058b8...b6fa68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x908865...d13866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x937cef...5aa1c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93b233...467acb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x967613...5b505e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97e5bc...fca230` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e2dfa...890d13` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa17b04...8a4ff2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2d127...74c33d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3620a...19596c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa91901...16ce71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf67d5...32f12a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb468ab...ee714f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6790f...779ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb89f02...5b8855` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8b81d...29f3b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb923a4...713e26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb496f...82fcd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe6576...8a5b6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfca0b...a84082` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc01d7f...e3d0f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0433f...2babf4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc08ecd...b236e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3320a...3ea5b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc39176...25a3ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc422ff...8fc3e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc56a5f...ee95f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6af18...5d13e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc75cb3...a69e49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8bdfd...d45b61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94d0b...0bee17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca17d3...da6bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca3b92...80b78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcaeda3...284613` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb142a...b7a247` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb9c87...4ea758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd02409...854617` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1a166...e4d9f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1eebe...c1b885` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd29faa...8d318c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4d0c9...139c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd67dc2...3d30f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd90134...31f626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe11add...377128` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe15bed...f7496e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1bdf4...d020f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe28f87...3686c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6724a...feb118` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7fed0...98c3ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea5eff...b6eded` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebf413...6d2653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecd2b3...30a737` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0fd3e...2c6767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf125be...0fb4d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1dfe5...e854ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf24835...2b2c4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf376a0...ebd895` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7e445...a8578c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfad5d3...be15f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbd701...f71e8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff1580...3afd55` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/aNWumH92fd1205exOOBs/uploads/KFpCcHfuzqSvO1yGpUJL/BounceBit-Vault_audit_report_2024-02-09.pdf](https://3876813834-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaNWumH92fd1205exOOBs%2Fuploads%2FKFpCcHfuzqSvO1yGpUJL%2FBounceBit-Vault_audit_report_2024-02-09.pdf) | unknown | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa9b1eb...009096`](./contracts/ethereum-1/0xa9b1eb5908cfc3cdf91f9b8b3a74108598009096/) | BounceAuctionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1981e3...f13ce1`](./contracts/ethereum-1/0x1981e32c2154936741ab6541a737b87c68f13ce1/) | BRC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 142 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12853] spaces/aNWumH92fd1205exOOBs/uploads/KFpCcHfuzqSvO1yGpUJL/BounceBit-Vault_audit_report_2024-02-09.pdf

Fork inheritance lineage and inherited audits are included when available.
