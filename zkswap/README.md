# Agentic Audit Brief: ZKSwap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: ZKSwap (`zkswap`)
- Website: [https://www.zkswap.finance/](https://www.zkswap.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, sonic, zksync-era
- Contract surface: 80 unique implementations (80 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $126,286.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for ZKSwap in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1191bfc116fede5dd0b6e83fac7b0031d07a0df6`, chain 324)
- UnnamedContract (`0x12c944515f766baa62fd334efda6bdbd799adf4f`, chain 324)
- UnnamedContract (`0x386befa6a54f9685ae85871aa47056891d63c54c`, chain 324)
- UnnamedContract (`0x3b3393ed6b51a8c130598558526c7bbb26da415b`, chain 324)
- UnnamedContract (`0x40ad8e452b87381adb6c088fb80173b80752ed65`, chain 324)
- UnnamedContract (`0x4305cf9f4ad5427d6614e7207803e2426497917a`, chain 324)
- UnnamedContract (`0x58d8dd00b25f6557698d37784029f736c63f3c11`, chain 324)
- UnnamedContract (`0x61278adbbe823dd30675248e78f34e90c648ea9b`, chain 324)
- UnnamedContract (`0x63d8e785df53a18d1282c9400c6c5cd57c8f19fc`, chain 324)
- UnnamedContract (`0x6521385ce3bf30de58e402e5aed567b436736a75`, chain 324)
- UnnamedContract (`0x74394479510834e1f1bf2ad91b30383505745228`, chain 324)
- UnnamedContract (`0x79354d5bf9dcda1d06fa555c240f3f1573f1eaf4`, chain 324)
- UnnamedContract (`0x80190359df6adcc017b38372bf4c20884b0d8c75`, chain 324)
- UnnamedContract (`0x97f03b2f6246da8ff336f37ad3b047f7c3f74e59`, chain 324)
- UnnamedContract (`0xabca8cfdfa2a4285a4704bf960fb45e49821762f`, chain 324)
- UnnamedContract (`0xae3af55a2c589421f6693b6afca11d9a5ca34783`, chain 324)
- UnnamedContract (`0xc824f2cce71350cc5ece6c699c72baba75103907`, chain 324)
- UnnamedContract (`0xc9e2c117163ac4f85ac244bd4042a56d86756900`, chain 324)
- UnnamedContract (`0xce043a95f415d7873585e92904ea11955ba38fe5`, chain 324)
- UnnamedContract (`0xdbe9b7a13d744a880f417ee378fcff3d3fe5ba52`, chain 324)
- UnnamedContract (`0xff16eaec9047eaefd32b3a308057ff21ccf5cf22`, chain 324)
- UnnamedContract (`0xffdef45585b57e294487c72f01043d5dee3f069f`, chain 324)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 22/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 22 own, 50 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 22 of 80 unique; 58 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 77
- Unique implementations: 80
- Raw deployments: 80
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

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x02ecef526f806f06357659ffd14834fe82ef4b04` | ⚠️ Unaudited |
| ZksToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4815ae53b124e7263f08dcdbbb757d41ed658c6` | ⚠️ Unaudited |
| ZkSync | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6de5bdc580f55bc9dacafcb67b91674040a247e3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (77)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1787bb09b5958065dd0558012aa1efa662156601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa9dbfef7ab08ceded42052bd51e9c70138501ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x0ff16867bcac3c5fdc2dc73558e3f8e2ed89eea2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x1e9ebcb695c0cae7e16f36f4d7f15f6935fc6e88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x2e11640ee1368f2cd90c36607760a274a30094f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x3a59bfe426f81726c31280aaeae1125f50ca1caa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x3ec4879991d51338d2a2d037f4dad439570cf971` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x4780ea7fc1fc4c51732ab31d797d4e24757c2262` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x6d977fcc945261b80d128a5a91cbf9a9148032a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x7834387b0f48c0a2bf9c8fab696e2ab2587ca5ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x78caac771dbf608553b8eb8d63c71821cbdbc5d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0x957dbef5673822b3db074f6cee6dcd0fa68f18ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xc9c49728a43bbf0f804ef56becd081137fc85849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xcb3d626005e3e209fe7fbf661a9cbe4874c35087` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xcd219ae923b5f20cb36ad316a129d8f9015d1822` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xce98a0e578b639aa90ee96ed5ba8e5a4022de529` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xf5df07accb7f319016e81d10a0acf3882af47113` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | n/a | `0xf5fb98fce5ee81b4e2c5ac1829b12259f32ae0d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x056f1960b5cf53676ad9c0a7113363a812dc0c8e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x0d64c4eb0547c1f51b78fb1a53583dc9042238c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263872 | `0x1191bfc116fede5dd0b6e83fac7b0031d07a0df6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263873 | `0x12c944515f766baa62fd334efda6bdbd799adf4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x1420963c2367eb21ff06511910946794d898c08c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x15309aaf4fedf346e5204331027b4ef7b75b1dd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x18381c0f738146fb694de18d1106bde2be040fa4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x1a5fb6977bcd9e5e16a7faba15134a1a6ca4a0c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x31c330f2febda65693ec8801b77a93c6d1f479e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263874 | `0x386befa6a54f9685ae85871aa47056891d63c54c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x3a76e377ed58c8731f9df3a36155942438744ce3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263875 | `0x3b3393ed6b51a8c130598558526c7bbb26da415b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263876 | `0x40ad8e452b87381adb6c088fb80173b80752ed65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263877 | `0x4305cf9f4ad5427d6614e7207803e2426497917a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x484a72b4879ac8b04652b51bf1d1c110077990a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x4ca2ac3513739cebf053b66a1d59c88d925f1987` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x525990769c271b1a0ab0b5158d7062be54e4983d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x57d28af38d126befebfde996b7cdc34d58ad4cfb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263878 | `0x58d8dd00b25f6557698d37784029f736c63f3c11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x5ca90e8c00db9402c84801a83f1fd24ddda72c20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263879 | `0x61278adbbe823dd30675248e78f34e90c648ea9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263880 | `0x63d8e785df53a18d1282c9400c6c5cd57c8f19fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263881 | `0x6521385ce3bf30de58e402e5aed567b436736a75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x65300d6776939774815c0c2f1195b13254586a0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x65ea05bc443a87518dd76d6c492e31299563987b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263882 | `0x74394479510834e1f1bf2ad91b30383505745228` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263883 | `0x79354d5bf9dcda1d06fa555c240f3f1573f1eaf4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x7ab61748af61e0588296b6edf5c80ef5d0b6bbc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263884 | `0x80190359df6adcc017b38372bf4c20884b0d8c75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x82e07a1e88f76e5934e1772cfd2a6abce1d6bf11` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x876cfcf817d031703b83c13fe0e7838e8c5aabca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x8770ad37cb19ac99ed86a49f2982592c323c17be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x88add6a7e3c221e02f978b388a092c9fd8cd7850` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263885 | `0x97f03b2f6246da8ff336f37ad3b047f7c3f74e59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x9f20a1ce3b66ebef612cbfa854c8f2dbf664ea28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0x9f9d043fb77a194b4216784eb5985c471b979d67` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xa478bf3f621d47e6753f463711630c282d2803ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xa9e411d26df48d6871e966da84af878425a8e100` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xaab6e2b06961927eb1665f0b2566170c71be50d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263886 | `0xabca8cfdfa2a4285a4704bf960fb45e49821762f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263887 | `0xae3af55a2c589421f6693b6afca11d9a5ca34783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xb71dca272468180bc38f3c034283a9bba7f961e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xb76f089a491f3e2d09ace7537bc422a11af66b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xc008dc6e8ff71217f75cdc95cc1ab9c7959c0269` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263888 | `0xc824f2cce71350cc5ece6c699c72baba75103907` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xc93397f26886dab0d752c86612c78dbd2c1d5a59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263889 | `0xc9e2c117163ac4f85ac244bd4042a56d86756900` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xcd6121185a98370be32d71f60a910de0d733946f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263890 | `0xce043a95f415d7873585e92904ea11955ba38fe5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xcf7c16b82d0366ed8421a6bc71a56b97d7e5ff35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263891 | `0xdbe9b7a13d744a880f417ee378fcff3d3fe5ba52` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xe8a9c651c29469f0de2ce0506002828a7e683860` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf1802d9a70bdc6f6effd65d44b33226ee0e6a821` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xf560df1cafb0da08ecb1f9e244c68640b701e53e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xfe6b0136fb9b5993dc840371cc8bee83a46a41b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263892 | `0xff16eaec9047eaefd32b3a308057ff21ccf5cf22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | n/a | `0xffd6f258a53a4295dbf5be90e6a7f58aef2d38f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-263893 | `0xffdef45585b57e294487c72f01043d5dee3f069f` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 5
- Live contracts: 0
- Unknown liveness contracts: 5
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=5

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x1787bb09b5958065dd0558012aa1efa662156601` | non_address_book | unknown | unknown | unverified | n/a | `0x1787bb09b5958065dd0558012aa1efa662156601` |
| unverified unclassified | UnnamedContract<br>`0xaa9dbfef7ab08ceded42052bd51e9c70138501ea` | non_address_book | unknown | unknown | unverified | n/a | `0xaa9dbfef7ab08ceded42052bd51e9c70138501ea` |
| unverified unclassified | UnnamedContract<br>`0xb71dca272468180bc38f3c034283a9bba7f961e6` | non_address_book | unknown | unknown | unverified | n/a | `0x4bc9b68c77a9cd6071a21c6d9d4ae7f2ee921960` |
| unverified unclassified | UnnamedContract<br>`0xc008dc6e8ff71217f75cdc95cc1ab9c7959c0269` | non_address_book | unknown | unknown | unverified | n/a | `0x4bc9b68c77a9cd6071a21c6d9d4ae7f2ee921960` |
| unverified unclassified | UnnamedContract<br>`0xfe6b0136fb9b5993dc840371cc8bee83a46a41b5` | non_address_book | unknown | unknown | unverified | n/a | `0x4bc9b68c77a9cd6071a21c6d9d4ae7f2ee921960` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 77 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
