# Agentic Audit Brief: PEAKDEFI

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: PEAKDEFI (`peakdefi`)
- Website: [https://peakdefi.com/](https://peakdefi.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 155 unique implementations (155 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $128,871.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for PEAKDEFI in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x07cdb44fa1e7eceb638c12a3451a3dc9ce1400e4`, chain 1)
- UnnamedContract (`0x8fb8b62ad979d833f450e3ede2cebabdeb9ddd85`, chain 1)
- UnnamedContract (`0x9424b287c8c0def28e96d595b1f76aef11ef581b`, chain 1)
- UnnamedContract (`0x9733f49d577da2b6705ca173382c0e3cdfff2a48`, chain 1)
- UnnamedContract (`0xc120c7db0804ae3abeb1d5f9c9c70402347b4685`, chain 1)
- UnnamedContract (`0xf8bc0856472486c20dceeab81d5e5980d9fc302e`, chain 1)
- UnnamedContract (`0xf8d8385b904f926c68e7e02ec2842e7beaf14359`, chain 1)
- UnnamedContract (`0xe9428b8acaa6b9d7c3314d093975c291ec59a009`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 8 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 147 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 8 of 155 unique; 147 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 151
- Unique implementations: 155
- Raw deployments: 155
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

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PEAKDEFI_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b103d2125d83d2521815f62304b67b2c2403a45` | ⚠️ Unaudited |
| PEAKDEFI_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x630d98424efe0ea27fb1b3ab7741907dffeaad78` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c254fd411db8d8a696b94a46508df7ce578729d` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa445570a6a156c4a5e564b0d4075c3cc02a66a2b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (151)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00334c69f34c073eec8a61c6a85d34825de98d68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020bf02132d4e666dd1e976f60709f7a6414e3f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390690 | `0x07cdb44fa1e7eceb638c12a3451a3dc9ce1400e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08de9c015fa5ec42d0e9df61dfb841c588e16748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c4c3009455c6ae358fd22b31a5c54b94dbba565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda0efd4959d76d9b150d4deb7a03c69984c709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f661057939b9e2bca679f37ea93e2e0f106cd3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10883ffd5ea4b125990d178d82b4a2f43c2937fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12032d3f0fc9368020eee4f7bd32d52a7aa023e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x129edcacd7ca27523b91d5b3fc5ee403aaa49562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15e8b576dd16c5419dbcd0b76f162d370c550c42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x167aca90a082ec0828b2be342f7f0285b3aead70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1812ef836dce8af1c8592f786bc8a94ef5864c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b4a96148bbbc324c9591f6cdc8d6294d99e146f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cd9e437829276e34f1954d6f4e37ca9ce27e55c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x211cfcf93d0ff80541a632c451e8264cbc1e6ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22bbc3db8fc40259bcf040e3015cda3fd2b4b4f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24a6dd371dfafdbf6663b47fdf0cf0340e84230a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x267e72564c9207112a4f2dbdd72367890bf9b63b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26b8d8aae6f2954c6f2c8b68ed820d4e38d2fbc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28c6d2e8f790cfa3860fdfafbd8c83f9f358b724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fc252886160b638a235dc656ad69ae52efa5d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3463c6572bf1ea4c719fc229bd0d4956b0585a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x365675862a741859dbe04bedf8c486d5ad3a8001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7ba8dc0c8ecf5bb63a515f680bdf6ea5f1b24d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41859679f52e5f48c36eb54b5b38772c63bad6a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b82c167ecd574fe941071f5d04d79169414d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4734298fa184a4ee1a83968aeadd1a7c584815b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x473705f112c0d72197bd0cc684530dc08c7e9550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48fdb74da6673a56e61e53de1a333306e1a48982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d1220593a87b45b8542d60cd238620fc730ba81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8d035d7895791a69d0da3164c400e574a05a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fc8cef7fa9f330a29332bdc773ae45eafbbb815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5327524a9c21f769b0adffa2bfb665216b83f5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x533cf361c80ca637e183b40bf8378b86aed1a9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536b4d88fde42c6f6b14a7756355aad6ef39bcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55905445933ee4827b56a418d9e52e6a85cf8211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x587a40d0b7f537e5b5be7120206e95fb94258849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e2ddfa27df63b2b30c5146fc21e41fb77479ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a16b1d960e89c576a29f7f618aa3493c459348a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c954741ce8461af5ddcbffd58569fda4a47d6d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ce13852cd1bfa319afd83bcdaafc6d5d4cc2c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d9036aec9a8e1749b35ffe6a4696227e04bfb23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb76eeb26b60e70fad41f9911bed059286321c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eee59d0c153272ac004425d85e5aa2a58b4d47f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x602b89f61b17dc15e4d2b4468605220c7d5df3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x609f63277061a0c51ec8ad0c5690afc3e26a20b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61efe247788e34261dc667d9448049e5da3908f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63eef19a5e0c6af1d94032abc3d8eab8c6b3d4a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6735f21e39db1fb1de1bb5ecf7aafeece313eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x693ab21c0a37a3087b6d7a39c45a0d833d0782fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bc9d02aef70086070aab8765b22452653aaf34f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e1e397fdd6f375795af51bb7248c77ca3dfceb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x719246e1753aa993ea55e15576f6944ae97711da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b08364d389cc4dd008c1c1667b47a21ae12640e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c42955cd98729e6ddc071e49b0935843a937ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb9f4bea4283991a10324ae326cc3650aead769` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f24ad5e71236a99e542441107a344b1af0352b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f6f56a8c0ac6ae9352df71b1652c6b2305e9c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x809ec6ed4e1bdc226240dd21acffc104f22605c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80bba403eda6fa1d3870d0c8d9f629c1c22da07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x828dadc2b89ad4cf08bf767da199ec5cc5eb4d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83e236b920f80db0957d28d8232a8e7b20799454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84542bfee9ffc38e785eb787d2d6fcd73451f13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x859360eb51a683bfe46fdb48a1827d3aa09b9956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86ad8a61c8b260c8c28539927be6ad3fb57b6382` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87669e4257fa86235750701989818bad336f3839` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8945c06d2375a8d0dd59ccbfb2151a73403ed1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a3c8c045c3aefdbde20a4e66cec559e66dac1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a8b80853a0fbbde0e7a054aa947781d41b0ceb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cfcfcf17866bc11d91d5a0ee828c7cf4c1e9662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dc72d6d526592468f98b0d71f84bf5fb7173e6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390691 | `0x8fb8b62ad979d833f450e3ede2cebabdeb9ddd85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fe71670f444e46b6bfae391d4fba531a7623024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90cd17c6228fa178d75748dc1905eab59757cfb5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390692 | `0x9424b287c8c0def28e96d595b1f76aef11ef581b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdcec735c781e68b40a67b81fba02a2bea4da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390693 | `0x9733f49d577da2b6705ca173382c0e3cdfff2a48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98cc0b3869f20ab71443be82332da1b0140c3ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab3f3437faff943e5f1c3e030ba4557e5f79370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b0f25fbf895aad71aea9d253bea5e2fcf60408e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7c0c61f9fc8c6b7ba98e59abe3838447247b15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f5f4b61399735a9ea652e4a11938f9011763484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f6b1cf55d80fe2d123a81833942a3a1e0cf6ad6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1dff47e3e9c4a18d341e386c6707a18686fb834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a270286523f7c6e5d3aae4ecfd76aa5b5e87fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5b76326ce9b7730882a4fd22d218e06705a3f72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64560d1ccaf20b56347e42f7a2c1c7cbd0a08de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0237ed34e1f9338bd1bef4a3f1a7373300b4a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab29d259202a65ecc00e472785f1573e6c1e9d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0149a66ec7e5ccbf8fe91ecc26c84e66037ecce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0b401ab8c922023b2aeec59295c41947fb23d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb193429ebe77065ea0b030fe4e042c0161967544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3d73f9ec24f0dba49f8a007621523cee7f6ecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcbbcf07eb0c82ee991761757eb43981523c54d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc10593668b10f570ab91d76dc46fb3e87448c941` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390694 | `0xc120c7db0804ae3abeb1d5f9c9c70402347b4685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40ef4da20bba2c9950a7e25551dc81a4e52e995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd131bfc165ef477b0e849df5030d12a860e6479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd40c68104f1460e546f5068fcbd0adcc03c81af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1d32fd0dca08ffc48a7cd80c7a341334f306f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2292f87a7fa8df99a9cefb1b758dba6b79aad49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23366bbe6ec5bb1da7a37ca4b7eb4d484bb2c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2d49a945ee91ab2baa93aec191f04dff9a09430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd32a4d9e9045006d95bc6c61791e1c478a895e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43c8911dda0cec4036931f665ab7a670a1b0543` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd53ddaf843e4a14f59e0de4120d7c4338928d072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5652936769f959c7d0ee2bbdb08ebf48e1bf6c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddb7d0521ac275f5922605b7eadebf790149bbe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf379bc257d04831defc2c2a4bf3c4ae20922363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf8307f9bf0de5c75be678f562d3196609bfc730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe3de8afeda083c0ed3695c0f1913a308634f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1ce8164cc2175584f1bc2ffe3bc5e044ed318b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe89c941e8f3db686bc044581e830a2fb40abd606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8cae4414dd619634ba8330e6d265cbdb92ba0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe95e108a2a7c1d5529ace4c37dcd5a282a9cdf5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xead98f44b4ffb2a7a302b45b99046b70636b04dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec0b86e90e665bed5085dd11771ec5267dc75a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef4ef84df8efe977a8ae07293553adb4ff3bac90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f3eaf11ab5c52b5b1322c23ec651bae94345b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390695 | `0xf8bc0856472486c20dceeab81d5e5980d9fc302e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390696 | `0xf8d8385b904f926c68e7e02ec2842e7beaf14359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8fbf3bb3e379a3c2e9d7ed819cd0ff3bb929c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa11298207ada351932800b99554dd6efdc55d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa1e352694e0dcd63f57e4197c3f3e516a6e1e04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbb07295cc174f143c94a2f802ebba59164a3ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7a47f379be0749cb2d43a27692556f5e466d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00d7e289c16f1e9e75347cea2b6d536fce9128a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f952ecb821c6994a9dd411cdb957bde5341f386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3bc4733fe9ea44ce8b66fc86452b2fb5112b26d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49ed15d6e31c0e86caab9d61c447076c06c1af4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5327524a9c21f769b0adffa2bfb665216b83f5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x55905445933ee4827b56a418d9e52e6a85cf8211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5590d7c2595db6225e3e43c80fb1da43643a6636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ce13852cd1bfa319afd83bcdaafc6d5d4cc2c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x610d82d91f812bf628efb1be7c5f49a9298e68d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x719246e1753aa993ea55e15576f6944ae97711da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d616f7befb80d4abeb65e8981cb40b3584c13a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f6f56a8c0ac6ae9352df71b1652c6b2305e9c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x809ec6ed4e1bdc226240dd21acffc104f22605c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x828dadc2b89ad4cf08bf767da199ec5cc5eb4d0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x875f5e654357ed66871fa9e982560407f84f68be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95431e28f282bda98ca441b47cc1151588e150b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b0f25fbf895aad71aea9d253bea5e2fcf60408e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5933f1a3a72fa3a7d79d2ef04abd876e9ba0c81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd3f1f07114e6b240150cfd3dea6cfc7fcbe5a3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd131bfc165ef477b0e849df5030d12a860e6479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd32a4d9e9045006d95bc6c61791e1c478a895e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8cae4414dd619634ba8330e6d265cbdb92ba0ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-390697 | `0xe9428b8acaa6b9d7c3314d093975c291ec59a009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8fbf3bb3e379a3c2e9d7ed819cd0ff3bb929c7d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 143
- Live contracts: 0
- Unknown liveness contracts: 143
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=143

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x00d7e289c16f1e9e75347cea2b6d536fce9128a5` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0f952ecb821c6994a9dd411cdb957bde5341f386` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3bc4733fe9ea44ce8b66fc86452b2fb5112b26d1` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x49ed15d6e31c0e86caab9d61c447076c06c1af4b` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5327524a9c21f769b0adffa2bfb665216b83f5e7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x55905445933ee4827b56a418d9e52e6a85cf8211` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5590d7c2595db6225e3e43c80fb1da43643a6636` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5ce13852cd1bfa319afd83bcdaafc6d5d4cc2c86` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x610d82d91f812bf628efb1be7c5f49a9298e68d9` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x719246e1753aa993ea55e15576f6944ae97711da` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7d616f7befb80d4abeb65e8981cb40b3584c13a7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f6f56a8c0ac6ae9352df71b1652c6b2305e9c01` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x809ec6ed4e1bdc226240dd21acffc104f22605c5` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x828dadc2b89ad4cf08bf767da199ec5cc5eb4d0c` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x875f5e654357ed66871fa9e982560407f84f68be` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x95431e28f282bda98ca441b47cc1151588e150b9` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b0f25fbf895aad71aea9d253bea5e2fcf60408e` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb5933f1a3a72fa3a7d79d2ef04abd876e9ba0c81` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbd3f1f07114e6b240150cfd3dea6cfc7fcbe5a3c` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd131bfc165ef477b0e849df5030d12a860e6479` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd32a4d9e9045006d95bc6c61791e1c478a895e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe8cae4414dd619634ba8330e6d265cbdb92ba0ec` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf8fbf3bb3e379a3c2e9d7ed819cd0ff3bb929c7d` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86ad8a61c8b260c8c28539927be6ad3fb57b6382` | non_address_book | unknown | unknown | unverified | n/a | `0xbdbdfafb975b35a41fa228585c8700d31cce73c9` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x00334c69f34c073eec8a61c6a85d34825de98d68` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x020bf02132d4e666dd1e976f60709f7a6414e3f6` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08de9c015fa5ec42d0e9df61dfb841c588e16748` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0c4c3009455c6ae358fd22b31a5c54b94dbba565` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0eda0efd4959d76d9b150d4deb7a03c69984c709` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0f661057939b9e2bca679f37ea93e2e0f106cd3a` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10883ffd5ea4b125990d178d82b4a2f43c2937fc` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x12032d3f0fc9368020eee4f7bd32d52a7aa023e9` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x129edcacd7ca27523b91d5b3fc5ee403aaa49562` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15e8b576dd16c5419dbcd0b76f162d370c550c42` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x167aca90a082ec0828b2be342f7f0285b3aead70` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1812ef836dce8af1c8592f786bc8a94ef5864c27` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1b4a96148bbbc324c9591f6cdc8d6294d99e146f` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1cd9e437829276e34f1954d6f4e37ca9ce27e55c` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x211cfcf93d0ff80541a632c451e8264cbc1e6ba8` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22bbc3db8fc40259bcf040e3015cda3fd2b4b4f7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x24a6dd371dfafdbf6663b47fdf0cf0340e84230a` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x267e72564c9207112a4f2dbdd72367890bf9b63b` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26b8d8aae6f2954c6f2c8b68ed820d4e38d2fbc3` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28c6d2e8f790cfa3860fdfafbd8c83f9f358b724` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2fc252886160b638a235dc656ad69ae52efa5d5f` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3463c6572bf1ea4c719fc229bd0d4956b0585a2c` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x365675862a741859dbe04bedf8c486d5ad3a8001` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a7ba8dc0c8ecf5bb63a515f680bdf6ea5f1b24d` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41859679f52e5f48c36eb54b5b38772c63bad6a8` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42b82c167ecd574fe941071f5d04d79169414d6e` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4734298fa184a4ee1a83968aeadd1a7c584815b7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x473705f112c0d72197bd0cc684530dc08c7e9550` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48fdb74da6673a56e61e53de1a333306e1a48982` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4d1220593a87b45b8542d60cd238620fc730ba81` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f8d035d7895791a69d0da3164c400e574a05a09` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fc8cef7fa9f330a29332bdc773ae45eafbbb815` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5327524a9c21f769b0adffa2bfb665216b83f5e7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x533cf361c80ca637e183b40bf8378b86aed1a9d5` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x536b4d88fde42c6f6b14a7756355aad6ef39bcd6` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55905445933ee4827b56a418d9e52e6a85cf8211` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x587a40d0b7f537e5b5be7120206e95fb94258849` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59e2ddfa27df63b2b30c5146fc21e41fb77479ce` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a16b1d960e89c576a29f7f618aa3493c459348a` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c954741ce8461af5ddcbffd58569fda4a47d6d1` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ce13852cd1bfa319afd83bcdaafc6d5d4cc2c86` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d9036aec9a8e1749b35ffe6a4696227e04bfb23` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5eb76eeb26b60e70fad41f9911bed059286321c1` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5eee59d0c153272ac004425d85e5aa2a58b4d47f` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x602b89f61b17dc15e4d2b4468605220c7d5df3bf` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x609f63277061a0c51ec8ad0c5690afc3e26a20b2` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x61efe247788e34261dc667d9448049e5da3908f7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63eef19a5e0c6af1d94032abc3d8eab8c6b3d4a5` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6735f21e39db1fb1de1bb5ecf7aafeece313eb48` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x693ab21c0a37a3087b6d7a39c45a0d833d0782fc` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6bc9d02aef70086070aab8765b22452653aaf34f` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e1e397fdd6f375795af51bb7248c77ca3dfceb4` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x719246e1753aa993ea55e15576f6944ae97711da` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b08364d389cc4dd008c1c1667b47a21ae12640e` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c42955cd98729e6ddc071e49b0935843a937ceb` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7cb9f4bea4283991a10324ae326cc3650aead769` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f24ad5e71236a99e542441107a344b1af0352b7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7f6f56a8c0ac6ae9352df71b1652c6b2305e9c01` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x809ec6ed4e1bdc226240dd21acffc104f22605c5` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80bba403eda6fa1d3870d0c8d9f629c1c22da07b` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x828dadc2b89ad4cf08bf767da199ec5cc5eb4d0c` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x83e236b920f80db0957d28d8232a8e7b20799454` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84542bfee9ffc38e785eb787d2d6fcd73451f13c` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x859360eb51a683bfe46fdb48a1827d3aa09b9956` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87669e4257fa86235750701989818bad336f3839` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8945c06d2375a8d0dd59ccbfb2151a73403ed1a9` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a3c8c045c3aefdbde20a4e66cec559e66dac1ef` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8a8b80853a0fbbde0e7a054aa947781d41b0ceb7` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8cfcfcf17866bc11d91d5a0ee828c7cf4c1e9662` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8dc72d6d526592468f98b0d71f84bf5fb7173e6a` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8fe71670f444e46b6bfae391d4fba531a7623024` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90cd17c6228fa178d75748dc1905eab59757cfb5` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x95ecdcec735c781e68b40a67b81fba02a2bea4da` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98cc0b3869f20ab71443be82332da1b0140c3ac0` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ab3f3437faff943e5f1c3e030ba4557e5f79370` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b0f25fbf895aad71aea9d253bea5e2fcf60408e` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9d7c0c61f9fc8c6b7ba98e59abe3838447247b15` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f5f4b61399735a9ea652e4a11938f9011763484` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f6b1cf55d80fe2d123a81833942a3a1e0cf6ad6` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1dff47e3e9c4a18d341e386c6707a18686fb834` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3a270286523f7c6e5d3aae4ecfd76aa5b5e87fa` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa5b76326ce9b7730882a4fd22d218e06705a3f72` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa64560d1ccaf20b56347e42f7a2c1c7cbd0a08de` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa0237ed34e1f9338bd1bef4a3f1a7373300b4a1` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xab29d259202a65ecc00e472785f1573e6c1e9d14` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0149a66ec7e5ccbf8fe91ecc26c84e66037ecce` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0b401ab8c922023b2aeec59295c41947fb23d8d` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb193429ebe77065ea0b030fe4e042c0161967544` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc3d73f9ec24f0dba49f8a007621523cee7f6ecd` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcbbcf07eb0c82ee991761757eb43981523c54d2` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc10593668b10f570ab91d76dc46fb3e87448c941` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc40ef4da20bba2c9950a7e25551dc81a4e52e995` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd131bfc165ef477b0e849df5030d12a860e6479` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd40c68104f1460e546f5068fcbd0adcc03c81af` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce1d32fd0dca08ffc48a7cd80c7a341334f306f3` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2292f87a7fa8df99a9cefb1b758dba6b79aad49` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd23366bbe6ec5bb1da7a37ca4b7eb4d484bb2c58` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd2d49a945ee91ab2baa93aec191f04dff9a09430` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd32a4d9e9045006d95bc6c61791e1c478a895e9f` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd43c8911dda0cec4036931f665ab7a670a1b0543` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd53ddaf843e4a14f59e0de4120d7c4338928d072` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5652936769f959c7d0ee2bbdb08ebf48e1bf6c4` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xddb7d0521ac275f5922605b7eadebf790149bbe9` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf379bc257d04831defc2c2a4bf3c4ae20922363` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdf8307f9bf0de5c75be678f562d3196609bfc730` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdfe3de8afeda083c0ed3695c0f1913a308634f9e` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe1ce8164cc2175584f1bc2ffe3bc5e044ed318b8` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe89c941e8f3db686bc044581e830a2fb40abd606` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe8cae4414dd619634ba8330e6d265cbdb92ba0ec` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe95e108a2a7c1d5529ace4c37dcd5a282a9cdf5e` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xead98f44b4ffb2a7a302b45b99046b70636b04dc` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xec0b86e90e665bed5085dd11771ec5267dc75a88` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xef4ef84df8efe977a8ae07293553adb4ff3bac90` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6f3eaf11ab5c52b5b1322c23ec651bae94345b6` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8fbf3bb3e379a3c2e9d7ed819cd0ff3bb929c7d` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa11298207ada351932800b99554dd6efdc55d13` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa1e352694e0dcd63f57e4197c3f3e516a6e1e04` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfbb07295cc174f143c94a2f802ebba59164a3ad5` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe7a47f379be0749cb2d43a27692556f5e466d7d` | non_address_book | unknown | unknown | unverified | n/a | `0xeff81b475d97f8074f23d54cf465e65b4dd43b7d` |

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
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 151 |

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
