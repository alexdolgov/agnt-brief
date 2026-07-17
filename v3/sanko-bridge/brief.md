# Agentic Audit Brief: Sanko Bridge

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Sanko Bridge (`sanko-bridge`)
- Website: [https://sanko.xyz/](https://sanko.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 120 unique implementations (120 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,699,974.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for Sanko Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 120 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 118
- Unique implementations: 120
- Raw deployments: 120
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DMT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163825 | `0x0be47c0355306aff6166a62b023ae0b2bb85ecb0` | ⚠️ Unaudited |
| DMTStake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163835 | `0x2d7a092036cc1e39ac37a4c4c7f6f9aadcfd5f80` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (118)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163821 | `0x0484a87b144745a2e5b7c359552119b6ea2917a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163822 | `0x096760f208390250649e3e8763348e783aef5562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163823 | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163824 | `0x0b9857ae2d4a3dbe74ffe1d7df045bb7f96e4840` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163826 | `0x108b25170319f38dbed14ca9716c54e5d1ff4623` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163827 | `0x1294b86822ff4976bfe136cb06cf43ec7fcf2574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163828 | `0x16101a84b00344221e2983190718bfaba30d9cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163829 | `0x1c479675ad559dc151f6ec7ed3fbf8cee79582b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163830 | `0x211e1c4c7f1bf5351ac850ed10fd68cffcf6c21b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163831 | `0x21903d3f8176b1a0c17e953cd896610be9ffdfa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163832 | `0x23122da8c581aa7e0d07a36ff1f16f799650232f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163833 | `0x24b68936c13a414cd91437ae7aa730321b9ff159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163834 | `0x2b360a9881f21c3d7aa0ea6ca0de2a3341d4ef3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163836 | `0x2e53e790dda89a22e3c6ee330ac059c05d62bea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163837 | `0x2ec7bc552ce8e51f098325d2fcf0d3b9d3d2a9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163838 | `0x2f285781b8d58678a3483de52d618198e4d27532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163839 | `0x34481fc5cb6b1907fbb53a4acdce8a1693ff981f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163840 | `0x38f918d0e9f1b721edaa41302e399fa1b79333a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163841 | `0x3afeb1ea760eed35d224c531d531c30ec6ae13e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163842 | `0x3df948c956e14175f43670407d5796b95bb219d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163843 | `0x408da76e87511429485c32e4ad647dd14823fdc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163844 | `0x40ffd844677caf682e0f25389e5a6ed93f097ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163845 | `0x446696a44b13d7b03dbee837610692d2a71d6232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163846 | `0x45af9ed1d03703e480ce7d328fb684bb67da5049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163847 | `0x45e5caea8768f42b385a366d3551ad1e0cbfab17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163848 | `0x4808a05f5a7605f88d0c2c5af471ad7094c26f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163849 | `0x49940929c7ca9b50ff57a01d3a92817a414e6b9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163850 | `0x4a2ba922052ba54e29c5417bc979daaf7d5fe4f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163851 | `0x4c7708168395aea569453fc36862d2ffcdac588c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163852 | `0x4dbd4fc535ac27206064b68ffcf827b0a60bab3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163853 | `0x505421b85ae7f906e8807bf59ee3da62e894cdc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163854 | `0x525c2aba45f66987217323e8a05ea400c65d06dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163855 | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163856 | `0x5414dc7c8db4bedbf3c772768ae1f5e984bdf47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163857 | `0x575d32f7ff0c72921645e302cb14d2757e300786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163858 | `0x5ba1e12693dc8f9c48aad8770482f4739beed696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163859 | `0x5cef436971bad980453e993d30dd6879ea1fe5ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163860 | `0x5dd84fb52a27b9d5b760b0373fdeda52d10d3c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163861 | `0x5e1ee626420a354bbc9a95fea1bad4492e3bcb86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163862 | `0x5ef0d09d1e6204141b4d37530808ed19f60fba35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163863 | `0x6272c534f4b2a34555b82f17d22f884f417be3a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163864 | `0x65a59d67da8e710ef9a01eca37f83f84aedec416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163865 | `0x65f07c7d521164a4d5dac6eb8fac8da067a3b78f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163866 | `0x6bebc4925716945d46f0ec336d5c2564f419682c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163867 | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163868 | `0x6c97864ce4bef387de0b3310a44230f7e3f1be0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163869 | `0x6e244cd02bbb8a6dbd7f626f05b2ef82151ab502` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163870 | `0x715d99480b77a8d9d603638e593a539e21345fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163871 | `0x718e2a83775343d5c0b1ee0676703cbaf30cafcd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163872 | `0x722e8bdd2ce80a4422e880164f2079488e115365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163873 | `0x72ce7ae23d924b124a70c587adc6a2a4efcff1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163874 | `0x72ce9c846789fdb6fc1f34ac4ad25dd9ef7031ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163875 | `0x72f54dad37a024e389294747f8dd0fc7fc85cfa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163876 | `0x7626841cb6113412f9c88d3adc720c9fac88d9ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163877 | `0x7b79995e5f793a07bc00c21412e50ecae098e7f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163878 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163879 | `0x8315177ab297ba92a06054ce80a67ed4dbd7ed3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163880 | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163881 | `0x847186fbeebf41eee9c230360d0bf8585c0db57b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163882 | `0x8896d23afea159a5e9b72c9eb3dc4e2684a38ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163883 | `0x89eea6956ed4af6161efe2e80d14ffb9f05107c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163884 | `0x8b0e6f19ee57089f7649a455d89d7bc6314d04e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163885 | `0x8b6990830cf135318f75182487a4d7698549c717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163886 | `0x8bbf7d278069b1a7337d607906f31e7fac0d9cb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163887 | `0x8ca1e1ac0f260bc4da7dd60aca6ca66208e642c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163888 | `0x902b3e5f8f19571859f4ab1003b960a5df693aff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163889 | `0x909b042b88f587d745dbf52e2569545376f6eaa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163890 | `0x980b62da83eff3d4576c647993b0c1d7faf17c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163891 | `0x9a59edf7080fda05396373a85ddbf2cebdb81cd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163892 | `0x9ad46fac0cf7f790e5be05a0f15223935a0c0ada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163893 | `0x9fdd1c4e4aa24eec1d913fabea925594a20d43c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163894 | `0xa0a8537a683b49ba4bbe23883d984d4684e0acdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163895 | `0xa115146782b7143fadb3065d86eacb54c169d092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163896 | `0xa2a055fa56b7b4d36f0320c5c65562854873e5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163897 | `0xa3a7b6f88361f48403514059f1f16c8e78d60eec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163898 | `0xa8ad8d7e13cbf556ee75cb0324c13535d8100e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163899 | `0xa8f7dded54a726eb873e98bff2c95abf2d03e560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163900 | `0xa9f2c89715a571f22be2421d310978cc8b6bdc2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163901 | `0xaae29b0366299461418f5324a79afc425be5ae21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163902 | `0xada790b026097bfb36a5ed696859b97a96ced92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163903 | `0xaf4159a80b6cc41ed517db1c453d1ef5c2e4db72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163904 | `0xaf574bbe2139e39f560c4db1a118e1245ac0983d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163905 | `0xb2535b988dce19f9d71dfb22db6da744acac21bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163906 | `0xb4951c0c41cfceb0d195a95fe66280457a80a990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163907 | `0xb4fbf271143f4fbf7b91a5ded31805e42b2208d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163908 | `0xba2f7b6eae1f9d174199c5e4867b563e0eac40f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163909 | `0xbc54f85b1c025c59d8405e51f95aaf2a52533d8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163910 | `0xbf544970e6bd77b21c6492c281ab60d0770451f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163911 | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163912 | `0xc1ebd02f738644983b6c4b2d440b8e77dde276bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163913 | `0xc4448b71118c9071bcb9734a0eac55d18a153949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163914 | `0xc840838bc438d73c16c2f8b22d2ce3669963cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163915 | `0xce18836b233c83325cc8848ca4487e94c6288264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163916 | `0xcee284f754e854890e311e3280b767f80797180d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163917 | `0xcf9bab7e53dde48a6dc4f286cb14e05298799257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163918 | `0xcfb1f08a4852699a979909e22c30263ca249556d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163919 | `0xd18b1c6376633000c85541f7c15c591ffe5f9556` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163920 | `0xd4b80c3d7240325d18e645b49e6535a3bf95cc58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163921 | `0xd570ace65c43af47101fc6250fd6fc63d1c22a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163922 | `0xd80810638dbdf9081b72c1b33c65375e807281c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163923 | `0xd92023e9d9911199a6711321d1277285e6d4e2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163924 | `0xda52b25ddb0e3b9cc393b0690ac62245ac772527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163925 | `0xdb2d15a3eb70c347e0d2c2c7861cafb946baab48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163926 | `0xdbfc2ffb44a5d841ab42b0882711ed6e5a9244b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163927 | `0xded9ad2e65f3c4315745dd915dbe0a4df61b2320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163928 | `0xe1080224b632a93951a7cfa33eeea9fd81558b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163929 | `0xe39ab88f8a4777030a534146a9ca3b52bd5d43a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163930 | `0xe4e2121b479017955be0b175305b35f312330bae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163931 | `0xe5b9d8d42d656d1dcb8065a6c012fe3780246041` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163932 | `0xe7362d0787b51d8c72d504803e5b1d6dcda89540` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163933 | `0xe8e54baa020d94dd50e0f44eda0df73465bd3c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163934 | `0xe937b0ad5b1af279ed90d1a425e424f756cd0763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163935 | `0xec377b42712608b0356cc54da81b2be1a4982bab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163936 | `0xf2f2f6e6224e8aa86963ad86de431deef13eb867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163937 | `0xf5ffd11a55afd39377411ab9856474d2a7cb697e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163938 | `0xf9f2e89c8347bd96742cc07095dee490e64301d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163939 | `0xfb209827c58283535b744575e11953dcc4bead88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | unit-163940 | `0xff4a24b22f94979e9ba5f3eb35838aa814bad6f1` | ❓ Unverified |

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
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 118 |

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
