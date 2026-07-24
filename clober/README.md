# Agentic Audit Brief: Clober

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 4 audit(s)
- Eligible audit results: 8 (4 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Clober (`clober`)
- Website: [https://clober.io](https://clober.io)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, ethereum, monad, polygon, polygon-zkevm, sonic, zksync-era
- Contract surface: 124 unique implementations (131 raw deployments)
- Coverage basis: 2/7 confirmed own live verified implementations (28.6%); conservative 28.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $483,404.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Clober. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across arbitrum, base, berachain, monad, sonic. Structural roles: 7 unclassified, 4 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: unclassified (7), supporting (4)
- Contract kinds: contract (11)
- Detected standards: erc165 (1), erc1967proxy (1), erc721 (1), ownable (1), ownable2step (1)
- Frameworks: uniswap-v2 (3), openzeppelin (2), openzeppelin-upgradeable (1), solmate (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

2 of 27 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

**BookManager** (`0x8ca3a6f4a6260661fcb9a25584c796a1fa380112`, chain 8453)
Origin: sonic-market (`0xd4ad5e...17c636`)
Containment: 100.0% - 31 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**Controller** (`0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca`, chain 8453)
Origin: sonic-market (`0xca6c15...2eadd1`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x19b68a2b909d96c05b623050c276fbd457de8e83`, chain 143)
- UnnamedContract (`0x54cd5332b1689b6506ce089da5651b1a814e9e7d`, chain 143)
- UnnamedContract (`0x6657d192273731c3cac646cc82d5f28d0cbe8ccc`, chain 143)
- UnnamedContract (`0xb09684f5486d1af80699bbc27f14dd5a905da873`, chain 143)
- UnnamedContract (`0xb1251bf43bb7de76de7e6ce7b64af843dfc9d242`, chain 143)
- UnnamedContract (`0xcbd3c0b81a9a36356a3669a7f60a0d2f0846195b`, chain 143)
- UnnamedContract (`0xe424c211e2ed8a5b6d1c57fa493c41715568d238`, chain 143)
- UnnamedContract (`0x46107ec44112675689053b96aea2127fd952bd47`, chain 146)
- UnnamedContract (`0x466795c0eae3c44a6dcbb6db0534f7019e0803a7`, chain 146)
- UnnamedContract (`0x920f77aebf215e611abacd0fd51a87f3927d05b8`, chain 146)
- UnnamedContract (`0xd4ad5ed9e1436904624b6db8b1be31f36317c636`, chain 146)
- UnnamedContract (`0xdd30f831beb51fbf33e3d579e5529d3b1495554f`, chain 146)
- UnnamedContract (`0xe81e78f946e34d13dcb6fd46a78713e0ffda5613`, chain 146)
- UnnamedContract (`0xf7e7285ebe537fdf1c1c4432aa1863721eac9a09`, chain 146)
- UnnamedContract (`0x21bb8709fe339b227795809b0cb8eb5a152ad7e1`, chain 42161)
- UnnamedContract (`0x53691300635ce3ae575f91a186c2248a0e159830`, chain 42161)
- UnnamedContract (`0x74ffe45757db60b24a7574b3b5948dad368c2fdf`, chain 42161)
- UnnamedContract (`0xc6ed4be4a69fd23eb6ab9c6f8b787748def2362e`, chain 42161)
- UnnamedContract (`0xfe87e2cc08a8801a12105d862aee71470883a76d`, chain 42161)
- UnnamedContract (`0x06731177b4fa6df2b14a714736828e373e3ae03b`, chain 80094)
- UnnamedContract (`0x4abb86f499f53e2b1f52302b2ba7bbb0a90a49a8`, chain 80094)
- UnnamedContract (`0xded58e263087f5b45d878bd9cf599b7a1a75d1e4`, chain 80094)
- BookViewer (`0xd0175b064dc022fadf46bba7604dad5653cd7309`, chain 8453)
- ERC1967Proxy (`0xcd166f67f13c7d5c4b899fb1c980dceff278f029`, chain 8453)
- Minter (`0x2092a58c47f3444c82871ecdd5ea1e96c80c59d1`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (11 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/7 (28.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 94 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 29 of 124 unique; 95 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/11
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 113
- Unique implementations: 124
- Raw deployments: 131
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HickupHH | Tier 2 | 2 | 18.2% | 2026-02 |
| unknown | Tier 2 | 1 | 9.1% | 2024-11 |
| yAudit | Tier 2 | 1 | 9.1% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LiquidityVault | unknown | project_anchor | own_supporting | 1 | base | unit-232083 | 2 deployments: base `0xbfd645ffb504e968ae53869c9fdcbcb8d1189449`; base `0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` | ✅ Audited |
| SimpleOracleStrategy | unknown | project_anchor | own_supporting | 1 | base | unit-232081 | 2 deployments: base `0x2913c40db3509a4bc3059ba79c5c6013efb9246a`; base `0x29e07197ccf70d0ac6cb0a3c307627819f5f2777` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BookManager | governance | project_anchor | own_supporting | 0 | base | unit-232080 | `0x8ca3a6f4a6260661fcb9a25584c796a1fa380112` | ⚠️ Unaudited |
| BookViewer | unknown | project_anchor | own_supporting | 1 | base | unit-232084 | 2 deployments: base `0xcd166f67f13c7d5c4b899fb1c980dceff278f029`; base `0xd0175b064dc022fadf46bba7604dad5653cd7309` | ⚠️ Unaudited |
| Controller | governance | project_anchor | own_supporting | 0 | base | unit-232079 | `0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca` | ⚠️ Unaudited |
| LiquidityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5b351c9eed322616f76b8669176412e1808c06b5`; base `0xfe87e2cc08a8801a12105d862aee71470883a76d` | ⚠️ Unaudited |
| Minter | operational_periphery | project_anchor | own_supporting | 0 | base | unit-232078 | `0x2092a58c47f3444c82871ecdd5ea1e96c80c59d1` | ⚠️ Unaudited |
| Minter | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc8f98f60ce54e72ccbb18aa8628fa7a2885f098f` | ⚠️ Unaudited |
| Operator | unknown | project_anchor | own_supporting | 1 | base | unit-232082 | 2 deployments: base `0x00f7a0c7e66f0e3a10d9e980e0854ebe0e308625`; base `0x82b54a5f07a63d2d2d61a92b1a75839aac25a563` | ⚠️ Unaudited |
| Operator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x7ba560d09bd5379216f1e4393906701210cb63fb`; base `0xe5141a7287582fd1cc178847f8fc3688198d1a8b` | ⚠️ Unaudited |
| SimpleOracleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x063150b24807e836eacf8c8420b8922d10b5fb58`; base `0x454b85d03ffbf86c2bfb0dacd21d2687d36fe892` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (113)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x0ef04b8a9fffd009f56bdae926ac2691f754ef4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232056 | `0x19b68a2b909d96c05b623050c276fbd457de8e83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x1da90f6de2f0d7d31259f56968432972ccedefd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x29dd2eb44967102daa34fcb798080feb5c4f12ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x3b9b437031a29d6f6f7bf1fc8f89d2ad6f95620c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x3dc8156a2524d524e5825e7d73250fd0aa4d8828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x404aac8d8616fd9caf5e652778fa9ecf0b47518b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x43adf22a66c305cbcf083d948c4c5d35a06521e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x44b13a8737e84514bc300450f24405b0a5b161a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x4ffcd7e3d3aff2902cc5b6e01944aa2a892ce8ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232057 | `0x54cd5332b1689b6506ce089da5651b1a814e9e7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232058 | `0x6657d192273731c3cac646cc82d5f28d0cbe8ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x7a9ec7f7c727c699d9e56c62426cd54639ffd496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x8547ed93af8fb775f742f10099cbfa53f7e3284b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x896d2c2c672f1c3edc29fb712d1707b8291224b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x8f4705d8b63a0d9c498d0909ab33be972c43bbd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x99d89d224dc5879ff5a010e93f588f262b2cdb68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232059 | `0xb09684f5486d1af80699bbc27f14dd5a905da873` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232060 | `0xb1251bf43bb7de76de7e6ce7b64af843dfc9d242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xb1683571365f6a4168c55c261253998c9ab0d4a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xb75abf8e1dd3891426e4d7498594489270c1645d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc03065e3c2e913dcd049067b62c7f8dd8b91ab09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xc79605b2a0399919ee49437edb7ada4eb5a8007e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xca85326f4cba3a313e096c6f36fa8d1b4ea2c18a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232061 | `0xcbd3c0b81a9a36356a3669a7f60a0d2f0846195b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xd08e387542121f8305bb976e222cbb7c1a56dd77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xd716ee6ffd36725c5fcf2cc712705dfed6c87fc8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-232062 | `0xe424c211e2ed8a5b6d1c57fa493c41715568d238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xef84d3333674453099043522ad1e21adc1a04079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xf3f2bea94bfd973a81e1953664081d7ac6e8e364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xf98e03a2f551b39edf240070b22e0ec0f8cff81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xfbc3cf3d77e128282c6a99d5642f28081aaf2269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x014780652ee8cb9a8d227757307aae4656a794f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x06731177b4fa6df2b14a714736828e373e3ae03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x090883fca5b1ce812c13c7966c03479a39922ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1286ffab44ced25e96465f6a094684756f9c36fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x15f9199a421c19b9e69e77af0a319458352fc637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2277e5cafa9fa3dc56c3c9bd0b2c91af7e8ec101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x243e60870f63fd0eba2ad940408ac5c9f04adc6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x268f44b3153dd276e65b6f0bcd3c050449acd4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x28e33115e346a63525e6d96405d5ba8ca41d909f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e062c260f9e011e6d483d662d255cb3d013c791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x31d45803f3752566de6a49334eeda922356225b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3998441b4fe48fabfccd0de33db340909227e3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3bed0daf59a0a6fc8d2aefff015600641c4ed952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4240d18640932bcff44b213297b88d6328d408eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232063 | `0x46107ec44112675689053b96aea2127fd952bd47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232064 | `0x466795c0eae3c44a6dcbb6db0534f7019e0803a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4abb86f499f53e2b1f52302b2ba7bbb0a90a49a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4d1353beeef4a6a3d14f41b949ab7a58958f57c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4dfa49b9a519c626e265fdc181d6d4d4fd6fe645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4efa42048465b2e4ce7407f4ae808bf79ae5cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5489922f8312c812fbb7184ebf70b9dbfaeed9d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x567acfd331b20e718daa6e068a3683683ffcf051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6489f0f4d479d4b4afb503be5eb35cd3ff690edb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6bab446256cdbd4749db8bbd1302c40286f3fbf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7916afc0c0b327f018cb072c2de4351dff2065f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7a07d16324722595e940cbf173990103257af153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7b5156e67697fff104de1bb07f6c4d342d815069` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8dda5d9df107a38fb809b72bf8d65653ed3fce65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232065 | `0x920f77aebf215e611abacd0fd51a87f3927d05b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9bb7d556a4eb463b213135df3184303cbdd52e1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa9f92548491997ee0de26a03311535a4961ee8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xad4515a7443f063263c6bb507670e5dc27632815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadc0cc0c3ea12e57b8bcb7d7c8ac03222487e337` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbee97af61e9f6272b01ac864b6a05056d4bb5c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc1632fa5de9ece70667c00a08f82df642196e31e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc175dc39cef1ba945bcc5111a9b89c00b0557ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc1a69abb54a969e3f9a75644363d00e08d7185f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc47e4f2d113a51abf0dacef6687fe0dba70d09e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc6e3f46f441a1f32892279aeca19827431512aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc89049b10e0ab1829484f7a53b84ce842ac771a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xce0275ddaae25494cf1e4d9255b2acb3e689afcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd1505639bd6722ab79b0311e7a0ebe9ebbeaec85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232066 | `0xd4ad5ed9e1436904624b6db8b1be31f36317c636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdab095a21df1fba2c9255c2deb6949caf128f404` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232067 | `0xdd30f831beb51fbf33e3d579e5529d3b1495554f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xded58e263087f5b45d878bd9cf599b7a1a75d1e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe1ac9b5ae1dc4345c12972dba6fd73a7a38c8e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe4fd3f36b832dc67dd758fe1d58fd1194fa6e854` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232068 | `0xe81e78f946e34d13dcb6fd46a78713e0ffda5613` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf22559402b13d98db0b6c03931979244ab133b84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf7453828cc272d7ba255e9d455e80a4bf529a003` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-232069 | `0xf7e7285ebe537fdf1c1c4432aa1863721eac9a09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf98fd34483b0e7b0211301309222bb212658d82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb0a0193513cb372d805bf8753463d5092b5d844` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfceb0b391bda5f4a54e855ccf0ccb6bcf4c8be4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfef34c64d5ec13e04b0797d3d2e536137a0c44e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xff87f321bf3b575742718b38892877e0ea0678c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000000000bb1b11e5ac8099e92e366b64c133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6657d192273731c3cac646cc82d5f28d0cbe8ccc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x976f96c87ff686ced0c5dc575476463e8acd1efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc239950c389b1ac5c79a336705144cd46d3e5ccc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232070 | `0x21bb8709fe339b227795809b0cb8eb5a152ad7e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dc8156a2524d524e5825e7d73250fd0aa4d8828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232071 | `0x53691300635ce3ae575f91a186c2248a0e159830` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232072 | `0x74ffe45757db60b24a7574b3b5948dad368c2fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ca3a6f4a6260661fcb9a25584c796a1fa380112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x976f96c87ff686ced0c5dc575476463e8acd1efd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232073 | `0xc6ed4be4a69fd23eb6ab9c6f8b787748def2362e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd166f67f13c7d5c4b899fb1c980dceff278f029` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0175b064dc022fadf46bba7604dad5653cd7309` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-232074 | `0xfe87e2cc08a8801a12105d862aee71470883a76d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | berachain | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-232075 | `0x06731177b4fa6df2b14a714736828e373e3ae03b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-232076 | `0x4abb86f499f53e2b1f52302b2ba7bbb0a90a49a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x7a07d16324722595e940cbf173990103257af153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa9f92548491997ee0de26a03311535a4961ee8eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc47e4f2d113a51abf0dacef6687fe0dba70d09e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-232077 | `0xded58e263087f5b45d878bd9cf599b7a1a75d1e4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 100
- Live contracts: 8
- Unknown liveness contracts: 92
- Source-verified contracts: 14
- Currently scope-matched contracts retained as-is: 2
- Classification counts: currently scope matched=2, candidate review=10, exact address book overlap=1, source verified unclassified=1, unverified unclassified=86

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | ERC1967Proxy<br>`0x29e07197ccf70d0ac6cb0a3c307627819f5f2777` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| currently scope matched | ERC1967Proxy<br>`0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | ERC1967Proxy<br>`0x00f7a0c7e66f0e3a10d9e980e0854ebe0e308625` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | ERC1967Proxy<br>`0x454b85d03ffbf86c2bfb0dacd21d2687d36fe892` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | ERC1967Proxy<br>`0x5b351c9eed322616f76b8669176412e1808c06b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | ERC1967Proxy<br>`0x7ba560d09bd5379216f1e4393906701210cb63fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | LiquidityVault<br>`0xbfd645ffb504e968ae53869c9fdcbcb8d1189449` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | LiquidityVault<br>`0xfe87e2cc08a8801a12105d862aee71470883a76d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | Operator<br>`0x82b54a5f07a63d2d2d61a92b1a75839aac25a563` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | Operator<br>`0xe5141a7287582fd1cc178847f8fc3688198d1a8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | SimpleOracleStrategy<br>`0x063150b24807e836eacf8c8420b8922d10b5fb58` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| candidate review | SimpleOracleStrategy<br>`0x2913c40db3509a4bc3059ba79c5c6013efb9246a` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| exact address book overlap | ERC1967Proxy<br>`0xcd166f67f13c7d5c4b899fb1c980dceff278f029` | project_anchor | unknown | live | verified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| source verified unclassified | BookViewer<br>`0xd0175b064dc022fadf46bba7604dad5653cd7309` | retained_scope_excluded_inventory | unknown | live | verified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x0ef04b8a9fffd009f56bdae926ac2691f754ef4c` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x1da90f6de2f0d7d31259f56968432972ccedefd8` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x29dd2eb44967102daa34fcb798080feb5c4f12ca` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x3b9b437031a29d6f6f7bf1fc8f89d2ad6f95620c` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x3dc8156a2524d524e5825e7d73250fd0aa4d8828` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x404aac8d8616fd9caf5e652778fa9ecf0b47518b` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x43adf22a66c305cbcf083d948c4c5d35a06521e9` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x44b13a8737e84514bc300450f24405b0a5b161a3` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x4ffcd7e3d3aff2902cc5b6e01944aa2a892ce8ad` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x7a9ec7f7c727c699d9e56c62426cd54639ffd496` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x8547ed93af8fb775f742f10099cbfa53f7e3284b` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x896d2c2c672f1c3edc29fb712d1707b8291224b6` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x8f4705d8b63a0d9c498d0909ab33be972c43bbd7` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x99d89d224dc5879ff5a010e93f588f262b2cdb68` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xb1683571365f6a4168c55c261253998c9ab0d4a9` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xb75abf8e1dd3891426e4d7498594489270c1645d` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xc03065e3c2e913dcd049067b62c7f8dd8b91ab09` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xc79605b2a0399919ee49437edb7ada4eb5a8007e` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xca85326f4cba3a313e096c6f36fa8d1b4ea2c18a` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xd08e387542121f8305bb976e222cbb7c1a56dd77` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xd716ee6ffd36725c5fcf2cc712705dfed6c87fc8` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xef84d3333674453099043522ad1e21adc1a04079` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xf3f2bea94bfd973a81e1953664081d7ac6e8e364` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xf98e03a2f551b39edf240070b22e0ec0f8cff81b` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xfbc3cf3d77e128282c6a99d5642f28081aaf2269` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x014780652ee8cb9a8d227757307aae4656a794f5` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x06731177b4fa6df2b14a714736828e373e3ae03b` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x090883fca5b1ce812c13c7966c03479a39922ac8` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x1286ffab44ced25e96465f6a094684756f9c36fb` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x15f9199a421c19b9e69e77af0a319458352fc637` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x2277e5cafa9fa3dc56c3c9bd0b2c91af7e8ec101` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x243e60870f63fd0eba2ad940408ac5c9f04adc6b` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x268f44b3153dd276e65b6f0bcd3c050449acd4d1` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x28e33115e346a63525e6d96405d5ba8ca41d909f` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x2e062c260f9e011e6d483d662d255cb3d013c791` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x31d45803f3752566de6a49334eeda922356225b6` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x3998441b4fe48fabfccd0de33db340909227e3a3` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x3bed0daf59a0a6fc8d2aefff015600641c4ed952` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x4240d18640932bcff44b213297b88d6328d408eb` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x4abb86f499f53e2b1f52302b2ba7bbb0a90a49a8` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x4d1353beeef4a6a3d14f41b949ab7a58958f57c5` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x4dfa49b9a519c626e265fdc181d6d4d4fd6fe645` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x4efa42048465b2e4ce7407f4ae808bf79ae5cdd6` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x5489922f8312c812fbb7184ebf70b9dbfaeed9d4` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x567acfd331b20e718daa6e068a3683683ffcf051` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x6489f0f4d479d4b4afb503be5eb35cd3ff690edb` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x6bab446256cdbd4749db8bbd1302c40286f3fbf5` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x7916afc0c0b327f018cb072c2de4351dff2065f7` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x7a07d16324722595e940cbf173990103257af153` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x7b5156e67697fff104de1bb07f6c4d342d815069` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x8dda5d9df107a38fb809b72bf8d65653ed3fce65` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x9bb7d556a4eb463b213135df3184303cbdd52e1d` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xa9f92548491997ee0de26a03311535a4961ee8eb` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xad4515a7443f063263c6bb507670e5dc27632815` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xadc0cc0c3ea12e57b8bcb7d7c8ac03222487e337` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xbee97af61e9f6272b01ac864b6a05056d4bb5c8b` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xc1632fa5de9ece70667c00a08f82df642196e31e` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xc175dc39cef1ba945bcc5111a9b89c00b0557ef2` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xc1a69abb54a969e3f9a75644363d00e08d7185f3` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xc47e4f2d113a51abf0dacef6687fe0dba70d09e6` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xc6e3f46f441a1f32892279aeca19827431512aee` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xc89049b10e0ab1829484f7a53b84ce842ac771a8` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xca6c15b7b03ca69087b85b8ea690ed44a92eadd1` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xce0275ddaae25494cf1e4d9255b2acb3e689afcd` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xd1505639bd6722ab79b0311e7a0ebe9ebbeaec85` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xdab095a21df1fba2c9255c2deb6949caf128f404` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xded58e263087f5b45d878bd9cf599b7a1a75d1e4` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xe1ac9b5ae1dc4345c12972dba6fd73a7a38c8e4d` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xe4fd3f36b832dc67dd758fe1d58fd1194fa6e854` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xf22559402b13d98db0b6c03931979244ab133b84` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xf7453828cc272d7ba255e9d455e80a4bf529a003` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xf98fd34483b0e7b0211301309222bb212658d82d` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xfb0a0193513cb372d805bf8753463d5092b5d844` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xfceb0b391bda5f4a54e855ccf0ccb6bcf4c8be4f` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xfef34c64d5ec13e04b0797d3d2e536137a0c44e1` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xff87f321bf3b575742718b38892877e0ea0678c9` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x3dc8156a2524d524e5825e7d73250fd0aa4d8828` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x8ca3a6f4a6260661fcb9a25584c796a1fa380112` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x976f96c87ff686ced0c5dc575476463e8acd1efd` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xcd166f67f13c7d5c4b899fb1c980dceff278f029` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0xd0175b064dc022fadf46bba7604dad5653cd7309` | non_address_book | unknown | unknown | unverified | n/a | `0x88748318ce7fa8650f4c79c6a2e065ea5e0f5d67` |
| unverified unclassified | UnnamedContract<br>`0x7a07d16324722595e940cbf173990103257af153` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xa9f92548491997ee0de26a03311535a4961ee8eb` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |
| unverified unclassified | UnnamedContract<br>`0xc47e4f2d113a51abf0dacef6687fe0dba70d09e6` | non_address_book | unknown | unknown | unverified | n/a | `0x4587dd6356d7293e5f10db4d853332bd5b218c0b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Clober_Rebalancer_v03.pdf](https://github.com/clober-dex/clober-rebalancer/blob/master/audits/Clober_Rebalancer_v03.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [Clober_V2.pdf](https://github.com/clober-dex/v2-core/blob/master/audits/Clober_V2.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf](https://docs.clober.io/assets/files/Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 1 | high |
| [2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf](https://docs.clober.io/assets/files/2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf) | HickupHH | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf](https://docs.clober.io/assets/files/2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf) | HickupHH | Audit | 2026-02 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 3 | high |
| [Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf](https://docs.clober.io/assets/files/Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf](https://docs.clober.io/assets/files/SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf) | Spearbit | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf](https://docs.clober.io/assets/files/Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12920] Clober_Rebalancer_v03.pdf — matched: Three contracts in scope: Rebalancer.sol, SimpleOracleStrategy.sol, ERC6909Supply.sol. Audit date from cover page and time period.
- [12921] Clober_V2.pdf — no match: Extracted 15 contract/library names from the scope section listing files. Audit date from cover page: 28/02/24.
- [12922] Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf — matched: Two contracts in scope: Rebalancer.sol and SimpleOracleStrategy.sol. Audit date from cover page.
- [12923] 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf — matched: Scope table lists 6 contracts: Minter.sol, Operator.sol, Rebalancer.sol, SimpleOracleStrategy.sol, interfaces/*, oracle/ChainlinkOracle.sol, oracle/DatastreamOracle.sol. Interfaces are not extracted as they are not named contracts. Audit date is 22 January 2025 from the cover page.
- [12924] 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf — matched: Scope section lists 5 contracts in src folder. Audit date is 7 Feburary 2026 (end date of audit timeline).
- [12925] Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf — no match: Extracted 15 contract names from the scope section listing files. Audit date from cover page: 28/02/24.
- [12926] SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf — no match: Extracted contract names from findings context and file paths mentioned in the report. Audit date from cover page: February 11, 2023.
- [12927] Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf — no match: All 16 files listed in the 'Scoped Files' section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Clober_Rebalancer_v03.pdf | Rebalancer | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable)<br>0xb09684… (alternative) `0xb09684f5486d1af80699bbc27f14dd5a905da873` — deployed 2025-11-22 17:23:36+03 — liveness: live (current_address_book_code)<br>0x46107e… (alternative) `0x46107ec44112675689053b96aea2127fd952bd47` — deployed 2025-02-03 05:42:11+03 — liveness: live (current_address_book_code)<br>0x21bb87… (alternative) `0x21bb8709fe339b227795809b0cb8eb5a152ad7e1` — deployed 2026-04-15 06:08:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_Rebalancer_v03.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e07197ccf70d0ac6cb0a3c307627819f5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Clober_Rebalancer_v03.pdf | ERC6909Supply | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Controller | ambiguous — not counted | 0x536913… (alternative) `0x53691300635ce3ae575f91a186c2248a0e159830` — deployed 2026-01-20 16:28:54+03 — liveness: live (current_address_book_code)<br>0x067311… (alternative) `0x06731177b4fa6df2b14a714736828e373e3ae03b` — deployed 2025-03-31 09:31:05+03 — liveness: live (current_address_book_code)<br>Controller (alternative) `0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca` — deployed 2026-01-20 16:28:07+03 — liveness: live (current_address_book_code)<br>0x19b68a… (alternative) `0x19b68a2b909d96c05b623050c276fbd457de8e83` — deployed 2025-10-27 10:25:34+03 — liveness: live (current_address_book_code)<br>0x920f77… (alternative) `0x920f77aebf215e611abacd0fd51a87f3927d05b8` — deployed 2025-03-31 09:47:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2.pdf | BookManager | ambiguous — not counted | BookManager (alternative) `0x8ca3a6f4a6260661fcb9a25584c796a1fa380112` — deployed 2026-01-17 20:35:53+03 — liveness: live (proxy_unit_reachable)<br>0xded58e… (alternative) `0xded58e263087f5b45d878bd9cf599b7a1a75d1e4` — deployed 2025-03-20 18:23:19+03 — liveness: live (current_address_book_code)<br>0xd4ad5e… (alternative) `0xd4ad5ed9e1436904624b6db8b1be31f36317c636` — deployed 2024-12-11 14:01:43+03 — liveness: live (current_address_book_code)<br>0x74ffe4… (alternative) `0x74ffe45757db60b24a7574b3b5948dad368c2fdf` — deployed 2026-01-20 15:10:27+03 — liveness: live (current_address_book_code)<br>0x6657d1… (alternative) `0x6657d192273731c3cac646cc82d5f28d0cbe8ccc` — deployed 2025-10-27 10:19:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | BountyPlatform | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Book | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | BookId | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | FeePolicy | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Heap | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Lockers | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | OrderId | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | SignificantBit | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| Clober_V2.pdf | TotalClaimableMap | unmatched — not counted | — | listed in scope | no |
| Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf | Rebalancer | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable)<br>0xb09684… (alternative) `0xb09684f5486d1af80699bbc27f14dd5a905da873` — deployed 2025-11-22 17:23:36+03 — liveness: live (current_address_book_code)<br>0x46107e… (alternative) `0x46107ec44112675689053b96aea2127fd952bd47` — deployed 2025-02-03 05:42:11+03 — liveness: live (current_address_book_code)<br>0x21bb87… (alternative) `0x21bb8709fe339b227795809b0cb8eb5a152ad7e1` — deployed 2026-04-15 06:08:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e07197ccf70d0ac6cb0a3c307627819f5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | Minter | ambiguous — not counted | 0x466795… (alternative) `0x466795c0eae3c44a6dcbb6db0534f7019e0803a7` — deployed 2025-02-03 05:51:10+03 — liveness: live (current_address_book_code)<br>0xfe87e2… (alternative) `0xfe87e2cc08a8801a12105d862aee71470883a76d` — deployed 2026-04-15 06:09:00+03 — liveness: live (current_address_book_code)<br>0xb1251b… (alternative) `0xb1251bf43bb7de76de7e6ce7b64af843dfc9d242` — deployed 2025-11-22 17:35:06+03 — liveness: live (current_address_book_code)<br>Minter (alternative) `0x2092a58c47f3444c82871ecdd5ea1e96c80c59d1` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | Operator | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x00f7a0c7e66f0e3a10d9e980e0854ebe0e308625` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code)<br>0xf7e728… (alternative) `0xf7e7285ebe537fdf1c1c4432aa1863721eac9a09` — deployed 2025-02-03 05:51:15+03 — liveness: live (current_address_book_code)<br>0xcbd3c0… (alternative) `0xcbd3c0b81a9a36356a3669a7f60a0d2f0846195b` — deployed 2025-11-22 17:23:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | Rebalancer | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable)<br>0xb09684… (alternative) `0xb09684f5486d1af80699bbc27f14dd5a905da873` — deployed 2025-11-22 17:23:36+03 — liveness: live (current_address_book_code)<br>0x46107e… (alternative) `0x46107ec44112675689053b96aea2127fd952bd47` — deployed 2025-02-03 05:42:11+03 — liveness: live (current_address_book_code)<br>0x21bb87… (alternative) `0x21bb8709fe339b227795809b0cb8eb5a152ad7e1` — deployed 2026-04-15 06:08:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e07197ccf70d0ac6cb0a3c307627819f5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope table | no |
| 2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf | DatastreamOracle | unmatched — not counted | — | listed in scope table | no |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | Operator | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x00f7a0c7e66f0e3a10d9e980e0854ebe0e308625` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code)<br>0xf7e728… (alternative) `0xf7e7285ebe537fdf1c1c4432aa1863721eac9a09` — deployed 2025-02-03 05:51:15+03 — liveness: live (current_address_book_code)<br>0xcbd3c0… (alternative) `0xcbd3c0b81a9a36356a3669a7f60a0d2f0846195b` — deployed 2025-11-22 17:23:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | LiquidityVault | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xca1f6e4ae690d06e3bf943b9019c5ca060c0b834` — deployed 2026-01-26 18:07:01+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | SimpleOracleStrategy | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x29e07197ccf70d0ac6cb0a3c307627819f5f2777` — deployed 2026-01-26 18:07:01+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope | no |
| 2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf | DatastreamOracle | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Controller | ambiguous — not counted | 0x536913… (alternative) `0x53691300635ce3ae575f91a186c2248a0e159830` — deployed 2026-01-20 16:28:54+03 — liveness: live (current_address_book_code)<br>0x067311… (alternative) `0x06731177b4fa6df2b14a714736828e373e3ae03b` — deployed 2025-03-31 09:31:05+03 — liveness: live (current_address_book_code)<br>Controller (alternative) `0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca` — deployed 2026-01-20 16:28:07+03 — liveness: live (current_address_book_code)<br>0x19b68a… (alternative) `0x19b68a2b909d96c05b623050c276fbd457de8e83` — deployed 2025-10-27 10:25:34+03 — liveness: live (current_address_book_code)<br>0x920f77… (alternative) `0x920f77aebf215e611abacd0fd51a87f3927d05b8` — deployed 2025-03-31 09:47:33+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BookManager | ambiguous — not counted | BookManager (alternative) `0x8ca3a6f4a6260661fcb9a25584c796a1fa380112` — deployed 2026-01-17 20:35:53+03 — liveness: live (proxy_unit_reachable)<br>0xded58e… (alternative) `0xded58e263087f5b45d878bd9cf599b7a1a75d1e4` — deployed 2025-03-20 18:23:19+03 — liveness: live (current_address_book_code)<br>0xd4ad5e… (alternative) `0xd4ad5ed9e1436904624b6db8b1be31f36317c636` — deployed 2024-12-11 14:01:43+03 — liveness: live (current_address_book_code)<br>0x74ffe4… (alternative) `0x74ffe45757db60b24a7574b3b5948dad368c2fdf` — deployed 2026-01-20 15:10:27+03 — liveness: live (current_address_book_code)<br>0x6657d1… (alternative) `0x6657d192273731c3cac646cc82d5f28d0cbe8ccc` — deployed 2025-10-27 10:19:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BaseHook | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BountyPlatform | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Book | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | BookId | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | FeePolicy | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Heap | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Hooks | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Lockers | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | OrderId | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | SignificantBit | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf | TotalClaimableMap | unmatched — not counted | — | listed in scope | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OrderBook | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OrderNFT | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | SegmentedSegmentTree464 | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OctopusHeap | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | MarketFactory | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | GeometricPriceBook | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | ArithmeticPriceBook | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | StableMarketDeployer | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | VolatileMarketDeployer | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | MarketRouter | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | SignificantBit | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | DirtyUint64 | unmatched — not counted | — | mentioned in findings context | no |
| SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf | OrderKey | unmatched — not counted | — | mentioned in findings context | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | book_manager | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | controller | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | book | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | book_key | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | fee_policy | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | hooks | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | hooks_list | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | lockers | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | order_id | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | segmented_segment_tree | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | storage_map | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | tick | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | tick_bitmap | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | total_claimable_map | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | math | unmatched — not counted | — | listed in scope | no |
| Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf | packed_felt252 | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x8ca3a6f4a6260661fcb9a25584c796a1fa380112` | BookManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcd166f67f13c7d5c4b899fb1c980dceff278f029` | BookViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca` | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2092a58c47f3444c82871ecdd5ea1e96c80c59d1` | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x00f7a0c7e66f0e3a10d9e980e0854ebe0e308625` | Operator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 113 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 60 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=5

Zero-match audit list:

- [12921] Clober_V2.pdf
- [12925] Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf
- [12926] SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf
- [12927] Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf

Fork inheritance lineage and inherited audits are included when available.
