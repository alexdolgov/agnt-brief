# Agentic Audit Brief: Bitmex

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

- Project: Bitmex (`bitmex`)
- Website: [https://www.bitmex.com](https://www.bitmex.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 179 unique implementations (179 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $937,853,380.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Bitmex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: ownable (2), erc20 (1), pausable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BMEX (`0xb113c6cf239f60d380359b762e95c13817275277`, chain 1)
- Vesting (`0x65a35599a063f3ca882b1550a328d8a543d28232`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 177 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 179 unique; 177 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/14
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 165
- Unique implementations: 179
- Raw deployments: 179
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

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BankFrickCompliance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc074583b5c9d07b46d791b1da1c3393a62de0996` | ⚠️ Unaudited |
| BMEX | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380625 | `0xb113c6cf239f60d380359b762e95c13817275277` | ⚠️ Unaudited |
| ClaimTopicsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x003288d46471359320c9cc47696a55e6c1698bb8` | ⚠️ Unaudited |
| CountryRestrictions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7db90c31ac3cec5c60348d4e6baba4c1a16706d3` | ⚠️ Unaudited |
| DefaultCompliance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x362618d8f3df95686acb46d2f2da91d53bed4e04` | ⚠️ Unaudited |
| IdentityRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027d98795d95b6d5824f1cc585d9fb0a2a1d3588` | ⚠️ Unaudited |
| IdentityRegistryStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e0476e20c92819cc8c9d9525982ffe3fe5e23af` | ⚠️ Unaudited |
| ImplementationAuthority | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ef484a9becb9b2fcd4a540ccd5ba805c58d5659` | ⚠️ Unaudited |
| LimitsDMAndCountryRestrictions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23daf74c10b414dc34bd860d88f87f2b1cf77b7f` | ⚠️ Unaudited |
| POWRAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebb51f6a5676fbba87fd467fd0f67a0c0a00d34` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x287a4ce8e2c4f045dea7bc7c0cd7f1cbc749b28d` | ⚠️ Unaudited |
| TrustedIssuersRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d147f13f225835136dc99553c9f04626f5959f3` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf771d937c8c1772d1070ae83bca5bc7525b7c71d` | ⚠️ Unaudited |
| Vesting | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380624 | `0x65a35599a063f3ca882b1550a328d8a543d28232` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (165)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03813099348890e24ba73b1aaf0bf66f0e8276ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b8f82db278318f43a9351987a7e03292c1bb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09cc0a8b7d041cac4ad8fb5d2d68d8ea4f609d4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17b4795c98598a04e4f371a19fc7bf85492277b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ac5c2f4a9b15b7ec8bad8c06a275767cf34bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d2df75c2f232a4c2e3b47e9b2c2070523e50d19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21958e4788f9c70085fd7e7e5d345ed897461b1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2339d22dd162e61c292a3f61df6238540997cbce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26c3fe60b5f8b16bc96b43b5139ba73964b2c762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28384c92af6ac686ca934ddc3874356611ff048c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289bf2ebada28684041d3d643322a5fc53e5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28ee3d3b2ab257725f260c446d2e728859ded206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ac160abdc1e2f1f3b2226b4c370a3d51f17848e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2afbef333aa36805b4e83e31916147c1d6209321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ec546c9d487ac8cb7bf5b32c521e1af6240d1d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef8644bfc95600b7074f31747546aba8d9b362c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f95503d8908437f990306fe86c360e46844ca34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3054c53193f7c8624628a5ce0949c56da94443d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3128b1a16710754f91d0817cf24177bd6ff5b891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x317312c42bfddf09cde377cb4cee76ed8fc132c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3374ba4a1629097325134ad00742555bac455c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3760be2a8e73cf2a135eff0c286f41673b1f3568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383a16b166b5209613e4122bdc738c649059df30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x391c198e787a3bd2e362f97869e5084874bd6314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39f0355aae8ef5a1efd2caf3896b2dfbd141b1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e39c1e21d9f7c9c01322c57d57643d3c9a87122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ef624b83c20634b2c2cde94b1f2c26d13bb1388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4003252ae82768daab83b3d14b13a5fa8f0c0c60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e1efa8e5fcc0030e5772e089352a9a7dc64925` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41196392bce8c1fadf6d577933aefacb1f071871` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x431fea022496d2ff5ba481c862e066113af1b9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43bce7a595ec1fbc1a562cd4c714852bcc2645ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x445825127ddea6e3ed4fa29d0607b4a469f60394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45b2128973091542d6fe17e04e84cd777cfc6155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4604d98145b812f2d78bcb6f4c593147dc689bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48af0db8c3c316974137cee465bf8a112996a532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b0afef212c35b5d15aa330bad7dc1e4b89ac9d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4bdbd3f9409f29ea8b81de909a0cc0844d27411e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4daf235ef0f0ee0209d8f1ba9802b80ff683e7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f5a10dfaea2f8ae2f8edd19eae11602e68e6bbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x501eeb5b0916928b68ad43c8adff852ad286262b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51e19782fb5aa1622dc4b1a197e2346d9dc589d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51edb891fba8fd70334e0365943dfed3747495e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5498b5b0a2b693bb69cc8941ee5f9028f429ff5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55ebaef69927e242e7bb074b6443115c1b68b63e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x564dfa458867d1de36e0e5395f197e8697ae264f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5655092b65fb308daad6927e5cedaf67a97a328c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56bd6a238935ed4a5b1128cfcc146fb45ce18220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56e94d9b319d45317d3031a4dd11a45be96e6123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581d41b1ed89b3b018e0c221eb98656095250699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58cd429448bb3455e13f6388fe59b1fe5a1dbae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59623c037355029642f2b3db7799e5be7a8cfa53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ad2e1414989902cff5c27148b2e21ce5323478d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b0aa6c79462b85aadf650ce364bf6a535a8d100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d575b4aa0581468e6557eb637f866ce621d474e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5facad7635dde1dec8a16a7e1b0ad7879fb0597b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6297e8483b23f16b311e820cf290f28b83504d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6676d0d419cb34b45811552988ddc0788ff740e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b1f37a8afbf7119692166394b96a8601938a33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69b18579b74a20481a61fc21e64d7fb78a06572b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69ce0c34cbd42c1871f764cab6d7a2495054796d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a332f84342b2c600600b1fe24074401a9bf153c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b6a24efee75edacd1e47a8ea63ce1981f0013e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6be7a8cb6a8d1e794f4ba45a738f61809c230d4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d0fc55af0f8bbffc2abd1d8499867c49ac14c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e0d7a1024941d6ac7af8e2b00741f7ef8368ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e534da0cbfeed25fad935d213615001fe7a71be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee1a2ef9763ec072514a843429359d11902db03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f31caae12ea25f8d5b69b93d4c57e1af7f62272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fb975af85262ee9d0f7ce3db83172db8e4295b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70c063b8a57c1208f0c84ffebffeb0c0b22b6715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71aea310ae75991d7c1455967b0c3a751b7f337c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x723fc105acd38410ff597329517cedee099bfd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x724ba15845719549ea1ea2f0aac9d75d31dbd818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x762efa5577b6bf6d1c6abdd1085ecdfd7ba8658d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77e141a26b8f7fa42ffebe02cc4b8dd03cc6c05e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a0d27d745ade347c5e685fe268708e9472ae84a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a5114ccb3576f20f5a0255af9d29eb17c90427c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7afa1c7af6f334cf9fff943069fe24cd87028ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b055cfb5184b330e1754a1703995bd14f50796d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc78140901b2f26972197b419745bd6be0dc467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df223c630a49e51e81d6b101c8f4a6fc56a1697` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7df6e2068fde593dd02fef6ccf94e2d96e2efbd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec6e71a241218df6c8ac5f989711ee5f70ef653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x833d9eb25ee958d80ccf2d52fe48f1405b5aa7e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840e44b2d5f8c1f0cb05343ba6377ba6b7e6de23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869aae776bd2cd2c4256a8d81a12cc9a4209e8b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c8fc3f1210dee25d4a8fa344377e85a330b562d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8defcb4703efa2f8e1af7acb3e419216f363c7f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x927eb8a0ef7ebddae16a0687c664a3788b11d510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977ad46585e44e56955ce07ebd619c42e7faa092` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98f08f4f11758ea483b5b1fbb3841f341e4643e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x993ac410478c2428655f2afd0ff567268aa9d7a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9da26b5e4c5aa39ff37d39ad142ddb690ef631e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f90fb95225bdeb023411c2bae416ebaafb760d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa05d5500cacada968d8b64b64a23bceca7a9a6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0b3f3f28d37c509d235cf6df32232dbaf88f17b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ced532142e32628d51a638fb10dd73bcac5c96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa151dd364c43406b68a4c8f2ab9bf984b8a95f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa44d07dec682dd2f1f404003073b4eb63ff094b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6048eed276ee40b3da00931dbc3533b660a0b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa684b0bf8d938af7d506ea274bbc1fd88a555862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa1c2bae740fdc23d0ea5ffd7d0c6bbbdce90008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac32505f0d51396beddee065ef5f6154f89ffa31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed57504e8fc3ff5ca0d331419e17377160aa1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaeda2beed9719da727a41548c66eddc748514461` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafc97450b95c76700a0c128bce7d1b47b67d7f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafd6a0ff92564d711bd81cd8cf54028c0696e439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafeb62b10d92ae0ddf187f8d30f1c0b427c554d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0e8a59334c3654ddcf32d1a3597001bc24c8ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb40749fd79af154afe724a6f9546459de7656ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb515ceca356895244db702c4b5794ec6e762dfc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5d1a60a044b7e90df7eca83fd1cf454711c2f73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7aa410c11a8e92c815f125a083d1a1c365ad6c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85952c6675640d31d9220ecfec3bc8586a91eae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f0e015c3958959f8535a8e5bcbd1d5969e635e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f994d7b27c557fe37632d9997728cda3765e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba120ecb9b2671313ff424c73490a23ff635fd28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba226ab8135999e7d5bc147132340925d1fb6305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcb8dfed01fe3cc58a2e7206dd7ffb4eaaccbf69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe46b658c1a2b0ee549309871e4324607f705adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1460a9c2a6db393b4f8e74998b3f54fd0ec5d27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc190a419c1d4862eb8ccb3b882dcb93d833fd863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1d43cf7d07e75a31d057b504eb03f0313921153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f8aa1ba9cef0b7e3e0e7887687e176c66759cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2c411ab4bad361d763607b53569c24ef3745aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3569b73b726b9337289a427f6302ffdd9db7b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c321494bc3dc9ec938f241e8abfcdc978bbb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40bc1ac3506c1065b22704934e9143b32c14b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f9f967efdd2411597a0ca16d843e8bf16d8f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc51daf1f494866c2741c82e1f008f2a554d4d687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc86f0d2e1be7e8aef298d745fcb85afd2b3e01ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb2887808c1e5f7ec6839bedc04bcc446a8fe76b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc1610866b2e3024f5474b592f4c6bbbc3e1d200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdcdcf5e48cb01cc967f38d4884f6c721df73203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce1b20a1c93e78a9f83112a00c0c9ad5acc3aaf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf5327c509aca183d9526eb38b2ff6cef2befe22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfe79fd1c6588f292aa53808fe3e8be589c6515c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd07649c3696105838d99ed0c03475f12908e4ddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ba17bd660f60916defa65ba375567f0d2afbf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd218415a6e4eaabb8042bee09208760d043d62a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a4e199cdfb0f69455fed60aab1b204cf126a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd904fa10e6e7106a1d46b7231c5d2379fa7d5d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9daf6fa8105ccfbe09b6df488b386643f9e6467` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf36801cb26e2a8584a08d46952b8c5dd3a1f56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb3a7b4778f317e7e8f205989c6ac1d1eef8f7cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd26284f97c9170a30fb2a374703cbdd4c6afdc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe15d887d311f06713471fc628fbcc0cc10331a4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe36f6605d6432aa30dcf3a1c0c4dec04accbc174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe44dce4f87c8f245dc688adb1fdec054938a984f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e13e98cbfddedaa8068d7c3ce2fef43dcf4c94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe76456fbc4aba7d31e2125152b9f9150962cdd80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaddb772b94a2e23bd31d0af0da6316aa8a252a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed553a10c42033ee2db82e189ed29ac7770b8576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf028d1a74a3abda907e03137bd64b8019a079c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0503fd96ba6b9d50b35f7e09770e4ca363c1ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf21246190735e9a39c03e899de70c0e7fef78305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf43ae71e6e72da5076982110b54b0b9f4a2c2b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf61959d82464eef7d8c109b06521119edc4fa353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c5e53dd4db0caac2b08596e96a98ffa7ca8fac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8b7b796436c39dd352094684b249e5e8b59f645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa690784ae61171ff94a5fe76663482ca44babb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc598580b9bb888cdda2db256cd5a5a7958eadcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd1abe419ea0e00dfbdc8d087d71c19740291738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffd261265b4c160a399623e9e88f12ae7df8c4d4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 165
- Live contracts: 0
- Unknown liveness contracts: 165
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=165

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x03813099348890e24ba73b1aaf0bf66f0e8276ba` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x07b8f82db278318f43a9351987a7e03292c1bb50` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x09cc0a8b7d041cac4ad8fb5d2d68d8ea4f609d4e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17b4795c98598a04e4f371a19fc7bf85492277b1` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1ac5c2f4a9b15b7ec8bad8c06a275767cf34bdb2` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d2df75c2f232a4c2e3b47e9b2c2070523e50d19` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x21958e4788f9c70085fd7e7e5d345ed897461b1a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2339d22dd162e61c292a3f61df6238540997cbce` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x26c3fe60b5f8b16bc96b43b5139ba73964b2c762` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28384c92af6ac686ca934ddc3874356611ff048c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x289bf2ebada28684041d3d643322a5fc53e5ab1c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x28ee3d3b2ab257725f260c446d2e728859ded206` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ac160abdc1e2f1f3b2226b4c370a3d51f17848e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2afbef333aa36805b4e83e31916147c1d6209321` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ec546c9d487ac8cb7bf5b32c521e1af6240d1d0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ef8644bfc95600b7074f31747546aba8d9b362c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2f95503d8908437f990306fe86c360e46844ca34` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3054c53193f7c8624628a5ce0949c56da94443d6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3128b1a16710754f91d0817cf24177bd6ff5b891` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x317312c42bfddf09cde377cb4cee76ed8fc132c0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3374ba4a1629097325134ad00742555bac455c37` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3760be2a8e73cf2a135eff0c286f41673b1f3568` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x383a16b166b5209613e4122bdc738c649059df30` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x391c198e787a3bd2e362f97869e5084874bd6314` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x39f0355aae8ef5a1efd2caf3896b2dfbd141b1fc` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e39c1e21d9f7c9c01322c57d57643d3c9a87122` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3ef624b83c20634b2c2cde94b1f2c26d13bb1388` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4003252ae82768daab83b3d14b13a5fa8f0c0c60` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40e1efa8e5fcc0030e5772e089352a9a7dc64925` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41196392bce8c1fadf6d577933aefacb1f071871` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x431fea022496d2ff5ba481c862e066113af1b9aa` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x43bce7a595ec1fbc1a562cd4c714852bcc2645ac` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x445825127ddea6e3ed4fa29d0607b4a469f60394` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x45b2128973091542d6fe17e04e84cd777cfc6155` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4604d98145b812f2d78bcb6f4c593147dc689bdd` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48af0db8c3c316974137cee465bf8a112996a532` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4b0afef212c35b5d15aa330bad7dc1e4b89ac9d2` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4bdbd3f9409f29ea8b81de909a0cc0844d27411e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4daf235ef0f0ee0209d8f1ba9802b80ff683e7d6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f5a10dfaea2f8ae2f8edd19eae11602e68e6bbd` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x501eeb5b0916928b68ad43c8adff852ad286262b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51e19782fb5aa1622dc4b1a197e2346d9dc589d7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51edb891fba8fd70334e0365943dfed3747495e1` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5498b5b0a2b693bb69cc8941ee5f9028f429ff5b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x55ebaef69927e242e7bb074b6443115c1b68b63e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x564dfa458867d1de36e0e5395f197e8697ae264f` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5655092b65fb308daad6927e5cedaf67a97a328c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56bd6a238935ed4a5b1128cfcc146fb45ce18220` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x56e94d9b319d45317d3031a4dd11a45be96e6123` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x581d41b1ed89b3b018e0c221eb98656095250699` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58cd429448bb3455e13f6388fe59b1fe5a1dbae9` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59623c037355029642f2b3db7799e5be7a8cfa53` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ad2e1414989902cff5c27148b2e21ce5323478d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b0aa6c79462b85aadf650ce364bf6a535a8d100` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d575b4aa0581468e6557eb637f866ce621d474e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5facad7635dde1dec8a16a7e1b0ad7879fb0597b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6297e8483b23f16b311e820cf290f28b83504d5f` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6676d0d419cb34b45811552988ddc0788ff740e4` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66b1f37a8afbf7119692166394b96a8601938a33` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69b18579b74a20481a61fc21e64d7fb78a06572b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69ce0c34cbd42c1871f764cab6d7a2495054796d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a332f84342b2c600600b1fe24074401a9bf153c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b6a24efee75edacd1e47a8ea63ce1981f0013e0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6be7a8cb6a8d1e794f4ba45a738f61809c230d4a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6d0fc55af0f8bbffc2abd1d8499867c49ac14c58` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e0d7a1024941d6ac7af8e2b00741f7ef8368ce1` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6e534da0cbfeed25fad935d213615001fe7a71be` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ee1a2ef9763ec072514a843429359d11902db03` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f31caae12ea25f8d5b69b93d4c57e1af7f62272` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6fb975af85262ee9d0f7ce3db83172db8e4295b6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70c063b8a57c1208f0c84ffebffeb0c0b22b6715` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71aea310ae75991d7c1455967b0c3a751b7f337c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x723fc105acd38410ff597329517cedee099bfd8d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x724ba15845719549ea1ea2f0aac9d75d31dbd818` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x762efa5577b6bf6d1c6abdd1085ecdfd7ba8658d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x77e141a26b8f7fa42ffebe02cc4b8dd03cc6c05e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a0d27d745ade347c5e685fe268708e9472ae84a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a5114ccb3576f20f5a0255af9d29eb17c90427c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7afa1c7af6f334cf9fff943069fe24cd87028ef8` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7b055cfb5184b330e1754a1703995bd14f50796d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7bc78140901b2f26972197b419745bd6be0dc467` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7df223c630a49e51e81d6b101c8f4a6fc56a1697` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7df6e2068fde593dd02fef6ccf94e2d96e2efbd0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ec6e71a241218df6c8ac5f989711ee5f70ef653` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x833d9eb25ee958d80ccf2d52fe48f1405b5aa7e6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x840e44b2d5f8c1f0cb05343ba6377ba6b7e6de23` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x869aae776bd2cd2c4256a8d81a12cc9a4209e8b8` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c8fc3f1210dee25d4a8fa344377e85a330b562d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8defcb4703efa2f8e1af7acb3e419216f363c7f8` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x927eb8a0ef7ebddae16a0687c664a3788b11d510` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x977ad46585e44e56955ce07ebd619c42e7faa092` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98f08f4f11758ea483b5b1fbb3841f341e4643e6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x993ac410478c2428655f2afd0ff567268aa9d7a1` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9da26b5e4c5aa39ff37d39ad142ddb690ef631e0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f90fb95225bdeb023411c2bae416ebaafb760d8` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa05d5500cacada968d8b64b64a23bceca7a9a6d5` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0b3f3f28d37c509d235cf6df32232dbaf88f17b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0ced532142e32628d51a638fb10dd73bcac5c96` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa151dd364c43406b68a4c8f2ab9bf984b8a95f77` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa44d07dec682dd2f1f404003073b4eb63ff094b7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa6048eed276ee40b3da00931dbc3533b660a0b13` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa684b0bf8d938af7d506ea274bbc1fd88a555862` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa1c2bae740fdc23d0ea5ffd7d0c6bbbdce90008` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xac32505f0d51396beddee065ef5f6154f89ffa31` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaed57504e8fc3ff5ca0d331419e17377160aa1ed` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaeda2beed9719da727a41548c66eddc748514461` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafc97450b95c76700a0c128bce7d1b47b67d7f34` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafd6a0ff92564d711bd81cd8cf54028c0696e439` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xafeb62b10d92ae0ddf187f8d30f1c0b427c554d0` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb0e8a59334c3654ddcf32d1a3597001bc24c8ede` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb40749fd79af154afe724a6f9546459de7656ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb515ceca356895244db702c4b5794ec6e762dfc7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb5d1a60a044b7e90df7eca83fd1cf454711c2f73` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7aa410c11a8e92c815f125a083d1a1c365ad6c3` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb85952c6675640d31d9220ecfec3bc8586a91eae` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9f0e015c3958959f8535a8e5bcbd1d5969e635e` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb9f994d7b27c557fe37632d9997728cda3765e7a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba120ecb9b2671313ff424c73490a23ff635fd28` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xba226ab8135999e7d5bc147132340925d1fb6305` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbcb8dfed01fe3cc58a2e7206dd7ffb4eaaccbf69` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbe46b658c1a2b0ee549309871e4324607f705adb` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1460a9c2a6db393b4f8e74998b3f54fd0ec5d27` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc190a419c1d4862eb8ccb3b882dcb93d833fd863` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1d43cf7d07e75a31d057b504eb03f0313921153` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc1f8aa1ba9cef0b7e3e0e7887687e176c66759cc` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2c411ab4bad361d763607b53569c24ef3745aeb` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3569b73b726b9337289a427f6302ffdd9db7b2b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc3c321494bc3dc9ec938f241e8abfcdc978bbb9d` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc40bc1ac3506c1065b22704934e9143b32c14b51` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc4f9f967efdd2411597a0ca16d843e8bf16d8f01` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc51daf1f494866c2741c82e1f008f2a554d4d687` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc86f0d2e1be7e8aef298d745fcb85afd2b3e01ee` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcb2887808c1e5f7ec6839bedc04bcc446a8fe76b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcc1610866b2e3024f5474b592f4c6bbbc3e1d200` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcdcdcf5e48cb01cc967f38d4884f6c721df73203` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce1b20a1c93e78a9f83112a00c0c9ad5acc3aaf7` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf5327c509aca183d9526eb38b2ff6cef2befe22` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcfe79fd1c6588f292aa53808fe3e8be589c6515c` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd07649c3696105838d99ed0c03475f12908e4ddf` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd0ba17bd660f60916defa65ba375567f0d2afbf3` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd218415a6e4eaabb8042bee09208760d043d62a9` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd5a4e199cdfb0f69455fed60aab1b204cf126a76` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd904fa10e6e7106a1d46b7231c5d2379fa7d5d14` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd9daf6fa8105ccfbe09b6df488b386643f9e6467` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdaf36801cb26e2a8584a08d46952b8c5dd3a1f56` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdb3a7b4778f317e7e8f205989c6ac1d1eef8f7cc` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdd26284f97c9170a30fb2a374703cbdd4c6afdc6` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe15d887d311f06713471fc628fbcc0cc10331a4b` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe36f6605d6432aa30dcf3a1c0c4dec04accbc174` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe44dce4f87c8f245dc688adb1fdec054938a984f` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6e13e98cbfddedaa8068d7c3ce2fef43dcf4c94` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe76456fbc4aba7d31e2125152b9f9150962cdd80` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeaddb772b94a2e23bd31d0af0da6316aa8a252a2` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed553a10c42033ee2db82e189ed29ac7770b8576` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf028d1a74a3abda907e03137bd64b8019a079c32` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0503fd96ba6b9d50b35f7e09770e4ca363c1ea9` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf21246190735e9a39c03e899de70c0e7fef78305` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf43ae71e6e72da5076982110b54b0b9f4a2c2b4a` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf61959d82464eef7d8c109b06521119edc4fa353` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6c5e53dd4db0caac2b08596e96a98ffa7ca8fac` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf8b7b796436c39dd352094684b249e5e8b59f645` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfa690784ae61171ff94a5fe76663482ca44babb4` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc598580b9bb888cdda2db256cd5a5a7958eadcb` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfd1abe419ea0e00dfbdc8d087d71c19740291738` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffd261265b4c160a399623e9e88f12ae7df8c4d4` | non_address_book | unknown | unknown | unverified | n/a | `0xfe1bd11cd131c02f31a8b213651a8358fa1ab7a8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb113c6cf239f60d380359b762e95c13817275277` | BMEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x65a35599a063f3ca882b1550a328d8a543d28232` | Vesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 165 |

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
