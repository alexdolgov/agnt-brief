# Agentic Audit Brief: Xpanse

## Project Overview

- Project: Xpanse (`xpanse`)
- Website: [https://xpanse.trade/](https://xpanse.trade/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.632Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 38 unique implementations (82 raw deployments)
- DeFi Llama TVL: $240,059.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 82 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 2 Chainlink feeds; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 14 common project-authored base contract(s) (state, mixinresolver, mixinsystemsettings). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 325; live-surface contracts included: 82 (57 live, 25 unknown).
- Excluded by liveness: 243 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/12 (41.7%)
- Deployed-live implementations: 13 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/13
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 38
- Raw deployments: 82
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 46.2% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressResolver | unknown | bsc | n/a | [`0xf505bfdb669412ef8543cc76798f497d011f2300`](./contracts/bsc-56/0xf505bfdb669412ef8543cc76798f497d011f2300/) | ✅ Audited |
| DelegateApprovals | unknown | bsc | n/a | [`0x9657a0fd98e88464e1159d98b517a4945dbfbfc8`](./contracts/bsc-56/0x9657a0fd98e88464e1159d98b517a4945dbfbfc8/) | ✅ Audited |
| Proxy | unknown | bsc | n/a | 3 deployments: bsc [`0x2d4dfd6c9b8081dd54a8fd7f6de06fdd5af7589e`](./contracts/bsc-56/0x2d4dfd6c9b8081dd54a8fd7f6de06fdd5af7589e/); bsc `0x3c969c4fe2123e3bcc445f10457f933f24810872`; bsc `0xfcf3afa6cda14b438aeeb8ffed433d196cd1367f` | ✅ Audited |
| ProxyERC20 | unknown | bsc | n/a | 27 deployments: bsc [`0x0bd9c670d7bb289d0b307e79e239382a22312591`](./contracts/bsc-56/0x0bd9c670d7bb289d0b307e79e239382a22312591/); bsc `0x22879e82221938efe9e1c0ad10576c80099cce3e`; bsc `0x25b012a4a839849f06273fcbf1ab001387e1cdb6`; bsc `0x2e4466465d77e92a1ef987b817dfeaa1ffd3cf8b`; bsc `0x2fee19f7cf91c353a0b1b085c2e393a95ebff3ee`; bsc `0x3a42e7abdbcea4a4dbeeb7c80bf0e3d65a0229eb`; bsc `0x3d3c760d884019d5abe47a44ee3cc2fceb4ecb62`; bsc `0x49a7f0998b391b9cff91e2dabf9673d665a30e8c`; bsc `0x549d68153a76529e9580181f826bb717e9e8cb39`; bsc `0x57e2a4adc464c6b0ea72f0df92e840d54e4e77da`; bsc `0x5ad70de6c42268da862e0a060bfb364282d01e87`; bsc `0x6400d8aafb563b2d1891b4253728e3c7092b217c`; bsc `0x65678df3caf8c72835a200291f1d7f610951f34c`; bsc `0x6d4e17606c4c0fec9843f51601ad9c19e3295c70`; bsc `0x6dedceee04795061478031b1dfb3c1ddca80b204`; bsc `0x6e9266e1d5be59393c606750f55f96e4445f87fb`; bsc `0x82236cde8fe6c3e5fcd0d89cb78da12e86224f77`; bsc `0x870d11a723de716c3d860fb1ce5f7083732fcdf3`; bsc `0x8a72d406c70750b85bb432dcf6277f45a2459be9`; bsc `0x8e044e7d25fcc62d5a07fa0bb056fc5fc572f56b`; bsc `0x914510a831c02025e82537ec8a3a570ec54f4c30`; bsc `0x916fa4bb6bc60831b33565ad5c132befb84b0745`; bsc `0xab3f54d31467695bedd561f22a0e05ac3b18d615`; bsc `0xc0eff7749b125444953ef89682201fb8c6a917cd`; bsc `0xd476639385cab696ac4d6ad7f1ae1fe4a32957f5`; bsc `0xf0186490b18cb74619816cfc7feb51cdbe4ae7b9`; bsc `0xf6c31f0265747ab449367ea651d094efaecd9875` | ✅ Audited |
| StakingRewards | unknown | bsc | n/a | 5 deployments: bsc [`0x5646aa2f9408c7c2ee1dc7db813c8b687a959a85`](./contracts/bsc-56/0x5646aa2f9408c7c2ee1dc7db813c8b687a959a85/); bsc `0x67d5a94f444df4bba254645065a4137fc665bf98`; bsc `0x84838d0ab37857fad5979fcf6bddf8ddb1cc1da8`; bsc `0xb9c6c9f41d3da1c81c869e527f7b8f44d6e949b6`; bsc `0xd4552f3e19b91bed5ef2c76a67abdbffed5caeec` | ✅ Audited |
| SystemStatus | unknown | bsc | n/a | [`0x344b085489f41fe9a60c6f4b3727b12447d64209`](./contracts/bsc-56/0x344b085489f41fe9a60c6f4b3727b12447d64209/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20PHB | unknown | bsc | n/a | [`0x0409633a72d846fc5bbe2f98d88564d35987904d`](./contracts/bsc-56/0x0409633a72d846fc5bbe2f98d88564d35987904d/) | ⚠️ Unaudited |
| Liquidator | operational_periphery | bsc | n/a | [`0x2a7b78b705ea48d278d673e80c880d7eb479f44c`](./contracts/bsc-56/0x2a7b78b705ea48d278d673e80c880d7eb479f44c/) | ⚠️ Unaudited |
| LiquidatorRewards | operational_periphery | bsc | n/a | [`0x05178294edd61ba3f6a78ef419165ad4d0124362`](./contracts/bsc-56/0x05178294edd61ba3f6a78ef419165ad4d0124362/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 2 deployments: bsc [`0xc3bf4e0ea6b76c8edd838e14be2116c862c88bdf`](./contracts/bsc-56/0xc3bf4e0ea6b76c8edd838e14be2116c862c88bdf/); bsc `0xdc9a574b9b341d4a98ce29005b614e1e27430e74` | ⚠️ Unaudited |
| PhbStaking | unknown | bsc | n/a | [`0xada58cf32276ccd03a1c155688eff8b3bc282285`](./contracts/bsc-56/0xada58cf32276ccd03a1c155688eff8b3bc282285/) | ⚠️ Unaudited |
| ProxyPerpsV2 | unknown | bsc | n/a | 12 deployments: bsc [`0x19ecf0fe49a30e310a2e1a78a65f43f16772f2ad`](./contracts/bsc-56/0x19ecf0fe49a30e310a2e1a78a65f43f16772f2ad/); bsc `0x743e691050a544fb515b1be89698f8dd39cea876`; bsc `0x7a35c87a78251b50142d7c3071b4387baad509ff`; bsc `0x7e37434bdcbaa9d1f32126fbf39e0eed0cfb7630`; bsc `0x863945b2e43e361447115bf563d66dd16c46fce2`; bsc `0x8d824c22a9e4548d15db06893aceca14ac750735`; bsc `0x92091f9dc0e8878544a7f4c65d215a8437815a92`; bsc `0xa1cf92888938b4614f260beb66d40abc5e68293b`; bsc `0xada278b02a965d91b0dbe2705298ff62396d69a2`; bsc `0xaeaf40aaa68c25c4433eed3e227e9d0d86e7024a`; bsc `0xb2dacfe6afb9b2061863d718cd760caa15a4b9e4`; bsc `0xd87a39c2555cf6ea1628d16a9075bac2ef9d5139` | ⚠️ Unaudited |
| RewardEscrowV2 | operational_periphery | bsc | n/a | [`0x41b9784e0541bf9d5324b3f265cfcd1170490474`](./contracts/bsc-56/0x41b9784e0541bf9d5324b3f265cfcd1170490474/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x02615d2e6550c07ba1164d2580f39d93ba408b8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09567b67e494b36f66c5d99a4e2b00b2e92e6d43` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0aeedb4beccf8b40159843891ced31610f31de81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a61c1919d4272f106c8738144bd9ab5b276ff81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c3b0a34f6e1997778956c687f85309f461e7eda` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x252b92b9c906670c8a5ba5ff46780720165c3334` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5064b02c414b7c4bd3eb853bdb74ae864bd54154` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5338b08c3cf82cac45c1807119e20f7368e7b9f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60fccfa21e29f85eb5afd1aa4d8a2b095ff3b7fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b0c95c3c747b51012bf2aa8d24833561b88e916` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x727075fe6380d054c15ef2536bfcdbbb7c3c72d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ada1b1a30c779419fc46e1cf7828dfb8f3642e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83b9a5954067833015a0d89c58100e7c2d0bc797` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bdc32bc0e24e359fe355f915c5fb91f0b8d4f51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x93c97843bfc09c78bddf3c5b70a7fa560cb9abe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2ff32615fd60c957d208764aac38a5608e7cff9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc09e3de9866ad774ba113710af23bb276a1b5bf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc8df3c22cdb1c8b2cb27e3e664199cf2eef00264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc937d517f664363f695404c15b4d75be39f1af0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd4965bb977a93ca1923bf957e3b59e379a6603db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc0a786bcfc955baf42358285c612a09b00bd0a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde1b3c63605c298d78e560bd4ccaf518761f7286` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2d8163cc38d795e038fc2ac7e2d77432d839978` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeeca3356c199adcc8c43967755bc8758012cfede` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc1b65353d11c9111273e72d26a40767e8ad6dbc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Horizon-Protocol-Smart-Contract-Audit-Report.pdf](https://static.horizonprotocol.com/Horizon-Protocol-Smart-Contract-Audit-Report.pdf) | unknown | Audit | 2021-02 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0409633a72d846fc5bbe2f98d88564d35987904d`](./contracts/bsc-56/0x0409633a72d846fc5bbe2f98d88564d35987904d/) | BEP20PHB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a7b78b705ea48d278d673e80c880d7eb479f44c`](./contracts/bsc-56/0x2a7b78b705ea48d278d673e80c880d7eb479f44c/) | Liquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05178294edd61ba3f6a78ef419165ad4d0124362`](./contracts/bsc-56/0x05178294edd61ba3f6a78ef419165ad4d0124362/) | LiquidatorRewards | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3bf4e0ea6b76c8edd838e14be2116c862c88bdf`](./contracts/bsc-56/0xc3bf4e0ea6b76c8edd838e14be2116c862c88bdf/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xada58cf32276ccd03a1c155688eff8b3bc282285`](./contracts/bsc-56/0xada58cf32276ccd03a1c155688eff8b3bc282285/) | PhbStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19ecf0fe49a30e310a2e1a78a65f43f16772f2ad`](./contracts/bsc-56/0x19ecf0fe49a30e310a2e1a78a65f43f16772f2ad/) | ProxyPerpsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x41b9784e0541bf9d5324b3f265cfcd1170490474`](./contracts/bsc-56/0x41b9784e0541bf9d5324b3f265cfcd1170490474/) | RewardEscrowV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 25 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
