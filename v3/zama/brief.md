# Agentic Audit Brief: Zama

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Zama (`zama`)
- Website: [https://www.zama.org/](https://www.zama.org/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 70 unique implementations (70 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $141,503,669.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Zama. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ZamaERC20 (`0xa12cc123ba206d4031d1c7f6223d1c2ec249f4f3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 69 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 70 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 69
- Unique implementations: 70
- Raw deployments: 70
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ZamaERC20 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263621 | `0xa12cc123ba206d4031d1c7f6223d1c2ec249f4f3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (69)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x08940bc8944a17e64aa9f5398046abc75bb26699` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x126d6b697ad04228657ba677c71cfe20a8745b03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x13332ceadc4c00e50955bd84f8aa9e9f6d007849` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x18dd7055c2bde33d759ec34166717f8183eec5f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x1c5d750d18917064915901048cdfb2db815e0910` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x27f6c8289550fce67f6b50bed1f519966afe5287` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3b4bc79e4c9fa1c8392c07b5dc92bba21bc8164d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3b4da65e45fda2caa0285a735ab4361a44f171e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x3fb773db5c038fe44517be5594f31a4c08ea53d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4033bae29f0328b3a0cb4ba5ea8ebaa9d1eebbf2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x42d147a2c569dd574c9c9433df19877bf3d9d435` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x50c271e25ee953dd21e916311db81e228c9bdb59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x535ed1fb1e64c184d089a7952ee6c5d69f444061` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x547d30673d77c941394762a248d1fe4457c414d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x578c104483e8d5890807c4681d780d87daa97fba` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5c9401fda261fdb97188126e130e001db38f1310` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x661305a9b15691d05b2238404949fe164ea4ca75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x66bf74e96900d1a19c7070d939d124f2f565c458` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7147485b892158f2b875f7ac5ea48a9937c66ae8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x73cc9af9d6befdb3c3faf8a5e8c05cb95fdaeef1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7481d48c58d026d55398c01d293177ef5ff398e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x75355a85c6fb9df5f0c80ff54e8747eee9a0bf57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x77627828a55156b04ac0dc0eb30467f1a552bb03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x78f597f1dcf5da536745558368c825654a1a044b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x7a9683ed99a091eaebcd30bbe3b112b3c888ed49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x80c03b5be1417d18bae68d5a1f0f2a97457b0c3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x80cb147fd86dc6dee3eee7e4cee33d1397d98071` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8305d7c59886462b04c71ecc5c5c331520c2a8e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x85de671c3bec1aded752c3cea943521181c826bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8a3bb2a9b28dad4230a6dfe17124c398ea6416bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x8ab0cbb793eaa56f2395a2890370f4c75344fb93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x93c931278a2aad1916783f952f94276ea5111442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9b5cd13b8efbb58dc25a05cf411d8056058adfff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa798b04149e7a61cc95b7d114ad420e8969ea268` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa873750ccbafd5ec7dd13bfd5237d7129832edd9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xac3657a9c6c4782e65c99928eae983aced3f1479` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xae0207c757aa2b4019ad96edd0092ddc63ef0c50` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xaf948d2207bbaec6737975a498f528fc40e8eaab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb6d69d5f334d8b97b194617b53c6ab62f8681ef3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb9689c08a634b076849e61ea4e42ab44ae2e5e2d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xba2c598e11ed093079cc324fca5bbba99f616e83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xba4cff6ed6f7cb2a58776deca4e984b498446762` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbbfe1680b4a63ed05f7f80ce330bed7c992a586c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbc860b6a4c860c5424b84a056e53acfb2c99a38f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbeef00a59b577423653a1526c7009bde103f542b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xbeeffabcd0db09589dd21854aa760c52ab4bf04f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc0e0d29f8004624b6a6c204b2824e8cb97cefb6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xca2e8f1f656cd25c01f05d0b243ab1ecd4a8ffb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xce0fc2e05cfff1b719eff7169f7d80af770c8ea2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xce762c7fdaac795d31a266b9247f8958c159c6d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd82385dada1ae3e969447f20a3164f6213100e75` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xda9396b82634ea99243ce51258b6a5ae512d4893` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdb4fe5977d4f78f251c0f821c18c1f7a16ad3a5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdd7494ff830017d46ab6341bc0a6883e6ebb50fa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xdd7fa0c796b3ca4fc1654f4effea5c4e9ff57a23` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe43c73aab2b6abbad6d0461997ce1cfea5abe66f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe978f22157048e5db8e5d07971376e86671672b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xe9b176ccaa8840dc3b3567bb83e2cd2a6c36f4ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xeb5015ff021db115ace010f23f55c2591059bba0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf1ba887932d7559b3b00a58fe92f36ca8d7751d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf5a0f502c98df9dc22a4e4f251ec3c75f2ad8098` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xf69d04e529e3ec4d12da9617110f48378b1d0ce1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xfcaa267679b8364957560d7420e66bb012013091` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xff021fb13ca64e5354c62c954b949a88cfdeb25e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xff54739b16576fa5402f211d0b938469ab9a5f3f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/zama-confidential-fungible-token-audit](https://www.openzeppelin.com/news/zama-confidential-fungible-token-audit) | OpenZeppelin | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit](https://www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit) | OpenZeppelin | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit](https://www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit) | OpenZeppelin | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21254] www.openzeppelin.com/news/zama-confidential-fungible-token-audit — no match: All six files listed in the Scope section are extracted. The audit date is explicitly given as 'March 18, 2026' in the header.
- [21255] www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit — no match: Extracted 16 contract names from the scope section listing files in the contracts/ directory. Audit date is March 18, 2026 from the title area.
- [21256] www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit — no match: All contracts listed in the Scope section of the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/zama-confidential-fungible-token-audit | IConfidentialFungibleToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-fungible-token-audit | IConfidentialFungibleTokenReceiver | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-fungible-token-audit | ConfidentialFungibleTokenERC20Wrapper | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-fungible-token-audit | ConfidentialFungibleTokenUtils | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-fungible-token-audit | ConfidentialFungibleToken | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-fungible-token-audit | TFHESafeMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | VestingWalletConfidential | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | VestingWalletConfidentialFactory | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | IERC7984 | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | IERC7984Receiver | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | IERC7984Rwa | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984 | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984ERC20Wrapper | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984Freezable | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984ObserverAccess | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984Omnibus | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984Restricted | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984Rwa | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984Votes | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | ERC7984Utils | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | FHESafeMath | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit | temporary-Checkpoints | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit | CREATE3Deployer | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit | ConfidentialAirdropFactory | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit | IConfidentialAirdropCloneable | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit | IConfidentialAirdropFactory | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit | ConfidentialAirdropCloneable | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xa12cc123ba206d4031d1c7f6223d1c2ec249f4f3` | ZamaERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [21254] www.openzeppelin.com/news/zama-confidential-fungible-token-audit
- [21255] www.openzeppelin.com/news/zama-confidential-contracts-0.3.0-release-audit
- [21256] www.openzeppelin.com/news/tokenops-zama-confidential-airdrop-audit

Fork inheritance lineage and inherited audits are included when available.
