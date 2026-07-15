# Agentic Audit Brief: Neku

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Neku (`neku`)
- Website: [https://nekufinance.gitbook.io/neku-finance/](https://nekufinance.gitbook.io/neku-finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, moonriver
- Contract surface: 169 unique implementations (267 raw deployments)
- Coverage basis: 0/34 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,598,052.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Neku. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 34 contract row(s) across arbitrum, moonriver. Structural roles: 34 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 34
- Structural roles: core (34)
- Contract kinds: contract (34)
- Detected standards: erc20 (34), ownable (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CErc20Delegator (`0x19714e...50ab5f`, chain 42161)
- CErc20Delegator (`0x2907c3...a9b43b`, chain 42161)
- CErc20Delegator (`0x3631de...e93ea8`, chain 42161)
- CErc20Delegator (`0x3823d2...31f28b`, chain 42161)
- CErc20Delegator (`0x38a069...83cd1c`, chain 42161)
- CErc20Delegator (`0x3ae83a...0ed251`, chain 42161)
- CErc20Delegator (`0x655773...c01912`, chain 42161)
- CErc20Delegator (`0x660474...44396f`, chain 42161)
- CErc20Delegator (`0x679818...bbe205`, chain 42161)
- CErc20Delegator (`0x70d279...c814a3`, chain 42161)
- CErc20Delegator (`0x70faf3...6af0db`, chain 42161)
- CErc20Delegator (`0x71ad16...32e920`, chain 42161)
- CErc20Delegator (`0x7fd875...f52163`, chain 42161)
- CErc20Delegator (`0x815330...5a4c4a`, chain 42161)
- CErc20Delegator (`0x82015c...33eb20`, chain 42161)
- CErc20Delegator (`0x874a86...d41554`, chain 42161)
- CErc20Delegator (`0x8e9027...151b07`, chain 42161)
- CErc20Delegator (`0x9ac8f7...f50caf`, chain 42161)
- CErc20Delegator (`0xa9958d...cae784`, chain 42161)
- CErc20Delegator (`0xb5dc00...9bfeea`, chain 42161)
- CErc20Delegator (`0xba7dab...30e6b3`, chain 42161)
- CErc20Delegator (`0xbd1bf6...8f3296`, chain 42161)
- CErc20Delegator (`0xbd65ae...c96915`, chain 42161)
- CErc20Delegator (`0xc7dec2...7494ea`, chain 42161)
- CErc20Delegator (`0xcb2b0b...daf95a`, chain 42161)
- CErc20Delegator (`0xccb8da...98aa15`, chain 42161)
- CErc20Delegator (`0xd73ed2...37bdd1`, chain 42161)
- CErc20Delegator (`0xdbfd9c...c11a26`, chain 42161)
- CErc20Delegator (`0xdf19d7...e17bae`, chain 42161)
- CErc20Delegator (`0xee2a89...f6e07f`, chain 42161)
- CErc20Delegator (`0xfd4224...2f0553`, chain 42161)
- CEther (`0xbc4a19...eccb8b`, chain 42161)
- Comp (`0x3bf088...4be840`, chain 42161)
- WrappedToken (`0xa4cc4a...997ce3`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 34; live-surface rows included: 34 (34 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 34/34 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/34 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 34 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 135 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 34 of 169 unique; 135 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/49
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 120
- Unique implementations: 169
- Raw deployments: 267
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

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248773 | `0x19714e...50ab5f` | ⚠️ Unaudited |
| CErc20Delegator | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x1ea643...dbb2fe`; arbitrum `0x2fda3a...209bce`; arbitrum `0x374aed...b2799a`; arbitrum `0x3d2c13...d50d5b`; arbitrum `0xa7ad08...1acd48`; arbitrum `0xdac3b1...070a29`; arbitrum `0xdee7e9...79c68c` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248774 | `0x2907c3...a9b43b` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248775 | `0x3631de...e93ea8` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248776 | `0x3823d2...31f28b` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248777 | `0x38a069...83cd1c` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248778 | `0x3ae83a...0ed251` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248780 | `0x655773...c01912` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248781 | `0x660474...44396f` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248782 | `0x679818...bbe205` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248783 | `0x70d279...c814a3` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248784 | `0x70faf3...6af0db` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248785 | `0x71ad16...32e920` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248786 | `0x7fd875...f52163` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248787 | `0x815330...5a4c4a` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248788 | `0x82015c...33eb20` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248789 | `0x874a86...d41554` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248790 | `0x8e9027...151b07` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248791 | `0x9ac8f7...f50caf` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248793 | `0xa9958d...cae784` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248794 | `0xb5dc00...9bfeea` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248795 | `0xba7dab...30e6b3` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248797 | `0xbd1bf6...8f3296` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248798 | `0xbd65ae...c96915` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248799 | `0xc7dec2...7494ea` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248800 | `0xcb2b0b...daf95a` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248801 | `0xccb8da...98aa15` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248802 | `0xd73ed2...37bdd1` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248803 | `0xdbfd9c...c11a26` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248805 | `0xdf19d7...e17bae` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248807 | `0xee2a89...f6e07f` | ⚠️ Unaudited |
| CErc20Delegator | token | project_anchor | own_supporting | 0 | arbitrum | unit-248809 | `0xfd4224...2f0553` | ⚠️ Unaudited |
| CEther | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248796 | `0xbc4a19...eccb8b` | ⚠️ Unaudited |
| Comp | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-248779 | `0x3bf088...4be840` | ⚠️ Unaudited |
| ComptrollerG7 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0983b4...8e2613`; arbitrum `0xd5b649...15dc6b` | ⚠️ Unaudited |
| GetMakerts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 2 deployments: moonriver `0x1227df...14fb43`; moonriver `0xdd5a13...bdef07` | ⚠️ Unaudited |
| GetPoolData | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 3 deployments: moonriver `0x2b2433...c8614d`; moonriver `0x686f59...09b5ef`; moonriver `0x73ad70...b49660` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1e930c...a9641e` | ⚠️ Unaudited |
| NEKUController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: moonriver `0x3fea51...99c33f`; moonriver `0x9e944b...1dfadc`; moonriver `0xe6f7c6...4e8a0c`; moonriver `0xec47b7...5df79d` | ⚠️ Unaudited |
| NEKUHarvest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x811dde...b6aacb` | ⚠️ Unaudited |
| NEKUVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 15 deployments: moonriver `0x048de9...af3fa2`; moonriver `0x151372...c1b58c`; moonriver `0x199e05...59f8e4`; moonriver `0x1d7b1b...53844c`; moonriver `0x1e42fe...f16c57`; moonriver `0x262d75...976b85`; moonriver `0x658887...5b57a1`; moonriver `0x7d49d0...2a035e`; moonriver `0xa703a9...c825b7`; moonriver `0xaa4e2f...4143ce`; moonriver `0xaa600b...5bb993`; moonriver `0xc39641...a5d3e8`; moonriver `0xd9fa3b...3ad086`; moonriver `0xe39283...7d7546`; moonriver `0xf52a0e...7a904a` | ⚠️ Unaudited |
| OracleObserver | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8e3c6...d57c98` | ⚠️ Unaudited |
| PledgePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 4 deployments: moonriver `0x133dae...c33634`; moonriver `0x4b1037...9b9812`; moonriver `0x654d0b...6ce871`; moonriver `0x85f6b7...33cbdf` | ⚠️ Unaudited |
| PledgePoolVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 10 deployments: moonriver `0x00c535...272512`; moonriver `0x08b7fb...1f0314`; moonriver `0x0bb5de...f0ba56`; moonriver `0x26ffe4...02aa0c`; moonriver `0x270e4c...56e98a`; moonriver `0x3ebf7a...fd1ce8`; moonriver `0x638278...c1062d`; moonriver `0x66d2ff...e7863b`; moonriver `0xb1ec80...0de994`; moonriver `0xd21f1d...441e2e` | ⚠️ Unaudited |
| PledgeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 31 deployments: moonriver `0x1135ad...e54317`; moonriver `0x1b9eda...aa2c85`; moonriver `0x25db93...f0c0f2`; moonriver `0x2a5c88...cad7e4`; moonriver `0x2ed971...1b246c`; moonriver `0x3947c8...490da1`; moonriver `0x40a156...672091`; moonriver `0x5aba0e...4b0c16`; moonriver `0x68b01c...d08b54`; moonriver `0x6ab485...84cb7f`; moonriver `0x6da955...4e0305`; moonriver `0x82a62d...357d9e`; moonriver `0x838ef5...ebe630`; moonriver `0x850560...7cd501`; moonriver `0xa5af32...7571bc`; moonriver `0xaab943...14e760`; moonriver `0xb58a20...b48f5d`; moonriver `0xb7da4c...dce68f`; moonriver `0xb9baab...79bc73`; moonriver `0xc6cebc...f1f4fe`; moonriver `0xccc083...9db044`; moonriver `0xcd6347...256ce6`; moonriver `0xcde634...974376`; moonriver `0xcefc77...62820a`; moonriver `0xdba425...859a22`; moonriver `0xdc00dd...649047`; moonriver `0xec8d3c...cd4cf3`; moonriver `0xf23bac...e6071c`; moonriver `0xf7e5df...c92e9b`; moonriver `0xfb6046...fa8103`; moonriver `0xfebdf2...52e431` | ⚠️ Unaudited |
| StableMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb57524...6a4229` | ⚠️ Unaudited |
| StrategyForSolarLp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 30 deployments: moonriver `0x0588c6...46ae96`; moonriver `0x078687...a1e50c`; moonriver `0x10e495...eb9089`; moonriver `0x1c8cc3...79538b`; moonriver `0x2ef4b1...4d2f99`; moonriver `0x37aae8...4d2411`; moonriver `0x390713...ccd529`; moonriver `0x3ca10d...ecd9b9`; moonriver `0x3fcb6b...b26237`; moonriver `0x4f78af...f3fd34`; moonriver `0x50652d...55caa2`; moonriver `0x52a360...1dee37`; moonriver `0x55fab5...ecae16`; moonriver `0x5d86be...507878`; moonriver `0x65f23d...add497`; moonriver `0x68c24d...b9d96a`; moonriver `0xa40a12...8373e4`; moonriver `0xa7d778...d8016b`; moonriver `0xa8293b...1b331a`; moonriver `0xad2baf...6df6ae`; moonriver `0xb311f6...797f1b`; moonriver `0xb79319...67f335`; moonriver `0xbf81af...acfacb`; moonriver `0xc11784...fff94b`; moonriver `0xc69302...119b8e`; moonriver `0xd12370...435e9b`; moonriver `0xe4b7d8...62e046`; moonriver `0xe970f3...9cfd5b`; moonriver `0xee3090...ce8552`; moonriver `0xf0ed92...a6194d` | ⚠️ Unaudited |
| TVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c02f3...d3691f` | ⚠️ Unaudited |
| WrappedToken | token | project_anchor | own_supporting | 0 | arbitrum | unit-248792 | `0xa4cc4a...997ce3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (120)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x02ef4c...1cc9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x09d2f3...6f9d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c233e...3607ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0f5bf2...85ec1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0f81bb...9cec87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x10a90c...99e87d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x10ca09...f5e9f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x17fc53...9350d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x18045b...3f4233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1985f3...fe00c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1a8ef8...6017ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1cfffd...099cc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d96ac...a1109a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1e08ae...7df0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1ff6f6...a2e72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x20187f...090317` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x224137...5f9c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2259cd...21a027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2776ed...b72077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x28b4d2...74a155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2dbd8d...6966ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2eaa6c...b6eb8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x307fd8...3f1c45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3153a0...aebba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x322b2e...f64d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x34c0f1...61d834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x37960e...6ffc1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3805b1...74219b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3fd51f...af7abf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x40a327...d3405f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x435d1c...73bf86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x440852...751ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x440b54...5926ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x44ed29...52374b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x46f43d...9c9417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x47206e...276c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x480b30...ead3cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4831b6...27a10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4bfa40...7c4940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4c7c95...dd4361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4cfeb7...e9a02a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x50c110...5c18f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x527d10...9f9fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x535cd5...13c662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x563f5d...5d8d93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x58436d...2220bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b8725...bab617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5c027c...f2b30e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5c5609...525ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5cb437...ed600a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5f9a3f...f87e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x61a53a...99a12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x644781...61938c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x644a85...3c7cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x64e2cd...9ecb82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x65a8fe...a953c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x66f02f...03ef44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6bbbb3...7578eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6ecfd0...6445bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7482f0...77b101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7485e3...980f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x757207...680d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x797b9a...922bf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7aed16...930798` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7b99bc...62ba15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7daa3e...97ac2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x815f24...86efec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x868935...673486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8b8107...8fe930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8dfd47...5ec698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x91385b...057a3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x91b6a9...b4a3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9220c2...d77d3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x92d098...f33fbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x93a681...2f9193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x997b95...b18035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9a0a85...06f118` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9b068c...4f2d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa0f191...ba5a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa49c30...393660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa49f4c...afd82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa73ab9...60dd18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xa92b9d...03face` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xac5812...53cfaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xafe7ed...9536a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb12624...62fd3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb1bbd4...602ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb2ebfe...abe797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb35172...a1990c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb49552...fa48f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb5001f...9a4f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbc9c02...25dafd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbd0956...f5c443` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc3976d...a067b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc7aa01...b1c1b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xca9a77...caf396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd4784c...83abe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd5f781...ff59c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd86a40...481f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xde9785...010f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdea086...a0d28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe18cc9...92035a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe1f8c5...bd76cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe454d0...e9502a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe7f6d6...cb0f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xea9853...93163f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xebd1c0...ec272e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xecb9ce...f720c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf261b3...b38806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xf815e0...7b6d21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfbd90a...c6b7fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0140d4...57a814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bddee...b4d250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2703e4...6774b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ba34d...730629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x87746c...6f0d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893c6f...759ba5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xae2218...44f9e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbb52d...0bd0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4a982...462b6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/nekufinance](https://skynet.certik.com/projects/nekufinance) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3021] skynet.certik.com/projects/nekufinance — no match: Only two contract files explicitly listed in audited files; other 18 files not named in provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/nekufinance | CarefulMath | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/nekufinance | Exponential | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x19714e...50ab5f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2907c3...a9b43b` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3631de...e93ea8` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3823d2...31f28b` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38a069...83cd1c` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3ae83a...0ed251` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x655773...c01912` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x660474...44396f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x679818...bbe205` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x70d279...c814a3` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x70faf3...6af0db` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x71ad16...32e920` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7fd875...f52163` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x815330...5a4c4a` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x82015c...33eb20` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x874a86...d41554` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8e9027...151b07` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9ac8f7...f50caf` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa9958d...cae784` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb5dc00...9bfeea` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xba7dab...30e6b3` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbd1bf6...8f3296` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbd65ae...c96915` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc7dec2...7494ea` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcb2b0b...daf95a` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xccb8da...98aa15` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd73ed2...37bdd1` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdbfd9c...c11a26` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdf19d7...e17bae` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xee2a89...f6e07f` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfd4224...2f0553` | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbc4a19...eccb8b` | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3bf088...4be840` | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa4cc4a...997ce3` | WrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 120 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3021] skynet.certik.com/projects/nekufinance

Fork inheritance lineage and inherited audits are included when available.
